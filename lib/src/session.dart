import 'dart:typed_data';

import 'package:esp_rainmaker_association/src/constants.dart';
import 'package:esp_rainmaker_association/src/security0.dart';
import 'package:esp_rainmaker_association/src/softAPTransport.dart';

class Session {
  final SoftAPTransport transport;
  final Security0 security;
  bool isSessionEstablished = false;

  Session(this.transport, this.security);

  Future<void> init(Uint8List? response) async {
    //print(response);
    try {
      final request = security.getNextRequestInSession(response);
      //print(request);

      if (request == null) {
        isSessionEstablished = true;
      } else {
        final returnData = await transport.sendConfigData(
            ESPConstants.HANDLER_PROV_SESSION, request);
        //print(returnData);
        await init(returnData);
      }
    } catch (e) {
      //print(e);
      rethrow;
    }
  }

  Future<Uint8List> sendDataToDevice(final String path, Uint8List data) async {
    final encryptedData = security.encrypt(data);

    if (isSessionEstablished) {
      Uint8List returnData;
      try {
        returnData = await transport.sendConfigData(path, encryptedData);
      } catch (e) {
        isSessionEstablished = false;
        //print(e);
        rethrow;
      }
      return security.decrypt(returnData);
    } else {
      await init(null);

      Uint8List toReturn;
      try {
        toReturn = await transport.sendConfigData(path, encryptedData);
      } catch (e) {
        isSessionEstablished = false;
        //print(e);
        rethrow;
      }
      return toReturn;
    }
  }
}
