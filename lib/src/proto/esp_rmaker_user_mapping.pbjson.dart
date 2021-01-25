///
//  Generated code. Do not modify.
//  source: esp_rmaker_user_mapping.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const RMakerConfigStatus$json = const {
  '1': 'RMakerConfigStatus',
  '2': const [
    const {'1': 'Success', '2': 0},
    const {'1': 'InvalidParam', '2': 1},
    const {'1': 'InvalidState', '2': 2},
  ],
};

const RMakerConfigMsgType$json = const {
  '1': 'RMakerConfigMsgType',
  '2': const [
    const {'1': 'TypeCmdSetUserMapping', '2': 0},
    const {'1': 'TypeRespSetUserMapping', '2': 1},
  ],
};

const CmdSetUserMapping$json = const {
  '1': 'CmdSetUserMapping',
  '2': const [
    const {'1': 'UserID', '3': 1, '4': 1, '5': 9, '10': 'UserID'},
    const {'1': 'SecretKey', '3': 2, '4': 1, '5': 9, '10': 'SecretKey'},
  ],
};

const RespSetUserMapping$json = const {
  '1': 'RespSetUserMapping',
  '2': const [
    const {'1': 'Status', '3': 1, '4': 1, '5': 14, '6': '.rainmaker.RMakerConfigStatus', '10': 'Status'},
    const {'1': 'NodeId', '3': 2, '4': 1, '5': 9, '10': 'NodeId'},
  ],
};

const RMakerConfigPayload$json = const {
  '1': 'RMakerConfigPayload',
  '2': const [
    const {'1': 'msg', '3': 1, '4': 1, '5': 14, '6': '.rainmaker.RMakerConfigMsgType', '10': 'msg'},
    const {'1': 'cmd_set_user_mapping', '3': 10, '4': 1, '5': 11, '6': '.rainmaker.CmdSetUserMapping', '9': 0, '10': 'cmdSetUserMapping'},
    const {'1': 'resp_set_user_mapping', '3': 11, '4': 1, '5': 11, '6': '.rainmaker.RespSetUserMapping', '9': 0, '10': 'respSetUserMapping'},
  ],
  '8': const [
    const {'1': 'payload'},
  ],
};

