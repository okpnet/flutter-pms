# shared_master

複数のメニューにまたがる共有マスタの実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。
デザインは `tools/open-design` の Html のトップメニュー「営業」「購買」(両方にある「配送区分」)に従う。

## 画面(Html のメニュー)
1.  配送区分 [テーブル構造] / [編集構造]。営業と購買の両方のメニューから開く(同じ画面を共有し、重複実装しない)。`lib/src/shipping_kind/` に実装済み
2.  今後、複数のメニューにまたがるマスタはここへ置く

## 構成
| 種別 | ファイル | 内容 |
|---|---|---|
| 実装の入口 | `lib/shared_master.dart` | 公開は `SharedMasterModule` だけ。アプリだけが読み込む |
| 契約の入口 | `lib/shared_master_api.dart` | 遷移先・命令の型だけ。他の機能・アプリはこちらだけを読み込む |
| モジュール | `lib/src/shared_master_module.dart` | 区分のモジュールを束ねる(Composite) |
| 配送区分 | `lib/src/shipping_kind/` | `shipping_kind_{module,paths,handlers,model,repository,commands,destinations}.dart`、`shipping_kinds_provider.dart`、`pages/` |

契約: `ShippingKindListDestination`、`ShippingKindEditDestination({id})`(id が null なら新規登録)、`ShippingKindPickerDestination`(id の文字列または null を返す)、`FindShippingKindNameCommand(id)`。遷移先・命令を足したら `shippingKindDestinationSamples` / `shippingKindCommandSamples` にも1件足し、`shared_master_api.dart` から公開する。

配送区分の振る舞い: 台帳はテーブル構造(ソート・フィルタ有効、行の操作で編集へ、「新規」で登録へ)。編集は配送区分コード*・配送区分名称*・読み・略称・備考。コードと名称は必須、コードは重複不可。削除は確認のうえ行う。

## 参照するモデル
`packages/infra/graphql_provider_lib/source/views/` の `sales/shipping_kind.yaml` を列・フィールドの参照元とし、モデルは `lib/postgraphile` のクラスを使う。

## 実装の指針
1.  `SharedMasterModule implements FeatureModule` を `lib/src/shared_master_module.dart` に置き、実装の入口 `lib/shared_master.dart`(アプリだけが読み込む)から `SharedMasterModule` だけを公開する。
2.  他の機能が配送区分を選ぶ・名称を引くときは `shared_master_api.dart` の型だけを使う(`lib/src` や実装の入口は読み込まない)。
3.  データの取得は`riverpod`をとおして`packages/foundation/data_strategist`を使用する。GraphQL 版は `IShippingKindRepository` を実装し、アプリで `shippingKindRepositoryProvider` を差し替える。
4.  テーブル構造は`packages/ui/flgtable_lib`、色・サイズは`theme_lib`を使用する。
5.  ログは `logger_provider` の `loggerProvider` を `ref` から直接取得し、この機能が発生元のエラーだけを出す(`[shared_master]` を付ける)。入力の検証エラーは画面に出すだけでログに残さない。
6.  ラベルは slang で多言語化し、列名は `schema.graphql` のコメントを使う。推論・仮置きしたラベルは `doc/log` に残す。

## example と多言語
1.  ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、配送区分台帳・登録を開く。画面を足したら`example/lib/main.dart`の`entries`に1行足す。
2.  文字列は`lib/src/i18n`の言語ファイル(`ja.i18n.yaml`が基準、`en.i18n.yaml`)に置き、`slang.yaml`の`class_name: SharedMasterStrings`で生成する(`dart run slang`)。`sharedMasterStringsProvider`が`feature_shared`の`localeProvider`に従って返す。
3.  idは`String`(UUID)。契約の遷移先・命令・パスもすべて`String`。
4.  削除は参照チェックを行う。使用中(顧客・受注・サプライヤーなどが参照)のときは`ShippingKindInUseException`を投げ、画面は「使用中のため削除できません」を表示する(ログには残さない)。サンプルの`InMemoryShippingKindRepository`は`isInUse`を差し込める。GraphQL版は外部キー違反をこの例外に変換する。
5.  配送区分は、トップメニューの「営業」「購買」のどちらからも選択して開く。
6.  配送区分の取得は、GraphQL版のリポジトリに差し替える(必要な画面定義は`doc/log`の課題を参照)。サンプルのメモリ実装は暫定。

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
