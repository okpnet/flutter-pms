/// Markdown → PDF の出力(テーマ・ヘッダ/フッタ・承認スタンプ・日本語フォント)。Markdown の読み取りは `markdown_ast`。
///
/// 設定の JSON・書式・配置は `approval_stamp`。使い方は `doc/contents/usage.md`。
library;

export 'src/fonts/pdf_fonts.dart';
export 'src/render/markdown_pdf_renderer.dart';
export 'src/render/pdf_metadata.dart';
export 'src/render/stamp_widget.dart' show buildStampWidget;
