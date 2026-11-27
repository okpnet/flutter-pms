# markdown_pdf ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

markdown_pdf: Markdown(構文木・読み取り)と、PDF の出力(テーマ・ヘッダ/フッタ・承認スタンプ・日本語フォント)。

- 層: foundation(画面を持たない汎用部品)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/foundation/markdown_pdf` |
| Dart ファイル(生成物を除く) | 5 |
| `lib/src` の分け方 | `fonts(1)`、`render(3)` |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `PdfFonts` | クラス | PDF に埋め込むフォント(TrueType のバイト列)。日本語の本文には、BIZ UDP 明朝(SIL Open Font License 1.1)を同梱している。 | `lib/src/fonts/pdf_fonts.dart` |
| `loadBundledPdfFonts` | 関数 | 同梱の BIZ UDP 明朝(標準・太字)を読み込む。アプリの起動後に 1 回読み、使い回す。 | `lib/src/fonts/pdf_fonts.dart` |
| `MarkdownPdfRenderer` | クラス | Markdown を PDF にする(Markdown → ブロック → `pdf` の部品)。 | `lib/src/render/markdown_pdf_renderer.dart` |
| `PdfSettingsMetadata` | クラス | PDF のメタデータに、出力に使った設定(`pdf`)を残す(キーワード `Keywords` に `pms-pdf-settings:v1:` + 設定の JSON)。 | `lib/src/render/pdf_metadata.dart` |
| `buildStampWidget` | 関数 | 承認スタンプ 1 つの PDF の部品(枠・文字。すかしと回転を含む)。 | `lib/src/render/stamp_widget.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `approval_stamp`、`markdown_ast`
- 利用元: `manual`(パッケージ)、`quality_document`(パッケージ)
- 外部パッケージ: `pdf`

## 6. 設計上の決定(`CLAUDE.md` より)

- **構成**: | 場所 | 内容 |
- **仕様**: 設定は `approval_stamp` の `PdfSettings`(`info_app.settings.pdf`)と `StampStyle`・`StampCard`。用紙・余白・テーマ(色は `$変数`)・見出し(H1 は章。テーマで改ページ)・段落・コード・表・ヘッダ/フッタ(固定の文字 + 変数)を反映する。
- **Markdown 系のパッケージ(責務の分担)**: | パッケージ | 責務 | 種類 |
- **PDF のメタデータ**: 出力した PDF の Keywords に、使った PDF の設定(`pdf`)を `pms-pdf-settings:v1:` + JSON で残す(`PdfSettingsMetadata.encode`)。後から `PdfSettingsMetadata.read(bytes)` で読み戻し、どの設定で作られたか確認・再現できる(承認の記録は追記のみで…

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/markdown_pdf_test.dart`(10)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
