///
//  Generated code. Do not modify.
//  source: esp_rmaker_user_mapping.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'esp_rmaker_user_mapping.pbenum.dart';

export 'esp_rmaker_user_mapping.pbenum.dart';

class CmdSetUserMapping extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CmdSetUserMapping',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'rainmaker'),
      createEmptyInstance: create)
    ..aOS(1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserID',
        protoName: 'UserID')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'SecretKey',
        protoName: 'SecretKey')
    ..hasRequiredFields = false;

  CmdSetUserMapping._() : super();
  factory CmdSetUserMapping() => create();
  factory CmdSetUserMapping.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CmdSetUserMapping.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CmdSetUserMapping clone() => CmdSetUserMapping()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CmdSetUserMapping copyWith(void Function(CmdSetUserMapping) updates) =>
      super.copyWith((message) => updates(
          message as CmdSetUserMapping)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CmdSetUserMapping create() => CmdSetUserMapping._();
  CmdSetUserMapping createEmptyInstance() => create();
  static $pb.PbList<CmdSetUserMapping> createRepeated() =>
      $pb.PbList<CmdSetUserMapping>();
  @$core.pragma('dart2js:noInline')
  static CmdSetUserMapping getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CmdSetUserMapping>(create);
  static CmdSetUserMapping _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userID => $_getSZ(0);
  @$pb.TagNumber(1)
  set userID($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUserID() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get secretKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set secretKey($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSecretKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecretKey() => clearField(2);
}

class RespSetUserMapping extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RespSetUserMapping',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'rainmaker'),
      createEmptyInstance: create)
    ..e<RMakerConfigStatus>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'Status',
        $pb.PbFieldType.OE,
        protoName: 'Status',
        defaultOrMaker: RMakerConfigStatus.Success,
        valueOf: RMakerConfigStatus.valueOf,
        enumValues: RMakerConfigStatus.values)
    ..aOS(
        2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'NodeId',
        protoName: 'NodeId')
    ..hasRequiredFields = false;

  RespSetUserMapping._() : super();
  factory RespSetUserMapping() => create();
  factory RespSetUserMapping.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RespSetUserMapping.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RespSetUserMapping clone() => RespSetUserMapping()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RespSetUserMapping copyWith(void Function(RespSetUserMapping) updates) =>
      super.copyWith((message) => updates(
          message as RespSetUserMapping)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RespSetUserMapping create() => RespSetUserMapping._();
  RespSetUserMapping createEmptyInstance() => create();
  static $pb.PbList<RespSetUserMapping> createRepeated() =>
      $pb.PbList<RespSetUserMapping>();
  @$core.pragma('dart2js:noInline')
  static RespSetUserMapping getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RespSetUserMapping>(create);
  static RespSetUserMapping _defaultInstance;

  @$pb.TagNumber(1)
  RMakerConfigStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(RMakerConfigStatus v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeId => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNodeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeId() => clearField(2);
}

enum RMakerConfigPayload_Payload {
  cmdSetUserMapping,
  respSetUserMapping,
  notSet
}

class RMakerConfigPayload extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, RMakerConfigPayload_Payload>
      _RMakerConfigPayload_PayloadByTag = {
    10: RMakerConfigPayload_Payload.cmdSetUserMapping,
    11: RMakerConfigPayload_Payload.respSetUserMapping,
    0: RMakerConfigPayload_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RMakerConfigPayload',
      package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'rainmaker'),
      createEmptyInstance: create)
    ..oo(0, [10, 11])
    ..e<RMakerConfigMsgType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg', $pb.PbFieldType.OE,
        defaultOrMaker: RMakerConfigMsgType.TypeCmdSetUserMapping,
        valueOf: RMakerConfigMsgType.valueOf,
        enumValues: RMakerConfigMsgType.values)
    ..aOM<CmdSetUserMapping>(
        10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cmdSetUserMapping',
        subBuilder: CmdSetUserMapping.create)
    ..aOM<RespSetUserMapping>(
        11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'respSetUserMapping',
        subBuilder: RespSetUserMapping.create)
    ..hasRequiredFields = false;

  RMakerConfigPayload._() : super();
  factory RMakerConfigPayload() => create();
  factory RMakerConfigPayload.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RMakerConfigPayload.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RMakerConfigPayload clone() => RMakerConfigPayload()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RMakerConfigPayload copyWith(void Function(RMakerConfigPayload) updates) =>
      super.copyWith((message) => updates(
          message as RMakerConfigPayload)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RMakerConfigPayload create() => RMakerConfigPayload._();
  RMakerConfigPayload createEmptyInstance() => create();
  static $pb.PbList<RMakerConfigPayload> createRepeated() =>
      $pb.PbList<RMakerConfigPayload>();
  @$core.pragma('dart2js:noInline')
  static RMakerConfigPayload getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RMakerConfigPayload>(create);
  static RMakerConfigPayload _defaultInstance;

  RMakerConfigPayload_Payload whichPayload() =>
      _RMakerConfigPayload_PayloadByTag[$_whichOneof(0)];
  void clearPayload() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  RMakerConfigMsgType get msg => $_getN(0);
  @$pb.TagNumber(1)
  set msg(RMakerConfigMsgType v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsg() => clearField(1);

  @$pb.TagNumber(10)
  CmdSetUserMapping get cmdSetUserMapping => $_getN(1);
  @$pb.TagNumber(10)
  set cmdSetUserMapping(CmdSetUserMapping v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasCmdSetUserMapping() => $_has(1);
  @$pb.TagNumber(10)
  void clearCmdSetUserMapping() => clearField(10);
  @$pb.TagNumber(10)
  CmdSetUserMapping ensureCmdSetUserMapping() => $_ensure(1);

  @$pb.TagNumber(11)
  RespSetUserMapping get respSetUserMapping => $_getN(2);
  @$pb.TagNumber(11)
  set respSetUserMapping(RespSetUserMapping v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasRespSetUserMapping() => $_has(2);
  @$pb.TagNumber(11)
  void clearRespSetUserMapping() => clearField(11);
  @$pb.TagNumber(11)
  RespSetUserMapping ensureRespSetUserMapping() => $_ensure(2);
}
