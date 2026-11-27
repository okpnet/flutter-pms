# production_plan ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

production_plan: 生産計画 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

生産計画 機能の実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 デザインは `tools/open-design` の Html のトップメニュー「生産計画」に従う(`pms_design.md` の該当章を参照)。 契約(遷移先・命令の型)が他の機能から必要になったら、`lib/production_plan_api.dart` に公開する(別パッケージ `production_plan_api` は作らない)。

### 1.2 範囲

- 場所: `packages/features/production_plan`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`plan_change`(パッケージ)、`plan_change/example`(example)、`purchasing/example`(example)、`work_record/example`(example)

### 2.2 依存先(ワークスペース内)

`feature_shared`、`baton_lib`、`app_shell`、`flgtable_lib`、`logger_provider`、`dashboard_container`、`data_strategist`、`pms_graphql`、`production_plan_model`、`entity_screens`

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
| FR-01 | `productionPlanRepositories` | 関数 | 生産計画の実体の取得元(GraphQL 版)。アプリが [GraphQLClient] を渡して組み立て、 |
| FR-02 | `GraphqlMrpGateway` | クラス | MRP の窓口の実体(GraphQL)。メソッド `mrpExecute`(DB 関数 `tests.mrp_execute`)で計算し、 |
| FR-03 | `IMrpGateway` | インターフェイス | MRP の実行の窓口。実体(DB 関数 `tests.mrp_execute` を呼ぶ GraphQL のメソッド `mrpExecute` と、 |
| FR-04 | `UnavailableMrpGateway` | クラス | 実体が差し込まれていないときの窓口。実行すると失敗にする(確かめていない結果を出さないため)。 |
| FR-05 | `DemoMrpGateway` | クラス | 確認用の窓口(example・テスト用)。決めた時間だけ待ち、決めた結果または失敗を返す。 |
| FR-06 | `mrpGatewayProvider` | Riverpod プロバイダ | MRP の窓口。既定は実体が無い([UnavailableMrpGateway])。アプリが差し込む。 |
| FR-07 | `mrpStaffIdProvider` | Riverpod プロバイダ | MRP を実行する担当者の識別子(`p_staff_id`)。ログインの導入後に、ログインした担当者の id を差し込む。 |
| FR-08 | `MrpMode` | 列挙型 | MRP(資材所要計算)の実行区分。DB 関数 `tests.mrp_execute` の `p_mode`。 |
| FR-09 | `MrpSuggestion` | クラス | MRP の提案1件(DB のビュー `v_mrp_suggestion`)。 |
| FR-10 | `MrpRunResult` | クラス | MRP の実行結果(`trans_mrp_run` と、その提案の一覧)。 |
| FR-11 | `MrpFailure` | クラス | MRP の実行の失敗。[code] はエラーコード(問い合わせ用に画面へ小さく添える)。 |
| FR-12 | `MrpIssue` | クラス | MRP の前の調査の結果の 1 件(品目のマスタの不備。DB の `mrp_check_items`)。 |
| FR-13 | `ProductionPlanModule` | クラス | 生産計画をアプリへ組み込むための口。実体の画面(資材計画ほか)と、資材所要計算(MRP)を束ねる。 |
| FR-14 | `MrpDestination` | クラス | 資材所要計算(MRP)の画面へ。 |
| FR-15 | `WorkPlanComplianceMetricSource` | クラス | 生産計画納期遵守状況。主値は遵守率(%。完了した分(遵守 + 遅延)のうちの遵守)、 |
| FR-16 | `productionPlanMetricSources` | 関数 | アプリが`metricSourcesProvider`へ差し込む、生産計画の集計値の元。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 資材所要量計画: 資材計画台帳
- **参照するモデル**: `packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `ProductionPlanModule`(`lib/src/production_plan_module.dart`)は、実体の画面(生成。`ProductionPlanEntityModule`)と資材所要計算(`lib/src/mrp/`)を束ねる(Composite)。公開は `lib/production_plan.dart` のバレルから、`P…
- **資材所要計算の結果(読み取り専用)**: 資材所要計算の結果は、読み取り専用(`viewOnly`)の台帳として「生産計画」のメニューに出す: 要判断の提案(`mrppending`。ビュー `v_mrp_suggestion` の `run_open` かつ `undecided` で絞る。対象・動きは boolean の列。置き換え前は `v_mrp_pending_suggestion`)、発…
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **取得元(GraphQL 版)**: `lib/src/graphql/production_plan_repositories.dart` の `productionPlanRepositories(GraphQLClient, {AuditUserSource? auditUser})` が、資材計画(`resplan`)・生産計画(`opsplan`)の取得元を作る。アプリ(`pms_ap…
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | `loggerProvider` を使う |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/production_plan.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 50 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 5 件、テストケース 50 件。

- `test/graphql_mrp_gateway_test.dart`
  - 存在しない実行の提案は空で返る
  - ${mode.name}MRP を実行して提案を受け取る
  - 計算して破棄しても、計画(資材計画・生産計画・発注明細)の件数は変わらない
  - 実行して提案を機能の型で受け取る
  - 支給依頼(SUPPLY_REQUEST。要判断)の提案を受け取る(行が消えない・失敗にならない)
  - サーバーのエラーコード(MRP00)を失敗のコードにする
  - 認証エラー(401)は HTTP_401 の失敗になる
  - 応答の途中の切断は NETWORK の失敗になる
  - 認証ヘッダーが要求に付く
  - 計算だけ(mrpRun)。確定も破棄もしない。結果は確定待ちで、提案の ID を持つ
  - 採否の変更(mrpSetDecision)。採用は 1、却下は 2。提案の ID を渡す
  - 確定(mrpCommit)。force を渡す。確定済みの結果を返す
  - 確定の失敗(MRP01・MRP03)は、サーバーのコードを失敗のコードにする
  - 破棄(mrpDiscard)
  - 確定待ちの実行(openRun)。計算済みの実行を読む。無ければ null
  - 調査(mrpCheckItems)。不備を機能の型で受け取る。品目を指定できる
- `test/mrp_test.dart`
  - 遷移先はパスに変換でき、生産計画のメニューに項目が出る
  - 結果の件数(提案・要判断・遅れ)
  - 実行前に確認の警告を出し、キャンセルでは実行しない
  - 再MRPは、警告が増え、区分 2 で実行する。成功のお知らせと結果の表
  - 判断での絞り込みと検索ができる
  - 失敗($code)は、エラーコードに関わらず同じ一般向けの警告。再実行できる
  - 窓口が差し込まれていないときは、確かめていない結果を出さず警告にする
  - 調査: マスタの不備を調べる。何も変えず、結果を出す
  - 調査: 不備が無いときは、無いと出す
  - 評価: 計算だけして確定待ちにする。要判断が残る間は、確定できない
  - 判断: 表示中の要判断をまとめて採用し、確定する
  - 判断: 検索で絞った提案だけを却下できる
  - 実行: 要判断を却下として確定(force)できる
  - 実行: 確認でやめると、確定しない
  - 実行: 破棄すると、結果を消す(計画データは変わらない)
  - 確定の失敗(${c.$1})は、取れる対応が分かる文を出す。確定待ちは残る
  - 前回の計算の確定待ちを、開いたときに引き継ぐ
  - MRPを実行: 要判断が無ければ、そのまま確定済みになる(確定待ちを出さない)
  - 遷移先は、再MRP・対象の受注明細をクエリに入れたパスになる
  - 対象の受注明細つきで開くと、再MRPにチェックが入り、対象が出る。その受注明細だけで実行する
  - 対象は、外せる。外すと、残りだけで実行する。すべて外すと、すべての需要
  - 再MRPのチェックを外すと、対象は使わない(受注MRPは、受注明細を指定できない)
  - 再MRPで、対象を指定しないときは、すべての需要と出す
- `test/production_plan_connection_test.dart`
  - 資材計画の一覧と、その下の生産計画(停止・打ち切りを持つ)を取得できる
  - 定義: 資材計画・生産計画は書き込める。停止・打ち切りは読み取り専用
  - 更新者: ログイン中の担当者が、登録・更新・論理削除で記録される(更新者を渡さないと記録されない)
  - 資材計画と生産計画を登録・更新・削除(論理削除)できる。後始末で削除する
- `test/production_plan_entities_test.dart`
  - 台帳を持つ実体のルートがある(子の台帳は編集だけ)
  - すべての実体に、台帳・編集のパスが対応する
  - サンプルが定義に合っている(必須・形式・選択肢・親子)
  - 同じプロジェクト内の参照と親子が、サンプルの id に解決する
- `test/work_plan_compliance_metric_source_test.dart`
  - ビューの値を種類にする。知らない値・無いときは未完了
  - 生産納期遵守率: 完了(遵守 + 遅延)のうちの遵守の割合。全ページを読む
  - 完了が無ければ 0

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
