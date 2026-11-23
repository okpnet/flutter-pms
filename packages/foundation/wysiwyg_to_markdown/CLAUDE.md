# wysiwyg_to_markdown

WYSIWYG の文書(`WysiwygDocument`)→ Markdown。画面を持たない純 Dart(`dart test`)。

1.  `WysiwygToMarkdown.convert`(`fromBlocks`): ブロックを空行 1 つで結合する。空のブロックは出さない。ブロックの前後の空行・後ろの空白を取り除き、中の改行・字下げは保つ。閉じていないコードの囲みは閉じる(後ろのブロックを巻き込まない)。
1.  往復(Markdown → 文書 → Markdown)は冪等(整った Markdown はそのまま戻る)。テストは `test/`(開発時だけ `markdown_to_wysiwyg` に依存する)。

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
