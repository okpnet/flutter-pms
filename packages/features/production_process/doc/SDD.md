# production_process ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

production_process: 工程 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/production_process` |
| Dart ファイル(生成物を除く) | 7 |
| `lib/src` の分け方 | `entities(3)`、`graphql(1)`、`i18n(1)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `productionProcessRepositories` | 関数 | 工程の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、 | `lib/src/graphql/production_process_repositories.dart` |
| `ProductionProcessModule` | クラス | 工程をアプリへ組み込むための口。 | `lib/src/production_process_module.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
|  | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/production_process_repositories.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `localized_values`、`feature_shared`、`entity_screens`、`data_strategist`、`pms_graphql`、`item_model`
- テスト用: `data_test_harness`
- 利用元: `pms_app`(アプリ)、`item/example`(example)、`production_plan/example`(example)、`quality/example`(example)
- 外部パッケージ: `flutter_riverpod`、`go_router`、`slang`、`graphql`

## 6. 設計上の決定(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 工程: 工程体系 [ツリー構造](子: 工程場所)
- **参照するモデル**: `packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `XxxModule implements FeatureModule` を `lib/src/production_process_module.dart` に置き、公開は `lib/production_process.dart` のバレルから `ProductionProcessModule` だけにする。アプリは `lib/app.dart` の `…
- **工程場所で使える設備・外部委託**: 工程場所(`taskres`)が所有する子の台帳として、使える設備(`taskavailable`、DB の `mstr_equipment_available`)と使える外部委託(`taskoutsource`、`mstr_outsource_available`)を持つ。デリバリー間隔は DB では interval で、画面では時間(数値)で扱う。外部…
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。
- **取得元(GraphQL 版。読み取り専用)**: `lib/src/graphql/production_process_repositories.dart` の `productionProcessRepositories(GraphQLClient)` が、工程(`task`。ツリー)・工程運用(`operation`)の取得元を作る。アプリ(`pms_app` の `graphql_overrides…

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/production_process_connection_test.dart`(2)、`test/production_process_entities_test.dart`(4)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
