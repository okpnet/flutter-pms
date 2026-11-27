# access_control ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

access_control: アクセス管理(ページのアクセスパス・部署の権限・担当者の許可)の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/access_control` |
| Dart ファイル(生成物を除く) | 10 |
| `lib/src` の分け方 | `entities(3)`、`graphql(1)`、`i18n(1)`、`page(2)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `AccessControlModule` | クラス | アクセス管理をアプリへ組み込むための口。 | `lib/src/access_control_module.dart` |
| `accessControlRepositories` | 関数 | アクセス管理の実体の取得元(GraphQL 版)。アプリが [GraphQLClient] を渡して組み立て、 | `lib/src/graphql/access_control_repositories.dart` |
| `AccessBulkDestination` | クラス | アクセス権の一括設定の画面へ(部署または担当者を選び、アクセスパスの許可・書き込みをまとめて設定する)。 | `lib/src/page/access_bulk_destination.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
|  | Adapter(窓口の平らな型と、画面の [EntityRecord] を変換する) | `lib/src/graphql/access_control_repositories.dart` |
| `AccessBulkPage` | Facade(複数の台帳の読み書きを 1 画面の操作にまとめる) | `lib/src/page/access_bulk_page.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `feature_shared`、`access_control_model`、`data_strategist`、`entity_screens`、`app_shell`、`loadux_lib`、`baton_lib`
- 利用元: `pms_app`(アプリ)、`organization`(パッケージ)、`organization/example`(example)
- 外部パッケージ: `flutter_riverpod`、`go_router`、`slang`、`graphql`

## 6. 設計上の決定(`CLAUDE.md` より)

- **画面(Html のメニュー)**: ページアクセス(アクセスパスの台帳) [テーブル構造] / [編集構造]。`usecase_path`(ページのパス)がページ遷移の有効・無効を決める。登録画面を持つ(パスと名前 ja・en を入力する。アプリ `info_app` は固定の1件で選ばせず、`AccessControlClient` が名前で引いて埋め込む)。既知のページは `apps/pm…
- **アクセス権設定**: `/access-control/bulk`(`AccessBulkPage`。契約 `access_control_api.dart` の `AccessBulkDestination(scope, targetId)`。**メニューは「アクセス権設定」の 1 項目だけ**で、台帳(アクセスパス・部署・担当者・実効)はメニューに出さず、画面の下の「台帳」か…
- **アクセス管理の決まり**: 権限は部署に付け、有効な所属(`info_assign.enable = true`)の担当者が受け継ぐ。個人の許可は部署の権限に足すためだけに使う(減らせない)。上位部署からは受け継がない。
- **参照するモデル**: `packages/model_providers/access_control_model`(`gql/access_path.yaml`・`department_access_path.yaml`・`staff_access_permission.yaml`・`staff_effective_access_path.yaml`)を列・フィールドの参照元と…
- **実装の指針**: `AccessControlModule implements FeatureModule` を `lib/src/access_control_module.dart` に置き、公開は `lib/access_control.dart` のバレルから `AccessControlModule` だけにする。アプリは `lib/app.dart` の `fe…
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/access_bulk_test.dart`(8)、`test/access_control_entities_test.dart`(4)、`test/access_control_graphql_test.dart`(6)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
