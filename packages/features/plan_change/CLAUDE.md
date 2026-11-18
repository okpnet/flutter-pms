# plan_change

計画変更 機能の実装(計画変更の履歴・未処置一覧。画面・ルート)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。
キャンセル・停止・打ち切り・処置の記録(DB の `trans_plan_change`)と、そのあとに処置が済んでいないものを、読み取り専用の台帳で見せる。操作(キャンセル・停止・処置など)の画面は、別に作る(`issue/20261116_0003.md` の 7)。

## 画面
1.  計画変更の履歴(`planchange`。DB のビュー `v_plan_change`): テーブル構造・読み取り専用。追記のみの記録(R3)で、編集・削除・登録は出さない。対象(受注明細・発注明細・生産計画・引当予約・ロット・出荷オーダー明細)・動き(キャンセル・数量・納期・延期・前倒し・停止・再開)・処置(打ち切り・在庫にする・押さえる・廃棄・引き渡し・精算)・原因(顧客・仕入先・品質)・MRP との関係(MRP の提案から・反映済み・**未反映**・起点)を、列の名前にチェックで出す。「未反映」で絞ると、再 MRP の対象が分かる。
1.  未処置一覧(`cancelopen`。`v_cancel_open_item`): テーブル構造・読み取り専用。キャンセル・停止・打ち切りのあと、処置が済んでいないもの 7 種(未解除の引当予約・仕掛品・押さえたままの品・未出荷の出荷オーダー・未キャンセルの外注発注・外注先にある支給材・顧客支給材の未返却)を、種類の列(チェック。ちょうど 1 つ)で出す。原因(キャンセル・停止・打ち切り)・数量・品目・原因の日つき。
1.  種類・動き・処置は、コード値(文字列・整数)で持たず、DB のビューの boolean の列をそのまま出す。表示の文を画面で組み立てない(ルートの `CLAUDE.md` の R1・R2)。
1.  メニューは「計画変更」のグループ(「生産計画」の次)。
1.  **履歴**の、MRP に未反映の行(`is_unreflected`)も、行を選んで、上部のメニューの「再MRPへ」で、その行の最上位の受注明細(`root_order_detail`。ビュー `v_plan_change` の `root_trans_order_detail_id`。台帳には出さない隠し項目)を対象にして、資材所要計算の再MRP の画面(`production_plan` の契約 `MrpDestination(redo: true, orderDetailIds: […])`)へ進む(`PlanChangeModule.handleRowAction`)。最上位の受注明細が無い行は、何もしない。
1.  未処置一覧は、**行を選んで、画面の上部の「操作」メニューから**、選んだ行の種類(列のチェック)に合う操作を選ぶ(`RowAction.whenAny`。行ごとのボタンは置かない。上下の行と間違えて押さないため。選んだ行は、上部に名前を出す)。選ぶと、操作の実体(`actreqrelease`・`actreqhold`・`actlotrelease`・`actlothold`・`actlotscrap`・`actlotdeliver`・`actshipcancel`・`actpurcancel`)の新規登録を、対象と数量を初期値にして開く。操作の実体はメニューに出さず(`inMenu: false`)、保存すると DB の関数が呼ばれて計画変更が追記される(編集・削除は無い)。引当予約は「解除」「保管」、仕掛品・押さえた品は「在庫にする」「廃棄」「引き渡し」(仕掛品は「押さえる」も)、出荷オーダーは「出荷取り消し」、外注発注は「発注キャンセル」。支給材(外注先・顧客)の処置は、支給の画面(段階 4 の別画面)で行う。

## 参照するモデル
`packages/model_providers/plan_change_model/gql/plan_change.yaml` の `PlanChangePage`・`CancelOpenItemPage`(ビュー `v_plan_change`・`v_cancel_open_item`)。モデルは `lib/src/graphql` のクラスを使う。

## 実装の指針
1.  `PlanChangeModule`(`lib/src/plan_change_module.dart`。生成。`EntityFeatureModule`)を、アプリの `featureModules` に組み込む。公開は `lib/plan_change.dart` のバレルから、`PlanChangeModule` と取得元の入口 `planChangeRepositories` だけ。
1.  取得元(GraphQL 版。読み取り専用): `lib/src/graphql/plan_change_repositories.dart` の `planChangeRepositories(GraphQLClient)`。アプリ(`pms_app` の `graphql_overrides.dart`)が `entityRepositoryOverridesProvider` に渡すと、サンプルの代わりに使われる(`GRAPHQL_URL` を指定したときだけ)。生成された型は、この中だけで使い、外へ出さない。抽出条件・並び順は無視する(履歴は変更日の新しい順)。
1.  実体の定義・サンプル・表示名・モジュールは、`tools/entity_gen/gen.js` が `tools/open-design`(`domains.js`)の画面定義から生成する。直接編集しない(再生成: リポジトリのルートで `node tools/entity_gen/gen.js`)。
1.  ラベルは slang で多言語化し、列名は `schema.graphql` のコメント(DB の列コメント)を使う。
1.  ログは `logger_provider` の `loggerProvider` を `ref` から直接取得し、この機能が発生元のエラーだけを出す。

## テスト
1.  共通の規則は`packages/features/CLAUDE.md`の「テスト」に従う。
1.  取得元の通信テストは `test/plan_change_connection_test.dart`(検証用サーバー。読み取りに加え、受注明細のキャンセル → 履歴・一覧に出る → 後始末で戻す、を行う。データを変更するテストは名前に明記する。一般ユーザーの資格情報を渡して実行する。`packages/infra/data_test_harness/CLAUDE.md`)。`dart_test.yaml` に `server` タグを宣言してある。
1.  実体の定義・サンプルのテストは `test/plan_change_entities_test.dart`(生成)。

## 行の操作(`CancelOpenActions`)
未処置一覧の種類ごとに、DB の関数を呼ぶ(`lib/src/graphql/cancel_open_actions.dart`。モデルは `plan_change_model` の `PlanChange*PageCall` 8 本)。引当予約の解除・保管、ロットの在庫にする・押さえる・廃棄・引き渡し、出荷オーダー明細の取り消し、外注発注明細のキャンセル。呼ぶ関数は画面が列のチェック(種類)で選び、この中では状態を判定しない。失敗は `CancelOpenActionException`(`errcode`: `OPR00`〜`OPR03`・`VIS05`)で、画面は errcode で表示する文を選ぶ。テストは `test/cancel_open_actions_test.dart`(存在しない対象で `OPR01`)。操作の実体(画面からの保存)は `lib/src/graphql/operation_repositories.dart`(`operationRepositories`)で、`CancelOpenActions` を呼ぶ。テストは `test/operation_repositories_test.dart`(仕掛品を在庫にして計画変更が追記される確認は、未処置の仕掛品がある DB のときだけ実行する)。

## example
`example/`(Windows 向けのビジュアルテスト。`flutter run -d windows`。サンプルの取得元で、履歴・未処置一覧を開き、行を選んで、上部のメニューから操作の入力画面を確認できる。`flutter test` は起動と画面遷移を確認する)。

## 引き渡しの精算
「顧客への引き渡し」(`actlotdeliver`)の入力は、任意で精算区分(`settlementkind`。DB の `mstr_settlement_kind`。読み取りだけの参照先。メニューには出さない)と精算の金額を持つ。区分と金額は、そろえて入れる(片方だけは項目のエラー)。受注明細は、未処置一覧の行(`v_cancel_open_item.trans_order_detail_id`。隠し項目 `order_detail`)から渡す。渡すと、DB の `lot_deliver` が、同じトランザクションで精算(請求書 1 行)も登録して、計画変更につなぐ(ロットの品目と受注明細の品目が違うと `OPR02`)。

## 場所の選択
ロットを動かす操作(引当予約の保管・押さえる・廃棄・引き渡し)の入力画面は、任意の「場所」(`location`。`resource` の場所の台帳から選ぶ)を持つ。棚に場所が無いロットで失敗(`VIS05`)したときに、場所を渡して直せる。空のときは渡さない(`p_location_id` を省く)。

## 未作成
1.  履歴からの再 MRP の起動。支給材の処置(支給の画面)。操作の失敗の表示(いまは数量の誤りだけ項目のエラー、ほかは「保存に失敗しました」。errcode ごとの文は未作成)。

<!-- entity_gen:begin -->
## 実体の画面(生成)
台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
生成物は直接編集しない(再生成: リポジトリのルートで `node tools/entity_gen/gen.js`)。画面の作りは `packages/ui/entity_screens`、機能への組み込みは `feature_shared` の `EntityFeatureModule`。
専用の画面が必要な実体は、生成の対象から外して手書きする(`shared_master` の配送区分を参考にする)。

| 実体 | キー | 構造 | 項目数 | 参照先 |
|---|---|---|---|---|
| 計画変更の履歴 | `planchange` | テーブル構造 | 36 | `item` |
| 未処置一覧 | `cancelopen` | テーブル構造 | 15 | `item` |
| 精算区分 | `settlementkind` | テーブル構造 | 3 |  |
| 引当予約の解除 | `actreqrelease` | テーブル構造 | 3 | `item` |
| 引当予約の保管 | `actreqhold` | テーブル構造 | 5 | `item`, `container`, `location` |
| 在庫にする | `actlotrelease` | テーブル構造 | 3 | `item` |
| 品物を押さえる | `actlothold` | テーブル構造 | 6 | `item`, `container`, `location` |
| 品物の廃棄 | `actlotscrap` | テーブル構造 | 5 | `item`, `location` |
| 顧客への引き渡し | `actlotdeliver` | テーブル構造 | 8 | `item`, `location`, `settlementkind` |
| 出荷オーダーの取り消し | `actshipcancel` | テーブル構造 | 3 | `item` |
| 外注発注のキャンセル | `actpurcancel` | テーブル構造 | 4 | `item` |
<!-- entity_gen:end -->


## 規則/仕様
1.  ディリクトリ/ファイル
    1.  生成結果のレポートは`doc/log`ディリクトリにファイル名`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  同じ年月日、同じ番号に対する追加変更は`年月日_4桁ゼロ埋の番号_add_1からの連番.md`として保存する。
    2.  画面イメージ(HTML)や使い方などは`doc/contents`に保存する。
    3.  最終的にこの`CLAUDE.md`へ統合される追加、変更の指示は`issue`ディリクトリに`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  つまり`生成結果のレポート`と連動する。
        2.  `CLAUDE.md`への統合も指示に含める。統合時、削除指示が無い限り`issue`ディリクトリ`doc/log`ディリクトリの中を削除しない。`CLAUDE.md`には変更や追加、削除であることについて記録しない(生成時に`issue`ディリクトリ`doc/log`ディリクトリを参照するため)。
2.  命名規則
    1.  ファイル名、クラス名など名前付けのルールはFlutterの規則、慣例に従う。
    2.  クラス名はデザインパターンがわかる、または意味が通る英語の名詞とする。ただし、`はい/いいえ`のような`isXxxx`などの`is/as/has`の慣例を優先する。
        1.  `Command`などデザインパターンのみの名前だと誤解や衝突を招くため、機能、動きの名詞化したものと組み合わせる。
    3.  プリフィクスにライブラリ名をつけない(BatonLibXXのような)。
3.  バレルファイルを使用する
    1.  バレルファイルにまとめ、このライブラリを使用する側は1行を読み込むだけで解決できるようにする。ただし、相互に関連が無い独立した機能の場合はバレルファイルを分けて、仕様側が機能に応じて選択できるようにする。ただし、ユーザーの使用体験を優先する。ライブラリ全体の機能が少ない(10以下)ときにインポートするファイルを分ける必要はない。
4.  インスタンスのJSON化
    1.  生成するこのライブラリのインターフェイス、クラスのインスタンスをJSONにコンバートできる。ただし、エラー追跡のためであり、現時点で機能を復元する目的では使用しない。
5.  ログを残す
    1.  ライブラリは実行したときのログを残す。ただし、このライブラリ側のエラーログだけを残し、機能毎のライブラリ側なのかを切り分け可能にするために、適切に選別する。
    2.  ロガーはRiverpodから提供され、アプリケーション全体をとおして同じ仕様のログ出力を行う。
6.  GOFデザインパターン
    1.  クラス名やファイル名にデザインパターンを含めない場合は、コメントに該当するパターン名を追加する。
    2.  必ずしもデザインパターンに割り当てる必要はない。

## 規則: プロジェクト間をまたぐ指示
指示や実装が、プロジェクト(アプリ・ライブラリ)をまたいで行われるときの`issue`・`doc/log`の扱い。
1.  指示をしたプロジェクト
    1.  `doc/log`に、指示の内容・指示した先のプロジェクト・実施した結果を記録する。
2.  指示を受けたプロジェクト
    1.  指示の内容と、指示をしたプロジェクトを`issue`に追加する。
    2.  実施した結果を`doc/log`に記録する。
