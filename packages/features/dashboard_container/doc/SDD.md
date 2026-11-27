# dashboard_container ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

dashboard_container: ダッシュボードに置く件数のコンテナ。レコード数の合計を、幅(Full・1/2・1/4)に応じた数だけ表示し、配置は設定として保存・復元する。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/dashboard_container` |
| Dart ファイル(生成物を除く) | 13 |
| `lib/src` の分け方 | `i18n(1)`、`model(5)`、`settings(2)`、`view(3)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `CountContainerSize` | 列挙型 | コンテナの大きさ。ダッシュボードの横幅に対する割合で、表示できる件数の項目(タイル)の数が決まる。 | `lib/src/model/count_container_spec.dart` |
| `CountTileSpec` | クラス | コンテナに並べる件数の項目(タイル)。1つにつき、フィルタグループ(区分・利害関係者など)を1つ対にする。 | `lib/src/model/count_container_spec.dart` |
| `CountContainerSpec` | クラス | ダッシュボードに置く件数のコンテナ。 | `lib/src/model/count_container_spec.dart` |
| `CountFilterOption` | クラス | フィルタグループの選択肢(例: 区分の「製品」、利害関係者の「顧客」)。 | `lib/src/model/count_source.dart` |
| `CountFilterGroup` | クラス | 件数の項目と対にするフィルタグループ(例: 区分、利害関係者(顧客・外部))。 | `lib/src/model/count_source.dart` |
| `ICountSource` | インターフェイス | 件数の元(出荷オーダー・進捗遅延など)。機能・アプリが提供し、`countSourcesProvider` で差し込む。 | `lib/src/model/count_source.dart` |
| `RepositoryCountSource` | クラス | `IDataRepository<int>`(件数を返す取得元)から数える標準の実装。 | `lib/src/model/count_source.dart` |
| `MetricValue` | クラス | 集計値(金額・人数・率など)。生成モデルの型は含めず、数値と単位と内訳だけを持つ値オブジェクト(Value Object)。 | `lib/src/model/metric_source.dart` |
| `IMetricSource` | インターフェイス | 集計値の元(従業員数・売り上げ実績など)。機能が提供し、`metricSourcesProvider` で差し込む(Strategy)。 | `lib/src/model/metric_source.dart` |
| `metricSourcesProvider` | Riverpod プロバイダ | 集計値の元の一覧。機能・アプリが提供して差し込む。既定は空。 | `lib/src/model/metric_sources_provider.dart` |
| `DashboardContainerStrings` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `dashboardContainerStringsProvider` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `countSourcesProvider` | Riverpod プロバイダ | 件数の元の一覧。機能・アプリが提供して差し込む。既定は空。 | `lib/src/model/count_sources_provider.dart` |
| `DashboardContainersNotifier` | クラス |  | `lib/src/settings/dashboard_container_providers.dart` |
| `CountQuery` | クラス | 件数を数える対象(件数の元・フィルタグループの項目)。 | `lib/src/settings/dashboard_container_providers.dart` |
| `countProvider` | Riverpod プロバイダ | 件数。元が無いとき(`countSourcesProvider` に無い)は null。 | `lib/src/settings/dashboard_container_providers.dart` |
| `DashboardContainerSettings` | クラス | ダッシュボードのコンテナの配置を保存する形(JSON)。 | `lib/src/settings/dashboard_container_settings.dart` |
| `DashboardContainerOriginator` | クラス | コンテナの配置を保存・復元する持ち主。保存先は知らない(アプリが `settingsStorageProvider` で選ぶ)。 | `lib/src/settings/dashboard_container_settings.dart` |
| `CountContainerView` | クラス | 件数のコンテナ。大きさ([CountContainerSize])に応じた数だけ、件数の項目を横に並べる | `lib/src/view/count_container_view.dart` |
| `CountTileView` | クラス | 件数の項目 1 つ。名前・レコード数の合計・対にするフィルタグループの選択。 | `lib/src/view/count_container_view.dart` |
| `DashboardContainerArea` | クラス | ダッシュボードに置く、コンテナの領域。 | `lib/src/view/dashboard_container_area.dart` |
| `DashboardContainerEditor` | クラス | 配置の編集。コンテナと項目(タイル)の追加・削除、コンテナの並び替え・大きさを変える。 | `lib/src/view/dashboard_container_editor.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `DashboardContainerOriginator` | Memento の Originator(settings_keeper) | `lib/src/settings/dashboard_container_settings.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `feature_shared`、`page_mediator_extension`、`settings_keeper`、`data_strategist`、`logger_provider`
- テスト用: `theme_lib`、`data_test_harness`
- 利用元: `pms_app`(アプリ)、`app_core`(パッケージ)、`app_core/example`(example)、`organization`(パッケージ)、`production_plan`(パッケージ)、`purchasing`(パッケージ)、`resource`(パッケージ)、`sales`(パッケージ)
- 外部パッケージ: `flutter_riverpod`、`slang`

## 6. 設計上の決定(`CLAUDE.md` より)

- **仕様**: 大きさは Full・1/2・1/4(`CountContainerSize`)。1つのコンテナに並べる件数の項目(タイル)は、Full が3つ、1/2 が2つ、1/4 が1つまで表示する(並べた項目の先頭から)。
- **構成**: | 種別 | ファイル | 内容 |
- **example**: `example/`に確認用アプリを置き、実装済みの機能の外観と動作を確認する。機能を追加したら、exampleとそのテスト(`example/test`)にも追加する。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/dashboard_container_editor_test.dart`(2)、`test/dashboard_container_test.dart`(8)、`test/dashboard_owner_test.dart`(2)、`test/metric_source_test.dart`(1)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
