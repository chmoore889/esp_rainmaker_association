import 'dart:convert';
import 'dart:typed_data';

import 'package:esp_rainmaker_association/src/message_helper.dart';
import 'package:esp_rainmaker_association/src/proto/constants.pb.dart';
import 'package:esp_rainmaker_association/src/proto/wifi_config.pb.dart';
import 'package:esp_rainmaker_association/src/proto/wifi_constants.pb.dart';
import 'package:esp_rainmaker_association/src/proto/wifi_scan.pb.dart';
import 'package:esp_rainmaker_association/src/constants.dart';
import 'package:esp_rainmaker_association/src/security0.dart';
import 'package:esp_rainmaker_association/src/session.dart';
import 'package:esp_rainmaker_association/src/softAPTransport.dart';
import 'package:esp_rainmaker_association/src/wifi_access_point.dart';

class EspDevice {
  Session _session;
  int _totalCount;
  int _startIndex;
  List<WiFiAccessPoint> _wifiApList;

  Future<Uint8List> sendDataToCustomEndPoint(String path, Uint8List data) async {
    if (_session == null || !_session.isSessionEstablished) {
      try {
        await _initSession();
      } catch (e) {
        //print(e);
        rethrow;
      }

      return await _sendData(path, data);
    } else {
      return await _sendData(path, data);
    }
  }

  Future<void> provision(String ssid, String passphrase) async {
    if (_session == null || !_session.isSessionEstablished) {
      try {
        await _initSession();
      } catch (e) {
        //print(e);
        rethrow;
      }
      await _sendWiFiConfig(ssid, passphrase);
    } else {
      await _sendWiFiConfig(ssid, passphrase);
    }
  }

  Future<List<WiFiAccessPoint>> scanNetworks() async {
    //print('Send Wi-Fi scan command to device');

    if (_session == null || !_session.isSessionEstablished) {
      try {
        await _initSession();
      } catch (e) {
        //print(e);
        rethrow;
      }
      return await _startNetworkScan();
    } else {
      return await _startNetworkScan();
    }
  }

  Future<List<WiFiAccessPoint>> _startNetworkScan() async {
    _totalCount = 0;
    _startIndex = 0;
    _wifiApList = [];
    final scanCommand = MessengeHelper.prepareWiFiScanMsg();

    Uint8List scanReturnData;
    try {
      scanReturnData = await _session.sendDataToDevice(
          ESPConstants.HANDLER_PROV_SCAN, scanCommand);
    } catch (e) {
      //print(e);
      rethrow;
    }

    _processStartScanResponse(scanReturnData);

    final getScanStatusCmd = MessengeHelper.prepareGetWiFiScanStatusMsg();

    Uint8List statusReturnData;
    try {
      statusReturnData = await _session.sendDataToDevice(
          ESPConstants.HANDLER_PROV_SCAN, getScanStatusCmd);
    } catch (e) {
      //print(e);
      rethrow;
    }
    return await _processWifiStatusResponse(statusReturnData);
  }

  Future<void> _sendWiFiConfig(String ssid, String passphrase) async {
    final scanCommand = MessengeHelper.prepareWiFiConfigMsg(ssid, passphrase);

    Uint8List returnData;
    try {
      returnData = await _session.sendDataToDevice(
          ESPConstants.HANDLER_PROV_CONFIG, scanCommand);
    } catch (e) {
      //print(e);
      rethrow;
    }
    final status = _processWifiConfigResponse(returnData);

    if (status == Status.Success) {
      await _applyWiFiConfig();
    } else {
      throw 'Error: sendWiFiConfig';
    }
  }

  void _processStartScanResponse(Uint8List responseData) {
    print('Process Wi-Fi start scan command response');

    try {
      final payload = WiFiScanPayload.fromBuffer(responseData);
      //ignore: unused_local_variable
      final response = RespScanStart.fromBuffer(payload.writeToBuffer());
    } catch (e) {
      //print(e);
      rethrow;
    }
  }

  Future<void> _initSession() async {
    _session = Session(SoftAPTransport(), Security0());

    await _session.init(null);
  }

  Future<Uint8List> _sendData(String path, Uint8List data) async {
    return await _session.sendDataToDevice(path, data);
  }

  Future<List<WiFiAccessPoint>> _processWifiStatusResponse(
      Uint8List responseData) async {
    try {
      final payload = WiFiScanPayload.fromBuffer(responseData);
      final response = payload.respScanStatus;
      final scanFinished = response.scanFinished;

      if (scanFinished) {
        _totalCount = response.resultCount;
        return await _getFullWiFiList();
      } else {
        throw 'Scan not finished';
      }
    } catch (e) {
      //print(e);
      rethrow;
    }
  }

  Future<List<WiFiAccessPoint>> _getFullWiFiList() async {
    //print('Total count : $_totalCount and start index is : $_startIndex');

    if (_totalCount < 4) {
      return await _getWiFiScanList(0, _totalCount);
    } else {
      final temp = _totalCount - _startIndex;

      if (temp > 0) {
        if (temp > 4) {
          return await _getWiFiScanList(_startIndex, 4);
        } else {
          return await _getWiFiScanList(_startIndex, temp);
        }
      } else {
        //print('Nothing to do. Wifi list completed.');
        return _wifiApList;
      }
    }
  }

  Future<List<WiFiAccessPoint>> _getWiFiScanList(int start, int count) async {
    //print('Getting $count SSIDs');

    if (count <= 0) {
      return _wifiApList;
    }

    final data = MessengeHelper.prepareGetWiFiScanListMsg(start, count);

    Uint8List returnData;
    try {
      returnData =
          await _session.sendDataToDevice(ESPConstants.HANDLER_PROV_SCAN, data);
    } catch (e) {
      //print(e);
      rethrow;
    }
    return await _processGetSSIDs(returnData);
  }

  Future<List<WiFiAccessPoint>> _processGetSSIDs(Uint8List responseData) async {
    try {
      final payload = WiFiScanPayload.fromBuffer(responseData);
      final response = payload.respScanResult;

      //print('Response count : ${response.entries.length}');

      for (var i = 0; i < response.entries.length; i++) {
        //print('SSID : ${utf8.decode(response.entries[i].ssid)}');
        final ssid = utf8.decode(response.entries[i].ssid);
        final rssi = response.entries[i].rssi;
        var isAvailable = false;

        for (var index = 0; index < _wifiApList.length; index++) {
          if (ssid == _wifiApList[index].wifiName) {
            isAvailable = true;

            if (_wifiApList[index].rssi < rssi) {
              _wifiApList[index].rssi = rssi;
            }
            break;
          }
        }

        if (!isAvailable) {
          final wifiAp = WiFiAccessPoint()
            ..wifiName = ssid
            ..rssi = response.entries[i].rssi
            ..security = response.entries[i].auth.value;
          _wifiApList.add(wifiAp);
        }

        //print('Size of  list : ${_wifiApList.length}');
      }

      _startIndex = _startIndex + 4;

      final temp = _totalCount - _startIndex;

      if (temp > 0) {
        return await _getFullWiFiList();
      } else {
        //print('Wi-Fi LIST Completed');
        return _wifiApList;
      }
    } catch (e) {
      //print(e);
      rethrow;
    }
  }

  Status _processWifiConfigResponse(Uint8List responseData) {
    var status = Status.InvalidSession;
    try {
      final wiFiConfigPayload = WiFiConfigPayload.fromBuffer(responseData);
      status = wiFiConfigPayload.respSetConfig.status;
    } catch (e) {
      //print(e);
      rethrow;
    }
    return status;
  }

  Future<void> _applyWiFiConfig() async {
    final scanCommand = MessengeHelper.prepareApplyWiFiConfigMsg();

    Uint8List returnData;
    try {
      returnData = await _session.sendDataToDevice(
          ESPConstants.HANDLER_PROV_CONFIG, scanCommand);
    } catch (e) {
      //print(e);
      rethrow;
    }

    final status = _processApplyConfigResponse(returnData);

    if (status == Status.Success) {
      await Future.delayed(Duration(seconds: 2));
      await _pollForWifiConnectionStatus();
    } else {
      throw 'Failed to apply wifi credentials';
    }
  }

  Future<void> _pollForWifiConnectionStatus() async {
    final message = MessengeHelper.prepareGetWiFiConfigStatusMsg();

    Uint8List returnData;
    try {
      returnData = await _session.sendDataToDevice(
          ESPConstants.HANDLER_PROV_CONFIG, message);
    } catch (e) {
      //print(e);
      rethrow;
    }

    final statuses = _processProvisioningStatusResponse(returnData);
    WifiStationState wifiStationState = statuses[0];
    WifiConnectFailedReason failedReason = statuses[1];

    if (wifiStationState == WifiStationState.Connected) {
      // Provision success
      _session = null;
    } else if (wifiStationState == WifiStationState.Disconnected) {
      // Device disconnected but Provision may got success / failure
      _session = null;
      //throw 'Provisioning failed';
    } else if (wifiStationState == WifiStationState.Connecting) {
      try {
        await Future.delayed(Duration(seconds: 5));
        await _pollForWifiConnectionStatus();
      } catch (e) {
        //print(e);
        _session = null;
        throw 'Provisioning failed';
      }
    } else {
      ProvisionFailureReason error;
      if (failedReason == WifiConnectFailedReason.AuthError) {
        error = ProvisionFailureReason.AUTH_FAILED;
      } else if (failedReason == WifiConnectFailedReason.NetworkNotFound) {
        error = ProvisionFailureReason.NETWORK_NOT_FOUND;
      } else {
        error = ProvisionFailureReason.UNKNOWN;
      }
      _session = null;
      throw error;
    }
  }

  List<dynamic> _processProvisioningStatusResponse(Uint8List responseData) {
    var wifiStationState = WifiStationState.Disconnected;
    var failedReason = WifiConnectFailedReason.NetworkNotFound;

    if (responseData == null) {
      return [wifiStationState, failedReason];
    }

    try {
      final wiFiConfigPayload = WiFiConfigPayload.fromBuffer(responseData);
      wifiStationState = wiFiConfigPayload.respGetStatus.staState;
      failedReason = wiFiConfigPayload.respGetStatus.failReason;
    } catch (e) {
      //print(e);
      rethrow;
    }
    return [wifiStationState, failedReason];
  }

  Status _processApplyConfigResponse(Uint8List responseData) {
    var status = Status.InvalidSession;
    try {
      final wiFiConfigPayload = WiFiConfigPayload.fromBuffer(responseData);
      status = wiFiConfigPayload.respApplyConfig.status;
    } catch (e) {
      //print(e);
      rethrow;
    }
    return status;
  }
}
