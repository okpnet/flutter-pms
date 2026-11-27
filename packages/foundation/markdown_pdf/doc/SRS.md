# markdown_pdf ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

markdown_pdf: Markdown(構文木・読み取り)と、PDF の出力(テーマ・ヘッダ/フッタ・承認スタンプ・日本語フォント)。

Markdown → PDF の出力(テーマ・ヘッダ/フッタ・承認スタンプ・日本語フォント)。`pdf` パッケージ(`dart_pdf`。PDF の標準的な実装で更新が活発)を使う。仕様の経緯は `issue/202611.md#20261121_0001`(リポジトリのルート)。

### 1.2 範囲

- 場所: `packages/foundation/markdown_pdf`(foundation(画面を持たない汎用部品))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`manual`(パッケージ)、`quality_document`(パッケージ)

### 2.2 依存先(ワークスペース内)

`approval_stamp`、`markdown_ast`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `PdfFonts` | クラス | PDF に埋め込むフォント(TrueType のバイト列)。日本語の本文には、BIZ UDP 明朝(SIL Open Font License 1.1)を同梱している。 |
| FR-02 | `loadBundledPdfFonts` | 関数 | 同梱の BIZ UDP 明朝(標準・太字)を読み込む。アプリの起動後に 1 回読み、使い回す。 |
| FR-03 | `MarkdownPdfRenderer` | クラス | Markdown を PDF にする(Markdown → ブロック → `pdf` の部品)。 |
| FR-04 | `PdfSettingsMetadata` | クラス | PDF のメタデータに、出力に使った設定(`pdf`)を残す(キーワード `Keywords` に `pms-pdf-settings:v1:` + 設定の JSON)。 |
| FR-05 | `buildStampWidget` | 関数 | 承認スタンプ 1 つの PDF の部品(枠・文字。すかしと回転を含む)。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **構成**: | 場所 | 内容 |
- **仕様**: 設定は `approval_stamp` の `PdfSettings`(`info_app.settings.pdf`)と `StampStyle`・`StampCard`。用紙・余白・テーマ(色は `$変数`)・見出し(H1 は章。テーマで改ページ)・段落・コード・表・ヘッダ/フッタ(固定の文字 + 変数)を反映する。
- **Markdown 系のパッケージ(責務の分担)**: | パッケージ | 責務 | 種類 |
- **PDF のメタデータ**: 出力した PDF の Keywords に、使った PDF の設定(`pdf`)を `pms-pdf-settings:v1:` + JSON で残す(`PdfSettingsMetadata.encode`)。後から `PdfSettingsMetadata.read(bytes)` で読み戻し、どの設定で作られたか確認・再現できる(承認の記録は追記のみで…

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/markdown_pdf.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 10 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 1 件、テストケース 10 件。

- `test/markdown_pdf_test.dart`
  - Markdown から PDF のバイト列ができる(%PDF で始まる)
  - テーマで H1 の改ページを切ると 1 ページに収まる
  - ヘッダ・フッタ: ページ番号・全ページ数・章(今の章)が入る
  - 1 ページ目のヘッダを出さない・無効なフッタ
  - 未知の変数は問題として知らせ、出力は止まらない
  - 承認スタンプつき(承認済み・承認待ち)でも出力できる。pages = first は 1 ページ目だけ
  - 重ね方: 透かし(既定)でも本文の前でも出力できる(スタンプの分だけ大きい)
  - 空の Markdown・設定の不備があっても出力できる
  - 目視用のサンプルを出力する(標準・スタンプ 2 種・用紙 A4 横)
  - PDF のメタデータに、出力に使った設定が残り、読み戻せる(日本語を含む)

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
