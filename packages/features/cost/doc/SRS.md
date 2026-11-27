# cost ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

cost: 原価 機能の実装(標準原価の一覧・在庫評価額の一覧・ロットの評価額。読み取りだけ。画面・ルート)。アプリだけがこのパッケージに依存する。

原価(標準原価の一覧・在庫評価額の一覧・ロットの評価額)の実装(画面・ルート)。**読み取り専用**。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 モデルは `packages/model_providers/cost_model`(`CostItemUnitPage`・`CostItemValuationPage`・`CostVisiterValuationPage`)。

### 1.2 範囲

- 場所: `packages/features/cost`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)

### 2.2 依存先(ワークスペース内)

`localized_values`、`feature_shared`、`entity_screens`、`data_strategist`、`cost_model`

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
| FR-01 | `CostModule` | クラス | 原価をアプリへ組み込むための口(読み取り専用の台帳)。 |
| FR-02 | `costRepositories` | 関数 | 原価の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立てる。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **決定(2026-11-24)**: 画面は 4 つ(いずれも台帳。金額の列は権限で隠さない): 標準原価の一覧(`costunit`。DB のビュー `v_item_unit_cost`)・在庫評価額の一覧(`costvaluation`。`v_item_valuation`)・ロットの評価額(`costlot`。`v_visiter_valuation`)・実績の原価(`costwork`。…
- **構成**: | 場所 | 内容 |
- **アプリへの組み込み(`pms_app`)**: `featureModules` に `CostModule()`、`graphql_overrides.dart` に `costRepositories(client)`。アクセスパスは `/e/costunit`・`/e/costvaluation`・`/e/costlot`。機能コードは `V`。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/cost.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 8 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 4 件、テストケース 8 件。

- `test/cost_repositories_test.dart`
  - 標準原価・在庫評価額・ロットの評価額を、DB のビューの値のまま画面の行にする(計算しない)
  - 1 件の取得は、主キーで絞る。書き込みは読み取り専用のため断る
- `test/cost_row_action_test.dart`
  - costvaluation の台帳に、行の操作「lots」がある(機能が処理する操作)
  - 行の操作で、ロットの評価額を、その品目(行の ID)で絞って開く。ほかの操作は処理しない
- `test/cost_server_test.dart`
  - 検証用サーバー(読み取りだけ): 標準原価・在庫評価額・ロットの評価額を読める。評価しないロットは評価額 0
- `test/cost_test.dart`
  - 台帳を持つ実体のルートがあり、すべて読み取り専用
  - サンプルが定義に合っている
  - メニュー: 標準原価 = 品目のグループ、在庫評価額・ロットの評価額 = 作業実績のグループ

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
