# entity_screens ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

entity_screens: 実体の定義(項目・種類・親子)から、台帳(テーブル/ツリー)と編集の画面を作る共通部品。

### 1.2 範囲

- 場所: `packages/ui/entity_screens`(ui(UI 基盤))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`feature_shared`(パッケージ)、`access_control`(パッケージ)、`cost`(パッケージ)、`item`(パッケージ)、`organization`(パッケージ)、`plan_change`(パッケージ)、`production_plan`(パッケージ)、`production_process`(パッケージ)、`purchasing`(パッケージ)、`quality`(パッケージ)、`quality_common`(パッケージ)、`quality_document`(パッケージ)、`resource`(パッケージ)、`sales`(パッケージ)、`shared_master`(パッケージ)、`system`(パッケージ)、`work_record`(パッケージ)

### 2.2 依存先(ワークスペース内)

`loadux_lib`、`view_responsiveness`、`app_shell`、`data_strategist`、`flgtable_lib`、`logger_provider`

テスト用: `theme_lib`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `EntityOptionsLoader` | 型の別名 | 参照先の選択肢を返す処理。専用の画面を持つ実体(顧客・配送区分など)も、これで参照される側になれる。 |
| FR-02 | `EntityCatalog` | クラス | アプリ全体の実体の登録簿。各機能が自分の実体を登録し、画面は実行時にここから引く。 |
| FR-03 | `entityCatalogProvider` | Riverpod プロバイダ | 実体の登録簿。実体は各機能のモジュールが登録する。 |
| FR-04 | `entityRepositoryOverridesProvider` | Riverpod プロバイダ | 取得元の差し替え(GraphQL 版)。アプリが組み立てた [IEntityRepository] を渡すと、 |
| FR-05 | `ConditionOperator` | 列挙型 | 条件の演算子。JSON の `operator` に書く文字列を [code] に持つ。 |
| FR-06 | `ConditionValue` | クラス | JSON にできる条件(演算子 + 値)。項目の種類 `FieldKind.condition` の値で、文字列(JSON)で持つ。 |
| FR-07 | `FieldKind` | 列挙型 | 項目の種類。入力の部品と検証が決まる。 |
| FR-08 | `OptionFilter` | クラス | 参照の選択肢を、同じ画面の別の参照で選んだ1件の値で絞る指定([FieldDefinition.optionFilters])。 |
| FR-09 | `LimitSource` | クラス | 数値の上限を、同じ画面の別の参照で選んだ1件の値から取る指定([FieldDefinition.maxFrom])。 |
| FR-10 | `FieldDefinition` | クラス | 項目の定義。表示名は含めず([EntityLabels]が言語ごとに返す)、キーと種類だけを持つ。 |
| FR-11 | `ReverseList` | クラス | 他の実体から、この実体の1件を参照している一覧(例: 力量を持つ作業者)。 |
| FR-12 | `NestedList` | クラス | 所有する子の台帳を、親の表の各行に子の表を入れた「表の中の表」で出す指定。 |
| FR-13 | `RowAction` | クラス | 台帳の各行に出すボタンの指定([EntityDefinition.rowActions])。 |
| FR-14 | `EntityDefinition` | クラス | 実体(台帳の1種類)の定義。 |
| FR-15 | `EntityLabels` | インターフェイス | 表示名を言語ごとに返す。多言語(slang)で作った文字列を橋渡しする。 |
| FR-16 | `EntityFile` | クラス | ファイルの項目([FieldKind.file])の値。ファイルの実体は別の保存先(PocketBase)にあり、 |
| FR-17 | `IEntityFileTransfer` | インターフェイス | ファイルの出し入れの窓口(Strategy)。実体はアプリが差し込む(PocketBase のファイル保存・OS のダイアログ)。 |
| FR-18 | `UnsupportedEntityFileTransfer` | クラス | 窓口が差し込まれていないとき。使うと [UnsupportedError] を投げ、画面が失敗の文言にする。 |
| FR-19 | `MoneyPosition` | 列挙型 | 通貨記号を付ける位置。 |
| FR-20 | `MoneyStyle` | クラス | 言語ごとの通貨の表示(記号と位置)。 |
| FR-21 | `MoneyFormat` | クラス | 金額(`FieldDefinition.money`)の表示。**表示だけ**を変え、値は変えない(換算・複数通貨は扱わない。金額は取引の通貨のまま保存する)。 |
| FR-22 | `EntityEditPage` | クラス | 実体の編集(編集構造)。[id] が null のときは新規登録。 |
| FR-23 | `EntityListPage` | クラス | 実体の台帳(テーブル構造。ツリーの実体はツリー構造)。 |
| FR-24 | `EntityNestedPage` | クラス | 子の台帳を、親の表の各行に子の表を入れた「表の中の表」で出す画面([EntityDefinition.nest])。 |
| FR-25 | `EntityScope` | クラス | 実体の画面が共通で使うもの(登録簿・表示名・共通の文字列)。 |
| FR-26 | `ReferenceNames` | 型の別名 | 参照項目の id → 表示名。項目のキーごとに持つ。 |
| FR-27 | `namesOf` | 関数 |  |
| FR-28 | `columnsOf` | 関数 | 台帳の列。参照は表示名、それ以外は値のまま。 |
| FR-29 | `loadReferenceOptions` | 定数・その他 |  |
| FR-30 | `EntityRecord` | クラス | 実体の1件。値はすべて文字列で持つ(種類ごとの検証はリポジトリが行う)。 |
| FR-31 | `EntityOption` | クラス | 参照先として選ぶときの1件。 |
| FR-32 | `EntityFieldError` | 列挙型 | 検証エラーの種類(画面が文字列に変換する)。 |
| FR-33 | `EntityValidationException` | クラス | 入力の検証に失敗したときの例外。項目のキー(親は `_parent`)ごとのエラーを持つ。 |
| FR-34 | `EntityFailureKind` | 列挙型 | 保存・実行の失敗の種類(入力の項目の誤りではないもの)。画面が、多言語の文に変換して出す。 |
| FR-35 | `EntityFailureException` | クラス | 保存・実行の失敗(種類つき)。項目の誤りは [EntityValidationException]、それ以外の失敗はこの例外で種類を渡す。 |
| FR-36 | `EntityBlockReason` | 列挙型 | 削除できない理由。 |
| FR-37 | `EntityInUseException` | クラス | 他で使用中などで削除できないときの例外。 |
| FR-38 | `IEntityRepository` | インターフェイス | 実体の取得元(Repository)。一覧は [IDataRepository] で取得し、1件の取得・保存・削除を足す。 |
| FR-39 | `InMemoryEntityRepository` | クラス | メモリ上の実装(サンプル・テスト用)。抽出条件・並び順は無視する |
| FR-40 | `TreeCycleGuard` | クラス | 体系(ツリー)の親を変えたとき、循環しないかを、保存の前に調べる(Guard)。 |

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/entity_screens.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 81 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 17 件、テストケース 81 件。

- `test/condition_test.dart`
  - 比較・範囲・二値を JSON にでき、読み戻せる
  - 値が空・演算子が不明・型が合わないものは読めない
  - 台帳の表示
  - 取得元は、条件として読めない値を検証エラーにする
- `test/entity_screens_test.dart`
  - 必須・数値・日付・選択肢を検証する
  - 新規は UUID を採番し、保存した値を返す
  - 重複を認めない項目の組は、同じ値の別の1件を拒否する(自分自身は除く)
  - 所有される実体の重複は、同じ親の中だけで調べる
  - ツリーは自分や子孫を親にできない
  - 参照の選択肢は「先頭2項目」の表示になる
  - 専用の画面を持つ実体は lookup で参照される
  - 配下がある・参照されている実体は削除できない
  - 削除すると、所有する子も一緒に消える
  - 台帳(ツリー)に列と行が表示される
  - 台帳(フラット)に行が表示される
  - 編集: 必須未入力はエラー、子の台帳が下に出る
  - 編集: この実体を参照している一覧(逆引き)が下に出る
  - 編集: 追加・編集できる関連一覧は、「追加」で親を初期値にして開き、行で編集を開く
  - 編集: 使用中は削除確認のあとエラーを表示する
- `test/file_field_test.dart`
  - 値は JSON の文字列で持ち回り、読み戻せる。壊れた値・空は null
  - 台帳: ファイル名が表示され、押すとダウンロードする
  - 台帳: ダウンロードに失敗したら、通知して落ちない
  - 編集: アップロードで値が変わり、保存すると取得元に残る
  - 編集: ファイルの無い行は「ファイルなし」。アップロードに失敗したら項目にエラー
  - 窓口が差し込まれていないときは、使うと UnsupportedError
- `test/flag_nested_test.dart`
  - 数値の下限(以上・より大きい)
  - 言い値でなければ単価は必須。言い値なら単価を空にして保存する
  - 同じ親の中でサプライヤーの二重登録は不可。別の親なら可
  - 言い値をオンにすると単価が無効になって空になり、オフで必須に戻る
  - 下限の文言を出す
  - 子(仕入先)がある間は、購入品のチェックを外せない。理由は項目の下に出る
  - 子の無い品目は、購入品のチェックを外せる
  - 真偽の列は はい/いいえ、無効になった単価は文言を出す
  - 購入品の品目だけを親にして、子の表(サプライヤー)を開いた状態で出す
  - 行ごとに開閉でき、検索で絞り込める
  - 編集モードで「追加」が出て、親の id を渡す
- `test/label_of_test.dart`
  - 名称を持たない実体の表示は、最初の参照先の表示を先頭に付ける(受入実績 → 発注明細 → 品目)
- `test/limits_test.dart`
  - le(以下)・lt(より小さい)
  - notBefore: 同じ日は可、前は不可、どちらかが空なら検証しない
  - toJson に含まれる
- `test/list_modes_test.dart`
  - 見出し(上の文字・見出し・時点)と、検索の枠・件数の文が出る
  - 検索の文字と、種別のチップで絞り込める
  - 2 つのモード: はじめは閲覧(新規・行を開く操作は無い)。「編集」で、新規と行を開く操作が使える
  - 選択画面(2 つのモードにしない)は、行を開く操作がそのまま使える
- `test/money_currency_key_test.dart`
  - 記号の指定があれば、設定の記号の代わりに使う(位置は設定)。空は設定の記号
  - 台帳(英語): 行ごとの通貨の記号で出し、通貨が混ざる合計は設定の記号。値は変えない
  - 台帳: 行の通貨がすべて同じなら、合計もその記号
  - 編集: 入力欄の記号は、読み込んだ行の通貨
- `test/money_format_test.dart`
  - 日本語は後ろに「円」、英語は前に「¥」。桁区切りをつけ、小数はそのまま
  - 空・数値でない文字は、そのまま返す(値を変えない)
  - 設定の JSON から読める。不正・null は標準。言語ごとの記号と位置を上書きできる
  - 台帳: 金額の列と合計は単位つき、金額でない数値は変えない。値は変えない
  - 台帳(英語): 記号は前
  - 編集: 金額の入力欄に記号が付き(日本語は後ろ)、読み取り専用の金額は単位つき。保存した値に記号は入らない
- `test/money_provisional_test.dart`
  - 仮のレートの行だけ「(仮)」を付け、合計に「(一部仮)」を付ける。値は変えない
  - 仮の行が無いときは、印を付けない
  - canEdit が false のときは、編集の切り替えと新規を出さない
- `test/operation_entity_test.dart`
  - hidden の項目は出さず、初期値は保存に渡す。確認で実行すると保存され、完了が通知される
  - 確認で取り消すと、保存されない
  - 種類つきの失敗は、種類に合う文を出す(「保存に失敗しました」ではない)
  - compactFlags は、オンのときだけ印を出し、オフは空。行のボタンの列は出さない(操作は上部のメニュー)
- `test/picker_test.dart`
  - 選択方式の参照は、選んだ 1 件の表示名と選択ボタンを出し、結果で置き換える
  - 選択画面(新規なし)は、行を選ぶとコールバックが呼ばれる
  - 名称を参照先から借りる実体は、コード + 参照先の表示で選択肢になる
- `test/read_only_test.dart`
  - 読み取り専用の項目は、入力が空でも検証エラーにならない
  - 編集画面は読み取り専用の項目を表示だけにし、保存しても値は変わらない
  - 台帳は読み取り専用の項目を、読み取り専用の列にする
- `test/relations_test.dart`
  - 排他: 購買注文明細を選ぶと生産計画は選べず、保存にはどちらかが要る
  - 選択肢の絞り込み: 選んだ購買注文明細の品目の在庫だけが出る
  - 親をたどる絞り込み: 生産計画は、所有する親の品目の在庫だけが出る
  - 上限: 数量は選んだ在庫の出庫可能数まで
  - toJson に関係の指定が含まれる
- `test/row_action_test.dart`
  - 行を選んで、上部のメニューから操作すると、その行の値を初期値にした指定が渡される
  - rowActions は、toJson に指定が出る
  - whenAny を指定したボタンは、どれかの真偽がオンの行にだけ出る
  - onAction が無いときは、操作バーを出さない
- `test/tree_cycle_guard_test.dart`
  - 自分自身・子孫を親にすると循環
  - 別の系統・トップ・新規は通る
  - 閉包を引く版も同じ判定
  - トリガーのエラーの文を見分ける
- `test/view_only_test.dart`

(ほか 1 件は、各テストファイルを参照)

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
