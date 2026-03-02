part of logger_provider; //ロガーラップクラス

abstract interface class ILogger {
  void debug(String? message, {Object? exception, StackTrace? stackTrace});
  void info(String? message, {Object? exception, StackTrace? stackTrace});
  void error(String? message, {Object? exception, StackTrace? stackTrace});
  void warning(String? message, {Object? exception, StackTrace? stackTrace});
  void critical(String? message, {Object? exception, StackTrace? stackTrace});
}
