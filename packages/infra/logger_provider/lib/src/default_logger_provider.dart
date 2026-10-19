import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart' show AssetBundle, rootBundle;
import 'package:logger/logger.dart';
import 'package:logger_lib/logger_lib.dart';
import 'package:rotation_log/rotation_log.dart';

import 'logger_object/_logger_object.dart';
import 'logger_provider_config.dart';
import 'rotation_object/_rotation_object.dart';

/// `logger` と `rotation_log` をラップし、`logger_lib` の [LoggerProvider] を実装するロガー本体。
///
/// 利用側は本クラスを直接生成せず、以下3通りのファクトリメソッドのいずれかを使う:
/// - [DefaultLoggerProvider.fromConfig] : 設定クラス（[LoggerProviderConfig]）から
/// - [DefaultLoggerProvider.fromMap] : Map（JSONをデコードしたもの）から
/// - [DefaultLoggerProvider.fromAsset] : アセットのパスから
class DefaultLoggerProvider extends LoggerProvider<Logger> {
  DefaultLoggerProvider._(this._logger, this._rotationLogger, this._level);

  final Logger _logger;
  final RotationLogger _rotationLogger;
  final Level _level;

  /// [LoggerProviderConfig] から生成する。
  ///
  /// [directoryProvider] を指定すると、ログ保存先ディレクトリを差し替えられる
  /// （テストや、アプリ独自の保存先を使いたい場合に利用する）。
  static Future<DefaultLoggerProvider> fromConfig(
    LoggerProviderConfig config, {
    RotationLoggerFactory rotationLoggerFactory =
        const RotationLoggerFactory(),
    LoggerFactory loggerFactory = const LoggerFactory(),
    Future<Directory> Function()? directoryProvider,
  }) async {
    final rotationLogger = await rotationLoggerFactory.create(
      config.rotation,
      directoryProvider: directoryProvider,
    );
    final logger = loggerFactory.create(config.logger, rotationLogger);
    return DefaultLoggerProvider._(
      logger,
      rotationLogger,
      config.logger.level,
    );
  }

  /// Map（JSONをデコードしたもの）から生成する。
  static Future<DefaultLoggerProvider> fromMap(
    Map<String, Object?> map, {
    Future<Directory> Function()? directoryProvider,
  }) {
    return fromConfig(
      LoggerProviderConfig.fromMap(map),
      directoryProvider: directoryProvider,
    );
  }

  /// アセットのパスから生成する。
  ///
  /// [bundle] を省略した場合は [rootBundle] を使用する。
  static Future<DefaultLoggerProvider> fromAsset(
    String assetPath, {
    AssetBundle? bundle,
    Future<Directory> Function()? directoryProvider,
  }) async {
    final source = await (bundle ?? rootBundle).loadString(assetPath);
    final decoded = jsonDecode(source);
    if (decoded is! Map) {
      throw FormatException(
        'logger_provider の設定はJSONオブジェクトである必要があります。',
        source,
      );
    }
    return fromMap(
      decoded.cast<String, Object?>(),
      directoryProvider: directoryProvider,
    );
  }

  /// ラップしている `logger` パッケージの [Logger] インスタンス。
  @override
  Logger get logger => _logger;

  /// 現在の出力レベル。
  @override
  int get level => _level.value;

  @override
  void debug(String message, {Object? ex, StackTrace? trace}) =>
      _logger.d(message, error: ex, stackTrace: trace);

  @override
  void info(String message, {Object? ex, StackTrace? trace}) =>
      _logger.i(message, error: ex, stackTrace: trace);

  @override
  void warn(String message, {Object? ex, StackTrace? trace}) =>
      _logger.w(message, error: ex, stackTrace: trace);

  @override
  void error(String message, {Object? ex, StackTrace? trace}) =>
      _logger.e(message, error: ex, stackTrace: trace);

  @override
  void fatal(String message, {Object? ex, StackTrace? trace}) =>
      _logger.f(message, error: ex, stackTrace: trace);

  /// 保持している [Logger] と [RotationLogger] を破棄する。
  Future<void> dispose() async {
    await _logger.close();
    await _rotationLogger.close();
  }
}
