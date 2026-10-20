import 'package:logger/logger.dart';

import 'i_logger_provider.dart';

/// 何も出力しない [ILoggerProvider]。
///
/// ロガーが未登録のときの既定値（Null Object）。利用側が null 判定をせずに済む。
class NoopLoggerProvider implements ILoggerProvider {
  /// 生成する。
  const NoopLoggerProvider();

  @override
  int get level => Level.off.value;

  @override
  void debug(String message, {Object? ex, StackTrace? trace}) {}

  @override
  void info(String message, {Object? ex, StackTrace? trace}) {}

  @override
  void warn(String message, {Object? ex, StackTrace? trace}) {}

  @override
  void error(String message, {Object? ex, StackTrace? trace}) {}

  @override
  void fatal(String message, {Object? ex, StackTrace? trace}) {}
}
