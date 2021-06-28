///
//  Generated code. Do not modify.
//  source: esp_rmaker_user_mapping.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use rMakerConfigStatusDescriptor instead')
const RMakerConfigStatus$json = const {
  '1': 'RMakerConfigStatus',
  '2': const [
    const {'1': 'Success', '2': 0},
    const {'1': 'InvalidParam', '2': 1},
    const {'1': 'InvalidState', '2': 2},
  ],
};

/// Descriptor for `RMakerConfigStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List rMakerConfigStatusDescriptor = $convert.base64Decode(
    'ChJSTWFrZXJDb25maWdTdGF0dXMSCwoHU3VjY2VzcxAAEhAKDEludmFsaWRQYXJhbRABEhAKDEludmFsaWRTdGF0ZRAC');
@$core.Deprecated('Use rMakerConfigMsgTypeDescriptor instead')
const RMakerConfigMsgType$json = const {
  '1': 'RMakerConfigMsgType',
  '2': const [
    const {'1': 'TypeCmdSetUserMapping', '2': 0},
    const {'1': 'TypeRespSetUserMapping', '2': 1},
  ],
};

/// Descriptor for `RMakerConfigMsgType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List rMakerConfigMsgTypeDescriptor = $convert.base64Decode(
    'ChNSTWFrZXJDb25maWdNc2dUeXBlEhkKFVR5cGVDbWRTZXRVc2VyTWFwcGluZxAAEhoKFlR5cGVSZXNwU2V0VXNlck1hcHBpbmcQAQ==');
@$core.Deprecated('Use cmdSetUserMappingDescriptor instead')
const CmdSetUserMapping$json = const {
  '1': 'CmdSetUserMapping',
  '2': const [
    const {'1': 'UserID', '3': 1, '4': 1, '5': 9, '10': 'UserID'},
    const {'1': 'SecretKey', '3': 2, '4': 1, '5': 9, '10': 'SecretKey'},
  ],
};

/// Descriptor for `CmdSetUserMapping`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cmdSetUserMappingDescriptor = $convert.base64Decode(
    'ChFDbWRTZXRVc2VyTWFwcGluZxIWCgZVc2VySUQYASABKAlSBlVzZXJJRBIcCglTZWNyZXRLZXkYAiABKAlSCVNlY3JldEtleQ==');
@$core.Deprecated('Use respSetUserMappingDescriptor instead')
const RespSetUserMapping$json = const {
  '1': 'RespSetUserMapping',
  '2': const [
    const {
      '1': 'Status',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.rainmaker.RMakerConfigStatus',
      '10': 'Status'
    },
    const {'1': 'NodeId', '3': 2, '4': 1, '5': 9, '10': 'NodeId'},
  ],
};

/// Descriptor for `RespSetUserMapping`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List respSetUserMappingDescriptor = $convert.base64Decode(
    'ChJSZXNwU2V0VXNlck1hcHBpbmcSNQoGU3RhdHVzGAEgASgOMh0ucmFpbm1ha2VyLlJNYWtlckNvbmZpZ1N0YXR1c1IGU3RhdHVzEhYKBk5vZGVJZBgCIAEoCVIGTm9kZUlk');
@$core.Deprecated('Use rMakerConfigPayloadDescriptor instead')
const RMakerConfigPayload$json = const {
  '1': 'RMakerConfigPayload',
  '2': const [
    const {
      '1': 'msg',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.rainmaker.RMakerConfigMsgType',
      '10': 'msg'
    },
    const {
      '1': 'cmd_set_user_mapping',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.rainmaker.CmdSetUserMapping',
      '9': 0,
      '10': 'cmdSetUserMapping'
    },
    const {
      '1': 'resp_set_user_mapping',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.rainmaker.RespSetUserMapping',
      '9': 0,
      '10': 'respSetUserMapping'
    },
  ],
  '8': const [
    const {'1': 'payload'},
  ],
};

/// Descriptor for `RMakerConfigPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rMakerConfigPayloadDescriptor = $convert.base64Decode(
    'ChNSTWFrZXJDb25maWdQYXlsb2FkEjAKA21zZxgBIAEoDjIeLnJhaW5tYWtlci5STWFrZXJDb25maWdNc2dUeXBlUgNtc2cSTwoUY21kX3NldF91c2VyX21hcHBpbmcYCiABKAsyHC5yYWlubWFrZXIuQ21kU2V0VXNlck1hcHBpbmdIAFIRY21kU2V0VXNlck1hcHBpbmcSUgoVcmVzcF9zZXRfdXNlcl9tYXBwaW5nGAsgASgLMh0ucmFpbm1ha2VyLlJlc3BTZXRVc2VyTWFwcGluZ0gAUhJyZXNwU2V0VXNlck1hcHBpbmdCCQoHcGF5bG9hZA==');
