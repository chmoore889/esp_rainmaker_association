import 'dart:typed_data';

import 'package:esp_rainmaker_association/src/esp_device.dart';
import 'package:esp_rainmaker_association/src/proto/esp_rmaker_user_mapping.pb.dart';

class UserMapping {
  final EspDevice _device;

  UserMapping(this._device);

  /// Returns node ID
  Future<String> mapUser(String uid, String secretKey) async {
    final deviceSecretRequest = CmdSetUserMapping()
      ..userID = uid
      ..secretKey = secretKey;
    final msgType = RMakerConfigMsgType.TypeCmdSetUserMapping;
    final payload = RMakerConfigPayload()
      ..msg = msgType
      ..cmdSetUserMapping = deviceSecretRequest;

    final data = await _device.sendDataToCustomEndPoint(
        AppConstants.HANDLER_RM_USER_MAPPING, payload.writeToBuffer());

    return _processDetails(data);
  }

  String _processDetails(Uint8List responseData) {
    try {
      final payload = RMakerConfigPayload.fromBuffer(responseData);
      final response = payload.respSetUserMapping;

      if (response.status == RMakerConfigStatus.Success) {
        return response.nodeId;
      }
      throw 'Could not map user';
    } catch (e) {
      rethrow;
    }
  }
}

class AppConstants {
  static const String HANDLER_RM_USER_MAPPING = 'cloud_user_assoc';
  // static final String HANDLER_RM_CLAIM = 'rmaker_claim';
}
