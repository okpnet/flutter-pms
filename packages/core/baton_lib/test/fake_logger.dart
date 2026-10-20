import 'package:logger_provider/logger_provider.dart';

/// 出力せず、error呼び出しだけを記録するテスト用ロガー。
class FakeLoggerProvider implements ILoggerProvider {
  final errors = <String>[];

  @override
  int get level => 0;

  @override
  void debug(String message, {Object? ex, StackTrace? trace}) {}

  @override
  void info(String message, {Object? ex, StackTrace? trace}) {}

  @override
  void warn(String message, {Object? ex, StackTrace? trace}) {}

  @override
  void error(String message, {Object? ex, StackTrace? trace}) =>
      errors.add(message);

  @override
  void fatal(String message, {Object? ex, StackTrace? trace}) =>
      errors.add(message);
}
