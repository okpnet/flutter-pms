# resource ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

resource: 資源 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/resource` |
| Dart ファイル(生成物を除く) | 15 |
| `lib/src` の分け方 | `calendar(2)`、`dashboard(1)`、`entities(3)`、`graphql(5)`、`i18n(1)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `resourceRepositories` | 関数 | 資源の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、 | `lib/src/graphql/resource_repositories.dart` |
| `ResourceModule` | クラス | 資源をアプリへ組み込むための口。 | `lib/src/resource_module.dart` |
| `InspectionStatusMetricSource` | クラス | 点検整備実施状況。主値は実施率(%。実施済みの行 ÷ 全行)、内訳は実施済み・未実施の行数と期限超過の数。 | `lib/src/dashboard/inspection_status_metric_source.dart` |
| `resourceMetricSources` | 関数 | アプリが`metricSourcesProvider`へ差し込む、資源の集計値の元。 | `lib/src/dashboard/inspection_status_metric_source.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `CapabilityRepository` | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/capability_repository.dart` |
| `EquipmentTagRepository` | Adapter(生成された読み込み・登録の型と、画面の [EntityRecord] を変換する) | `lib/src/graphql/equipment_tag_repository.dart` |
|  | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/inspection_repositories.dart` |
| `InspectionFileRepository` | Adapter(生成された読み込み・登録の型と、画面の [EntityRecord] を変換する) | `lib/src/graphql/inspection_repositories.dart` |
| `LicenseRepository` | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/license_repository.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `localized_values`、`view_responsiveness`、`dashboard_container`、`data_strategist`、`pms_graphql`、`resource_model`、`feature_shared`、`entity_screens`、`calendar_lib`、`app_shell`
- テスト用: `data_test_harness`
- 利用元: `pms_app`(アプリ)、`organization/example`(example)、`plan_change/example`(example)、`production_process/example`(example)、`quality/example`(example)、`work_record/example`(example)
- 外部パッケージ: `graphql`、`flutter_riverpod`、`go_router`、`slang`

## 6. 設計上の決定(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 力量(保持者) / 資格(保持者) [テーブル構造] / [編集構造]
- **参照するモデル**: `packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `XxxModule implements FeatureModule` を `lib/src/resource_module.dart` に置き、公開は `lib/resource.dart` のバレルから `ResourceModule` だけにする。アプリは `lib/app.dart` の `featureModules` に1行足して組み込む。
- **稼働カレンダー**: 稼働カレンダー(`workcalendar`、DB の `mstr_work_calendar`)は台帳と編集。項目は稼働日・設備(空は全体の稼働日)・開始時刻・稼働時間(HH:MM)・休業日(真偽)・備考。
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。
- **取得元(GraphQL 版。読み取り専用)**: `lib/src/graphql/resource_repositories.dart` の `resourceRepositories(GraphQLClient)` が、力量(`capability`)・資格(`license`)・場所(`location`。ツリー)・設備(`equipment`)の取得元を作る。アプリ(`pms_app` の `gra…

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/capability_test.dart`(2)、`test/equipment_tag_test.dart`(2)、`test/inspection_file_test.dart`(2)、`test/inspection_status_metric_source_test.dart`(2)、`test/license_test.dart`(2)、`test/resource_connection_test.dart`(2)、`test/resource_entities_test.dart`(4)、`test/work_calendar_page_test.dart`(4)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
