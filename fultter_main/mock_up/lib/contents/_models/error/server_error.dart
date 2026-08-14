import 'package:dart_mappable/dart_mappable.dart';

import 'specific_error.dart';

part 'server_error.mapper.dart';

@MappableClass()
class ServerError with ServerErrorMappable implements SpecificError {
  @override
  final Object? exception;

  @override
  final String? message;

  @override
  bool get hasException => exception != null;

  @override
  int get code => type.value + serverTypeCode.value + serverErrorCode.value;

  @override
  SpecificErrorCode get type => .server;

  final ServerErrorCode serverErrorCode;
  final ServerTypeCode serverTypeCode;
  ServerError(
    this.serverTypeCode,
    this.serverErrorCode, {
    this.exception,
    this.message,
  });
}

@MappableEnum()
enum ServerTypeCode {
  authorize(100),
  ntp(200),
  graphQL(300);

  final int value;
  const ServerTypeCode(this.value);
}

@MappableEnum()
enum ServerErrorCode {
  notFound(1), //URL間違い
  timeout(2); //接続タイムアウト

  final int value;
  const ServerErrorCode(this.value);
}
