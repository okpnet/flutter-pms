# manual_model ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

manual_model: manual 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

- 層: model_providers(機能ごとの GraphQL モデル)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/model_providers/manual_model` |
| Dart ファイル(生成物を除く) | 10 |
| `lib/src` の分け方 | `contents(9)`、`graphql(0)` |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 モデル(`gql/*.yaml` が入口。型は graphql_codegen が生成する)

| 名前 | 種類 | 対象(テーブル・ビュー・関数) | 定義 |
|---|---|---|---|
| `ManualTierPage` | 読み込み | `mstr_document_tier` | `gql/manual.yaml` |
| `ManualDocumentPage` | 読み込み | `mstr_document` | `gql/manual.yaml` |
| `ManualContentPage` | 読み込み | `mstr_document_content` | `gql/manual.yaml` |
| `ManualTextValuePage` | 読み込み | `shared_text_value` | `gql/manual.yaml` |
| `ManualTextHistoryPage` | 読み込み | `history_shared_text_value` | `gql/manual.yaml` |
| `ManualLanguagePage` | 読み込み | `shared_language_code` | `gql/manual.yaml` |
| `ManualAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | `gql/manual.yaml` |
| `ManualTextSavePageCall` | DB 関数の呼び出し | `sharedTextSave` | `gql/manual.yaml` |
| `ManualDocumentPageCreate` | 登録 | `mstr_document` | `gql/manual.yaml` |
| `ManualDocumentTreePageCreate` | 登録 | `mstr_document_tree` | `gql/manual.yaml` |
| `ManualContentPageCreate` | 登録 | `mstr_document_content` | `gql/manual.yaml` |
| `ManualContentTreePageCreate` | 登録 | `mstr_document_content_tree` | `gql/manual.yaml` |
| `ManualPublicationPage` | 読み込み | `v_document_publication` | `gql/manual.yaml` |
| `ManualApprovalStampPage` | 読み込み | `v_document_approval_stamp` | `gql/manual.yaml` |
| `ManualApprovalStylePage` | 読み込み | `trans_approval_pattern` | `gql/manual.yaml` |
| `ManualRequestApprovalPageCall` | DB 関数の呼び出し | `documentRequestApproval` | `gql/manual.yaml` |

生成の流れ: `gql/*.yaml` → `.graphql`(`tools/gql_yaml2graphql`)→ 画面用 `schema.graphql`(`tools/gql_schema_pruner`)→ `*.graphql.dart`(build_runner)。生成物の型は、対応する機能の外へ出さない。

### 3.2 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `ManualApprovalStampPageFilterSpec` | 抽象クラス |  | `lib/src/contents/manual_approval_stamp_page_filter_spec.dart` |
| `ManualApprovalStylePageFilterSpec` | 抽象クラス |  | `lib/src/contents/manual_approval_style_page_filter_spec.dart` |
| `ManualContentPageFilterSpec` | 抽象クラス |  | `lib/src/contents/manual_content_page_filter_spec.dart` |
| `ManualDocumentPageFilterSpec` | 抽象クラス |  | `lib/src/contents/manual_document_page_filter_spec.dart` |
| `ManualLanguagePageFilterSpec` | 抽象クラス |  | `lib/src/contents/manual_language_page_filter_spec.dart` |
| `ManualPublicationPageFilterSpec` | 抽象クラス |  | `lib/src/contents/manual_publication_page_filter_spec.dart` |
| `ManualTextHistoryPageFilterSpec` | 抽象クラス |  | `lib/src/contents/manual_text_history_page_filter_spec.dart` |
| `ManualTextValuePageFilterSpec` | 抽象クラス |  | `lib/src/contents/manual_text_value_page_filter_spec.dart` |
| `ManualTierPageFilterSpec` | 抽象クラス |  | `lib/src/contents/manual_tier_page_filter_spec.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `pms_graphql`
- テスト用: `data_test_harness`
- 利用元: `manual`(パッケージ)
- 外部パッケージ: `graphql`、`gql`

## 6. 設計上の決定(`CLAUDE.md` より)

パッケージの `CLAUDE.md` に、個別の決定は書かれていない(ルート・層の `CLAUDE.md` に従う)。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/server_read_test.dart`(14)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
