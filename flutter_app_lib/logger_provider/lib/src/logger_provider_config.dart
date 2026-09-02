import 'dart:convert';

import 'logger_object/_logger_object.dart';
import 'rotation_object/_rotation_object.dart';

/// `logger_provider` の設定全体を表すオブジェクト。
///
/// `rotation_log` と `logger` それぞれの設定を分割せず、1つのJSONオブジェクトの
/// 中に `"logger"` / `"rotation"` としてネストして持たせる。
///
/// ```json
/// {
///   "logger": {
///     "level": "info",
///     "printer": "pretty",
///     "useConsoleOutput": true
///   },
///   "rotation": {
///     "term": "daily",
///     "directoryName": "logs",
///     "fileNamePrefix": "rotation",
///     "maxArchivedFiles": 10,
///     "minimumLevel": "trace"
///   }
/// }
/// ```
class LoggerProviderConfig {
  /// 設定を生成する。
  const LoggerProviderConfig({
    this.logger = const LoggerConfig(),
    this.rotation = const RotationConfig(),
  });

  /// `logger` パッケージ側の設定。
  final LoggerConfig logger;

  /// `rotation_log` パッケージ側の設定。
  final RotationConfig rotation;

  /// Map（JSONをデコードしたもの）から生成する。
  factory LoggerProviderConfig.fromMap(Map<String, Object?> map) {
    return LoggerProviderConfig(
      logger: LoggerConfig.fromMap(_childMap(map, 'logger')),
      rotation: RotationConfig.fromMap(_childMap(map, 'rotation')),
    );
  }

  /// JSON文字列から生成する。
  factory LoggerProviderConfig.fromJson(String source) {
    final decoded = jsonDecode(source);
    if (decoded is! Map) {
      throw const FormatException(
        'logger_provider の設定はJSONオブジェクトである必要があります。',
      );
    }
    return LoggerProviderConfig.fromMap(decoded.cast<String, Object?>());
  }

  static Map<String, Object?> _childMap(Map<String, Object?> map, String key) {
    final child = map[key];
    if (child == null) return const <String, Object?>{};
    if (child is Map) return child.cast<String, Object?>();
    throw FormatException('"$key" はJSONオブジェクトである必要があります。');
  }
}
