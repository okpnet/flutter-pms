import 'package:dart_mappable/dart_mappable.dart';

import 'specific_error.dart';

part 'app_error.mapper.dart';

@MappableClass()
class AppError with AppErrorMappable implements SpecificError {
  @override
  final Object? exception;

  @override
  final String? message;

  @override
  bool get hasException => exception != null;

  @override
  int get code => type.value + appErrorCode.value;

  @override
  SpecificErrorCode get type => .server;

  final AppErrorCode appErrorCode;
  AppError(this.appErrorCode, {this.exception, this.message});
}

@MappableEnum()
enum AppErrorCode {
  standardTimeRelated(1),
  inRouterClassScope(2),
  routeNotFoundOrBUildRouterException(3);

  final int value;
  const AppErrorCode(this.value);
}
