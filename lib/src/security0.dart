import 'dart:typed_data';

import 'package:esp_rainmaker_association/src/proto/sec0.pb.dart';
import 'package:esp_rainmaker_association/src/proto/session.pb.dart';

class Security0 {
  static const int SESSION_STATE_0 = 0;
  static const int SESSION_STATE_1 = 1;

  int _sessionState = SESSION_STATE_0;

  Uint8List? getNextRequestInSession(Uint8List? hexData) {
    Uint8List? response;
    switch (_sessionState) {
      case SESSION_STATE_0:
        _sessionState = SESSION_STATE_1;
        response = _getStep0Request();
        break;
      case SESSION_STATE_1:
        _processStep0Response(hexData);
        break;
    }

    return response;
  }

  Uint8List encrypt(Uint8List data) {
    return data;
  }

  Uint8List decrypt(Uint8List data) {
    return data;
  }

  Uint8List _getStep0Request() {
    final s0SessionCmd = S0SessionCmd();
    final sec0Payload = Sec0Payload()..sc = s0SessionCmd;
    final newSessionData = SessionData()
      ..secVer = SecSchemeVersion.SecScheme0
      ..sec0 = sec0Payload;
    return newSessionData.writeToBuffer();
  }

  void _processStep0Response(Uint8List? hexData) {
    try {
      if (hexData == null) {
        throw 'No response from device';
      }

      final responseData = SessionData.fromBuffer(hexData);
      if (responseData.secVer != SecSchemeVersion.SecScheme0) {
        throw 'Security version mismatch';
      }
    } catch (e) {
      //print(e);
      rethrow;
    }
  }
}
