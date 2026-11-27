# work_record ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

work_record: 作業実績 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

作業実績 機能の実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 デザインは `tools/open-design` の Html のトップメニュー「作業実績」に従う(`pms_design.md` の該当章を参照)。 契約(遷移先・命令の型)が他の機能から必要になったら、`lib/work_record_api.dart` に公開する(別パッケージ `work_record_api` は作らない)。

### 1.2 範囲

- 場所: `packages/features/work_record`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`barcode_entry`(パッケージ)、`plan_change/example`(example)、`production_plan/example`(example)、`purchasing/example`(example)、`quality/example`(example)

### 2.2 依存先(ワークスペース内)

`feature_shared`、`entity_screens`、`app_shell`、`flgtable_lib`、`loadux_lib`、`data_strategist`、`pms_graphql`、`work_record_model`

テスト用: `logger_provider`、`theme_lib`、`data_test_harness`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `workRecordRepositories` | 関数 | 作業実績の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、 |
| FR-02 | `WorkRecordModule` | クラス | 作業実績をアプリへ組み込むための口。 |
| FR-03 | `GraphqlWorkRegisterGateway` | クラス | 実績登録の取得元(GraphQL 版)。 |
| FR-04 | `InMemoryWorkRegisterGateway` | クラス | メモリ上のサンプルの取得元(Fake)。登録の規則(取り出せる数量・差の扱い・払出)を、DB の関数と同じに動かす。 |
| FR-05 | `IWorkRegisterGateway` | インターフェイス | 実績登録の取得元と登録の窓口(Strategy)。 |
| FR-06 | `workRegisterGatewayProvider` | Riverpod プロバイダ | 実績登録の取得元。アプリ・テストが差し替える。 |
| FR-07 | `WorkRegisterDestination` | クラス | 実績登録の画面へ(生産計画が中心。計画の工程計画明細と対の実績を、開始・終了で登録する)。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **画面(Html のメニュー)**: コンテナ: コンテナ体系 [ツリー構造]
- **参照するモデル**: `packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `XxxModule implements FeatureModule` を `lib/src/work_record_module.dart` に置き、公開は `lib/work_record.dart` のバレルから `WorkRecordModule` だけにする。アプリは `lib/app.dart` の `featureModules` に1行足し…
- **実績登録(`/wr`。メニューの先頭。`WorkRegisterDestination`)**: 生産計画(工程計画)が中心の画面(画面案 `pms_design.md` の 6.5)。`lib/src/register/`: `register_page.dart`(画面)・`register_dialogs.dart`(開始・終了・登録結果のダイアログ)・`container_picker_page.dart`(コンテナの選択)・`register_…
- **ビジター品目(読み取り専用)**: MRP のビジター品目(`mrpvisiter`、`v_mrp_visiter_item`)は、読み取り専用(`viewOnly`)の台帳として出す。項目は品目・品目数・完了・数量。
- **選択用の実体(作業実績・ロット。手書き)**: 異常の登録(`quality`。Issue 20261123_0001 C-1)などで、対象の作業実績・ロットを選ぶための、読み取り専用の台帳(`lib/src/pick/pick_definitions.dart`。`inMenu: false`)。**キーは契約**: 作業実績 `workrecpick`・ロット `lotpick`(他の機能は `Ent…
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。
- **取得元(GraphQL 版。読み取り専用)**: `lib/src/graphql/work_record_repositories.dart` の `workRecordRepositories(GraphQLClient)` が、コンテナ(`container`)・成績書(`certificate`)の取得元を作る。アプリ(`pms_app` の `graphql_overrides.dart`)が `…

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/work_record.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 30 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 6 件、テストケース 30 件。

- `test/pick_test.dart`
  - メニューに出さない選択用の実体も、選択画面のパスに変換できる(他の機能が、キーだけで選ぶ)
  - 選択用の実体(作業実績・ロット)は、読み取り専用でメニューに出さない。キーは契約として固定
  - 選択用の取得元は、ID・シンボル・数量を読み、保存・削除は断る。ロットは数量が正で、調整でない行だけ
- `test/register_connection_test.dart`
  - 生産計画・工程計画明細・実績を読み込み、開始の既定値(担当者・コンテナの候補・残り)を引ける
  - 実施中の実績が無い工程の終了の前提は、失敗(実施中の実績が無い)
- `test/register_gateway_test.dart`
  - 最初の工程の候補は、同じ注文の材料。引当あり → 数量の多い順。取り出せないものは理由つき
  - 検索語でコンテナを絞る
  - 開始: コンテナから払い出し、計画の残りは実施中の取り出し数量ぶん減る
  - 開始の検証: 在庫・計画の残り・取り出せないコンテナ・実施中
  - 終了: 完了数量は取り出した数量まで。差が無ければそのまま払い出し、次の工程の候補になる
  - 少ないときは意図的か不適合かを選ぶ。意図的は差を返し、次の開始は引継ぎ
  - 不適合は工程異常: 数量・理由・コンテナが揃うと登録し、満たない差は払出元へ返す
  - 最終工程の完了数量は生産計画に積まれる。計画の数量ぶん終えると工程は完了
  - 失敗したときは、登録せず、同じ入力で再試行できる
  - 終了の前提: 実施中の実績が無ければ失敗
- `test/register_page_test.dart`
  - 生産計画の表の中に、工程計画明細の子の表が出る(別の表に分けない)
  - 開始: 既定のまま「開始(コンテナ払出)」を 1 回押すだけ。結果の更新内容が出る
  - 開始の数量: 全量・−/＋・上限の検証
  - コンテナを変更・検索: コンテナ画面へ移り、取り出せないものは選べない
  - 探して開始: 開いてすぐコンテナ画面へ
  - 終了のダイアログ: 完了数量を減らすと差の区分が出る。意図的の理由を選んで登録できる
  - 不適合: 工程異常として、数量・理由・コンテナを選んで登録する
  - 登録に失敗したときは理由を出し、入力を残して再試行できる
  - ダイアログの幅: 狭い画面でもボタンの文字がはみ出さず、折り返して並ぶ
- `test/work_record_connection_test.dart`
  - コンテナ・成績書・選択用(作業実績・ロット)を、画面の値(名称は言語コード ja)で取得できる
  - 実体は読み取り専用: 新規・保存・削除を出さず、書き込もうとすると失敗する
- `test/work_record_entities_test.dart`
  - 台帳を持つ実体のルートがある(子の台帳は編集だけ)
  - すべての実体に、台帳・編集のパスが対応する
  - サンプルが定義に合っている(必須・形式・選択肢・親子)
  - 同じプロジェクト内の参照と親子が、サンプルの id に解決する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
