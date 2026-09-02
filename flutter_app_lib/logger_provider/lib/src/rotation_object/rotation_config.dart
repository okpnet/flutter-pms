import 'package:logger/logger.dart';
import 'package:rotation_log/rotation_log.dart';

/// `rotation_log` パッケージ側の設定。
///
/// 設定JSON全体のうち `"rotation"` キー配下のオブジェクトに対応する。
class RotationConfig {
  /// 設定を生成する。
  const RotationConfig({
    this.term = RotationLogTermEnum.daily,
    this.day,
    this.line,
    this.size,
    this.directoryName = 'logs',
    this.fileNamePrefix = 'rotation',
    this.archiveFileName = 'log.zip',
    this.maxArchivedFiles,
    this.minimumLevel = Level.trace,
    this.structuredLogFormat = RotationStructuredLogFormat.json,
    this.includeSessionId = false,
  });

  /// ローテーション方式。
  final RotationLogTermEnum term;

  /// [RotationLogTermEnum.custom] で使用する日数。
  final int? day;

  /// [RotationLogTermEnum.line] で使用する行数の閾値。
  final int? line;

  /// [RotationLogTermEnum.size] で使用するバイト数の閾値。
  final int? size;

  /// ログ保存ディレクトリ名。
  final String directoryName;

  /// ログファイル名の接頭辞。
  final String fileNamePrefix;

  /// アーカイブZIPのファイル名。
  final String archiveFileName;

  /// 保持するアーカイブファイルの最大数。
  final int? maxArchivedFiles;

  /// rotation_log 側で出力する最低ログレベル。
  final Level minimumLevel;

  /// 構造化ログの出力形式。
  final RotationStructuredLogFormat structuredLogFormat;

  /// 構造化ログにセッションIDを含めるかどうか。
  final bool includeSessionId;

  /// Map（JSONをデコードしたもの）から生成する。
  factory RotationConfig.fromMap(Map<String, Object?> map) {
    return RotationConfig(
      term:
          _termFromName(map['term'] as String?) ?? RotationLogTermEnum.daily,
      day: map['day'] as int?,
      line: map['line'] as int?,
      size: map['size'] as int?,
      directoryName: map['directoryName'] as String? ?? 'logs',
      fileNamePrefix: map['fileNamePrefix'] as String? ?? 'rotation',
      archiveFileName: map['archiveFileName'] as String? ?? 'log.zip',
      maxArchivedFiles: map['maxArchivedFiles'] as int?,
      minimumLevel:
          _levelFromName(map['minimumLevel'] as String?) ?? Level.trace,
      structuredLogFormat:
          _structuredLogFormatFromName(map['structuredLogFormat'] as String?) ??
          RotationStructuredLogFormat.json,
      includeSessionId: map['includeSessionId'] as bool? ?? false,
    );
  }

  /// [term] の設定を rotation_log の [RotationLogTerm] へ変換する。
  RotationLogTerm buildTerm() {
    switch (term) {
      case RotationLogTermEnum.daily:
      case RotationLogTermEnum.week:
      case RotationLogTermEnum.month:
        return RotationLogTerm.term(term);
      case RotationLogTermEnum.line:
        return RotationLogTerm.line(line ?? 1000);
      case RotationLogTermEnum.size:
        return RotationLogTerm.size(size ?? 1024 * 1024);
      case RotationLogTermEnum.custom:
        return RotationLogTerm.day(day ?? 1);
    }
  }

  /// rotation_log の [RotationLogOptions] へ変換する。
  RotationLogOptions buildOptions() {
    return RotationLogOptions(
      directoryName: directoryName,
      fileNamePrefix: fileNamePrefix,
      archiveFileName: archiveFileName,
      maxArchivedFiles: maxArchivedFiles,
      minimumLevel: minimumLevel,
      structuredLogFormat: structuredLogFormat,
      includeSessionId: includeSessionId,
    );
  }

  static RotationLogTermEnum? _termFromName(String? name) {
    if (name == null) return null;
    try {
      return RotationLogTermEnum.values.byName(name);
    } on ArgumentError {
      return null;
    }
  }

  static Level? _levelFromName(String? name) {
    if (name == null) return null;
    try {
      return Level.values.byName(name);
    } on ArgumentError {
      return null;
    }
  }

  static RotationStructuredLogFormat? _structuredLogFormatFromName(
    String? name,
  ) {
    if (name == null) return null;
    try {
      return RotationStructuredLogFormat.values.byName(name);
    } on ArgumentError {
      return null;
    }
  }
}
