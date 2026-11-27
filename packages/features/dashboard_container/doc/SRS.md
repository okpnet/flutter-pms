# dashboard_container ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

dashboard_container: ダッシュボードに置く件数のコンテナ。レコード数の合計を、幅(Full・1/2・1/4)に応じた数だけ表示し、配置は設定として保存・復元する。

ダッシュボードに表示するための件数のコンテナ(ウィジェット)。レコード数の合計を、幅(Full・1/2・1/4)に応じた数だけ表示する。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 プロジェクト名は、ダッシュボードに置くコンテナであることから `dashboard_container` とした。ダッシュボードのページ(`app_core`)は、この領域(`DashboardContainerArea`)を置く。

### 1.2 範囲

- 場所: `packages/features/dashboard_container`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`app_core`(パッケージ)、`app_core/example`(example)、`organization`(パッケージ)、`production_plan`(パッケージ)、`purchasing`(パッケージ)、`resource`(パッケージ)、`sales`(パッケージ)

### 2.2 依存先(ワークスペース内)

`feature_shared`、`page_mediator_extension`、`settings_keeper`、`data_strategist`、`logger_provider`

テスト用: `theme_lib`、`data_test_harness`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `CountContainerSize` | 列挙型 | コンテナの大きさ。ダッシュボードの横幅に対する割合で、表示できる件数の項目(タイル)の数が決まる。 |
| FR-02 | `CountTileSpec` | クラス | コンテナに並べる件数の項目(タイル)。1つにつき、フィルタグループ(区分・利害関係者など)を1つ対にする。 |
| FR-03 | `CountContainerSpec` | クラス | ダッシュボードに置く件数のコンテナ。 |
| FR-04 | `CountFilterOption` | クラス | フィルタグループの選択肢(例: 区分の「製品」、利害関係者の「顧客」)。 |
| FR-05 | `CountFilterGroup` | クラス | 件数の項目と対にするフィルタグループ(例: 区分、利害関係者(顧客・外部))。 |
| FR-06 | `ICountSource` | インターフェイス | 件数の元(出荷オーダー・進捗遅延など)。機能・アプリが提供し、`countSourcesProvider` で差し込む。 |
| FR-07 | `RepositoryCountSource` | クラス | `IDataRepository<int>`(件数を返す取得元)から数える標準の実装。 |
| FR-08 | `MetricValue` | クラス | 集計値(金額・人数・率など)。生成モデルの型は含めず、数値と単位と内訳だけを持つ値オブジェクト(Value Object)。 |
| FR-09 | `IMetricSource` | インターフェイス | 集計値の元(従業員数・売り上げ実績など)。機能が提供し、`metricSourcesProvider` で差し込む(Strategy)。 |
| FR-10 | `metricSourcesProvider` | Riverpod プロバイダ | 集計値の元の一覧。機能・アプリが提供して差し込む。既定は空。 |
| FR-11 | `DashboardContainerStrings` | 定数・その他 |  |
| FR-12 | `dashboardContainerStringsProvider` | 定数・その他 |  |
| FR-13 | `countSourcesProvider` | Riverpod プロバイダ | 件数の元の一覧。機能・アプリが提供して差し込む。既定は空。 |
| FR-14 | `DashboardContainersNotifier` | クラス |  |
| FR-15 | `CountQuery` | クラス | 件数を数える対象(件数の元・フィルタグループの項目)。 |
| FR-16 | `countProvider` | Riverpod プロバイダ | 件数。元が無いとき(`countSourcesProvider` に無い)は null。 |
| FR-17 | `DashboardContainerSettings` | クラス | ダッシュボードのコンテナの配置を保存する形(JSON)。 |
| FR-18 | `DashboardContainerOriginator` | クラス | コンテナの配置を保存・復元する持ち主。保存先は知らない(アプリが `settingsStorageProvider` で選ぶ)。 |
| FR-19 | `CountContainerView` | クラス | 件数のコンテナ。大きさ([CountContainerSize])に応じた数だけ、件数の項目を横に並べる |
| FR-20 | `CountTileView` | クラス | 件数の項目 1 つ。名前・レコード数の合計・対にするフィルタグループの選択。 |
| FR-21 | `DashboardContainerArea` | クラス | ダッシュボードに置く、コンテナの領域。 |
| FR-22 | `DashboardContainerEditor` | クラス | 配置の編集。コンテナと項目(タイル)の追加・削除、コンテナの並び替え・大きさを変える。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **仕様**: 大きさは Full・1/2・1/4(`CountContainerSize`)。1つのコンテナに並べる件数の項目(タイル)は、Full が3つ、1/2 が2つ、1/4 が1つまで表示する(並べた項目の先頭から)。
- **構成**: | 種別 | ファイル | 内容 |
- **example**: `example/`に確認用アプリを置き、実装済みの機能の外観と動作を確認する。機能を追加したら、exampleとそのテスト(`example/test`)にも追加する。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/dashboard_container.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 13 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 4 件、テストケース 13 件。

- `test/dashboard_container_editor_test.dart`
  - コンテナを追加・並び替え・大きさの変更・削除でき、保存される
  - 項目の追加は上限(3つ)まで。元・フィルタグループ・項目の削除ができる
- `test/dashboard_container_test.dart`
  - 大きさごとに、表示できる件数の項目は 3・2・1
  - JSON にして読み戻せる。読めない項目は捨てる
  - 件数を返す取得元から、抽出条件つきで数える(page_mediator_extension のデータ取得)
  - 表示するタイミングで設定から読み込み、大きさに応じた数の項目を出す
  - コンテナの幅は、大きさの割合(Full は全幅、1/2、1/4)
  - 狭い画面では、どのコンテナも全幅。項目の数は大きさのとおり
  - フィルタグループの項目を選ぶと件数が変わり、設定として保存される
  - 元が登録されていない項目は、未設定と表示する
- `test/dashboard_owner_test.dart`
  - 配置の保存先の識別子は、ユーザーごとに違い、保存先の規則に合う
  - 持ち主を指定した持ち主は、その識別子で保存する
- `test/metric_source_test.dart`
  - 集計値の元は既定で空で、差し込める

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
