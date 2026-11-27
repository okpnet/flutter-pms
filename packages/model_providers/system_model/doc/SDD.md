# system_model ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

system_model: system 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

- 層: model_providers(機能ごとの GraphQL モデル)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/model_providers/system_model` |
| Dart ファイル(生成物を除く) | 6 |
| `lib/src` の分け方 | `contents(5)`、`graphql(0)` |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 モデル(`gql/*.yaml` が入口。型は graphql_codegen が生成する)

| 名前 | 種類 | 対象(テーブル・ビュー・関数) | 定義 |
|---|---|---|---|
| `CurrencyPage` | 読み込み | `mstr_currency` | `gql/currency.yaml` |
| `CurrencyPageEdit` | 更新 | `mstr_currency` | `gql/currency.yaml` |
| `CurrencyPageCreate` | 登録 | `mstr_currency` | `gql/currency.yaml` |
| `CurrencyAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | `gql/currency.yaml` |
| `CurrencyRateLatestPage` | 読み込み | `v_currency_rate_latest` | `gql/currency.yaml` |
| `CurrencyRatePage` | 読み込み | `trans_exchange_rate` | `gql/currency.yaml` |
| `CurrencyRatePageCreate` | 登録 | `trans_exchange_rate` | `gql/currency.yaml` |
| `CurrencyRatePageEdit` | 更新 | `trans_exchange_rate` | `gql/currency.yaml` |
| `UnitPage` | 読み込み | `shared_unit` | `gql/unit.yaml` |
| `UnitPageEdit` | 更新 | `shared_unit` | `gql/unit.yaml` |
| `UnitPageCreate` | 登録 | `shared_unit` | `gql/unit.yaml` |
| `UnitAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | `gql/unit.yaml` |
| `UnitTextSavePageCall` | DB 関数の呼び出し | `sharedTextSave` | `gql/unit.yaml` |

生成の流れ: `gql/*.yaml` → `.graphql`(`tools/gql_yaml2graphql`)→ 画面用 `schema.graphql`(`tools/gql_schema_pruner`)→ `*.graphql.dart`(build_runner)。生成物の型は、対応する機能の外へ出さない。

### 3.2 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `CurrencyPageFilterSpec` | 抽象クラス |  | `lib/src/contents/currency_page_filter_spec.dart` |
| `CurrencyRateLatestPageFilterSpec` | 抽象クラス |  | `lib/src/contents/currency_rate_latest_page_filter_spec.dart` |
| `CurrencyRatePageFilterSpec` | 抽象クラス |  | `lib/src/contents/currency_rate_page_filter_spec.dart` |
| `UnitPageFilterSpec` | 抽象クラス |  | `lib/src/contents/unit_page_filter_spec.dart` |
| `UnitPageKeyName` | 抽象クラス |  | `lib/src/contents/unit_page_keyname.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `pms_graphql`
- テスト用: `data_test_harness`
- 利用元: `system`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)
- 外部パッケージ: `graphql`、`gql`

## 6. 設計上の決定(`CLAUDE.md` より)

パッケージの `CLAUDE.md` に、個別の決定は書かれていない(ルート・層の `CLAUDE.md` に従う)。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/filter_spec_roundtrip_test.dart`(0)、`test/rfe_edit_interconversion_test.dart`(1)、`test/server_read_test.dart`(9)、`test/unit_page_flatten_roundtrip_test.dart`(3)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
