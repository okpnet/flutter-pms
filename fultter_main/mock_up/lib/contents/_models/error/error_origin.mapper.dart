// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'error_origin.dart';

class ErrorOriginMapper extends EnumMapper<ErrorOrigin> {
  ErrorOriginMapper._();

  static ErrorOriginMapper? _instance;
  static ErrorOriginMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ErrorOriginMapper._());
    }
    return _instance!;
  }

  static ErrorOrigin fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ErrorOrigin decode(dynamic value) {
    switch (value) {
      case r'databaseServer':
        return ErrorOrigin.databaseServer;
      case r'authoricateServer':
        return ErrorOrigin.authoricateServer;
      case r'strageServer':
        return ErrorOrigin.strageServer;
      case r'graphqlServer':
        return ErrorOrigin.graphqlServer;
      case r'application':
        return ErrorOrigin.application;
      case r'unknown':
        return ErrorOrigin.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ErrorOrigin self) {
    switch (self) {
      case ErrorOrigin.databaseServer:
        return r'databaseServer';
      case ErrorOrigin.authoricateServer:
        return r'authoricateServer';
      case ErrorOrigin.strageServer:
        return r'strageServer';
      case ErrorOrigin.graphqlServer:
        return r'graphqlServer';
      case ErrorOrigin.application:
        return r'application';
      case ErrorOrigin.unknown:
        return r'unknown';
    }
  }
}

extension ErrorOriginMapperExtension on ErrorOrigin {
  String toValue() {
    ErrorOriginMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ErrorOrigin>(this) as String;
  }
}

