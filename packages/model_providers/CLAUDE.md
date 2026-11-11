# CLAUDE.md

このフォルダ(`packages/model_providers/`)は、機能(画面)単位の GraphQL モデルパッケージを置く。ワークスペース全体の方針は [../../CLAUDE.md](../../CLAUDE.md) の「GraphQL モデル生成ルール」を参照。

## 構成

- `xxx_model/`: 機能 `xxx` に対応するモデルパッケージ。1機能=1パッケージ。
  - `gql/*.yaml`: 人が書く入力(読み込み `kind: read`、書き込み `kind: edit`、登録 `kind: create`、DB の関数の呼び出し `kind: function`)。
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
| `quality_model` | 監査・苦情(異常入出庫ビジターを含む)・是正・報告・リスク |
| `resource_model` | 設備・能力・資格・場所・保守(点検結果の登録を含む)・取引ファイル、点検整備実施状況 |
| `sales_model` | 顧客・受注・出荷オーダー・ダッシュボード、売り上げ実績、出荷予定受注実績状況、出荷納期遵守状況 |
| `shared_master_model` | 出荷区分・利害関係者 |
| `system_model` | 単位 |
| `work_record_model` | ビジター・作業実績、棚在庫状況 |
| `access_control_model` | ページアクセス管理(アクセスパス・部署のアクセスパス・担当者の許可・担当者の実効アクセスパス) |
| `barcode_entry_model` | バーコード実績登録(symbol による照会。登録は `work_record_model`・`purchasing_model` を使う) |
| `supply_model` | 支給(支給・支給明細・支給とロットのつなぎ・支給明細の残)。読み取りだけ |
| `plan_change_model` | 計画変更の履歴・MRP に未反映の計画変更。読み取りだけ |
| `return_model` | 返品(返品・返品明細・返品とロットのつなぎ)。読み取りだけ |

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
| `v_shelf_inventory_status` | 棚ビジター(ロット。quantity は今の数量) | `work_record_model/gql/shelf_inventory_status.yaml` | `ShelfInventoryStatusPage` |
| `v_work_plan_delivery_compliance` | 生産計画明細 | `production_plan_model/gql/work_plan_delivery_compliance.yaml` | `WorkPlanDeliveryCompliancePage` |
| `v_staff_effective_access_path` | 担当者 × アクセスパス | `access_control_model/gql/staff_effective_access_path.yaml` | `StaffEffectiveAccessPathPage` |

- ビューの YAML は、結合を持たない列だけを読む(ID・日付・件数・数量・金額)。名称が必要な画面は、ID で既存の読み込みを引く。
- 絞り込みは `$filter`(`filter: true`)で行う。


## 論理削除(`~PageRemove`)
1.  `kind: edit` の定義(`~PageEdit`)ごとに、論理削除のミューテーションを自動で生成する。出力は `<dir>/<dir>_remove.graphql`、操作名は `~PageRemove`。引数は更新対象の主キーと `$remove: Boolean!`(true で削除、false で元に戻す)。結果は主キーと `remove`。ビューには生成しない。生成は `tools/gql_yaml2graphql`(`EditGenerator.generateRemove`)。
1.  監査列は Edit の引数に含めない方針のため、`remove` を書くのは `~PageRemove` だけ。
1.  物理削除ではないが、他のテーブルから参照されているデータを削除する(`remove = true` にする)と、参照元の画面から見えなくなる。どの項目を削除してよいかは、影響度を調べながら決める(画面側のゴミ箱ボタンなどは、決まってから有効にする)。
1.  **影響が大きい項目(直接参照するテーブルが4つを超える。Issue)** — 削除してよいか、判断が決まるまで画面から削除できないようにする。全104テーブルの参照数は `doc/log/20261103_0005.md`。
    1.  `mstr_item`(ItemPageEdit) 参照元 10 テーブル: mstr_equipment, mstr_inspection, mstr_item_actual_size, mstr_item_hcdcs, mstr_item_operation, mstr_item_operation_task, mstr_item_provision, mstr_item_supplier, mstr_item_task_cost, mstr_item_tree
    1.  `trans_complaint`(ComplaintPageEdit) 参照元 10 テーブル: trans_complaint_equipment, trans_complaint_file, trans_complaint_order, trans_complaint_process, trans_complaint_purchase_rec, trans_complaint_receive, trans_complaint_stakeholder, trans_complaint_visiter, trans_complaint_work, trans_disposal
    1.  `info_department`(DepartmentPageEdit) 参照元 9 テーブル: info_assign, info_department_access_path, info_department_kind, info_department_tree, mstr_approval, mstr_location, mstr_task_location, trans_audit, trans_prevention_detail
    1.  `trans_file`(FilePageEdit) 参照元 9 テーブル: info_staff_icon, mstr_document, mstr_document_content, mstr_document_tier, mstr_equipment_tag, mstr_report, trans_certificate, trans_complaint_file, trans_inspect_imp_file
    1.  `mstr_task`(TaskPageEdit) 参照元 6 テーブル: mstr_operation_task, mstr_task_location, mstr_task_tree, trans_complaint_process, trans_task_risk, trans_work_plan
    1.  `info_company`(CompanyPageEdit) 参照元 5 テーブル: info_app, info_department, info_office, info_provision, info_staff
    1.  `info_staff`(StaffPageEdit) 参照元 5 テーブル: info_assign, info_staff_access_permission, mstr_sign, mstr_staff_capability, mstr_staff_license
    1.  `mstr_equipment`(EquipmentPageEdit) 参照元 5 テーブル: mstr_equipment_available, mstr_equipment_envelope, mstr_equipment_provision, mstr_inspection_operation, mstr_work_calendar
    1.  `shared_unit`(UnitPageEdit) 参照元 5 テーブル: mstr_envelope_measurement, mstr_item, mstr_item_lot, mstr_item_size_kind, mstr_spec_measurement
    1.  `trans_risk`(RiskPageEdit) 参照元 5 テーブル: trans_order_detail_risk, trans_order_risk, trans_prevention, trans_prevention_detail, trans_task_risk

## 棚ビジター(在庫)の決まり

- 数量は棚ビジター(`trans_visiter.quantity`)だけが持つ。+が入庫、-が出庫。受入実績ビジター・作業実績ビジターは数量を持たない中間テーブル。受払実績(`trans_convey`)は出来事(いつ・どこで・誰が)だけを残し、棚ビジターの1行につき1件作る。
- 出庫・分割・棚卸しの行は、取り出したロットを親(`parent_trans_visiter_id`)にする。数量0の行は作れない。棚卸しの調整行は `adjustment = true`。
- ロット = `quantity > 0` かつ調整でない行。保留・異常・取り出し可否はロットに付く(分割元の異常は分割先へ効く)。取り出せる = `release` が真、未解除の異常が無く、今の数量が正。判定は DB の `v_visiter_issuable`。
- 異常は `trans_complaint_visiter` でロットにつなぐ。受入異常・作業異常は自動では止めない(`v_complaint_target_visiter` の `linked: false` が登録漏れ)。
- ビュー(結合なし): `work_record_model/gql/visiter_ledger.yaml`(`VisiterIssuablePage`・`VisiterHoldWithoutComplaintPage`・`VisiterLedgerIssuePage`・`VisiterOriginCheckPage`)、`quality_model/gql/complaint_target.yaml`(`ComplaintTargetVisiterPage`・`ComplaintTargetPage`)。`v_mrp_visiter_item`・`v_item_on_hand`(`available_quantity` = 使える量)も同じ決まりで数える。

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
1.  **通信テスト(検証用サーバー)** `test/server_read_test.dart`: 全readクエリを`first: 1`で実行し、成功(`Ok`)と生成モデルでの読み取りを確認する。`serverTest`で書き、接続先は`http://192.168.1.100:5000/graphql`、接続できなければ`http://192.168.9.245:5000/graphql`、`192.168.9.245`に接続できないときは`http://192.168.1.103:5000/graphql`(`TestServer.candidateUrls`)。いずれにも接続できないときは中止(skip)にし、失敗にはしない(`flutter test --exclude-tags server`で除外できる)。読み取り専用で、サーバーのデータを変更しない。サーバーのスキーマが本家スキーマ(`.schema/schema.graphql`)とずれていると、このテストが失敗する(スキーマのずれの検出)。
2.  **通信の異常のテスト(代役サーバー)** 同じファイル: `FaultyGraphqlServer`(ローカル)で、遅延(制限時間超過=タイムアウト)、応答の途中・前の切断(`Err(NetworkError)`)、認証エラー(401/403は`Err(ServerError)`でステータスを持つ)、認証ヘッダー(`Authorization`)の送信、切断からの復帰を確認する。実サーバーを使わないため、常に実行できる。認証基盤(Keycloak)が入ったあとも、トークンの付与はこのテストで確認する。
3.  **モデルのテスト**: 往復変換(`*_flatten_roundtrip_test.dart`)、RFE⇔Edit(`rfe_edit_interconversion_test.dart`)、検索条件の対応表(`filter_spec_roundtrip_test.dart`)。サーバーを使わない。
- `test/server_read_test.dart`は生成物(`dart run tools/gql_yaml2graphql/bin/gen_server_test.dart --root packages/model_providers`、`melos run gql:test`)。直接編集しない。画面(readクエリ)を追加したら再生成する。
- 各パッケージの`dart_test.yaml`に`server`タグの宣言が必要(生成が作る)。

## テストデータ
検証用サーバー(DB)にはテストデータ(`tools/docker/postgresql/scripts/10_mrp_dummy.sql`)が入っている。
1.  言語は `ja`(`shared_language_code` の `code`)で進める。担当者は `ADMIN`(`info_staff.code`)。
1.  注文の追加、MRP、再MRP の実行テストに使ってよい(データが変わる)。読み取りだけのテストと分け、変更するテストの名前に明記する。
1.  `mrpExecute` は重い(受注MRPで2分ほど)。`GraphQLClient` の既定の制限時間(5秒)と、`TestServer.provider` の制限時間(20秒)を超えるため、変更するテストは制限の無い接続(`HttpLink(server.url)`)を使い、テストの制限時間も長くする。
1.  外部キーがある参照は、品目などの名前・各コード・symbol を読み込みに含める。外部キーが無い場合は、DB の Issue(`tools/docker/postgresql/issue/`)に外部キーが必要なことを追加する。

## 登録(`kind: create`)
1.  登録の mutation は YAML の `~PageCreate`(`kind: create`)から生成する。列は列名だけ(入れ子は対象外)。出力は `<dir>/<dir>_create.graphql`、操作名は `~PageCreate`。更新(`~PageEdit`)とは別に書き、列は更新に合わせる。
2.  複数のテーブルにまたがる登録は、DB の関数にせずクライアントで順に呼ぶ。部品(1テーブル)と組み合わせをモデルの窓口(例: `barcode_entry_model` の `ScanClient`)に持たせる。生成された型は窓口の中に隠し、平らな型で返す。
3.  symbol で対象を引くだけの軽い読み込みは、`lightRead: true` を付ける(子のレコード数 `v_*_count` を読まない。要件0056の検査の対象外)。
4.  登録の通信テストは書かない(検証用サーバーは読み取り専用)。登録の呼び出しの順序と値は、代役の通信路で確認する。

## DB の関数の呼び出し(`kind: function`)
1.  DB の関数(PostGraphile のミューテーション)は YAML の `~PageCall`(`kind: function`)から生成する。`mutation:` にミューテーション名、`returns:` にペイロードの中の戻り値のフィールド、`columns:` に戻り値の列を書く。引数は入力の名前のまま(`pSrc` など)の変数になる(`args:` で絞れる。省略時は `clientMutationId` を除くすべて)。出力は `<dir>/<dir>_call.graphql`、操作名は `~PageCall`。
2.  複数の行を作る操作は、クライアントで順に呼ばず DB の関数にする(1回の呼び出し = 1トランザクション)。棚ビジターの `visiter_issue`(払出)・`visiter_move`(移動・隔離)・`visiter_adjust`(棚卸し)は `work_record_model/gql/visiter_ledger.yaml` にあり、`ScanClient` の `issueLot`・`moveLot`・`adjustLot` が呼ぶ。担当者を省略すると DB が認証の担当者を使う。
3.  関数のエラーは errcode で判定する(`ScanClientException.code`): VIS00 担当者 / VIS01 在庫 / VIS02 数量 / VIS03 数量が足りない / VIS04 取り出せない / VIS05 場所 / VIS06 棚 / VIS07 作業実績。出しすぎは DB(関数とトリガー)が止めるので、クライアントで事前に検査しない。
4.  関数は検証用サーバーのデータを変えるため、通信テストは書かない。呼び出しの引数は、代役の通信路で確認する。


## 規則: プロジェクト間をまたぐ指示
指示や実装が、プロジェクト(アプリ・ライブラリ)をまたいで行われるときの`issue`・`doc/log`の扱い。
1.  指示をしたプロジェクト
    1.  `doc/log`に、指示の内容・指示した先のプロジェクト・実施した結果を記録する。
2.  指示を受けたプロジェクト
    1.  指示の内容と、指示をしたプロジェクトを`issue`に追加する。
    2.  実施した結果を`doc/log`に記録する。
