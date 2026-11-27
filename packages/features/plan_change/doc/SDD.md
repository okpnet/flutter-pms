# plan_change ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

plan_change: 計画変更 機能の実装(計画変更の履歴・未処置一覧。画面・ルート)。アプリだけがこのパッケージに依存する。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/plan_change` |
| Dart ファイル(生成物を除く) | 9 |
| `lib/src` の分け方 | `entities(3)`、`graphql(3)`、`i18n(1)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `planChangeRepositories` | 関数 | 計画変更の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、 | `lib/src/graphql/plan_change_repositories.dart` |
| `PlanChangeModule` | クラス | 計画変更をアプリへ組み込むための口。 | `lib/src/plan_change_module.dart` |
| `CancelOpenActionException` | クラス | 未処置一覧の行の操作が失敗したときの例外。DB の関数の errcode(`OPR00`〜`OPR03`・`VIS05` など)を持つ。 | `lib/src/graphql/cancel_open_actions.dart` |
| `CancelOpenActionResult` | クラス | 処置の結果(DB の関数が追記した計画変更)。値は、処置の boolean の列(`release`・`hold`・`scrap`・`deliver`)だけ。 | `lib/src/graphql/cancel_open_actions.dart` |
| `CancelOpenActions` | クラス | 未処置一覧の行の操作(DB の関数の呼び出し。1回 = 1トランザクション)。 | `lib/src/graphql/cancel_open_actions.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `CancelOpenActions` | Facade(生成された 8 本の関数の呼び出しを、操作ごとの 1 メソッドにまとめる) | `lib/src/graphql/cancel_open_actions.dart` |
| `_Operation` | Adapter(画面の [EntityRecord] と、DB の関数の呼び出しを変換する) | `lib/src/graphql/operation_repositories.dart` |
|  | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/plan_change_repositories.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `localized_values`、`feature_shared`、`entity_screens`、`data_strategist`、`pms_graphql`、`plan_change_model`、`production_plan`
- テスト用: `data_test_harness`
- 利用元: `pms_app`(アプリ)
- 外部パッケージ: `flutter_riverpod`、`go_router`、`slang`、`graphql`

## 6. 設計上の決定(`CLAUDE.md` より)

- **画面**: 計画変更の履歴(`planchange`。DB のビュー `v_plan_change`): テーブル構造・読み取り専用。追記のみの記録(R3)で、編集・削除・登録は出さない。対象(受注明細・発注明細・生産計画・引当予約・ロット・出荷オーダー明細)・動き(キャンセル・数量・納期・延期・前倒し・停止・再開)・処置(打ち切り・在庫にする・押さえる・廃棄・引き渡し…
- **参照するモデル**: `packages/model_providers/plan_change_model/gql/plan_change.yaml` の `PlanChangePage`・`CancelOpenItemPage`(ビュー `v_plan_change`・`v_cancel_open_item`)。モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `PlanChangeModule`(`lib/src/plan_change_module.dart`。生成。`EntityFeatureModule`)を、アプリの `featureModules` に組み込む。公開は `lib/plan_change.dart` のバレルから、`PlanChangeModule` と取得元の入口 `planChange…
- **行の操作(`CancelOpenActions`)**: 未処置一覧の種類ごとに、DB の関数を呼ぶ(`lib/src/graphql/cancel_open_actions.dart`。モデルは `plan_change_model` の `PlanChange*PageCall` 8 本)。引当予約の解除・保管、ロットの在庫にする・押さえる・廃棄・引き渡し、出荷オーダー明細の取り消し、外注発注明細のキャンセル。…
- **example**: `example/`(Windows 向けのビジュアルテスト。`flutter run -d windows`。サンプルの取得元で、履歴・未処置一覧を開き、行を選んで、上部のメニューから操作の入力画面を確認できる。`flutter test` は起動と画面遷移を確認する)。
- **引き渡しの精算**: 「顧客への引き渡し」(`actlotdeliver`)の入力は、任意で精算区分(`settlementkind`。DB の `mstr_settlement_kind`。読み取りだけの参照先。メニューには出さない)と精算の金額を持つ。区分と金額は、そろえて入れる(片方だけは項目のエラー)。受注明細は、未処置一覧の行(`v_cancel_open_item.t…
- **場所の選択**: ロットを動かす操作(引当予約の保管・押さえる・廃棄・引き渡し)の入力画面は、任意の「場所」(`location`。`resource` の場所の台帳から選ぶ)を持つ。棚に場所が無いロットで失敗(`VIS05`)したときに、場所を渡して直せる。空のときは渡さない(`p_location_id` を省く)。
- **未作成**: 履歴からの再 MRP の起動。支給材の処置(支給の画面)。操作の失敗の表示(いまは数量の誤りだけ項目のエラー、ほかは「保存に失敗しました」。errcode ごとの文は未作成)。
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/cancel_open_actions_test.dart`(2)、`test/operation_repositories_test.dart`(4)、`test/plan_change_connection_test.dart`(3)、`test/plan_change_entities_test.dart`(4)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
