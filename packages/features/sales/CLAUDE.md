# sales

営業 機能の実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。
デザインは `tools/open-design` の Html のトップメニュー「営業」に従う(`pms_design.md` の該当章を参照)。

## 画面(Html のメニュー)
1.  配送区分: 共有プロジェクト `shared_master` が持つ(購買と共通)
2.  顧客台帳 [テーブル構造](子: 担当者): 利害関係者(`stakeholder`)のうち顧客のフラグ(`is_customer`)がオンの行。利害関係者は共有プロジェクト `shared_master` が持ち、このメニューの項目はそこへ遷移する(`shared_master_api.dart` の `customerLedgerDestination`)
3.  受注: 受注台帳 [テーブル構造](子: 受注明細)。実体の画面(生成)で実装済み。参照する顧客(`customer`)・配送区分(`shipkind`)は、`shared_master` が選択肢を登録簿へ登録する

## 構成
| 種別 | ファイル | 内容 |
|---|---|---|
| 実装の入口 | `lib/sales.dart` | 公開は `SalesModule` だけ。アプリだけが読み込む |
| モジュール | `lib/src/sales_module.dart` | 実体の画面(生成。`EntityFeatureModule`) |

専用の画面・契約(`sales_api.dart`)は持たない。顧客は `shared_master_api.dart` の型で開く。

## 参照するモデル
`packages/model_providers/*_model/gql/` の `sales/order.yaml` を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う(顧客・利害関係者は `shared_master`)。

## 実装の指針
1.  他の機能の画面は `xxx_api.dart` の型だけを使う。遷移・連携は `baton_lib` の `Destination` / `Command` で行い、文字列のパスを公開しない。`lib/src` を直接 import しない。
2.  データの取得は`riverpod`をとおして`packages/foundation/data_strategist`を使用する。
3.  テーブル構造・ツリー構造は`packages/ui/flgtable_lib`、色・サイズは`theme_lib`、レスポンシブは`view_responsiveness`を使用する。
4.  ラベルは slang で多言語化し、列名は `schema.graphql` のコメントを使う。推論・仮置きしたラベルは `doc/log` に残す。

<!-- entity_gen:begin -->
## 実体の画面(生成)
台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
生成物は直接編集しない(再生成: リポジトリのルートで `node tools/entity_gen/gen.js`)。画面の作りは `packages/ui/entity_screens`、機能への組み込みは `feature_shared` の `EntityFeatureModule`。
専用の画面が必要な実体は、生成の対象から外して手書きする(`shared_master` の配送区分を参考にする)。

| 実体 | キー | 構造 | 項目数 | 参照先 |
|---|---|---|---|---|
| 受注 | `order` | テーブル構造 | 6 |  |
| 受注明細 | `orderdetail` | 子の台帳(親: 受注) | 5 |  |
<!-- entity_gen:end -->



## example と多言語
1.  ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、顧客台帳・顧客の選択を開く。画面を足したら`example/lib/main.dart`の`entries`に1行足す。
2.  文字列は`lib/src/i18n`の言語ファイル(`ja.i18n.yaml`が基準、`en.i18n.yaml`)に置き、`slang.yaml`の`class_name: SalesStrings`で生成する(`dart run slang`)。`salesStringsProvider`が`feature_shared`の`localeProvider`に従って返す。
3.  idは`String`(UUID)。契約の遷移先・命令・パスもすべて`String`。
4.  顧客の編集画面を拡張するときは、配送区分の選択を`shared_master_api.dart`の`ShippingKindPickerDestination`で接続する(`shared_master`の実装は参照しない)。
5.  顧客の取得は、GraphQL版(`CustomerPage`)のリポジトリに差し替える。サンプルのメモリ実装は暫定。

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
