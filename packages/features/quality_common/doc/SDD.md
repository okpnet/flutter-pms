# quality_common ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

quality_common: 品質共通 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/quality_common` |
| Dart ファイル(生成物を除く) | 10 |
| `lib/src` の分け方 | `entities(3)`、`graphql(4)`、`i18n(1)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `qualityCommonRepositories` | 関数 | 品質共通の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、 | `lib/src/graphql/quality_common_repositories.dart` |
| `QualityCommonModule` | クラス | 品質共通をアプリへ組み込むための口。 | `lib/src/quality_common_module.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `AuditCheckitemRepository` | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/audit_checkitem_repository.dart` |
|  | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/quality_common_repositories.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `feature_shared`、`entity_screens`、`data_strategist`、`pms_graphql`、`quality_model`
- テスト用: `data_test_harness`
- 利用元: `pms_app`(アプリ)、`quality/example`(example)
- 外部パッケージ: `flutter_riverpod`、`go_router`、`slang`、`graphql`、`gql`

## 6. 設計上の決定(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 修正処置(修正処置明細) / 再発防止(再発防止明細) / 処置再発防止監視
- **参照するモデル**: `packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `XxxModule implements FeatureModule` を `lib/src/quality_common_module.dart` に置き、公開は `lib/quality_common.dart` のバレルから `QualityCommonModule` だけにする。アプリは `lib/app.dart` の `featureModul…
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。
- **取得元(GraphQL 版。読み取り専用)**: `lib/src/graphql/quality_common_repositories.dart` の `qualityCommonRepositories(GraphQLClient)` が、リスク(`risk`)の取得元を作る。アプリ(`pms_app` の `graphql_overrides.dart`)が `entityRepositoryOve…
- **監査標準の項目(Issue 20261123_0001)**: 監査標準の項目(`auditstdcheck`。DB の `mstr_audit_std_checkitem`)は、**設備の点検整備項目と同じ構造**: 項目(コード・管理コード・名称・読み・略称・詳細・監査標準)+ 判定の式 `expr`(`FieldKind.condition`。条件 = 演算子 + 値の JSON。`entity_screens` …

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/audit_checkitem_test.dart`(8)、`test/quality_common_connection_test.dart`(2)、`test/quality_common_entities_test.dart`(4)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
