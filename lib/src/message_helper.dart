import 'dart:convert';
import 'dart:typed_data';

import 'package:esp_rainmaker_association/src/proto/wifi_config.pb.dart';
import 'package:esp_rainmaker_association/src/proto/wifi_scan.pb.dart';

class MessengeHelper {
  // Send Wi-Fi Scan command
  static Uint8List prepareWiFiScanMsg() {
    final configRequest = CmdScanStart()
      ..blocking = true
      ..passive = false
      ..groupChannels = 0
      ..periodMs = 120;
    final msgType = WiFiScanMsgType.TypeCmdScanStart;
    final payload = WiFiScanPayload()
      ..msg = msgType
      ..cmdScanStart = configRequest;

    return payload.writeToBuffer();
  }

  static Uint8List prepareGetWiFiScanStatusMsg() {
    final configRequest = CmdScanStatus();
    final msgType = WiFiScanMsgType.TypeCmdScanStatus;
    final payload = WiFiScanPayload()
      ..msg = msgType
      ..cmdScanStatus = configRequest;
    return payload.writeToBuffer();
  }

  // Get Wi-Fi scan list
  static Uint8List prepareGetWiFiScanListMsg(int start, int count) {
    final configRequest = CmdScanResult()
      ..startIndex = start
      ..count = count;
    final msgType = WiFiScanMsgType.TypeCmdScanResult;
    final payload = WiFiScanPayload()
      ..msg = msgType
      ..cmdScanResult = configRequest;

    return payload.writeToBuffer();
  }

  /// Sends Wi-Fi Config.
  static Uint8List prepareWiFiConfigMsg(String ssid, String passphrase) {
    final cmdSetConfig = CmdSetConfig()
      ..ssid = utf8.encode(ssid)
      ..passphrase = utf8.encode(passphrase);
    final wiFiConfigPayload = WiFiConfigPayload()
      ..cmdSetConfig = cmdSetConfig
      ..msg = WiFiConfigMsgType.TypeCmdSetConfig;

    return wiFiConfigPayload.writeToBuffer();
  }

  /// Applys Wi-Fi config.
  static Uint8List prepareApplyWiFiConfigMsg() {
    final cmdApplyConfig = CmdApplyConfig();
    final wiFiConfigPayload = WiFiConfigPayload()
      ..cmdApplyConfig = cmdApplyConfig
      ..msg = WiFiConfigMsgType.TypeCmdApplyConfig;
    return wiFiConfigPayload.writeToBuffer();
  }

  // Get Wi-Fi Config status
  static Uint8List prepareGetWiFiConfigStatusMsg() {
    final cmdGetStatus = CmdGetStatus();
    final wiFiConfigPayload = WiFiConfigPayload()
      ..cmdGetStatus = cmdGetStatus
      ..msg = WiFiConfigMsgType.TypeCmdGetStatus;
    return wiFiConfigPayload.writeToBuffer();
  }
}
