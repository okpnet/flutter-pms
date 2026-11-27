# cost ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

cost: 原価 機能の実装(標準原価の一覧・在庫評価額の一覧・ロットの評価額。読み取りだけ。画面・ルート)。アプリだけがこのパッケージに依存する。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/cost` |
| Dart ファイル(生成物を除く) | 7 |
| `lib/src` の分け方 | `entities(3)`、`graphql(1)`、`i18n(1)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `CostModule` | クラス | 原価をアプリへ組み込むための口(読み取り専用の台帳)。 | `lib/src/cost_module.dart` |
| `costRepositories` | 関数 | 原価の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立てる。 | `lib/src/graphql/cost_repositories.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
|  | Adapter(ビューの行 → 画面の [EntityRecord]) | `lib/src/graphql/cost_repositories.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `localized_values`、`feature_shared`、`entity_screens`、`data_strategist`、`cost_model`
- テスト用: `data_test_harness`
- 利用元: `pms_app`(アプリ)
- 外部パッケージ: `flutter_riverpod`、`go_router`、`slang`、`graphql`、`gql`

## 6. 設計上の決定(`CLAUDE.md` より)

- **決定(2026-11-24)**: 画面は 4 つ(いずれも台帳。金額の列は権限で隠さない): 標準原価の一覧(`costunit`。DB のビュー `v_item_unit_cost`)・在庫評価額の一覧(`costvaluation`。`v_item_valuation`)・ロットの評価額(`costlot`。`v_visiter_valuation`)・実績の原価(`costwork`。…
- **構成**: | 場所 | 内容 |
- **アプリへの組み込み(`pms_app`)**: `featureModules` に `CostModule()`、`graphql_overrides.dart` に `costRepositories(client)`。アクセスパスは `/e/costunit`・`/e/costvaluation`・`/e/costlot`。機能コードは `V`。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/cost_repositories_test.dart`(2)、`test/cost_row_action_test.dart`(2)、`test/cost_server_test.dart`(1)、`test/cost_test.dart`(3)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
