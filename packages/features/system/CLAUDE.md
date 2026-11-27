# system

システム 機能の実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。
デザインは `tools/open-design` の Html のトップメニュー「システム」に従う(`pms_design.md` の該当章を参照)。
契約(遷移先・命令の型)が他の機能から必要になったら、`lib/system_api.dart` に公開する(別パッケージ `system_api` は作らない)。

## 画面(Html のメニュー)
1.  単位(単位台帳) [テーブル構造] / [編集構造]

## 参照するモデル
`packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
+  `system/unit.yaml`

## 実装の指針
1.  `XxxModule implements FeatureModule` を `lib/src/system_module.dart` に置き、公開は `lib/system.dart` のバレルから `SystemModule` だけにする。アプリは `lib/app.dart` の `featureModules` に1行足して組み込む。
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
| 単位 | `unit` | テーブル構造 | 6 |  |
| 通貨 | `currency` | テーブル構造 | 8 |  |
| 為替レート | `exchangerate` | テーブル構造 | 6 | `currency` |
<!-- entity_gen:end -->








## 通貨・為替レート

1.  通貨(`currency`)・為替レート(`exchangerate`)の台帳は、システムメニュー(管理者のユーザーメニュー。`SystemModule.menuEntries` が `systemMenuGroupId` へ移す。手書きの印つき)。パス `/e/currency`・`/e/exchangerate`(アクセスパス・機能コード `YC`・`YE`)。開く権限はアクセス権に従う(管理者は常に可)。
1.  通貨の台帳は、基準通貨・最新のレート・レートの適用開始日を読み取り専用で出す(DB のビュー `v_currency_rate_latest`)。為替レートは追記のみ(適用開始日 = 年月日。直すときは新しい行を足して前の行を取り消す)。モデルは `system_model/gql/currency.yaml`。
1.  `baseCurrencyId(GraphQLClient)`(`system.dart` で公開): 基準通貨の通貨 ID(`v_currency_rate_latest` の `is_base` の行)。アプリが、利害関係者の新規登録の通貨の初期値(`entityNewDefaultsProvider`)に使う。取り出せないときは null。
1.  自動取得(`lib/src/exchange/`): 取得元は `IExchangeRateSource`(Strategy。`EcbRateSource`・`FrankfurterRateSource`)で、`RateSheet`(基準の通貨 1 単位 = 各通貨いくら。`crossRate` で基準通貨へ換算)を返す。`ExchangeRateFetcher` が優先順位の順に試し(Chain of Responsibility)、`ExchangeRateImporter` が登録簿をとおして追記する(GraphQL でもメモリ上でも同じ)。設定は `ExchangeSettings`(`info_app.settings` の `exchange`。取得元は 3 件まで。`currencies` で通貨を取得元に指定)。ボタンは `EntityFeatureModule.listHeaderActions` で為替レートの台帳の見出しに出す(`ExchangeFetchButton`)。実行できる人は `exchangeFetchAllowedProvider`(アプリが管理者かどうかで上書き)、通信は `exchangeTextFetcherProvider`(`https` だけ。テストで差し替える)。
1.  確定(`ExchangeLockControl`): 台帳の見出しに、確定の状態と「確定する」(`exchangeFetchAllowedProvider` が真の人と、保存の窓口 `exchangeLockSaverProvider` があるときだけ)。確定日は設定 `exchange.lockedUntil`(`ExchangeSettings.lockedUntil`)。確定済みの期間のレートの登録・取り消しで DB が返すエラー(文に「確定済みの期間」)は、日付の検証エラー(`EntityFieldError.periodLocked`)にする。自動取得は確定日以前の日付を登録せず、結果の「確定済みのため省略」に出す。
1.  設計・換算の規則はルートの `CLAUDE.md` の「海外取引(通貨・為替)」。

## 取得元(GraphQL 版)
`lib/src/graphql/system_repositories.dart` の `systemRepositories(GraphQLClient, {AuditUserSource? auditUser})` が、単位(`unit`)の取得元を作る。アプリ(`pms_app` の `graphql_overrides.dart`)が `entityRepositoryOverridesProvider` に渡すと、サンプルの代わりに使われる(`GRAPHQL_URL` を指定したときだけ)。
1.  読み込み: 名称・読み・略称は多言語の辞書(`shared_appellation`)、詳細は多言語の文章(`shared_text`。先頭の文)で、言語コード `ja` の値を読む。
1.  書き込みは、共通関数 + ミューテーション(CLAUDE.md「登録・更新の方式」)。(1)呼称(名称・読み・略称)と文章(詳細)を、共通関数 `shared_appellation_save`・`shared_text_save` で作る・変える(`system_model` の `UnitAppellationSavePageCall`・`UnitTextSavePageCall`。渡した言語の値だけ入れ替わり、他の言語は残る。更新は、読み込んだ値から変わった項目だけ送る。空に変えたときは空文字で消す)。(2)返った ID を、本体(`shared_unit`)の `names`・`details` に渡して、ミューテーションで書く(登録 `UnitPageCreate`・更新 `UnitPageEdit`。更新は渡した列だけが変わる。呼称・文章だけを変えるときは本体を書かない)。(3)保存のあと読み直して返す(同じ値の更新は履歴のトリガーが握りつぶし、応答の行が null になるため)。削除は論理削除(`UnitPageRemove`。`remove = true`)。更新者は、アプリが `auditUser`(`AuditUserSource`)で渡し、共通関数(`p_staff_id`・`p_staff_history_id`)・登録・更新・論理削除で送る(渡されていない・ログインしていないときは送らない)。
1.  共通関数と本体は別のトランザクション。本体の登録が失敗すると、呼称・文章が参照されない行として残る(マスタは許容する)。読み書きするのは言語コード `ja` の値だけ。記号(`symbol`)は DB が採番するため読み取り専用。詳細は、読み込みが先頭の文だけを返すため、変えたときだけ送る(変えないと全文が先頭の文で上書きされる。全文を画面で直せるようにするには、共有の部品に `text_value` を足す。`tools/docker/postgresql/issue/20261115_0001.md`)。
1.  DB のエラー(共通関数の RAISE の文。PostGraphile は errcode を返さない)は、名称の必須(`APL02`)を `EntityValidationException` に変換する。それ以外はそのまま投げる。
1.  生成された型は、この中だけで使い、外へ出さない。言語コード `ja` の ID は、最初の1回だけ引く。
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
2.  取得元(GraphQL 版)の通信テストは `test/system_connection_test.dart`(検証用サーバー。読み取りに加え、単位の登録・更新・削除を行い、後始末で論理削除する。一般ユーザーの資格情報を渡して実行する。`packages/infra/data_test_harness/CLAUDE.md`)。`dart_test.yaml` に `server` タグを宣言してある。
3.  サンプル(メモリ上)の取得元の単体テストは`RecordingDataRepository`で差し替える。


## 規則: プロジェクト間をまたぐ指示
指示や実装が、プロジェクト(アプリ・ライブラリ)をまたいで行われるときの`issue`・`doc/log`の扱い。
1.  指示をしたプロジェクト
    1.  `doc/log`に、指示の内容・指示した先のプロジェクト・実施した結果を記録する。
2.  指示を受けたプロジェクト
    1.  指示の内容と、指示をしたプロジェクトを`issue`に追加する。
    2.  実施した結果を`doc/log`に記録する。
