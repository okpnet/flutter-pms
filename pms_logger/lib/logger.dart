part of logger_provider;

class Logger implements ILogger {
  static final Logger _instance = Logger._();

  final _logger = Talker();

  Logger._();

  factory Logger() => _instance;

  @override
  void critical(String? message, {Exception? ex, StackTrace? st}) =>
      _logger.critical(message, ex, st);

  @override
  void debug(String? message, {Exception? ex, StackTrace? st}) =>
      _logger.debug(message, ex, st);

  @override
  void error(String? message, {Exception? ex, StackTrace? st}) =>
      _logger.error(message, ex, st);

  @override
  void info(String? message, {Exception? ex, StackTrace? st}) =>
      _logger.info(message, ex, st);

  @override
  void warnig(String? message, {Exception? ex, StackTrace? st}) =>
      _logger.warning(message, ex, st);
}
