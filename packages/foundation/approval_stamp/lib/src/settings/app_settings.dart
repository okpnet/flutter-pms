import 'dart:convert';

import '../style/json_read.dart';
import '../style/pdf_settings.dart';
import '../style/stamp_style.dart';

/// アプリの設定(`info_app.settings`)。`version` と、機能ごとのキー(`stamp`・`pdf`)を持つ。
/// 知らないキーは [extra] に保ち、書き戻しても消さない(ほかの機能の設定を壊さない)。
class AppSettings {
  const AppSettings({
    this.version = currentVersion,
    this.stamp = StampStyle.standard,
    this.pdf = PdfSettings.standard,
    this.extra = const {},
  });

  static const int currentVersion = 1;

  final int version;

  /// 承認スタンプの標準の様式。
  final StampStyle stamp;
  final PdfSettings pdf;

  final Map<String, dynamic> extra;

  static const AppSettings standard = AppSettings();

  /// DB の値(JSON のオブジェクト、または JSON の文字列。null・不正は標準)から読む。
  /// 不備は [problems] に残し、読めた部分は使う(設定の不備でアプリを止めない)。
  factory AppSettings.parse(Object? raw, {Problems? problems}) {
    Object? value = raw;
    if (value is String) {
      try {
        value = jsonDecode(value);
      } on FormatException catch (e) {
        problems?.add('設定が JSON として読めません: ${e.message}');
        return AppSettings.standard;
      }
    }
    if (value == null) return AppSettings.standard;
    if (value is! Map) {
      problems?.add('設定がオブジェクトではありません');
      return AppSettings.standard;
    }
    final m = asJsonMap(value);
    final version = m['version'] is num
        ? (m['version'] as num).toInt()
        : currentVersion;
    if (version > currentVersion) {
      problems?.add(
        '設定の版($version)が、このアプリの版($currentVersion)より新しいです。知っている項目だけを使います',
      );
    }
    final extra = Map<String, dynamic>.from(m)
      ..removeWhere((k, _) => const {'version', 'stamp', 'pdf'}.contains(k));
    return AppSettings(
      version: version,
      stamp: StampStyle.fromJson(m['stamp'], problems),
      pdf: PdfSettings.fromJson(m['pdf'], problems),
      extra: extra,
    );
  }

  AppSettings copyWith({StampStyle? stamp, PdfSettings? pdf}) => AppSettings(
    version: version,
    stamp: stamp ?? this.stamp,
    pdf: pdf ?? this.pdf,
    extra: extra,
  );

  Map<String, dynamic> toJson() => {
    ...extra,
    'version': version,
    'stamp': stamp.toJson(),
    'pdf': pdf.toJson(),
  };
}
