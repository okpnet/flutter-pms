import 'package:logger/logger.dart';

/// `logger` パッケージ側の設定。
///
/// 設定JSON全体のうち `"logger"` キー配下のオブジェクトに対応する。
class LoggerConfig {
  /// 設定を生成する。
  const LoggerConfig({
    this.level = Level.info,
    this.printer = LoggerPrinterKind.pretty,
    this.useConsoleOutput = true,
  });

  /// 出力する最低ログレベル。
  final Level level;

  /// 使用するプリンタの種類。
  final LoggerPrinterKind printer;

  /// コンソールへの出力も併せて行うかどうか。
  final bool useConsoleOutput;

  /// Map（JSONをデコードしたもの）から生成する。
  factory LoggerConfig.fromMap(Map<String, Object?> map) {
    return LoggerConfig(
      level: _levelFromName(map['level'] as String?) ?? Level.info,
      printer:
          _printerFromName(map['printer'] as String?) ??
          LoggerPrinterKind.pretty,
      useConsoleOutput: map['useConsoleOutput'] as bool? ?? true,
    );
  }

  static Level? _levelFromName(String? name) {
    if (name == null) return null;
    try {
      return Level.values.byName(name);
    } on ArgumentError {
      return null;
    }
  }

  static LoggerPrinterKind? _printerFromName(String? name) {
    if (name == null) return null;
    try {
      return LoggerPrinterKind.values.byName(name);
    } on ArgumentError {
      return null;
    }
  }
}

/// `logger` パッケージのプリンタ種別。
enum LoggerPrinterKind {
  /// 罫線付きの詳細な表示（[PrettyPrinter]）。
  pretty,

  /// 1行のみのシンプルな表示（[SimplePrinter]）。
  simple,
}
