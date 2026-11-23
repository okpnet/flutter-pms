# markdown_pdf

Markdown → PDF の出力(テーマ・ヘッダ/フッタ・承認スタンプ・日本語フォント)。`pdf` パッケージ(`dart_pdf`。PDF の標準的な実装で更新が活発)を使う。仕様の経緯は `issue/202611.md#20261121_0001`(リポジトリのルート)。

## 構成
| 場所 | 内容 |
|---|---|
| (`markdown_ast`) | Markdown の構文木・読み取り(`MarkdownParser`)は `packages/foundation/markdown_ast`(PDF・閲覧・編集で共有) |
| `lib/src/render/markdown_pdf_renderer.dart` | `MarkdownPdfRenderer.render`(Markdown → PDF のバイト列) |
| `lib/src/render/stamp_widget.dart` | PDF の承認スタンプ(枠・文字・すかし・回転・破線) |
| `lib/src/fonts/pdf_fonts.dart` | `PdfFonts`・`loadBundledPdfFonts`(同梱のフォントを読む) |
| `assets/fonts/` | BIZ UDP 明朝(標準・太字。SIL Open Font License 1.1。`OFL.txt`)。Google Fonts の `ofl/bizudpmincho`。合計約 13MB |

## 仕様
1.  設定は `approval_stamp` の `PdfSettings`(`info_app.settings.pdf`)と `StampStyle`・`StampCard`。用紙・余白・テーマ(色は `$変数`)・見出し(H1 は章。テーマで改ページ)・段落・コード・表・ヘッダ/フッタ(固定の文字 + 変数)を反映する。
1.  ヘッダ/フッタの `{page}`・`{pages}` はページごとに展開する。`{chapter}`(今の章 = 直前の H1)は、書式に使われているときだけ 2 回描画して位置を調べる。未知の変数・設定の不備は `onProblem` に知らせ、出力は止めない。
1.  承認スタンプは前景に描く(位置は `StampLayout`。画面のプレビュー `approval_stamp_view` と同じ計算)。`pages = first` は 1 ページ目だけ。
1.  対応する Markdown: 見出し・段落・箇条書き・番号付き・引用・コード・表・区切り線、インラインの太字・コード・リンク(`[[ページ]]` は文字、外部リンクは URL 注釈つき)。斜体の字体は同梱しない(通常の字体)。画像・HTML は非対応。
1.  フォントは `loadBundledPdfFonts()`(`rootBundle`)で 1 回読んで使い回す。テストはファイルから読む。等幅のフォントは同梱しない(コードも同じ字体)。

## テスト
`test/markdown_pdf_test.dart`(`flutter test`。サーバー不要)。目視用の出力は、環境変数 `MARKDOWN_PDF_OUT` にフォルダを渡すと、スタンプの形ごとのサンプル PDF を書き出す。


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

## PDF のメタデータ
出力した PDF の Keywords に、使った PDF の設定(`pdf`)を `pms-pdf-settings:v1:` + JSON で残す(`PdfSettingsMetadata.encode`)。後から `PdfSettingsMetadata.read(bytes)` で読み戻し、どの設定で作られたか確認・再現できる(承認の記録は追記のみで、設定の変更は見た目だけを変えるため)。
