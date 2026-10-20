import 'package:logger_provider/logger_provider.dart';

class FakeLogger implements ILoggerProvider {
  final List<String> errors = [];

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
