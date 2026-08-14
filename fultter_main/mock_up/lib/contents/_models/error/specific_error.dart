import 'package:dart_mappable/dart_mappable.dart';

part 'specific_error.mapper.dart';

@MappableClass()
abstract class SpecificError with SpecificErrorMappable {
  String? get message;
  int get code;
  SpecificErrorCode get type;
  Object? get exception;
  bool get hasException;
}

@MappableEnum()
enum SpecificErrorCode {
  system(10000), //システム例外
  app(20000), //アプリ例外
  server(40000), //外部サーバー
  manipulation(30000); //不正操作

  final int value;
  const SpecificErrorCode(this.value);
}
