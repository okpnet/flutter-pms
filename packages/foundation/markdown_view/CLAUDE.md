# markdown_view

Markdown(本文)を、テーマに沿った画面の部品にして出す(閲覧)。Flutter(`flutter test`)。

1.  `MarkdownView`: Markdown の文字を出す。見出しに GlobalKey(目次からのスクロール用)、空のときの文字。
1.  `MarkdownViewTheme`: 見た目(本文・見出しの文字、リンク・未作成リンク・引用・コード・表の色)。既定は `MarkdownViewTheme.of(context)`(アプリの `Theme`・`ColorScheme`)。`copyWith` で上書きする(色の値を直接書かない)。
1.  ページへのリンクの行き先は、呼び出し側が `WikiLinkResolver` で決める(`WikiLinkTarget.found`/`missing`。押したときの動き)。外部リンクは `onExternalLink` があるときだけ押せる(この部品からは開かない)。

## Markdown 系のパッケージ(責務の分担)
| パッケージ | 責務 | 種類 |
|---|---|---|
| `markdown_ast` | Markdown の構文木・読み取り(`MarkdownParser`)と、WYSIWYG の文書の型(`WysiwygDocument`・`WysiwygBlock`) | 純 Dart |
| `markdown_view` | テーマを使った Markdown の閲覧(`MarkdownView`・`MarkdownViewTheme`) | Flutter |
| `markdown_to_wysiwyg` | Markdown → WYSIWYG の文書(`MarkdownToWysiwyg`) | 純 Dart |
| `wysiwyg_to_markdown` | WYSIWYG の文書 → Markdown(`WysiwygToMarkdown`) | 純 Dart |
| `wysiwyg_editor` | 編集の画面の部品(ビジュアル / Markdown の切り替え・道具バー。`WysiwygEditor`) | Flutter |
| `markdown_stream` | ストリームからの読み込み・ストリームへの書き出し(`MarkdownStreamReader`・`MarkdownStreamWriter`) | 純 Dart |
| `markdown_pdf` | Markdown → PDF(`MarkdownPdfRenderer`。テーマ・ヘッダ/フッタ・承認スタンプ) | Flutter |

依存は一方向: `markdown_ast` ← (`markdown_view`・`markdown_to_wysiwyg`・`wysiwyg_to_markdown`・`markdown_stream`・`markdown_pdf`) ← `wysiwyg_editor`。
画面(`manual`・`quality_document`)は、これらを組み合わせるだけにし、Markdown の読み書き・表示・編集・PDF を画面の中に持たない。
経緯は `issue/202611.md#20261121_0001`(リポジトリのルート)の 20。

## 規則/仕様
`packages/foundation` の他のパッケージと同じ(ディレクトリ/ファイル・命名・バレルファイル・JSON 化・ログ・GoF)。
生成結果のレポートは `doc/log`、使い方は `doc/contents`、追加・変更の指示は `issue`。
ログは持たない(失敗は例外の種類・戻り値で返し、呼び出し側がログに残す)。
