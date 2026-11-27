# sales ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

sales: 営業 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

営業 機能の実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 デザインは `tools/open-design` の Html のトップメニュー「営業」に従う(`pms_design.md` の該当章を参照)。

### 1.2 範囲

- 場所: `packages/features/sales`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`production_plan/example`(example)、`production_process/example`(example)、`quality/example`(example)

### 2.2 依存先(ワークスペース内)

`quality`、`app_shell`、`feature_shared`、`entity_screens`、`baton_lib`、`data_strategist`、`flgtable_lib`、`logger_provider`、`dashboard_container`、`pms_graphql`、`sales_model`

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
| FR-01 | `salesRepositories` | 関数 | 営業の実体の取得元(GraphQL 版)。アプリが [GraphQLClient] を渡して組み立て、 |
| FR-02 | `SalesModule` | クラス | 営業をアプリへ組み込むための口。 |
| FR-03 | `SalesRecordMetricSource` | クラス | 売り上げ実績。主値は出荷済みの金額の合計(円)、内訳は受注金額と数量。 |
| FR-04 | `ShippingOrderStatusMetricSource` | クラス | 出荷予定受注実績状況。主値は出荷残の数量の合計、内訳は予定・出荷済みの数量と金額。 |
| FR-05 | `ShippingComplianceMetricSource` | クラス | 出荷納期遵守状況。主値は遵守率(%。完了した分のうちの遵守)、内訳は遵守・遅延・期限超過・未完了の件数。 |
| FR-06 | `salesMetricSources` | 関数 | アプリが`metricSourcesProvider`へ差し込む、営業の集計値の元。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 配送区分: 共有プロジェクト `shared_master` が持つ(購買と共通)
- **構成**: | 種別 | ファイル | 内容 |
- **参照するモデル**: `packages/model_providers/*_model/gql/` の `sales/order.yaml` を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う(顧客・利害関係者は `shared_master`)。
- **実装の指針**: 他の機能の画面は `xxx_api.dart` の型だけを使う。遷移・連携は `baton_lib` の `Destination` / `Command` で行い、文字列のパスを公開しない。`lib/src` を直接 import しない。
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **取得元(GraphQL 版)**: `lib/src/graphql/sales_repositories.dart` の `salesRepositories(GraphQLClient, {AuditUserSource? auditUser})` が、受注(`order`)・受注明細(`orderdetail`)・出荷予定(`shipplan`。DB の出荷オーダー)・出荷指示(`shi…
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、顧客台帳・顧客の選択を開く。画面を足したら`example/lib/main.dart`の`entries`に1行足す。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/sales.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 19 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 5 件、テストケース 19 件。

- `test/complaint_action_test.dart`
  - order の台帳に、行の操作「complaint」がある(生成物ではなく、モジュールが足す)
  - 行の操作で、異常の登録の画面へ、種類(order)と対象の ID・表示名を渡して進む。ほかの操作は処理しない
- `test/order_detail_currency_test.dart`
  - 金額の項目は、行の通貨の記号の項目を指す
  - 通貨の記号の項目は、読み取り専用で、画面にも台帳にも出さない
  - 基準通貨の金額(目安)は読み取り専用の数値で、レートが仮かは真偽
- `test/sales_connection_test.dart`
  - 受注の一覧を、画面の値で取得できる
  - 受注明細は、受注の下で、キャンセル数量・停止・残(DB のビューの列)を持つ
  - 定義: 受注・受注明細は書き込める。残・キャンセル・停止などは読み取り専用
  - 受注と受注明細を登録・更新・削除(論理削除)できる。後始末で削除する
  - 更新者: ログイン中の担当者が、登録・更新・論理削除で記録される(更新者を渡さないと記録されない)
  - 出荷予定と出荷指示を登録・更新・削除(論理削除)できる。後始末で削除する
- `test/sales_entities_test.dart`
  - 台帳を持つ実体のルートがある(子の台帳は編集だけ)
  - すべての実体に、台帳・編集のパスが対応する
  - サンプルが定義に合っている(必須・形式・選択肢・親子)
  - 同じプロジェクト内の参照と親子が、サンプルの id に解決する
- `test/sales_metric_sources_test.dart`
  - 売り上げ実績: 出荷済み金額の合計が主値、内訳に受注の金額と数量。全ページを読む
  - 出荷予定受注実績状況: 出荷残の数量が主値
  - 出荷納期遵守率: 完了(遵守 + 遅延)のうちの遵守の割合。完了が無ければ 0
  - 行が無ければ 0(問い合わせは1回)

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
