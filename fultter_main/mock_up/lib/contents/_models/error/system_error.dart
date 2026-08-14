import 'package:dart_mappable/dart_mappable.dart';

import 'specific_error.dart';

part 'system_error.mapper.dart';

@MappableClass()
class SystemError with SystemErrorMappable implements SpecificError {
  @override
  final Object? exception;

  @override
  final String? message;

  @override
  bool get hasException => exception != null;

  @override
  int get code => type.value + systemErrorCode.value;

  @override
  SpecificErrorCode get type => .server;

  final SystemErrorCode systemErrorCode;
  SystemError(this.systemErrorCode, {this.exception, this.message});
}

@MappableEnum()
enum SystemErrorCode {
  initialize(1); //初期化中

  final int value;
  const SystemErrorCode(this.value);
}
