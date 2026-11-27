# system ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

system: システム 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

システム 機能の実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 デザインは `tools/open-design` の Html のトップメニュー「システム」に従う(`pms_design.md` の該当章を参照)。 契約(遷移先・命令の型)が他の機能から必要になったら、`lib/system_api.dart` に公開する(別パッケージ `system_api` は作らない)。

### 1.2 範囲

- 場所: `packages/features/system`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`item/example`(example)、`purchasing/example`(example)

### 2.2 依存先(ワークスペース内)

`localized_values`、`feature_shared`、`entity_screens`、`data_strategist`、`pms_graphql`、`system_model`

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
| FR-01 | `baseCurrencyId` | 関数 | 基準通貨(`info_app.mstr_currency_id`)の通貨 ID。DB のビュー `v_currency_rate_latest` の `is_base` の行から引く。 |
| FR-02 | `exchangeSettingsProvider` | Riverpod プロバイダ | 為替レートの自動取得の設定。既定は標準(ECB → Frankfurter)。アプリが、アプリの設定(`info_app.settings` の `exchange`)で上書きする。 |
| FR-03 | `exchangeTextFetcherProvider` | Riverpod プロバイダ | 通信(URL の本文の取得)。テストで差し替える。 |
| FR-04 | `exchangeFetchAllowedProvider` | Riverpod プロバイダ | 為替レートの操作(登録・変更・自動取得・確定)ができるか(管理者)。アプリが、管理者かどうかで上書きする(既定はできる)。 |
| FR-05 | `exchangeLockSaverProvider` | Riverpod プロバイダ | 為替レートの確定日(`yyyy-MM-dd`)を保存する窓口。null のときは、確定の操作を出さない(既定)。 |
| FR-06 | `ExchangeSourceConfig` | クラス | 取得元 1 件の設定。 |
| FR-07 | `ExchangeSettings` | クラス | 為替レートの自動取得の設定(アプリの設定 `info_app.settings` の JSON の `exchange`)。 |
| FR-08 | `systemRepositories` | 関数 | システムの実体の取得元(GraphQL 版)。アプリが [GraphQLClient] を渡して組み立て、 |
| FR-09 | `SystemModule` | クラス | システムをアプリへ組み込むための口。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 単位(単位台帳) [テーブル構造] / [編集構造]
- **参照するモデル**: `packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `XxxModule implements FeatureModule` を `lib/src/system_module.dart` に置き、公開は `lib/system.dart` のバレルから `SystemModule` だけにする。アプリは `lib/app.dart` の `featureModules` に1行足して組み込む。
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **通貨・為替レート**: 通貨(`currency`)・為替レート(`exchangerate`)の台帳は、システムメニュー(管理者のユーザーメニュー。`SystemModule.menuEntries` が `systemMenuGroupId` へ移す。手書きの印つき)。パス `/e/currency`・`/e/exchangerate`(アクセスパス・機能コード `YC`・`Y…
- **取得元(GraphQL 版)**: `lib/src/graphql/system_repositories.dart` の `systemRepositories(GraphQLClient, {AuditUserSource? auditUser})` が、単位(`unit`)の取得元を作る。アプリ(`pms_app` の `graphql_overrides.dart`)が `entit…
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/system.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 36 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 8 件、テストケース 36 件。

- `test/base_currency_test.dart`
  - 基準通貨の行から通貨 ID を返す(is_base で絞る)
  - 基準通貨の行が無いとき・通信の失敗・GraphQL のエラーは null(初期値を入れない)
- `test/currency_latest_rate_test.dart`
  - 最新のレート・基準通貨・適用開始日は、読み取り専用
  - 為替レートの適用開始日は年月日(日付)
- `test/exchange_fetch_button_test.dart`
  - 押すと取得して追記し、登録と失敗(取得元に無い通貨)を出す。登録があれば台帳を読み込み直す
  - すべての取得元に接続できないとき、登録せず、接続できない旨と取得元を出す。台帳は読み込み直さない
  - 実行できない人(管理者以外)には、ボタンを出さない
- `test/exchange_lock_test.dart`
  - lockedUntil は yyyy-MM-dd だけ読む。取得元が無くても確定日は読む。toJson に残る
  - 確定日以前(当日を含む)のレートは省き、結果に出す。確定日の翌日からなら登録する
  - 確定の状態を出す(確定済みの日付・まだ無い)
  - 実行できない人・保存の窓口が無いときは、「確定する」を出さない(状態は出す)
  - 日付を選び、確認してから保存する。保存したら台帳を読み込み直す
  - 確認でやめたときは保存しない。保存に失敗したときは失敗を出し、台帳は読み込み直さない
  - 確定済みの期間のエラー(DB の文)は、日付の検証エラー(確定済み)にする
  - ほかのエラーは、そのまま投げる
- `test/exchange_rate_test.dart`
  - ユーロ基準の表から、円への交差レートを作る(JPY/EUR ÷ 通貨/EUR)。基準自身は 1
  - ECB: 日付とレートを読む。読めない応答は例外
  - Frankfurter: 提供元を指定して取り、いちばん新しい日付を表の日付にする
  - 無い・読めない・取得元が空のときは標準(ECB → Frankfurter/ecb)
  - 取得元は 3 件まで。通貨コードは大文字にする。読めない取得元は外す
  - 先の取得元で取れた通貨は、あとの取得元に取りに行かない。円(基準)は取りに行かない
  - 先の取得元が接続できないときは、次の取得元で取る。ECB に無い通貨も次の取得元で取る
  - どの取得元にも無い通貨は失敗(取得の対象外)。すべて接続できないときは「接続できない」
  - 通貨を指定した取得元: 指定した通貨は、その取得元だけを使う。指定の無い通貨は指定の無い取得元
  - 自動取得の対象だけを取り、追記する(同じ通貨・同じ日はスキップ)。取れない通貨は失敗の一覧
  - 取得元がすべて接続できないとき、既存のレートに触れない
- `test/menu_test.dart`
  - 通貨・為替レートは、システムメニュー(管理者のユーザーメニュー)へ。単位は機能のグループのまま
  - 為替レートの台帳は、管理者だけが編集できる。単位・通貨は、これまでどおり編集できる
- `test/system_connection_test.dart`
  - 単位の一覧を、画面の値(名称・読み・略称は言語コード ja)で取得できる
  - 定義: 単位は書き込める。記号(DB が採番)は読み取り専用。必須の検証は通信しない
  - 通貨・為替レート: 取得元がある。必須・形式の検証は、通信の前に行う
  - 単位を登録・更新・削除(論理削除)できる。更新は渡した項目だけ変わる
- `test/system_entities_test.dart`
  - 台帳を持つ実体のルートがある(子の台帳は編集だけ)
  - すべての実体に、台帳・編集のパスが対応する
  - サンプルが定義に合っている(必須・形式・選択肢・親子)
  - 同じプロジェクト内の参照と親子が、サンプルの id に解決する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
