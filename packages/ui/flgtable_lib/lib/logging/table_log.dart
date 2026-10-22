import 'package:logger_provider/logger_provider.dart';

/// ライブラリ由来のログを切り分けるため、メッセージに共通の接頭辞を付ける。
class TableLog {
  const TableLog(this._logger);

  static const tag = '[flgtable]';

  final ILoggerProvider _logger;

  void debug(String message) => _logger.debug('$tag $message');

  void error(String message, {Object? ex, StackTrace? trace}) {
    final text = '$tag $message';
    if (ex != null && trace != null) {
      _logger.error(text, ex: ex, trace: trace);
    } else if (ex != null) {
      _logger.error(text, ex: ex);
    } else {
      _logger.error(text);
    }
  }
}
