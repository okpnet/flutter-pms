/// Markdown の読み取り(構文木)と、PDF の出力(テーマ・ヘッダ/フッタ・承認スタンプ・日本語フォント)。
///
/// 設定の JSON・書式・配置は `approval_stamp`。使い方は `doc/contents/usage.md`。
library;

export 'src/fonts/pdf_fonts.dart';
export 'src/markdown/markdown_ast.dart';
export 'src/render/markdown_pdf_renderer.dart';
export 'src/render/stamp_widget.dart' show buildStampWidget;
