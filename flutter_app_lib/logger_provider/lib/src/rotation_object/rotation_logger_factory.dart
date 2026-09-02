import 'dart:io';

import 'package:rotation_log/rotation_log.dart';

import 'rotation_config.dart';

/// [RotationConfig] から初期化済みの [RotationLogger] を組み立てるファクトリ。
class RotationLoggerFactory {
  /// ファクトリを生成する。
  const RotationLoggerFactory();

  /// [RotationLogger] を生成し、[RotationLogger.init] まで完了させて返す。
  ///
  /// [directoryProvider] を指定すると、ログ保存先ディレクトリを差し替えられる
  /// （テストや、アプリ独自の保存先を使いたい場合に利用する）。
  Future<RotationLogger> create(
    RotationConfig config, {
    Future<Directory> Function()? directoryProvider,
  }) async {
    final logger = RotationLogger(
      config.buildTerm(),
      options: config.buildOptions(),
      directoryProvider: directoryProvider,
    );
    await logger.init();
    return logger;
  }
}
