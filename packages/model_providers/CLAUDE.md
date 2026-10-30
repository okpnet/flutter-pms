# CLAUDE.md

このフォルダ(`packages/model_providers/`)は、機能(画面)単位の GraphQL モデルパッケージを置く。ワークスペース全体の方針は [../../CLAUDE.md](../../CLAUDE.md) の「GraphQL モデル生成ルール」を参照。

## 構成

- `xxx_model/`: 機能 `xxx` に対応するモデルパッケージ。1機能=1パッケージ。
  - `gql/*.yaml`: 人が書く入力(読み込み `kind: read` と書き込み `kind: edit`)。
  - `lib/src/graphql/`: YAML から生成した `.graphql`、抜き出した画面用 `schema.graphql`、`*.graphql.dart`(Git 管理外)。
  - `lib/src/contents/`: 検索条件の対応表(`*_filter_spec.dart`、生成物)。
  - `lib/xxx_model.dart`: 生成物を束ねるバレルファイル(生成物)。
  - `build.yaml`: graphql_codegen の設定(スカラーは `pms_graphql` に対応付ける)。
- `gql_shared/`: 各パッケージの YAML が共有する YAML の部品(`all_common.yaml`、`master_common.yaml`、`transaction_common.yaml`)。モデルは生成しない。
- `doc/`: 廃止した旧ライブラリ(`legacy_graphql_provider_lib`)の資料。

| パッケージ | 対応する機能 |
| --- | --- |
| `item_model` | 品目・工程・作業・製造 |
| `organization_model` | 組織(会社・事業所・部署・役割・担当者・承認)、従業員数 |
| `production_plan_model` | 生産計画・遅延、生産計画納期遵守状況 |
| `purchasing_model` | 発注・仕入先・未承認、発注金額合計、発注納期遵守状況 |
| `quality_document_model` | 品質文書 |
| `quality_model` | 監査・苦情・是正・報告・リスク |
| `resource_model` | 設備・能力・資格・場所・保守・取引ファイル、点検整備実施状況 |
| `sales_model` | 顧客・受注・出荷オーダー・ダッシュボード、売り上げ実績、出荷予定受注実績状況、出荷納期遵守状況 |
| `shared_master_model` | 出荷区分・利害関係者 |
| `system_model` | 単位 |
| `work_record_model` | ビジター・作業実績、棚在庫状況 |

## ダッシュボード用のビュー

ダッシュボードに使うビュー(DB の `v_*`)は、集計の対象に対応する主となるパッケージの `gql/*.yaml` に置く。ビューを追加したら、先に `melos run gql:schema` でスキーマを更新してから `melos run gql` を実行する。

| ビュー | 1行の単位 | YAML | 読み込みの名前 |
| --- | --- | --- | --- |
| `v_staff_count` | department × 役割 | `organization_model/gql/staff_count.yaml` | `StaffCountPage` |
| `v_sales_record` | customer × item × 納期 × 出荷済み | `sales_model/gql/sales_record.yaml` | `SalesRecordPage` |
| `v_purchase_amount` | supplier × item × 納期 × 受入済み | `purchasing_model/gql/purchase_amount.yaml` | `PurchaseAmountPage` |
| `v_purchase_delivery_compliance` | 同上 | `purchasing_model/gql/purchase_delivery_compliance.yaml` | `PurchaseDeliveryCompliancePage` |
| `v_shipping_order_status` | customer × item × 納期 × 出荷予定日 × 出荷実績日 | `sales_model/gql/shipping_order_status.yaml` | `ShippingOrderStatusPage` |
| `v_shipping_delivery_compliance` | 同上 | `sales_model/gql/shipping_delivery_compliance.yaml` | `ShippingDeliveryCompliancePage` |
| `v_inspection_status` | equipment × supplier × 実施済み × 結果 | `resource_model/gql/inspection_status.yaml` | `InspectionStatusPage` |
| `v_shelf_inventory_status` | 棚ビジター | `work_record_model/gql/shelf_inventory_status.yaml` | `ShelfInventoryStatusPage` |
| `v_work_plan_delivery_compliance` | 生産計画明細 | `production_plan_model/gql/work_plan_delivery_compliance.yaml` | `WorkPlanDeliveryCompliancePage` |

- ビューの YAML は、結合を持たない列だけを読む(ID・日付・件数・数量・金額)。名称が必要な画面は、ID で既存の読み込みを引く。
- 絞り込みは `$filter`(`filter: true`)で行う。

## 規則

1.  ディリクトリ/ファイル
    1.  生成結果のレポートは`doc/log`ディリクトリにファイル名`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  同じ年月日、同じ番号に対する追加変更は`年月日_4桁ゼロ埋の番号_add_1からの連番.md`として保存する。
    2.  生成したライブラリに関する使い方やヘルプなどの使用にかかわるレポートは`doc/contents`の保存する。
    3.  最終的にこの`CLAUDE.md`へ統合される追加、変更の指示は`issue`ディリクトリに`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  つまり`生成結果のレポート`と連動する。
        2.  `CLAUDE.md`への統合も指示に含める。統合時、削除指示が無い限り`issue`ディリクトリ`doc/log`ディリクトリの中を削除しない。`CLAUDE.md`には変更や追加、削除であることについて記録しない(生成時に`issue`ディリクトリ`doc/log`ディリクトリを参照するため)。
    4.  細分化した機能別に`lib/`以下のディリクトリを2階層を限度(`lib/xxx/xxx`)として分ける。細分化の程度は、2階層になる程度の抽象度とする。
        1.  細分化する機能が少ない(5以下)のとき、1階層で良い(`lib/xxx`)。
2.  命名規則
    1.  ファイル名、クラス名など名前付けのルールはFlutterの規則、慣例に従う。
    2.  クラス名はデザインパターンがわかる、または意味が通る英語の名詞とする。ただし、`はい/いいえ`のような`isXxxx`などの`is/as/has`の慣例を優先する。
        1.  `Command`などデザインパターンのみの名前だと誤解や衝突を招くため、機能、動きの名詞化したものと組み合わせる。
    3.  プリフィクスにライブラリ名をつけない(BatonLibXXのような)。
3.  バレルファイルを使用する
    1.  バレルファイルにまとめ、このライブラリを使用する側は1行を読み込むだけで解決できるようにする。ただし、相互に関連が無い独立した機能の場合はバレルファイルを分けて、仕様側が機能に応じて選択できるようにする(例えば、ファイル参照機能と計算機能があり、計算機能がファイル参照を行わない場合は別々にする)。ただし、ユーザーの仕様体験を優先する。ライブラリ全体の機能が少ない(10以下)ときにインポートするファイルを分ける必要はない。
4.  インスタンスのJSON化
    1.  生成するこのライブラリのインターフェイス、クラスのインスタンスをJSONにコンバートできる。ただし、エラー追跡のためであり、現時点で機能を復元する目的では使用しない。
5.  ログを残す
    1.  ライブラリは実行したときのログを残す。ただし、このライブラリ側のエラーログだけを残し、実行側のアプリケーションがどの実行でエラーが発生したか調査するとき、機能毎のライブラリ側なのかを切り分け可能にするために、適切に選別する。
    2.  ロガーはRiverpodから提供され、アプリケーション全体をとおして同じ仕様のログ出力を行う。
6.  GOFデザインパターン
    1.  クラス名やファイル名にデザインパターンを含めない場合は、コメントに該当するパターン名を追加する。
    2.  必ずしもデザインパターンに割り当てる必要はない。

## テスト
`xxx_model`のテストは次の3種類。サーバーを使うテストの道具(接続先・代役サーバー)は`packages/infra/data_test_harness`が持ち、各パッケージは`dev_dependencies`にだけ書く。接続先のURLをテストに書かない。
1.  **通信テスト(検証用サーバー)** `test/server_read_test.dart`: 全readクエリを`first: 1`で実行し、成功(`Ok`)と生成モデルでの読み取りを確認する。`serverTest`で書き、接続先は`http://192.168.1.100:5000/graphql`、接続できなければ`http://192.168.9.245:5000/graphql`(`TestServer.candidateUrls`)。どちらにも接続できないときは中止(skip)にし、失敗にはしない(`flutter test --exclude-tags server`で除外できる)。読み取り専用で、サーバーのデータを変更しない。サーバーのスキーマが本家スキーマ(`.schema/schema.graphql`)とずれていると、このテストが失敗する(スキーマのずれの検出)。
2.  **通信の異常のテスト(代役サーバー)** 同じファイル: `FaultyGraphqlServer`(ローカル)で、遅延(制限時間超過=タイムアウト)、応答の途中・前の切断(`Err(NetworkError)`)、認証エラー(401/403は`Err(ServerError)`でステータスを持つ)、認証ヘッダー(`Authorization`)の送信、切断からの復帰を確認する。実サーバーを使わないため、常に実行できる。認証基盤(Keycloak)が入ったあとも、トークンの付与はこのテストで確認する。
3.  **モデルのテスト**: 往復変換(`*_flatten_roundtrip_test.dart`)、RFE⇔Edit(`rfe_edit_interconversion_test.dart`)、検索条件の対応表(`filter_spec_roundtrip_test.dart`)。サーバーを使わない。
- `test/server_read_test.dart`は生成物(`dart run tools/gql_yaml2graphql/bin/gen_server_test.dart --root packages/model_providers`、`melos run gql:test`)。直接編集しない。画面(readクエリ)を追加したら再生成する。
- 各パッケージの`dart_test.yaml`に`server`タグの宣言が必要(生成が作る)。

## テストデータ
検証用サーバー(DB)にはテストデータ(`tools/docker/postgresql/scripts/10_mrp_dummy.sql`)が入っている。
1.  言語は `JA`(`shared_language_code` の `code`。DB の値は小文字 `ja` なので、大文字小文字を区別せずに探す)で進める。担当者は `ADMIN`(`info_staff.code`)。
1.  注文の追加、MRP、再MRP の実行テストに使ってよい(データが変わる)。読み取りだけのテストと分け、変更するテストの名前に明記する。
1.  `mrpExecute` は重い(受注MRPで2分ほど)。`GraphQLClient` の既定の制限時間(5秒)と、`TestServer.provider` の制限時間(20秒)を超えるため、変更するテストは制限の無い接続(`HttpLink(server.url)`)を使い、テストの制限時間も長くする。
1.  外部キーがある参照は、品目などの名前・各コード・symbol を読み込みに含める。外部キーが無い場合は、DB の Issue(`tools/docker/postgresql/issue/`)に外部キーが必要なことを追加する。
