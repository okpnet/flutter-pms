# entity_screens ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

entity_screens: 実体の定義(項目・種類・親子)から、台帳(テーブル/ツリー)と編集の画面を作る共通部品。

- 層: ui(UI 基盤)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/ui/entity_screens` |
| Dart ファイル(生成物を除く) | 14 |
| `lib/src` の分け方 | `i18n(0)`、`pages(5)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `EntityOptionsLoader` | 型の別名 | 参照先の選択肢を返す処理。専用の画面を持つ実体(顧客・配送区分など)も、これで参照される側になれる。 | `lib/src/catalog.dart` |
| `EntityCatalog` | クラス | アプリ全体の実体の登録簿。各機能が自分の実体を登録し、画面は実行時にここから引く。 | `lib/src/catalog.dart` |
| `entityCatalogProvider` | Riverpod プロバイダ | 実体の登録簿。実体は各機能のモジュールが登録する。 | `lib/src/catalog.dart` |
| `entityRepositoryOverridesProvider` | Riverpod プロバイダ | 取得元の差し替え(GraphQL 版)。アプリが組み立てた [IEntityRepository] を渡すと、 | `lib/src/catalog.dart` |
| `ConditionOperator` | 列挙型 | 条件の演算子。JSON の `operator` に書く文字列を [code] に持つ。 | `lib/src/condition.dart` |
| `ConditionValue` | クラス | JSON にできる条件(演算子 + 値)。項目の種類 `FieldKind.condition` の値で、文字列(JSON)で持つ。 | `lib/src/condition.dart` |
| `FieldKind` | 列挙型 | 項目の種類。入力の部品と検証が決まる。 | `lib/src/definition.dart` |
| `OptionFilter` | クラス | 参照の選択肢を、同じ画面の別の参照で選んだ1件の値で絞る指定([FieldDefinition.optionFilters])。 | `lib/src/definition.dart` |
| `LimitSource` | クラス | 数値の上限を、同じ画面の別の参照で選んだ1件の値から取る指定([FieldDefinition.maxFrom])。 | `lib/src/definition.dart` |
| `FieldDefinition` | クラス | 項目の定義。表示名は含めず([EntityLabels]が言語ごとに返す)、キーと種類だけを持つ。 | `lib/src/definition.dart` |
| `ReverseList` | クラス | 他の実体から、この実体の1件を参照している一覧(例: 力量を持つ作業者)。 | `lib/src/definition.dart` |
| `NestedList` | クラス | 所有する子の台帳を、親の表の各行に子の表を入れた「表の中の表」で出す指定。 | `lib/src/definition.dart` |
| `RowAction` | クラス | 台帳の各行に出すボタンの指定([EntityDefinition.rowActions])。 | `lib/src/definition.dart` |
| `EntityDefinition` | クラス | 実体(台帳の1種類)の定義。 | `lib/src/definition.dart` |
| `EntityLabels` | インターフェイス | 表示名を言語ごとに返す。多言語(slang)で作った文字列を橋渡しする。 | `lib/src/definition.dart` |
| `EntityFile` | クラス | ファイルの項目([FieldKind.file])の値。ファイルの実体は別の保存先(PocketBase)にあり、 | `lib/src/file_transfer.dart` |
| `IEntityFileTransfer` | インターフェイス | ファイルの出し入れの窓口(Strategy)。実体はアプリが差し込む(PocketBase のファイル保存・OS のダイアログ)。 | `lib/src/file_transfer.dart` |
| `UnsupportedEntityFileTransfer` | クラス | 窓口が差し込まれていないとき。使うと [UnsupportedError] を投げ、画面が失敗の文言にする。 | `lib/src/file_transfer.dart` |
| `MoneyPosition` | 列挙型 | 通貨記号を付ける位置。 | `lib/src/money_format.dart` |
| `MoneyStyle` | クラス | 言語ごとの通貨の表示(記号と位置)。 | `lib/src/money_format.dart` |
| `MoneyFormat` | クラス | 金額(`FieldDefinition.money`)の表示。**表示だけ**を変え、値は変えない(換算・複数通貨は扱わない。金額は取引の通貨のまま保存する)。 | `lib/src/money_format.dart` |
| `EntityEditPage` | クラス | 実体の編集(編集構造)。[id] が null のときは新規登録。 | `lib/src/pages/entity_edit_page.dart` |
| `EntityListPage` | クラス | 実体の台帳(テーブル構造。ツリーの実体はツリー構造)。 | `lib/src/pages/entity_list_page.dart` |
| `EntityNestedPage` | クラス | 子の台帳を、親の表の各行に子の表を入れた「表の中の表」で出す画面([EntityDefinition.nest])。 | `lib/src/pages/entity_nested_page.dart` |
| `EntityScope` | クラス | 実体の画面が共通で使うもの(登録簿・表示名・共通の文字列)。 | `lib/src/pages/entity_scope.dart` |
| `ReferenceNames` | 型の別名 | 参照項目の id → 表示名。項目のキーごとに持つ。 | `lib/src/pages/entity_scope.dart` |
| `namesOf` | 関数 |  | `lib/src/pages/entity_scope.dart` |
| `columnsOf` | 関数 | 台帳の列。参照は表示名、それ以外は値のまま。 | `lib/src/pages/entity_scope.dart` |
| `loadReferenceOptions` | 定数・その他 |  | `lib/src/pages/entity_scope.dart` |
| `EntityRecord` | クラス | 実体の1件。値はすべて文字列で持つ(種類ごとの検証はリポジトリが行う)。 | `lib/src/record.dart` |
| `EntityOption` | クラス | 参照先として選ぶときの1件。 | `lib/src/record.dart` |
| `EntityFieldError` | 列挙型 | 検証エラーの種類(画面が文字列に変換する)。 | `lib/src/record.dart` |
| `EntityValidationException` | クラス | 入力の検証に失敗したときの例外。項目のキー(親は `_parent`)ごとのエラーを持つ。 | `lib/src/record.dart` |
| `EntityFailureKind` | 列挙型 | 保存・実行の失敗の種類(入力の項目の誤りではないもの)。画面が、多言語の文に変換して出す。 | `lib/src/record.dart` |
| `EntityFailureException` | クラス | 保存・実行の失敗(種類つき)。項目の誤りは [EntityValidationException]、それ以外の失敗はこの例外で種類を渡す。 | `lib/src/record.dart` |
| `EntityBlockReason` | 列挙型 | 削除できない理由。 | `lib/src/record.dart` |
| `EntityInUseException` | クラス | 他で使用中などで削除できないときの例外。 | `lib/src/record.dart` |
| `IEntityRepository` | インターフェイス | 実体の取得元(Repository)。一覧は [IDataRepository] で取得し、1件の取得・保存・削除を足す。 | `lib/src/repository.dart` |
| `InMemoryEntityRepository` | クラス | メモリ上の実装(サンプル・テスト用)。抽出条件・並び順は無視する | `lib/src/repository.dart` |
| `TreeCycleGuard` | クラス | 体系(ツリー)の親を変えたとき、循環しないかを、保存の前に調べる(Guard)。 | `lib/src/tree_cycle_guard.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `EntityCatalog` | Registry(実体のキーで定義・取得元を引く) | `lib/src/catalog.dart` |
| `EntityFile` | Value Object | `lib/src/file_transfer.dart` |
| `MoneyFormat` | Value Object(表示の規則。計算しない) | `lib/src/money_format.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `loadux_lib`、`view_responsiveness`、`app_shell`、`data_strategist`、`flgtable_lib`、`logger_provider`
- テスト用: `theme_lib`
- 利用元: `pms_app`(アプリ)、`feature_shared`(パッケージ)、`access_control`(パッケージ)、`cost`(パッケージ)、`item`(パッケージ)、`organization`(パッケージ)、`plan_change`(パッケージ)、`production_plan`(パッケージ)、`production_process`(パッケージ)、`purchasing`(パッケージ)、`quality`(パッケージ)、`quality_common`(パッケージ)、`quality_document`(パッケージ)、`resource`(パッケージ)、`sales`(パッケージ)、`shared_master`(パッケージ)、`system`(パッケージ)、`work_record`(パッケージ)
- 外部パッケージ: `flutter_riverpod`、`slang`、`uuid`

## 6. 設計上の決定(`CLAUDE.md` より)

パッケージの `CLAUDE.md` に、個別の決定は書かれていない(ルート・層の `CLAUDE.md` に従う)。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/condition_test.dart`(4)、`test/entity_screens_test.dart`(15)、`test/file_field_test.dart`(6)、`test/flag_nested_test.dart`(11)、`test/label_of_test.dart`(1)、`test/limits_test.dart`(3)、`test/list_modes_test.dart`(4)、`test/money_currency_key_test.dart`(4)、`test/money_format_test.dart`(6)、`test/money_provisional_test.dart`(3)、`test/operation_entity_test.dart`(4)、`test/picker_test.dart`(3)、`test/read_only_test.dart`(3)、`test/relations_test.dart`(5)、`test/row_action_test.dart`(4)、`test/tree_cycle_guard_test.dart`(4)、`test/view_only_test.dart`(1)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
