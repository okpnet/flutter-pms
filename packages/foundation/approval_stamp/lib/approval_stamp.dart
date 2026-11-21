/// 承認スタンプの様式・PDF のテーマ・ヘッダ/フッタの書式・配置の計算(画面を持たない純 Dart)。
///
/// 設定は `info_app.settings`(標準)と `mstr_approval_pattern.stamp_style`(承認パターンごとの上書き)の JSON。
/// 使い方は `doc/contents/usage.md`。
library;

export 'src/pdf/pdf_bands.dart';
export 'src/settings/app_settings.dart';
export 'src/settings/approval_settings.dart';
export 'src/stamp/stamp_content.dart';
export 'src/stamp/stamp_layout.dart';
export 'src/style/color_spec.dart';
export 'src/style/json_read.dart' show Problems, deepMerge;
export 'src/style/pdf_settings.dart';
export 'src/style/stamp_style.dart';
export 'src/template/date_format.dart';
export 'src/template/template_formatter.dart';
