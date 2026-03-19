part of logger_provider;

class Logger implements ILogger {
  static final Logger _instance = Logger._();

  final _logger = Talker();

  Logger._();

  factory Logger() => _instance;

  @override
  void critical(String? message, {Object? exception, StackTrace? stackTrace}) =>
      _logger.critical(message, exception, stackTrace);

  @override
  void debug(String? message, {Object? exception, StackTrace? stackTrace}) =>
      _logger.debug(message, exception, stackTrace);

  @override
  void error(String? message, {Object? exception, StackTrace? stackTrace}) =>
      _logger.error(message, exception, stackTrace);

  @override
  void info(String? message, {Object? exception, StackTrace? stackTrace}) =>
      _logger.info(message, exception, stackTrace);

  @override
  void warning(String? message, {Object? exception, StackTrace? stackTrace}) =>
      _logger.warning(message, exception, stackTrace);
}
