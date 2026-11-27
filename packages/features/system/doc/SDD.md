# system ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

system: システム 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/system` |
| Dart ファイル(生成物を除く) | 19 |
| `lib/src` の分け方 | `entities(3)`、`exchange(11)`、`graphql(2)`、`i18n(1)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `baseCurrencyId` | 関数 | 基準通貨(`info_app.mstr_currency_id`)の通貨 ID。DB のビュー `v_currency_rate_latest` の `is_base` の行から引く。 | `lib/src/graphql/base_currency.dart` |
| `exchangeSettingsProvider` | Riverpod プロバイダ | 為替レートの自動取得の設定。既定は標準(ECB → Frankfurter)。アプリが、アプリの設定(`info_app.settings` の `exchange`)で上書きする。 | `lib/src/exchange/exchange_providers.dart` |
| `exchangeTextFetcherProvider` | Riverpod プロバイダ | 通信(URL の本文の取得)。テストで差し替える。 | `lib/src/exchange/exchange_providers.dart` |
| `exchangeFetchAllowedProvider` | Riverpod プロバイダ | 為替レートの操作(登録・変更・自動取得・確定)ができるか(管理者)。アプリが、管理者かどうかで上書きする(既定はできる)。 | `lib/src/exchange/exchange_providers.dart` |
| `exchangeLockSaverProvider` | Riverpod プロバイダ | 為替レートの確定日(`yyyy-MM-dd`)を保存する窓口。null のときは、確定の操作を出さない(既定)。 | `lib/src/exchange/exchange_providers.dart` |
| `ExchangeSourceConfig` | クラス | 取得元 1 件の設定。 | `lib/src/exchange/exchange_settings.dart` |
| `ExchangeSettings` | クラス | 為替レートの自動取得の設定(アプリの設定 `info_app.settings` の JSON の `exchange`)。 | `lib/src/exchange/exchange_settings.dart` |
| `systemRepositories` | 関数 | システムの実体の取得元(GraphQL 版)。アプリが [GraphQLClient] を渡して組み立て、 | `lib/src/graphql/system_repositories.dart` |
| `SystemModule` | クラス | システムをアプリへ組み込むための口。 | `lib/src/system_module.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
|  | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/system_repositories.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `localized_values`、`feature_shared`、`entity_screens`、`data_strategist`、`pms_graphql`、`system_model`
- テスト用: `data_test_harness`
- 利用元: `pms_app`(アプリ)、`item/example`(example)、`purchasing/example`(example)
- 外部パッケージ: `flutter_riverpod`、`go_router`、`slang`、`graphql`、`http`

## 6. 設計上の決定(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 単位(単位台帳) [テーブル構造] / [編集構造]
- **参照するモデル**: `packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `XxxModule implements FeatureModule` を `lib/src/system_module.dart` に置き、公開は `lib/system.dart` のバレルから `SystemModule` だけにする。アプリは `lib/app.dart` の `featureModules` に1行足して組み込む。
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **通貨・為替レート**: 通貨(`currency`)・為替レート(`exchangerate`)の台帳は、システムメニュー(管理者のユーザーメニュー。`SystemModule.menuEntries` が `systemMenuGroupId` へ移す。手書きの印つき)。パス `/e/currency`・`/e/exchangerate`(アクセスパス・機能コード `YC`・`Y…
- **取得元(GraphQL 版)**: `lib/src/graphql/system_repositories.dart` の `systemRepositories(GraphQLClient, {AuditUserSource? auditUser})` が、単位(`unit`)の取得元を作る。アプリ(`pms_app` の `graphql_overrides.dart`)が `entit…
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/base_currency_test.dart`(2)、`test/currency_latest_rate_test.dart`(2)、`test/exchange_fetch_button_test.dart`(3)、`test/exchange_lock_test.dart`(8)、`test/exchange_rate_test.dart`(11)、`test/menu_test.dart`(2)、`test/system_connection_test.dart`(4)、`test/system_entities_test.dart`(4)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
