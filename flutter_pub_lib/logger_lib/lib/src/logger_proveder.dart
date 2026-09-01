import 'i_logger_provider.dart';

abstract class LoggerProvider<T> implements ILoggerProvider {
  T get logger;
}
