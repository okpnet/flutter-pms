# resource_model ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

resource_model: resource 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

### 1.2 範囲

- 場所: `packages/model_providers/resource_model`(model_providers(機能ごとの GraphQL モデル))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`resource`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)、`barcode_entry_model`(パッケージ)

### 2.2 依存先(ワークスペース内)

`pms_graphql`

テスト用: `data_test_harness`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、画面ごとの GraphQL の読み込み・登録・更新・関数の呼び出しを、次のとおり提供する(`gql/*.yaml` が定義。型は生成する)。

| ID | 名前 | 種類 | 対象 | 要求 |
|---|---|---|---|---|
| FR-01 | `CapabilityPageEdit` | 更新 | `mstr_capability` | 力量評価項目を定義する |
| FR-02 | `CapabilityPageCreate` | 登録 | `mstr_capability` | 力量の登録(kind: create)。記号(symbol)は DB が採番する |
| FR-03 | `CapabilityAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | 共通関数(kind: function)。呼称・文章(言語別の値)を作る・変える。返った ID を、本体の names・details に渡す(CLAUDE.md「登録・更新の方式」) |
| FR-04 | `CapabilityTextSavePageCall` | DB 関数の呼び出し | `sharedTextSave` |  |
| FR-05 | `CapableStaffPage` | 読み込み | `mstr_capability` | C2026/09/30変更:apabilityToStaffPage->CapableStaffPage |
| FR-06 | `CapableStaffPageEdit` | 読み込み |  | 0050: 7-2-3により新設した(StaffCapabilityPageEditと同じ)。 |
| FR-07 | `EquipmentCategoryPageEdit` | 更新 | `mstr_equipment_kind` | 設備区分編集 |
| FR-08 | `EquipmentPageEdit` | 更新 | `mstr_equipment` | 設備の書き込み |
| FR-09 | `EquipmentTagPageEdit` | 更新 | `mstr_equipment_tag` | 設備タグの更新・取り消し(備考・名称の付け替え・remove)。ファイルの差し替えは入れ子の登録で行う |
| FR-10 | `EquipmentTagAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | 呼称(名称)の登録・更新(p_appellation_id が無ければ新規) |
| FR-11 | `InspectionStatusPage` | 読み込み | `v_inspection_status` | 点検整備実施状況(equipment × supplier × 実施済み × 結果)(ダッシュボード用。要件20261027_0001) |
| FR-12 | `ItemTaskCostPage` | 読み込み | `mstr_item_task_cost` | 名称が必要な画面は、ID で既存の読み込みを引く。 |
| FR-13 | `ItemTaskCostPageEdit` | 更新 | `mstr_item_task_cost` | 品目の作業単価の書き込み |
| FR-14 | `LicensePageEdit` | 更新 | `mstr_license` | 作業に必要な公的、私的をとわず資格を定義する |
| FR-15 | `LicensePageCreate` | 登録 | `mstr_license` | 資格の登録(kind: create)。記号(symbol)は DB が採番する |
| FR-16 | `LicenseAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | 共通関数(kind: function)。呼称・文章(言語別の値)を作る・変える。返った ID を、本体の names・details に渡す |
| FR-17 | `LicenseTextSavePageCall` | DB 関数の呼び出し | `sharedTextSave` |  |
| FR-18 | `LicenseHoldersPage` | 読み込み | `mstr_license` | 資格を持っている担当者が該当する |
| FR-19 | `LicenseHoldersPageEdit` | 読み込み |  | 上記と同じ理由でStaffLicenseEditFieldsをそのまま参照する。 |
| FR-20 | `LocationPageEdit` | 更新 | `mstr_location` | 場所便臭 |
| FR-21 | `LocationTreePageEdit` | 更新 | `mstr_location_tree` | ツリー行(mstr_location_tree)を直接更新する。parent_mstr_location_idがnullのときはトップノード。 |
| FR-22 | `InspectionKindPageEdit` | 更新 | `mstr_inspection_kind` | 点検区分書き込み |
| FR-23 | `InspectionItemPageEdit` | 更新 | `mstr_inspection` | 点検整備項目 |
| FR-24 | `InspectionOperationPage` | 読み込み | `mstr_inspection_operation` | 設備と点検の関連付け |
| FR-25 | `InspectionOperationPageEdit` | 更新 | `mstr_inspection_operation` | 設備と点検の関連付けの書き込み |
| FR-26 | `InspectionEquipentPage` | 読み込み | `mstr_inspection_operation_task` | 点検項目と設備点検の関連付けの明細 |
| FR-27 | `InspectionEquipentPageEdit` | 更新 | `mstr_inspection_operation_task` | 点検項目と設備点検の関連付けの明細の書き込み |
| FR-28 | `InspectSchPageEdit` | 更新 | `trans_inspect_sch` | trans_inspect_schの書き込み |
| FR-29 | `InspectSchDetailPageEdit` | 更新 | `trans_inspect_sch_detail` | trans_inspect_sch_detailの書き込み |
| FR-30 | `InspectRecordPageEdit` | 更新 | `trans_inspect_record` | trans_inspect_recordの書き込み |
| FR-31 | `InspectImpFilePageEdit` | 更新 | `trans_inspect_imp_file` | trans_inspect_imp_fileの書き込み |
| FR-32 | `InspectRecordPageCreate` | 登録 | `trans_inspect_record` | trans_inspect_recordの登録(点検結果。result_value は式ごとの入力値の JSON) |
| FR-33 | `InspectionFilePageEdit` | 更新 | `trans_inspect_imp_file` | 点検のファイルの更新・取り消し(備考・題名の付け替え・remove)。ファイルの差し替えは入れ子の登録で行う |
| FR-34 | `InspectionFileLabelSavePageCall` | DB 関数の呼び出し | `transLabelSave` | ラベル(題名)の登録・更新(p_label_id が無ければ新規) |
| FR-35 | `FilePage` | 読み込み | `trans_file` | ファイル読み込み |
| FR-36 | `FilePageEdit` | 更新 | `trans_file` | ファイル書き込み |
| FR-37 | `WorkCalendarPage` | 読み込み | `mstr_work_calendar` | 稼働カレンダー(日×設備。設備が空の日は全体の稼働日)の読み込み |
| FR-38 | `WorkCalendarPageEdit` | 更新 | `mstr_work_calendar` | 稼働カレンダーの書き込み |

手書きの公開面は次のとおり。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FA-01 | `CapabilityPageFilterSpec` | 抽象クラス |  |
| FA-02 | `CapabilityPageKeyName` | 抽象クラス |  |
| FA-03 | `CapableStaffPageFilterSpec` | 抽象クラス |  |
| FA-04 | `CapableStaffPageKeyName` | 抽象クラス |  |
| FA-05 | `EquipmentCategoryPageFilterSpec` | 抽象クラス |  |
| FA-06 | `EquipmentPageFilterSpec` | 抽象クラス |  |
| FA-07 | `EquipmentTagPageFilterSpec` | 抽象クラス |  |
| FA-08 | `FilePageFilterSpec` | 抽象クラス |  |
| FA-09 | `InspectImpFilePageFilterSpec` | 抽象クラス |  |
| FA-10 | `InspectRecordPageFilterSpec` | 抽象クラス |  |
| FA-11 | `InspectSchDetailPageFilterSpec` | 抽象クラス |  |
| FA-12 | `InspectSchPageFilterSpec` | 抽象クラス |  |
| FA-13 | `InspectionEquipentPageFilterSpec` | 抽象クラス |  |
| FA-14 | `InspectionItemPageFilterSpec` | 抽象クラス |  |
| FA-15 | `InspectionKindPageFilterSpec` | 抽象クラス |  |
| FA-16 | `InspectionOperationPageFilterSpec` | 抽象クラス |  |
| FA-17 | `InspectionStatusPageFilterSpec` | 抽象クラス |  |
| FA-18 | `ItemTaskCostPageFilterSpec` | 抽象クラス |  |
| FA-19 | `LicenseHoldersPageFilterSpec` | 抽象クラス |  |
| FA-20 | `LicenseHoldersPageKeyName` | 抽象クラス |  |
| FA-21 | `LicensePageFilterSpec` | 抽象クラス |  |
| FA-22 | `LicensePageKeyName` | 抽象クラス |  |
| FA-23 | `LocationPageFilterSpec` | 抽象クラス |  |
| FA-24 | `WorkCalendarPageFilterSpec` | 抽象クラス |  |

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/resource_model.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 41 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 9 件、テストケース 41 件。

- `test/capability_page_flatten_roundtrip_test.dart`
  - 要件0044: Query$CapabilityPageRead <-> Map 往復変換が元と一致する
  - 要件0044: Mutation$CapabilityPageEdit <-> Map 往復変換が元と一致する
  - 要件0044: Query$CapabilityPageRfe <-> Map 往復変換が元と一致する
- `test/capable_staff_page_edit_flatten_roundtrip_test.dart`
  - 要件0047(要件0045から移設): Mutation$CapableStaffPageEdit <-> Map 往復変換が元と一致する
  - 要件0047(要件0045から移設): Query$CapableStaffPageRfe <-> Map 往復変換が元と一致する
- `test/capable_staff_page_flatten_roundtrip_test.dart`
  - 要件0044: Query$CapableStaffPageRead <-> Map 往復変換が元と一致する
- `test/license_holders_page_flatten_roundtrip_test.dart`
  - 要件0045: Query$LicenseHoldersPageRead <-> Map 往復変換が元と一致する
  - 要件0045: Mutation$LicenseHoldersPageEdit <-> Map 往復変換が元と一致する
  - 要件0045: Query$LicenseHoldersPageRfe <-> Map 往復変換が元と一致する
- `test/license_page_flatten_roundtrip_test.dart`
  - 要件0044: Query$LicensePageRead <-> Map 往復変換が元と一致する
  - 要件0044: Mutation$LicensePageEdit <-> Map 往復変換が元と一致する
  - 要件0044: Query$LicensePageRfe <-> Map 往復変換が元と一致する
- `test/location_tree_page_flatten_roundtrip_test.dart`
  - Mutation LocationTreePageEdit <-> Map 往復変換が元と一致する
  - Query LocationTreePageRfe <-> Map 往復変換が元と一致する
  - 親をnull(トップへ移動)にするには、fromJsonにnullのキーを渡す
- `test/rfe_edit_interconversion_test.dart`
  - ${pair.page} RFE <-> Edit 相互変換
- `test/server_read_test.dart`
  - CapabilityPageRead
  - CapableStaffPageRead
  - EquipmentCategoryPageRead
  - EquipmentPageRead
  - EquipmentTagPageRead
  - FilePageRead
  - InspectImpFilePageRead
  - InspectRecordPageRead
  - InspectSchDetailPageRead
  - InspectSchPageRead
  - InspectionEquipentPageRead
  - InspectionItemPageRead
  - InspectionKindPageRead
  - InspectionOperationPageRead
  - InspectionStatusPageRead
  - ItemTaskCostPageRead
  - LicenseHoldersPageRead
  - LicensePageRead
  - LocationPageRead
  - WorkCalendarPageRead
  - 遅延が制限時間を超えるとタイムアウトで終わる
  - 応答の途中・前の切断は Err(NetworkError)
  - 認証エラー(401/403)は Err(ServerError) でステータスを持つ
  - 認証ヘッダーが要求に付く
  - 切断のあと、サーバーが戻れば次の問い合わせは成功する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
