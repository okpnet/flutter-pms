import 'package:logger/logger.dart';
import 'package:rotation_log/rotation_log.dart';

import 'logger_config.dart';

/// [LoggerConfig] と [RotationLogger] から `logger` パッケージの [Logger] を組み立てるファクトリ。
class LoggerFactory {
  /// ファクトリを生成する。
  const LoggerFactory();

  /// [rotationLogger] へのローテーション出力を持つ [Logger] を生成する。
  ///
  /// フィルタには [ProductionFilter] を使用する。既定の [DevelopmentFilter] は
  /// リリースビルド（assert無効時）で常に出力を止めてしまうため、
  /// ローテーションファイルへの記録を目的とする本ライブラリでは採用しない。
  Logger create(LoggerConfig config, RotationLogger rotationLogger) {
    final outputs = <LogOutput>[
      RotationLogOutput(rotationLogger),
      if (config.useConsoleOutput) ConsoleOutput(),
    ];

    return Logger(
      level: config.level,
      filter: ProductionFilter(),
      printer: switch (config.printer) {
        LoggerPrinterKind.pretty => PrettyPrinter(),
        LoggerPrinterKind.simple => SimplePrinter(),
      },
      output: MultiOutput(outputs),
    );
  }
}
