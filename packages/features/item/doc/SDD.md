# item ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

item: 品目 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/item` |
| Dart ファイル(生成物を除く) | 8 |
| `lib/src` の分け方 | `entities(3)`、`graphql(2)`、`i18n(1)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `itemRepositories` | 関数 | 品目の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、 | `lib/src/graphql/item_repositories.dart` |
| `ItemModule` | クラス | 品目をアプリへ組み込むための口。 | `lib/src/item_module.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `ItemKindRepository` | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/item_kind_repository.dart` |
|  | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/item_repositories.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `localized_values`、`feature_shared`、`entity_screens`、`data_strategist`、`pms_graphql`、`item_model`
- テスト用: `data_test_harness`
- 利用元: `pms_app`(アプリ)、`cost/example`(example)、`plan_change/example`(example)、`production_plan/example`(example)、`production_process/example`(example)、`purchasing/example`(example)、`resource/example`(example)、`sales/example`(example)、`work_record/example`(example)
- 外部パッケージ: `flutter_riverpod`、`go_router`、`slang`、`graphql`

## 6. 設計上の決定(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 品目区分 [テーブル構造] / [編集構造]
- **参照するモデル**: `packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `XxxModule implements FeatureModule` を `lib/src/item_module.dart` に置き、公開は `lib/item.dart` のバレルから `ItemModule` だけにする。アプリは `lib/app.dart` の `featureModules` に1行足して組み込む。
- **購入品と品目仕入先**: 品目に「購入品」(`catalog_item`。DB の `mstr_item.catalog_item`、コメント『購入品』)のチェックボックスがある。品目の台帳には はい/いいえ の列。品目に仕入先(品目仕入先`itemsupplier`)が登録されている間は、チェックを外せない(理由を項目の下に表示してエラーにする)。
- **品目の作業単価と在庫**: 品目の作業単価(`itemtaskcost`。DB の `mstr_item_task_cost`)は、品目が所有する子の台帳(品目の編集画面の下)。項目は工程場所(参照。工程の機能の `taskres`)・作業単価(円、0以上)・備考。
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **取得元(GraphQL 版。読み取り専用)**: `lib/src/graphql/item_repositories.dart` の `itemRepositories(GraphQLClient)` が、品目区分(`itemkind`)・品目(`item`)の取得元を作る。アプリ(`pms_app` の `graphql_overrides.dart`)が `entityRepositoryOverri…
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/cost_action_test.dart`(2)、`test/item_connection_test.dart`(2)、`test/item_entities_test.dart`(4)、`test/item_kind_test.dart`(2)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
