import 'package:pms_logger/ilogger.dart';
import 'package:talker/talker.dart';

class LoggerProvider implements ILogger {
  static final LoggerProvider _instance = LoggerProvider._();
  
  final _logger = Talker();
  
  LoggerProvider._();
  
  factory LoggerProvider() => _instance;
  
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
