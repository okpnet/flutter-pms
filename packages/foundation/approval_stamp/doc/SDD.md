# approval_stamp ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

approval_stamp: 承認スタンプの様式・PDF のテーマ・ヘッダ/フッタの書式(変数の展開)・配置の計算(画面を持たない純 Dart)。

- 層: foundation(画面を持たない汎用部品)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/foundation/approval_stamp` |
| Dart ファイル(生成物を除く) | 12 |
| `lib/src` の分け方 | `pdf(1)`、`settings(2)`、`stamp(2)`、`style(4)`、`template(2)` |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `PdfDocumentInfo` | クラス | PDF のヘッダ・フッタの変数の元(文書の情報)。 | `lib/src/pdf/pdf_bands.dart` |
| `PdfBandText` | クラス | 解決したヘッダ・フッタの 3 か所の文字。 | `lib/src/pdf/pdf_bands.dart` |
| `PdfBandResolver` | クラス | ヘッダ・フッタの書式を、ページごとに展開する。 | `lib/src/pdf/pdf_bands.dart` |
| `AppSettings` | クラス | アプリの設定(`info_app.settings`)。`version` と、機能ごとのキー(`stamp`・`pdf`)を持つ。 | `lib/src/settings/app_settings.dart` |
| `SettingsSchemaIssue` | クラス | 設定の JSON の形の誤り 1 件。[path] は誤りの場所(`/pdf/page/size`。ルートは空)、[message] は理由。 | `lib/src/settings/app_settings_schema.dart` |
| `validateAppSettings` | 関数 | 設定の JSON を、スキーマ([appSettingsSchema])で検査する。誤りが無ければ空。 | `lib/src/settings/app_settings_schema.dart` |
| `validateStampStyle` | 関数 | 承認パターンごとのスタンプの様式(`mstr_approval_pattern.stamp_style`)を、スキーマ(設定の `stamp` と同じ形)で検査する。誤りが無ければ空。 | `lib/src/settings/app_settings_schema.dart` |
| `ApprovalStepInfo` | クラス | 承認の段 1 つの状態(`v_document_approval_stamp` の 1 行から作る。判定は boolean。文字はビューの値をそのまま使う)。 | `lib/src/stamp/stamp_content.dart` |
| `StampState` | 列挙型 |  | `lib/src/stamp/stamp_content.dart` |
| `StampLine` | クラス |  | `lib/src/stamp/stamp_content.dart` |
| `StampCard` | クラス | スタンプ 1 つ(表示する行と状態)。 | `lib/src/stamp/stamp_content.dart` |
| `StampContentBuilder` | クラス | 様式([StampStyle])と承認の段から、スタンプの内容(行)を作る。 | `lib/src/stamp/stamp_content.dart` |
| `StampPlacement` | クラス | 用紙の上でのスタンプ 1 つの位置と大きさ(mm。左上が原点)。 | `lib/src/stamp/stamp_layout.dart` |
| `StampLayout` | クラス | スタンプの配置の計算(画面の用紙のプレビューと PDF で同じ結果を使う)。 | `lib/src/stamp/stamp_layout.dart` |
| `resolveColor` | 関数 | 色の指定: `"#RRGGBB"`・`"#AARRGGBB"`、または `"$変数名"`(テーマの変数 `vars` の値。変数が別の変数を指してもよい。循環は止める)。 | `lib/src/style/color_spec.dart` |
| `parseHexColor` | 関数 | `#RRGGBB`・`#AARRGGBB`(大文字小文字は区別しない)を ARGB の整数にする。不正なら null。 | `lib/src/style/color_spec.dart` |
| `colorToHex` | 関数 | ARGB の整数を `#RRGGBB`(不透明)または `#AARRGGBB` にする。 | `lib/src/style/color_spec.dart` |
| `Problems` | クラス | 設定の JSON を、寛容に読む部品(欠けた・型の違う値は既定に戻し、[Problems] に残す)。 | `lib/src/style/json_read.dart` |
| `deepMerge` | 関数 | [base] に [override] を重ねる(Map は再帰。リスト・値は [override] が置き換える。null は無視)。 | `lib/src/style/json_read.dart` |
| `PdfPageSize` | 列挙型 |  | `lib/src/style/pdf_settings.dart` |
| `PdfOrientation` | 列挙型 |  | `lib/src/style/pdf_settings.dart` |
| `PdfFirstPage` | 列挙型 | 1 ページ目のヘッダ・フッタ。same = 他のページと同じ、none = 出さない。 | `lib/src/style/pdf_settings.dart` |
| `PdfMargins` | クラス |  | `lib/src/style/pdf_settings.dart` |
| `PdfPage` | クラス |  | `lib/src/style/pdf_settings.dart` |
| `PdfFont` | クラス |  | `lib/src/style/pdf_settings.dart` |
| `PdfHeading` | クラス |  | `lib/src/style/pdf_settings.dart` |
| `PdfTheme` | クラス | PDF のテーマ(文字の大きさ・色。色は `#RRGGBB` か `$変数`)。 | `lib/src/style/pdf_settings.dart` |
| `PdfBand` | クラス | ヘッダまたはフッタ。[left]・[center]・[right] は、固定の文字と変数を混ぜた書式(`TemplateFormatter`)。 | `lib/src/style/pdf_settings.dart` |
| `PdfSettings` | クラス | PDF の出力の設定(`info_app.settings` の `pdf`)。 | `lib/src/style/pdf_settings.dart` |
| `StampAnchor` | 列挙型 |  | `lib/src/style/stamp_style.dart` |
| `StampPages` | 列挙型 | どのページに出すか。first = 先頭のページ(ルートの文書の 1 ページ目)、all = 全ページ。 | `lib/src/style/stamp_style.dart` |
| `StampLayer` | 列挙型 | 本文との重なり。background = 透かし(本文の後ろ)、foreground = 本文の前。 | `lib/src/style/stamp_style.dart` |
| `StampShapeKind` | 列挙型 |  | `lib/src/style/stamp_style.dart` |
| `StampStages` | 列挙型 | 承認の段が複数のとき。all = 段ごとに並べる、last = 最後に承認した 1 つだけ。 | `lib/src/style/stamp_style.dart` |
| `StampPosition` | クラス |  | `lib/src/style/stamp_style.dart` |
| `StampShape` | クラス |  | `lib/src/style/stamp_style.dart` |
| `StampColors` | クラス | 色の指定(`#RRGGBB`・`$変数`)。fill が null のときは塗らない。 | `lib/src/style/stamp_style.dart` |
| `StampItem` | クラス | スタンプに出す 1 行。[field] はビュー `v_document_approval_stamp` の列(のうち表示するもの)。 | `lib/src/style/stamp_style.dart` |
| `StampPendingStyle` | クラス | 承認待ちのスタンプの見た目(破線・灰色など)。 | `lib/src/style/stamp_style.dart` |
| `StampStyle` | クラス | 承認スタンプの様式(位置・すかし・形・色・表示項目・書式)。 | `lib/src/style/stamp_style.dart` |
| `formatDate` | 関数 | 日時の書式(スタンプ・ヘッダ・フッタで共通)。 | `lib/src/template/date_format.dart` |
| `TemplateFormatter` | クラス | 固定の文字と変数を混ぜた書式を展開する(ヘッダ・フッタ・スタンプの文字)。 | `lib/src/template/template_formatter.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): なし
- 利用元: `pms_app`(アプリ)、`document_settings`(パッケージ)、`manual`(パッケージ)、`quality_document`(パッケージ)、`markdown_pdf`(パッケージ)、`approval_stamp_view`(パッケージ)
- 外部パッケージ: `json_schema`

## 6. 設計上の決定(`CLAUDE.md` より)

- **設定の置き場所**: 標準: `info_app.settings`(jsonb。DB の列の既定値が標準値)。`{ "version": 1, "stamp": {…}, "pdf": {…} }`。読み取りは一般ユーザー、書き込みは管理者だけ(画面と、DB のトリガー `trg_00_admin_only_column`)。接続先・ログイン入口・秘密情報は DB に置けない(…
- **構成**: | 場所 | 内容 |

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/app_settings_schema_test.dart`(11)、`test/approval_stamp_test.dart`(45)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
