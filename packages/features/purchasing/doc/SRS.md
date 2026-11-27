# purchasing ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

purchasing: 購買 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

購買 機能の実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 デザインは `tools/open-design` の Html のトップメニュー「購買」に従う(`pms_design.md` の該当章を参照)。 契約(遷移先・命令の型)が他の機能から必要になったら、`lib/purchasing_api.dart` に公開する(別パッケージ `purchasing_api` は作らない)。

### 1.2 範囲

- 場所: `packages/features/purchasing`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`production_plan/example`(example)、`quality/example`(example)

### 2.2 依存先(ワークスペース内)

`quality`、`dashboard_container`、`data_strategist`、`pms_graphql`、`purchasing_model`、`feature_shared`、`entity_screens`

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
| FR-01 | `purchasingRepositories` | 関数 | 購買の実体の取得元(GraphQL 版)。アプリが [GraphQLClient] を渡して組み立て、 |
| FR-02 | `PurchasingModule` | クラス | 購買をアプリへ組み込むための口。 |
| FR-03 | `PurchaseAmountMetricSource` | クラス | 発注金額。主値は発注金額の合計(円)、内訳は入荷金額と発注・入荷の数量。 |
| FR-04 | `PurchaseComplianceMetricSource` | クラス | 発注納期遵守状況。主値は遵守率(%。完了した分のうちの遵守)、内訳は遵守・遅延・期限超過・未完了の件数。 |
| FR-05 | `purchasingMetricSources` | 関数 | アプリが`metricSourcesProvider`へ差し込む、購買の集計値の元。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 配送区分: 共有プロジェクト `shared_master` が持つ(営業と共通。重複実装しない)
- **参照するモデル**: `packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `XxxModule implements FeatureModule` を `lib/src/purchasing_module.dart` に置き、公開は `lib/purchasing.dart` のバレルから `PurchasingModule` だけにする。アプリは `lib/app.dart` の `featureModules` に1行足して組…
- **品目仕入先**: 購買メニューの「サプライヤー」の次に「品目仕入先」を出す。実体は`item`の`itemsupplier`(`item/CLAUDE.md`)。購入品にチェックの入った品目の表の各行に、サプライヤーの表(サプライヤー・デリバリータイム(日)・最小発注ロット・単価(円)・言い値区分。言い値のときは単価に「言い値（都度確認）」)を入れる(表の中の表。行ごとに開閉…
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **取得元(GraphQL 版)**: `lib/src/graphql/purchasing_repositories.dart` の `purchasingRepositories(GraphQLClient, {AuditUserSource? auditUser})` が、発注(`purchase`)・発注明細(`purdetail`)の取得元を作る。アプリ(`pms_app` の `gr…
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/purchasing.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 15 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 5 件、テストケース 15 件。

- `test/complaint_action_test.dart`
  - purchaserec の台帳に、行の操作「complaint」がある(生成物ではなく、モジュールが足す)
  - 行の操作で、異常の登録の画面へ、種類(purchaseRec)と対象の ID・表示名を渡して進む。ほかの操作は処理しない
- `test/purchase_detail_currency_test.dart`
  - 発注明細の金額の項目は、行の通貨の記号の項目を指す。非計上明細は指さない
  - 通貨の記号は読み取り専用・非表示・台帳に出さない。基準通貨の金額と仮は読み取り専用
- `test/purchasing_connection_test.dart`
  - 発注の一覧を、画面の値で取得できる
  - 発注明細は、発注の下で、キャンセル数量・停止・受入済み・残(DB のビューの列)を持つ
  - 定義: 発注・発注明細は書き込める。残・キャンセル・停止などは読み取り専用
  - 更新者: ログイン中の担当者が、登録・更新・論理削除で記録される(更新者を渡さないと記録されない)
  - 発注と発注明細を登録・更新・削除(論理削除)できる。後始末で削除する
- `test/purchasing_entities_test.dart`
  - 台帳を持つ実体のルートがある(子の台帳は編集だけ)
  - すべての実体に、台帳・編集のパスが対応する
  - サンプルが定義に合っている(必須・形式・選択肢・親子)
  - 同じプロジェクト内の参照と親子が、サンプルの id に解決する
- `test/purchasing_metric_sources_test.dart`
  - 発注金額: 発注金額の合計が主値、内訳に入荷金額と数量。全ページを読む
  - 発注納期遵守率: 完了(遵守 + 遅延)のうちの遵守の割合。完了が無ければ 0

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
