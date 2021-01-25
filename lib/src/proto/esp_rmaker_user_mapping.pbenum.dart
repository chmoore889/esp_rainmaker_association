///
//  Generated code. Do not modify.
//  source: esp_rmaker_user_mapping.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class RMakerConfigStatus extends $pb.ProtobufEnum {
  static const RMakerConfigStatus Success = RMakerConfigStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Success');
  static const RMakerConfigStatus InvalidParam = RMakerConfigStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'InvalidParam');
  static const RMakerConfigStatus InvalidState = RMakerConfigStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'InvalidState');

  static const $core.List<RMakerConfigStatus> values = <RMakerConfigStatus> [
    Success,
    InvalidParam,
    InvalidState,
  ];

  static final $core.Map<$core.int, RMakerConfigStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RMakerConfigStatus valueOf($core.int value) => _byValue[value];

  const RMakerConfigStatus._($core.int v, $core.String n) : super(v, n);
}

class RMakerConfigMsgType extends $pb.ProtobufEnum {
  static const RMakerConfigMsgType TypeCmdSetUserMapping = RMakerConfigMsgType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TypeCmdSetUserMapping');
  static const RMakerConfigMsgType TypeRespSetUserMapping = RMakerConfigMsgType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TypeRespSetUserMapping');

  static const $core.List<RMakerConfigMsgType> values = <RMakerConfigMsgType> [
    TypeCmdSetUserMapping,
    TypeRespSetUserMapping,
  ];

  static final $core.Map<$core.int, RMakerConfigMsgType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RMakerConfigMsgType valueOf($core.int value) => _byValue[value];

  const RMakerConfigMsgType._($core.int v, $core.String n) : super(v, n);
}

