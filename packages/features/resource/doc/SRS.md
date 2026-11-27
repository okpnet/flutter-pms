# resource ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

resource: 資源 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

資源 機能の実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 デザインは `tools/open-design` の Html のトップメニュー「資源」に従う(`pms_design.md` の該当章を参照)。 契約(遷移先・命令の型)が他の機能から必要になったら、`lib/resource_api.dart` に公開する(別パッケージ `resource_api` は作らない)。

### 1.2 範囲

- 場所: `packages/features/resource`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`organization/example`(example)、`plan_change/example`(example)、`production_process/example`(example)、`quality/example`(example)、`work_record/example`(example)

### 2.2 依存先(ワークスペース内)

`localized_values`、`view_responsiveness`、`dashboard_container`、`data_strategist`、`pms_graphql`、`resource_model`、`feature_shared`、`entity_screens`、`calendar_lib`、`app_shell`

テスト用: `data_test_harness`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `resourceRepositories` | 関数 | 資源の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、 |
| FR-02 | `ResourceModule` | クラス | 資源をアプリへ組み込むための口。 |
| FR-03 | `InspectionStatusMetricSource` | クラス | 点検整備実施状況。主値は実施率(%。実施済みの行 ÷ 全行)、内訳は実施済み・未実施の行数と期限超過の数。 |
| FR-04 | `resourceMetricSources` | 関数 | アプリが`metricSourcesProvider`へ差し込む、資源の集計値の元。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 力量(保持者) / 資格(保持者) [テーブル構造] / [編集構造]
- **参照するモデル**: `packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `XxxModule implements FeatureModule` を `lib/src/resource_module.dart` に置き、公開は `lib/resource.dart` のバレルから `ResourceModule` だけにする。アプリは `lib/app.dart` の `featureModules` に1行足して組み込む。
- **稼働カレンダー**: 稼働カレンダー(`workcalendar`、DB の `mstr_work_calendar`)は台帳と編集。項目は稼働日・設備(空は全体の稼働日)・開始時刻・稼働時間(HH:MM)・休業日(真偽)・備考。
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。
- **取得元(GraphQL 版。読み取り専用)**: `lib/src/graphql/resource_repositories.dart` の `resourceRepositories(GraphQLClient)` が、力量(`capability`)・資格(`license`)・場所(`location`。ツリー)・設備(`equipment`)の取得元を作る。アプリ(`pms_app` の `gra…

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/resource.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 20 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 8 件、テストケース 20 件。

- `test/capability_test.dart`
  - 力量の登録 → 取得 → 更新 → コードの重複 → 取り消し(データを変更し、後始末で論理削除する)
  - 名称・コード・基準が無いと、検証エラー(必須)。数値の誤りは数値のエラー
- `test/equipment_tag_test.dart`
  - 設備タグの登録 → 一覧 → 更新 → 差し替え → 取り消し(データを変更し、後始末で論理削除する)
  - 名称・ファイルが無いと、検証エラー(必須)になる
- `test/inspection_file_test.dart`
  - 点検予定 → 予定明細 → 点検実施を、親の ID ごとに取得できる
  - 点検ファイルの登録 → 一覧 → 差し替え → 取り消し(データを変更し、後始末で論理削除する)
- `test/inspection_status_metric_source_test.dart`
  - 点検整備実施率: 実施済みの行 ÷ 全行。全ページを読み、内訳に期限超過
  - 行が無ければ 0
- `test/license_test.dart`
  - 資格の登録 → 取得 → 更新 → コードの重複 → 取り消し(データを変更し、後始末で論理削除する)
  - 名称・コード・区分が無いと、検証エラー(必須)。区分の誤りは選択のエラー
- `test/resource_connection_test.dart`
  - 力量・資格・場所・設備を、画面の値(名称は言語コード ja)で取得できる
  - 実体は読み取り専用: 新規・保存・削除を出さず、書き込もうとすると失敗する
- `test/resource_entities_test.dart`
  - 台帳を持つ実体のルートがある(子の台帳は編集だけ)
  - すべての実体に、台帳・編集のパスが対応する
  - サンプルが定義に合っている(必須・形式・選択肢・親子)
  - 同じプロジェクト内の参照と親子が、サンプルの id に解決する
- `test/work_calendar_page_test.dart`
  - 表ではなくカレンダーが出る(月の見出し・日のセル・設備の選択)
  - 日を選んで休日に反映し、既定に戻す
  - 時刻が HH:MM でないときは、保存せずに知らせる
  - 祝日を取り込むと、祝日が休日として登録される(登録済みの日は変えない)

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
