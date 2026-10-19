// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'specific_error.dart';

class SpecificErrorCodeMapper extends EnumMapper<SpecificErrorCode> {
  SpecificErrorCodeMapper._();

  static SpecificErrorCodeMapper? _instance;
  static SpecificErrorCodeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SpecificErrorCodeMapper._());
    }
    return _instance!;
  }

  static SpecificErrorCode fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  SpecificErrorCode decode(dynamic value) {
    switch (value) {
      case r'system':
        return SpecificErrorCode.system;
      case r'app':
        return SpecificErrorCode.app;
      case r'server':
        return SpecificErrorCode.server;
      case r'manipulation':
        return SpecificErrorCode.manipulation;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(SpecificErrorCode self) {
    switch (self) {
      case SpecificErrorCode.system:
        return r'system';
      case SpecificErrorCode.app:
        return r'app';
      case SpecificErrorCode.server:
        return r'server';
      case SpecificErrorCode.manipulation:
        return r'manipulation';
    }
  }
}

extension SpecificErrorCodeMapperExtension on SpecificErrorCode {
  String toValue() {
    SpecificErrorCodeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<SpecificErrorCode>(this) as String;
  }
}

class SpecificErrorMapper extends ClassMapperBase<SpecificError> {
  SpecificErrorMapper._();

  static SpecificErrorMapper? _instance;
  static SpecificErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SpecificErrorMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SpecificError';

  @override
  final MappableFields<SpecificError> fields = const {};

  static SpecificError _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('SpecificError');
  }

  @override
  final Function instantiate = _instantiate;

  static SpecificError fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SpecificError>(map);
  }

  static SpecificError fromJson(String json) {
    return ensureInitialized().decodeJson<SpecificError>(json);
  }
}

mixin SpecificErrorMappable {
  String toJson();
  Map<String, dynamic> toMap();
  SpecificErrorCopyWith<SpecificError, SpecificError, SpecificError>
  get copyWith;
}

abstract class SpecificErrorCopyWith<$R, $In extends SpecificError, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  SpecificErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

