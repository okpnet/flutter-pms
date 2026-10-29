# production_plan

生産計画 機能の実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。
デザインは `tools/open-design` の Html のトップメニュー「生産計画」に従う(`pms_design.md` の該当章を参照)。
契約(遷移先・命令の型)が他の機能から必要になったら、`lib/production_plan_api.dart` に公開する(別パッケージ `production_plan_api` は作らない)。

## 画面(Html のメニュー)
1.  資材所要量計画: 資材計画台帳
2.  充当計画: 生産引当予約 / 購買引当予約
3.  工程計画: 品目工程台帳
4.  資材所要計算(MRP): `MrpDestination` → `/mrp`。メニューは「生産計画」の子項目。
    1.  「再MRPとして実行する」(チェックなしは受注MRP=`p_mode` 1、ありは再MRP=2)と「MRPを実行」。実行前に確認ダイアログで警告(処理が重い・影響が広範囲で他のユーザーにも及ぶ・再MRPはさらに大きい・実行中は操作も中断もできない)を出し、「実行する」を押したときだけ実行する。
    2.  実行中は画面全体の操作と戻る操作を無効にし(`busyProvider`)、「計算中」と経過時間を出す。
    3.  成功したら「MRPが成功しました」のお知らせ(実行日時・受注MRPか再MRPか・提案件数・要判断件数・遅れ件数)と、結果の表(提案種別・品目コード・品目名・数量・在庫引当・必要日・発注日・着手日・納期・遅れ・判断・メッセージ。判断での絞り込み・並べ替え・検索)を出す。
    4.  失敗したら、エラーコードに関わらず「しばらく時間をおいて、もう一度実行してください」を出し、エラーコード(想定: 57014=タイムアウト、MRP00=引数エラー)を小さく添える。失敗後は操作が元に戻り、再実行できる。
    5.  実行は窓口(`IMrpGateway`、`mrpGatewayProvider`)で行い、実体(DB 関数 `tests.mrp_execute` を呼ぶメソッド `mrpExecute` と提案の読み込み)はアプリが差し込む。既定は実体なし(失敗にする)。実行者は `mrpStaffIdProvider`。

## 参照するモデル
`packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
+  `production/plan.yaml`

## 実装の指針
1.  `ProductionPlanModule`(`lib/src/production_plan_module.dart`)は、実体の画面(生成。`ProductionPlanEntityModule`)と資材所要計算(`lib/src/mrp/`)を束ねる(Composite)。公開は `lib/production_plan.dart` のバレルから、`ProductionPlanModule` と MRP の窓口の型。遷移先は `lib/production_plan_api.dart`。アプリは `lib/app.dart` の `featureModules` に1行足して組み込む。
2.  データの取得は`riverpod`をとおして`packages/foundation/data_strategist`を使用する(取得元は `IDataRepository` を拡張し、Provider で差し替え可能にする)。`sales` の `lib/src/customer/customer_repository.dart` / `customers_provider.dart` を参考にする。
3.  テーブル構造・ツリー構造は`packages/ui/flgtable_lib`、色・サイズは`theme_lib`、レスポンシブは`view_responsiveness`を使用する。必要になった時点で pubspec に足す。
4.  ログは `logger_provider` の `loggerProvider` を `ref` から直接取得し、この機能が発生元のエラーだけを出す。
5.  ラベルは slang で多言語化し、列名は `schema.graphql` のコメントを使う。推論・仮置きしたラベルは `doc/log` に残す。

<!-- entity_gen:begin -->
## 実体の画面(生成)
台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
生成物は直接編集しない(再生成: リポジトリのルートで `node tools/entity_gen/gen.js`)。画面の作りは `packages/ui/entity_screens`、機能への組み込みは `feature_shared` の `EntityFeatureModule`。
専用の画面が必要な実体は、生成の対象から外して手書きする(`shared_master` の配送区分を参考にする)。

| 実体 | キー | 構造 | 項目数 | 参照先 |
|---|---|---|---|---|
| 資材計画 | `resplan` | テーブル構造 | 8 | `orderdetail`, `unrecdetail`, `opsplan` |
| 生産計画 | `opsplan` | 子の台帳(親: 資材計画) | 3 |  |
| 生産計画明細 | `workplan` | 子の台帳(親: 生産計画) | 6 | `task` |
| 生産引き当て予約 | `prodrez` | テーブル構造 | 3 | `workplan` |
| 購買引き当て予約 | `purrez` | テーブル構造 | 3 | `purdetail` |
<!-- entity_gen:end -->




## example と多言語
1.  ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。
2.  表示する文字列は`lib/src/i18n`の言語ファイル(Yaml)に置く。画面を作るときに`slang.yaml`と言語ファイルを追加する(`sales`・`shared_master`を参考にする)。idは`String`(UUID)で扱う。

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

## テスト
1.  共通の規則は`packages/features/CLAUDE.md`の「テスト」に従う。
2.  現在はGraphQLで取得していないため、通信テストは無い。取得元の単体テストは`RecordingDataRepository`で差し替える。
3.  GraphQLで取得するようにしたら、通信テスト(`test/xxx_connection_test.dart`)を追加し、`dart_test.yaml`に`server`タグを宣言する。
