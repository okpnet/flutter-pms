/// Markdown(構文木)を、テーマに沿った画面の部品にして出す(閲覧)。
///
/// - [MarkdownView]: Markdown の文字を出す部品。リンクの行き先は呼び出し側が決める
/// - [MarkdownViewTheme]: 見た目(既定はアプリのテーマの文字・配色)
/// - [WikiLinkTarget]・[WikiLinkResolver]: ページへのリンクの行き先
library;

export 'src/markdown_view.dart';
export 'src/markdown_view_theme.dart';
