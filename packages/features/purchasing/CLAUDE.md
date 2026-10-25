# purchasing

購買 機能の実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。
デザインは `tools/open-design` の Html のトップメニュー「購買」に従う(`pms_design.md` の該当章を参照)。
契約(遷移先・命令の型)が他の機能から必要になったら、`lib/purchasing_api.dart` に公開する(別パッケージ `purchasing_api` は作らない)。

## 画面(Html のメニュー)
1.  配送区分: 共有プロジェクト `shared_master` が持つ(営業と共通。重複実装しない)
2.  サプライヤー台帳 [テーブル構造](子: 担当者)
3.  非計上発注台帳 / 発注台帳 / 検品(受入登録)

## 参照するモデル
`packages/infra/graphql_provider_lib/source/views/` の次を列・フィールドの参照元とし、モデルは `lib/postgraphile` のクラスを使う。
+  `purchase/supplier.yaml`, `purchase/purchase.yaml`, `purchase/unrecognized.yaml`, `sales/shipping_kind.yaml`

## 実装の指針
1.  `XxxModule implements FeatureModule` を `lib/src/purchasing_module.dart` に置き、公開は `lib/purchasing.dart` のバレルから `PurchasingModule` だけにする。アプリは `lib/app.dart` の `featureModules` に1行足して組み込む。
2.  データの取得は`riverpod`をとおして`packages/foundation/data_strategist`を使用する(取得元は `IDataRepository` を拡張し、Provider で差し替え可能にする)。`sales` の `lib/src/customer/customer_repository.dart` / `customers_provider.dart` を参考にする。
3.  テーブル構造・ツリー構造は`packages/ui/flgtable_lib`、色・サイズは`theme_lib`、レスポンシブは`view_responsiveness`を使用する。必要になった時点で pubspec に足す。
4.  ログは `logger_provider` の `loggerProvider` を `ref` から直接取得し、この機能が発生元のエラーだけを出す。
5.  ラベルは slang で多言語化し、列名は `schema.graphql` のコメントを使う。推論・仮置きしたラベルは `doc/log` に残す。

<!-- entity_gen:begin -->
## 実体の画面(生成)
台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
生成物は直接編集しない(再生成: リポジトリのルートで `node tools/entity_gen/gen.js`)。画面の作りは `packages/ui/entity_screens`、機能への組み込みは `feature_shared` の `EntityFeatureModule`。
専用の画面が必要な実体は、生成の対象から外して手書きする(`sales` の顧客、`shared_master` の配送区分を参考にする)。

| 実体 | キー | 構造 | 項目数 | 参照先 |
|---|---|---|---|---|
| 利害関係者 | `supplier` | テーブル構造 | 11 | `shipkind` |
| 担当者 | `suppcontact` | 子の台帳(親: 利害関係者) | 4 |  |
| 非計上 | `unrec` | テーブル構造 | 5 |  |
| 非計上明細 | `unrecdetail` | 子の台帳(親: 非計上) | 4 |  |
| 発注 | `purchase` | テーブル構造 | 4 |  |
| 発注明細 | `purdetail` | 子の台帳(親: 発注) | 5 | `resplan` |
| 受入実績 | `purchaserec` | テーブル構造 | 4 | `purdetail` |
| 受入明細 | `purchaseline` | 子の台帳(親: 受入実績) | 3 | `item`, `unit` |
| 発注品目成績書 | `purcert` | 子の台帳(親: 受入実績) | 2 | `certificate` |
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
