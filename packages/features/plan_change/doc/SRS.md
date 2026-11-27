# plan_change ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

plan_change: 計画変更 機能の実装(計画変更の履歴・未処置一覧。画面・ルート)。アプリだけがこのパッケージに依存する。

計画変更 機能の実装(計画変更の履歴・未処置一覧。画面・ルート)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 キャンセル・停止・打ち切り・処置の記録(DB の `trans_plan_change`)と、そのあとに処置が済んでいないものを、読み取り専用の台帳で見せる。操作(キャンセル・停止・処置など)の画面は、別に作る(`issue/20261116_0003.md` の 7)。

### 1.2 範囲

- 場所: `packages/features/plan_change`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)

### 2.2 依存先(ワークスペース内)

`localized_values`、`feature_shared`、`entity_screens`、`data_strategist`、`pms_graphql`、`plan_change_model`、`production_plan`

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
| FR-01 | `planChangeRepositories` | 関数 | 計画変更の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、 |
| FR-02 | `PlanChangeModule` | クラス | 計画変更をアプリへ組み込むための口。 |
| FR-03 | `CancelOpenActionException` | クラス | 未処置一覧の行の操作が失敗したときの例外。DB の関数の errcode(`OPR00`〜`OPR03`・`VIS05` など)を持つ。 |
| FR-04 | `CancelOpenActionResult` | クラス | 処置の結果(DB の関数が追記した計画変更)。値は、処置の boolean の列(`release`・`hold`・`scrap`・`deliver`)だけ。 |
| FR-05 | `CancelOpenActions` | クラス | 未処置一覧の行の操作(DB の関数の呼び出し。1回 = 1トランザクション)。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **画面**: 計画変更の履歴(`planchange`。DB のビュー `v_plan_change`): テーブル構造・読み取り専用。追記のみの記録(R3)で、編集・削除・登録は出さない。対象(受注明細・発注明細・生産計画・引当予約・ロット・出荷オーダー明細)・動き(キャンセル・数量・納期・延期・前倒し・停止・再開)・処置(打ち切り・在庫にする・押さえる・廃棄・引き渡し…
- **参照するモデル**: `packages/model_providers/plan_change_model/gql/plan_change.yaml` の `PlanChangePage`・`CancelOpenItemPage`(ビュー `v_plan_change`・`v_cancel_open_item`)。モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `PlanChangeModule`(`lib/src/plan_change_module.dart`。生成。`EntityFeatureModule`)を、アプリの `featureModules` に組み込む。公開は `lib/plan_change.dart` のバレルから、`PlanChangeModule` と取得元の入口 `planChange…
- **行の操作(`CancelOpenActions`)**: 未処置一覧の種類ごとに、DB の関数を呼ぶ(`lib/src/graphql/cancel_open_actions.dart`。モデルは `plan_change_model` の `PlanChange*PageCall` 8 本)。引当予約の解除・保管、ロットの在庫にする・押さえる・廃棄・引き渡し、出荷オーダー明細の取り消し、外注発注明細のキャンセル。…
- **example**: `example/`(Windows 向けのビジュアルテスト。`flutter run -d windows`。サンプルの取得元で、履歴・未処置一覧を開き、行を選んで、上部のメニューから操作の入力画面を確認できる。`flutter test` は起動と画面遷移を確認する)。
- **引き渡しの精算**: 「顧客への引き渡し」(`actlotdeliver`)の入力は、任意で精算区分(`settlementkind`。DB の `mstr_settlement_kind`。読み取りだけの参照先。メニューには出さない)と精算の金額を持つ。区分と金額は、そろえて入れる(片方だけは項目のエラー)。受注明細は、未処置一覧の行(`v_cancel_open_item.t…
- **場所の選択**: ロットを動かす操作(引当予約の保管・押さえる・廃棄・引き渡し)の入力画面は、任意の「場所」(`location`。`resource` の場所の台帳から選ぶ)を持つ。棚に場所が無いロットで失敗(`VIS05`)したときに、場所を渡して直せる。空のときは渡さない(`p_location_id` を省く)。
- **未作成**: 履歴からの再 MRP の起動。支給材の処置(支給の画面)。操作の失敗の表示(いまは数量の誤りだけ項目のエラー、ほかは「保存に失敗しました」。errcode ごとの文は未作成)。
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/plan_change.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 13 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 4 件、テストケース 13 件。

- `test/cancel_open_actions_test.dart`
  - 存在しない対象は OPR01 になる
  - 0 以下の数量は OPR02 になる(対象があるとき)
- `test/operation_repositories_test.dart`
  - 操作の実体は、メニューに出さず、追記だけ(更新・削除は不可)
  - 未処置一覧の行のボタンは、種類(真偽の列)に合う行だけに出て、操作の実体を開く
  - 存在しない対象は、種類つきの失敗(対象が無い)になる(データは変わらない)
  - 仕掛品を在庫にすると、計画変更が追記される(データを変更し、後始末で論理削除する)
- `test/plan_change_connection_test.dart`
  - 履歴と未処置一覧を、boolean の列(チェック)で取得できる
  - 受注明細のキャンセルが、履歴(キャンセル・受注明細・未反映)と未処置一覧に出る(データを変更し、後始末で戻す)
  - 実体は読み取り専用: 新規・保存・削除を出さず、書き込もうとすると失敗する
- `test/plan_change_entities_test.dart`
  - 台帳を持つ実体のルートがある(子の台帳は編集だけ)
  - すべての実体に、台帳・編集のパスが対応する
  - サンプルが定義に合っている(必須・形式・選択肢・親子)
  - 同じプロジェクト内の参照と親子が、サンプルの id に解決する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
