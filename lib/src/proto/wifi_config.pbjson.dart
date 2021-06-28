///
//  Generated code. Do not modify.
//  source: wifi_config.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use wiFiConfigMsgTypeDescriptor instead')
const WiFiConfigMsgType$json = const {
  '1': 'WiFiConfigMsgType',
  '2': const [
    const {'1': 'TypeCmdGetStatus', '2': 0},
    const {'1': 'TypeRespGetStatus', '2': 1},
    const {'1': 'TypeCmdSetConfig', '2': 2},
    const {'1': 'TypeRespSetConfig', '2': 3},
    const {'1': 'TypeCmdApplyConfig', '2': 4},
    const {'1': 'TypeRespApplyConfig', '2': 5},
  ],
};

/// Descriptor for `WiFiConfigMsgType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List wiFiConfigMsgTypeDescriptor = $convert.base64Decode(
    'ChFXaUZpQ29uZmlnTXNnVHlwZRIUChBUeXBlQ21kR2V0U3RhdHVzEAASFQoRVHlwZVJlc3BHZXRTdGF0dXMQARIUChBUeXBlQ21kU2V0Q29uZmlnEAISFQoRVHlwZVJlc3BTZXRDb25maWcQAxIWChJUeXBlQ21kQXBwbHlDb25maWcQBBIXChNUeXBlUmVzcEFwcGx5Q29uZmlnEAU=');
@$core.Deprecated('Use cmdGetStatusDescriptor instead')
const CmdGetStatus$json = const {
  '1': 'CmdGetStatus',
};

/// Descriptor for `CmdGetStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cmdGetStatusDescriptor =
    $convert.base64Decode('CgxDbWRHZXRTdGF0dXM=');
@$core.Deprecated('Use respGetStatusDescriptor instead')
const RespGetStatus$json = const {
  '1': 'RespGetStatus',
  '2': const [
    const {
      '1': 'status',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.espressif.Status',
      '10': 'status'
    },
    const {
      '1': 'sta_state',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.espressif.WifiStationState',
      '10': 'staState'
    },
    const {
      '1': 'fail_reason',
      '3': 10,
      '4': 1,
      '5': 14,
      '6': '.espressif.WifiConnectFailedReason',
      '9': 0,
      '10': 'failReason'
    },
    const {
      '1': 'connected',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.espressif.WifiConnectedState',
      '9': 0,
      '10': 'connected'
    },
  ],
  '8': const [
    const {'1': 'state'},
  ],
};

/// Descriptor for `RespGetStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List respGetStatusDescriptor = $convert.base64Decode(
    'Cg1SZXNwR2V0U3RhdHVzEikKBnN0YXR1cxgBIAEoDjIRLmVzcHJlc3NpZi5TdGF0dXNSBnN0YXR1cxI4CglzdGFfc3RhdGUYAiABKA4yGy5lc3ByZXNzaWYuV2lmaVN0YXRpb25TdGF0ZVIIc3RhU3RhdGUSRQoLZmFpbF9yZWFzb24YCiABKA4yIi5lc3ByZXNzaWYuV2lmaUNvbm5lY3RGYWlsZWRSZWFzb25IAFIKZmFpbFJlYXNvbhI9Cgljb25uZWN0ZWQYCyABKAsyHS5lc3ByZXNzaWYuV2lmaUNvbm5lY3RlZFN0YXRlSABSCWNvbm5lY3RlZEIHCgVzdGF0ZQ==');
@$core.Deprecated('Use cmdSetConfigDescriptor instead')
const CmdSetConfig$json = const {
  '1': 'CmdSetConfig',
  '2': const [
    const {'1': 'ssid', '3': 1, '4': 1, '5': 12, '10': 'ssid'},
    const {'1': 'passphrase', '3': 2, '4': 1, '5': 12, '10': 'passphrase'},
    const {'1': 'bssid', '3': 3, '4': 1, '5': 12, '10': 'bssid'},
    const {'1': 'channel', '3': 4, '4': 1, '5': 5, '10': 'channel'},
  ],
};

/// Descriptor for `CmdSetConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cmdSetConfigDescriptor = $convert.base64Decode(
    'CgxDbWRTZXRDb25maWcSEgoEc3NpZBgBIAEoDFIEc3NpZBIeCgpwYXNzcGhyYXNlGAIgASgMUgpwYXNzcGhyYXNlEhQKBWJzc2lkGAMgASgMUgVic3NpZBIYCgdjaGFubmVsGAQgASgFUgdjaGFubmVs');
@$core.Deprecated('Use respSetConfigDescriptor instead')
const RespSetConfig$json = const {
  '1': 'RespSetConfig',
  '2': const [
    const {
      '1': 'status',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.espressif.Status',
      '10': 'status'
    },
  ],
};

/// Descriptor for `RespSetConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List respSetConfigDescriptor = $convert.base64Decode(
    'Cg1SZXNwU2V0Q29uZmlnEikKBnN0YXR1cxgBIAEoDjIRLmVzcHJlc3NpZi5TdGF0dXNSBnN0YXR1cw==');
@$core.Deprecated('Use cmdApplyConfigDescriptor instead')
const CmdApplyConfig$json = const {
  '1': 'CmdApplyConfig',
};

/// Descriptor for `CmdApplyConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cmdApplyConfigDescriptor =
    $convert.base64Decode('Cg5DbWRBcHBseUNvbmZpZw==');
@$core.Deprecated('Use respApplyConfigDescriptor instead')
const RespApplyConfig$json = const {
  '1': 'RespApplyConfig',
  '2': const [
    const {
      '1': 'status',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.espressif.Status',
      '10': 'status'
    },
  ],
};

/// Descriptor for `RespApplyConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List respApplyConfigDescriptor = $convert.base64Decode(
    'Cg9SZXNwQXBwbHlDb25maWcSKQoGc3RhdHVzGAEgASgOMhEuZXNwcmVzc2lmLlN0YXR1c1IGc3RhdHVz');
@$core.Deprecated('Use wiFiConfigPayloadDescriptor instead')
const WiFiConfigPayload$json = const {
  '1': 'WiFiConfigPayload',
  '2': const [
    const {
      '1': 'msg',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.espressif.WiFiConfigMsgType',
      '10': 'msg'
    },
    const {
      '1': 'cmd_get_status',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.espressif.CmdGetStatus',
      '9': 0,
      '10': 'cmdGetStatus'
    },
    const {
      '1': 'resp_get_status',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.espressif.RespGetStatus',
      '9': 0,
      '10': 'respGetStatus'
    },
    const {
      '1': 'cmd_set_config',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.espressif.CmdSetConfig',
      '9': 0,
      '10': 'cmdSetConfig'
    },
    const {
      '1': 'resp_set_config',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.espressif.RespSetConfig',
      '9': 0,
      '10': 'respSetConfig'
    },
    const {
      '1': 'cmd_apply_config',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.espressif.CmdApplyConfig',
      '9': 0,
      '10': 'cmdApplyConfig'
    },
    const {
      '1': 'resp_apply_config',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.espressif.RespApplyConfig',
      '9': 0,
      '10': 'respApplyConfig'
    },
  ],
  '8': const [
    const {'1': 'payload'},
  ],
};

/// Descriptor for `WiFiConfigPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wiFiConfigPayloadDescriptor = $convert.base64Decode(
    'ChFXaUZpQ29uZmlnUGF5bG9hZBIuCgNtc2cYASABKA4yHC5lc3ByZXNzaWYuV2lGaUNvbmZpZ01zZ1R5cGVSA21zZxI/Cg5jbWRfZ2V0X3N0YXR1cxgKIAEoCzIXLmVzcHJlc3NpZi5DbWRHZXRTdGF0dXNIAFIMY21kR2V0U3RhdHVzEkIKD3Jlc3BfZ2V0X3N0YXR1cxgLIAEoCzIYLmVzcHJlc3NpZi5SZXNwR2V0U3RhdHVzSABSDXJlc3BHZXRTdGF0dXMSPwoOY21kX3NldF9jb25maWcYDCABKAsyFy5lc3ByZXNzaWYuQ21kU2V0Q29uZmlnSABSDGNtZFNldENvbmZpZxJCCg9yZXNwX3NldF9jb25maWcYDSABKAsyGC5lc3ByZXNzaWYuUmVzcFNldENvbmZpZ0gAUg1yZXNwU2V0Q29uZmlnEkUKEGNtZF9hcHBseV9jb25maWcYDiABKAsyGS5lc3ByZXNzaWYuQ21kQXBwbHlDb25maWdIAFIOY21kQXBwbHlDb25maWcSSAoRcmVzcF9hcHBseV9jb25maWcYDyABKAsyGi5lc3ByZXNzaWYuUmVzcEFwcGx5Q29uZmlnSABSD3Jlc3BBcHBseUNvbmZpZ0IJCgdwYXlsb2Fk');
