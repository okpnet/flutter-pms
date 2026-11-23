# markdown_stream

Markdown のストリームからの読み込みと、ストリームへの書き出し。画面を持たない純 Dart(`dart test`)。ファイル・ネットワーク・保管庫(PocketBase のファイルなど)のバイトのストリームと、Markdown の文字をつなぐ。

1.  `MarkdownStreamReader`: UTF-8 で読み(チャンクが文字の途中で切れていても壊れない)、先頭の BOM を取り除き、改行を LF にそろえる。上限(既定 10MB)を超えたら読み切る前に `tooLarge`。UTF-8 として読めなければ `invalidEncoding`(`allowMalformed` なら置き換えて続ける)。`readBlocks` は構文木(`markdown_ast`)まで読む。
1.  `MarkdownStreamWriter`: UTF-8 で、指定の文字数ごとに流す(サロゲートペアの途中で区切らない)。改行コード・BOM・末尾の改行を選べる。シンクへ書く(閉じるかを選ぶ)・バイト列にする。
1.  失敗は `MarkdownStreamException`(種類 `MarkdownStreamFailure`)。ストリーム自体の失敗は、そのまま投げる。

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
