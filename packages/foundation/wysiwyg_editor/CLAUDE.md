# wysiwyg_editor

本文の編集の画面の部品。「ビジュアル」と「Markdown」を切り替えて書く。Flutter(`flutter test`)。

1.  `WysiwygEditor`: 道具バー(H2・H3・太字・斜体・箇条書き・番号付き・引用・コード・表・区切り線・リンク)、ビジュアル(ブロックを選んで直す・上へ・下へ・削除・完了)、Markdown(入力欄と、広い画面では右にプレビュー)。タイトル・保存・取り消しは持たない(呼び出し側の責務)。
1.  `WysiwygEditorController`: いまの本文(`markdown`)と、変更があるか(`isDirty`。整えただけの差は変更としない)。保存の画面が読む。
1.  `WysiwygEditorLabels`: 文字(`ja()`・`en()` の既定。アプリは自分の多言語の文字から作って渡す)。
1.  リンクの道具は `pickLink`(選択した文字を渡し、入れる Markdown を返す)があるときだけ出す。ページへのリンクの表示は `wikiLinkResolver`(`markdown_view`)。
1.  部品の Key は `keyPrefix`(既定 `wysiwyg`。`<接頭辞>-edit-mode`・`-edit-md`・`-tool-<名前>`・`-chunk-<番号>`・`-chunk-field`・`-chunk-up/down/delete/done`)。
1.  `MdTextOps`: 入力欄への書式の挿入(純粋な関数)。変換は `markdown_to_wysiwyg`・`wysiwyg_to_markdown`、表示は `markdown_view`。

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
