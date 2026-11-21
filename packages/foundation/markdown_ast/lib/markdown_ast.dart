/// Markdown の構文木・読み取り(パーサー)と、WYSIWYG の文書の型。画面を持たない純 Dart。
///
/// - [MarkdownParser]: Markdown → 構文木([MdBlock]・[MdInline])。ページへのリンク `[[ページ名]]` も読む
/// - [WysiwygDocument]・[WysiwygBlock]: WYSIWYG の文書(ブロックの並び)。変換は `markdown_to_wysiwyg`・`wysiwyg_to_markdown`
library;

export 'src/markdown_nodes.dart';
export 'src/wysiwyg_document.dart';
