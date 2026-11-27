# item_model ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

item_model: item 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

### 1.2 範囲

- 場所: `packages/model_providers/item_model`(model_providers(機能ごとの GraphQL モデル))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`item`(パッケージ)、`production_process`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)

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
| FR-01 | `ItemKindPage` | 読み込み | `mstr_item_kind` | 品目区分読み込み |
| FR-02 | `ItemKindPageEdit` | 更新 | `mstr_item_kind` | 品目区分の更新(平らな列だけ。渡した列だけが変わる。名称(names)の ID は、共通関数で作る・変える)。論理削除は ItemKindPageRemove(remove = true) |
| FR-03 | `ItemKindPageCreate` | 登録 | `mstr_item_kind` | 品目区分の登録(kind: create)。記号(symbol)は DB が採番する |
| FR-04 | `ItemKindAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | 共通関数(kind: function)。呼称(言語別の値)を作る・変える。返った ID を、本体の names に渡す |
| FR-05 | `ItemPage` | 読み込み | `mstr_item` | 品目ツリーの読込 |
| FR-06 | `ItemPageEdit` | 更新 | `mstr_item` | ツリーから選択したもの、設備など参照から選択されたものが編集として該当する |
| FR-07 | `ItemTreePageEdit` | 更新 | `mstr_item_tree` | 旧ItemPageEdit.parent(品目の編集に入れ子で持たせていた)の列を引き継いだ。 |
| FR-08 | `ItemOnHandPage` | 読み込み | `v_item_on_hand` | 品目別の現在庫(v_item_on_hand。1行は品目) |
| FR-09 | `ItemOperationPageEdit` | 更新 | `mstr_item_operation` | mstr_item_operationの書き込み |
| FR-10 | `ItemOperationTaskPageEdit` | 更新 | `mstr_item_operation_task` | mstr_item_operation_taskの書き込み |
| FR-11 | `ItemSizeKindPageEdit` | 更新 | `mstr_item_size_kind` | 品目サイズ区分の書き込み委 |
| FR-12 | `TaskPage` | 読み込み | `mstr_task` | 工程の読み込み |
| FR-13 | `TaskPageEdit` | 更新 | `mstr_task` | 工程の書き込み |
| FR-14 | `TaskResourcePage` | 読み込み | `mstr_task_location` | 工程が必要 |
| FR-15 | `TaskResourcePageEdit` | 更新 | `mstr_task_location` | 工程が必要 |
| FR-16 | `OperationPage` | 読み込み | `mstr_operation` | 工程運用の読込 |
| FR-17 | `OperationPageEdit` | 更新 | `mstr_operation` | 工程運用の書込 |
| FR-18 | `TaskTreePageEdit` | 更新 | `mstr_task_tree` | ツリー行(mstr_task_tree)を直接更新する。parent_mstr_task_idがnullのときはトップノード。 |
| FR-19 | `TaskEquipmentAvailablePage` | 読み込み | `mstr_equipment_available` | 工程の場所が必要。名称が必要な画面は、ID で既存の読み込みを引く。 |
| FR-20 | `TaskEquipmentAvailablePageEdit` | 更新 | `mstr_equipment_available` | 工程の場所で使える設備の書き込み |
| FR-21 | `TaskOutsourceAvailablePage` | 読み込み | `mstr_outsource_available` | 工程の場所が必要 |
| FR-22 | `TaskOutsourceAvailablePageEdit` | 更新 | `mstr_outsource_available` | 工程の場所で使える外部委託の書き込み |

手書きの公開面は次のとおり。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FA-01 | `ItemKindPageFilterSpec` | 抽象クラス |  |
| FA-02 | `ItemKindPageKeyName` | 抽象クラス |  |
| FA-03 | `ItemOnHandPageFilterSpec` | 抽象クラス |  |
| FA-04 | `ItemOperationPageFilterSpec` | 抽象クラス |  |
| FA-05 | `ItemOperationTaskPageFilterSpec` | 抽象クラス |  |
| FA-06 | `ItemPageFilterSpec` | 抽象クラス |  |
| FA-07 | `ItemSizePageFilterSpec` | 抽象クラス |  |
| FA-08 | `ManufacturePageFilterSpec` | 抽象クラス |  |
| FA-09 | `OperationPageFilterSpec` | 抽象クラス |  |
| FA-10 | `SpecMeasurementPageFilterSpec` | 抽象クラス |  |
| FA-11 | `SpecMeasurementPageKeyName` | 抽象クラス |  |
| FA-12 | `TaskEquipmentAvailablePageFilterSpec` | 抽象クラス |  |
| FA-13 | `TaskGroupPageFilterSpec` | 抽象クラス |  |
| FA-14 | `TaskOutsourceAvailablePageFilterSpec` | 抽象クラス |  |
| FA-15 | `TaskPageFilterSpec` | 抽象クラス |  |
| FA-16 | `TaskResourcePageFilterSpec` | 抽象クラス |  |

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/item_model.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 33 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 7 件、テストケース 33 件。

- `test/item_kind_page_flatten_roundtrip_test.dart`
  - 要件0044: Query$ItemKindPageRead <-> Map 往復変換が元と一致する
  - 要件0044: Mutation$ItemKindPageEdit <-> Map 往復変換が元と一致する
  - 要件0044: Query$ItemKindPageRfe <-> Map 往復変換が元と一致する
- `test/operation_page_flatten_roundtrip_test.dart`
  - Query$OperationPageRead <-> Map 往復変換が元と一致する
  - Mutation$OperationPageEdit <-> Map 往復変換が元と一致する
  - Query$OperationPageRfe <-> Map 往復変換が元と一致する
- `test/rfe_edit_interconversion_test.dart`
  - ${pair.page} RFE <-> Edit 相互変換
- `test/server_read_test.dart`
  - ItemKindPageRead
  - ItemOnHandPageRead
  - ItemOperationPageRead
  - ItemOperationTaskPageRead
  - ItemPageRead
  - ItemSizeKindPageRead
  - ItemSizePageRead
  - ManufacturePageRead
  - OperationPageRead
  - SpecMeasurementPageRead
  - TaskEquipmentAvailablePageRead
  - TaskGroupPageRead
  - TaskOutsourceAvailablePageRead
  - TaskPageRead
  - TaskResourcePageRead
  - 遅延が制限時間を超えるとタイムアウトで終わる
  - 応答の途中・前の切断は Err(NetworkError)
  - 認証エラー(401/403)は Err(ServerError) でステータスを持つ
  - 認証ヘッダーが要求に付く
  - 切断のあと、サーバーが戻れば次の問い合わせは成功する
- `test/spec_measurement_page_flatten_roundtrip_test.dart`
  - 要件0044: Query$SpecMeasurementPageRead <-> Map 往復変換が元と一致する
  - 要件0044: Mutation$SpecMeasurementPageEdit <-> Map 往復変換が元と一致する
  - 要件0044: Query$SpecMeasurementPageRfe <-> Map 往復変換が元と一致する
- `test/task_tree_page_flatten_roundtrip_test.dart`
  - Mutation TaskTreePageEdit <-> Map 往復変換が元と一致する
  - Query TaskTreePageRfe <-> Map 往復変換が元と一致する
  - 親をnull(トップへ移動)にするには、fromJsonにnullのキーを渡す

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
