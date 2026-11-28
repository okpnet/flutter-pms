# PMS(生産管理システム)ソフトウェア設計記述(SDD)

> システム全体の設計。要求は `doc/SRS.md`。各ライブラリの設計は、ライブラリの `doc/SDD.md`(末尾の索引)。
> 正は、ワークスペースの `CLAUDE.md` と DB の DDL。食い違うときは、それらを正とする。ライブラリごとの文書と、この文書の索引は `tools/doc_gen` が生成する。

## 1. 概要

製造業の生産管理を提供する Flutter のクライアント群(`apps/`)と、それを支えるライブラリ(`packages/`)、DB・サーバーの構築(`tools/`)で構成する。クライアントは GraphQL(PostGraphile)で PostgreSQL に、認証・ファイルは PocketBase に接続する。業務の判定・計算(残・公開・原価・換算・所有者)は DB のビュー・関数・トリガーが持ち、クライアントは値を表示・入力する。

```
 apps ──────► features ─────► core ─────► ui / model_providers / infra ─────► foundation
 (pms_app,     (1 機能 =       (baton_lib, (entity_screens,     (pms_graphql,        (画面を持たない
  entry_app,    1 パッケージ)   feature_    app_shell,          pbapi, logger,       汎用部品:
  example)                      shared,     theme_lib ほか)     data_test_harness)   Markdown 系ほか)
                                settings_keeper…)
```

依存は上から下への一方向だけ。同じ層どうし(features どうし)は、契約(`xxx_api.dart`)の型だけで連携する。

## 2. アーキテクチャ

### 2.1 層とパッケージ

| 層 | 役割 | 主なパッケージ |
|---|---|---|
| apps | シェルアプリ。GoRouter を作り、機能を並べ、Riverpod で実体を差し込む | `pms_app`、`entry_app`、`pms_app_example` |
| features | 画面・ルート・ハンドラ。`XxxModule implements FeatureModule`。契約は `lib/xxx_api.dart` | `sales`、`purchasing`、`production_plan`、`work_record`、`barcode_entry`、`quality`、`manual`、`approval`、`system`、`cost`、`auth_files` ほか |
| core | 機能とアプリの仲介 | `baton_lib`(コマンドバス)、`feature_shared`、`settings_keeper`、`page_mediator_extension`、`current_user`、`selection_result` |
| ui | UI 基盤 | `entity_screens`、`app_shell`、`theme_lib`、`view_responsiveness`、`flgtable_lib`、`loadux_lib` |
| model_providers | 機能ごとの GraphQL モデル(`xxx_model`) | `sales_model` ほか |
| infra | 通信・認証・ログ・テストの道具 | `pms_graphql`、`pbapi`、`logger_provider`、`data_test_harness` |
| foundation | 画面を持たない汎用部品 | `data_strategist`、`markdown_*`、`approval_stamp`、`localized_values` ほか |

### 2.2 実行時の構造

1. `main()` が、設定の保存先・ロガー・認証・GraphQL の接続・各機能の差し込み(`overrides`)を組み立てる。
1. 画面遷移は文字列でなく `Destination<R> extends Command<R>` で行い、同じ入口 `CommandBus.execute` に通す(Command + Mediator)。ログ・権限などの横断処理は Middleware で差し込む。アプリは `Destination` かどうかで、ナビゲーションとハンドラに振り分ける。
1. 機能は `FeatureModule`(ルート・遷移先の変換・ハンドラ)と `MenuContributor`(トップメニューの項目)を提供し、アプリが集める。メニューは、許可されたページだけに絞る。
1. 台帳・編集の画面は、実体の定義(`EntityDefinition`)から `entity_screens` が作る。機能は `EntityFeatureModule`(Template Method)に、定義・サンプル・表示名を渡す。取得元は `IEntityRepository`(メモリ上のサンプル/GraphQL 版)で、アプリが GraphQL 版へ差し替える。
1. 実体どうしの参照は、コンパイル時に依存せず、実行時に登録簿(`EntityCatalog`)から引く。

### 2.3 差し込みの原則(Riverpod)

- アプリ・機能・foundation は GraphQL の接続先を持たない。取得元は `IDataRepository`(`data_strategist`)で受け、実装(`GraphqlDataRepository`)はアプリが組み立てる。
- 窓口(`IPageDataMediator`・`IPageSettingsMediator`・`IPageSessionMediator`)・認証・権限・設定・金額の表示・為替の取得元などは、各ライブラリが既定の実装を持ち、アプリが `overrideWith` で差し替える。テストは差し替えない、または代役を差す。

## 3. データ設計

### 3.1 DB

- 正は DDL(`06_cteate_test.sql`)。ER ツール PERO のデータから出力する。関数・トリガー・ビュー・索引・チェック制約も PERO に入れる(関数は `dependsOnTableIds` で出力順が決まり、署名 `args` が空だと `@omit` などのコメントが付かない)。
- ダミー・初期データは `07_dummy.sql`(権限・オーナーの付け替えの `09_grant_test.sql` の前)。DB は再構築を前提にする。
- 設計の共通ルール: コード値で状態を持たない(boolean・マスタ)、記録は追記のみ、履歴 ID + ID の参照、数量は棚ビジターだけ、ビューに `symbol`。

### 3.2 主なビュー・関数

| 分類 | 例 |
|---|---|
| 残・状態 | `v_order_detail_balance`、`v_purchase_detail_balance`、`v_supply_detail_balance`、`v_work_plan_registrable` |
| 在庫・所有 | `v_item_on_hand`、`v_external_property`、`trans_visiter_owner`(トリガーだけが書く)、`visiter_move`・`visiter_issue`・`visiter_adjust` |
| 操作の関数 | `order_detail_cancel`・`order_detail_set_stop`・`purchase_detail_cancel`・`operations_plan_discontinue`・`lot_*`・`order_detail_settle`・`return_register`・`supply_register`、MRP(`mrp_run`・`mrp_execute`) |
| 原価 | `v_item_unit_cost`、`v_item_valuation`、`v_visiter_valuation`、`v_work_record_cost` |
| 文書・承認 | `v_document_publication`、`v_document_content`、`v_document_approval_stamp`、`document_approve`、`approval_approve_many`、`v_approval_pending` |
| 為替 | `v_currency_rate_latest`、`v_shipping_record_amount`、`v_purchase_rec_amount`、`v_order_detail_amount`、`v_purchase_detail_amount`、`v_item_supplier_cost` |
| 共通 | `shared_appellation_save`・`shared_text_save`(言語別の値の保存) |

### 3.3 海外取引の設計

- 金額は相手先の通貨のまま保存し、取引の通貨は参照する利害関係者の履歴から引く(取引の表に通貨の列を足さない)。
- 為替レート(`trans_exchange_rate`)は、適用開始日(`rate_date`)だけを持つ(終了日なし。次のレートが出るまで続く)。換算は `currency_rate_at(通貨, 日付)` = 「その日以前で適用開始日が最新のレート」。列を加工しないため、索引 `(通貨, rate_date DESC)` で引ける。
- 出荷・受入の金額の基準日は、相手先の検収日(`acceptance_date`)。受注・発注・標準原価は最新のレート。仮のレートは `provisional`。
- 確定日(`info_app.settings` の `exchange.lockedUntil`)以前のレートは、トリガーが止める(`CUR02`)。確定日の戻し・未来・不正な日付も止める(`CUR03`・`CUR04`)。為替レートの登録・変更は管理者だけ(`ADM01`)。
- 自動取得は、取得元の抽象(`IExchangeRateSource`)・優先順位で試す連鎖(`ExchangeRateFetcher`)・登録(`ExchangeRateImporter`)で構成する。

## 4. 通信・認証・権限

1. クライアント → PostGraphile(GraphQL)。認証ヘッダーには、PocketBase が発行した短期の JWT(既定 15 分)を `Authorization: Bearer` で送る。JWT はメモリ上だけ。用意できないときは通信せず `SessionUnavailableException`。
1. GraphQL の前に、メンテナンス中・セッション切れを確認する(`GraphqlAccessGuard`)。確認は一定の間隔(15 秒)で省く。ページの切り替えは、ルーターの `redirect` が同じ確認をする。
1. 結果の型: `SessionExpiredError`(期限切れ・不正・セッション無し)・`PermissionDeniedError`(DB の権限なし)・`NetworkError`。
1. PostGraphile v4 は、1 つのドキュメントの複数の mutation を 1 つのトランザクションにしない。複数の表にまたがる操作は DB 関数にする。GraphQL のエラーには errcode が含まれないため、エラーの文(RAISE の文)で見分ける。
1. ページの権限は、担当者の実効アクセスパス(部署の許可 + 担当者の許可)で決める。メニューの絞り込み・URL の直接指定・メニューからの遷移の 3 経路で、同じ判定を使う。管理者(`role=admin`)はすべて許可。
1. 管理者専用の操作は、画面(ボタンを出さない)と DB(`trg_00_admin_only_*`・ロール `pms_admin`)の両方で止める。

## 5. UI 設計

- 画面の共通の枠は `app_shell`(タイトルバー・サイドバー・ハンバーガー・ユーザー)。機能の画面は `ScreenScaffold` で作り、`AppBar` を使わない。
- 台帳は閲覧と編集の 2 つのモード。見出し・検索・一覧の枠。木の台帳はドラッグ&ドロップで親を付け替える。子の台帳は「表の中の表」。
- 金額(`FieldDefinition.money`)は、通貨の記号を言語ごとの位置で付ける。行ごとの通貨(`currencyKey`)・仮のレート(`provisionalKey`)に対応する。
- テーマは `theme_lib`(画面案 `tools/open-design` が基準)。レスポンシブは `view_responsiveness`。読み込み中の表示は `loadux_lib`。

## 6. 横断関心

| 関心 | 設計 |
|---|---|
| ログ | `logger_provider`(Riverpod)。ライブラリは自身が発生元のエラーだけを `[ライブラリ名]` 付きで残す |
| 多言語 | slang(Yaml)。`localeProvider` を `ref.watch` して `xxxStringsProvider` が返す。エラーは種類(列挙型・例外の型)で持ち、画面が文字にする |
| 設定 | ローカルの設定は `settings_keeper`(Memento + Strategy)。アプリの設定は `info_app.settings`(JSON)。裏設定は `backstage` |
| 設計パターン | Command / Mediator(コマンドバス)、Template Method(`EntityFeatureModule`)、Strategy(取得元・保存先)、Adapter(GoRouter・ビューの行)、Chain of Responsibility(為替の取得元)、Memento(設定)、Value Object(`MoneyFormat`・`RateSheet`)、Proxy(代役の通信路) |

## 7. 生成と開発の道具(`tools/`)

| 道具 | 内容 |
|---|---|
| `tools/entity_gen` | 画面案(`tools/open-design`)から、各機能の実体の定義・サンプル・表示名・モジュール・テストを生成する(`gen.js`)。アクセスパス・機能コードの一覧も生成する |
| `tools/gql_yaml2graphql`・`tools/gql_schema_pruner` | `gql/*.yaml` → `.graphql`、本家スキーマ → 画面用 `schema.graphql`。モデルは build_runner(graphql_codegen) |
| `tools/docker` | PostgreSQL・PostGraphile・PocketBase・メンテナンスサーバーの構築 |
| `tools/database` | ER(PERO のデータ) |
| `tools/init` | テスト環境・本番の管理者・ユーザーの初期化 |
| `tools/config_user_generator`・`tools/config_generator` | 裏設定の入口のハッシュ、設定ファイルの暗号化 |
| `tools/doc_gen` | 各ライブラリの `doc/SRS.md`・`doc/SDD.md` と、この文書の索引を生成する。使われていないライブラリを一覧にする |

## 8. テストと CI

1. 通常のテスト: `melos run test`(サーバーを使うテストは `--exclude-tags server` で除外)。取得元は `data_test_harness` の代役(`RecordingDataRepository`・`ReplayLink`)。
1. GitHub Actions: `server-tests`(使い捨ての PostgreSQL・PostGraphile で、06・07・09 を流し、DB の関数の SQL テストと `*_model` のテストを実行)、`design-check`(`gen.js --check`。生成物と生成元のずれ)。
1. 見た目・挙動の評価は利用者が行う(`issue/checks/`)。

## 9. 配備・環境

- 接続先は、起動時の `--dart-define`(`GRAPHQL_URL`・`POCKETBASE_URL`・`MAINTENANCE_URL`)または裏設定(保管庫・アセット)で決める。未指定の機能は、サンプル(メモリ上)で動く。
- DB を再構築したら、PocketBase の `app_user_id` を張り直す(`tools/init`)。

## 10. ライブラリの索引

<!-- doc_gen:index:begin -->

ライブラリ 75 件(使われていないライブラリ 3 件は、文書を作らず、`issue/20261128_0001.md` に削除の対象として記録した)。

### core

| ライブラリ | 説明 | 利用元 | SRS | SDD |
|---|---|---|---|---|
| `baton_lib` | このライブラリ`baton_lib`は、パッケージGoRouterと画面ページをもつ機能毎のライブラリをコマンドでつなぎ、責務を分離します。機能が分離された別のページへの遷移や、同… | 18 | [SRS](../packages/core/baton_lib/doc/SRS.md) | [SDD](../packages/core/baton_lib/doc/SDD.md) |
| `current_user` | ログイン中のユーザー(担当者)の状態管理。認証(PocketBase)とデータ(GraphQL)の間をつなぐインターフェイスと、一度引いた担当者の履歴・言語を保持する。 | 1 | [SRS](../packages/core/current_user/doc/SRS.md) | [SDD](../packages/core/current_user/doc/SDD.md) |
| `feature_shared` | 機能パッケージとアプリの共通の口(CommandBus の Provider、FeatureModule)。 | 56 | [SRS](../packages/core/feature_shared/doc/SRS.md) | [SDD](../packages/core/feature_shared/doc/SDD.md) |
| `page_mediator_extension` | ページ用の拡張(Mediator)。データ取得(data_strategist)・設定の保存(settings_keeper)・セッション確認を、インターフェイス経由でページへ提供… | 6 | [SRS](../packages/core/page_mediator_extension/doc/SRS.md) | [SDD](../packages/core/page_mediator_extension/doc/SDD.md) |
| `selection_result` | 選択画面が呼び出し元へ返す選択の結果(対象の種類・一意な id・任意の値)。JSON にもできる。 | 2 | [SRS](../packages/core/selection_result/doc/SRS.md) | [SDD](../packages/core/selection_result/doc/SDD.md) |
| `settings_keeper` | ローカル設定の保存と復元(Memento)。保存の手段はアプリ側で差し替えられる(Strategy)。 | 8 | [SRS](../packages/core/settings_keeper/doc/SRS.md) | [SDD](../packages/core/settings_keeper/doc/SDD.md) |

### ui

| ライブラリ | 説明 | 利用元 | SRS | SDD |
|---|---|---|---|---|
| `app_shell` | アプリ全体の枠(タイトルバー・サイドバー・ハンバーガーメニュー・ログインユーザー)の見た目の部品。機能・認証の実体は知らない。 | 23 | [SRS](../packages/ui/app_shell/doc/SRS.md) | [SDD](../packages/ui/app_shell/doc/SDD.md) |
| `approval_stamp_view` | 承認スタンプの画面の部品(スタンプ・用紙のプレビュー)。様式は approval_stamp。 | 2 | [SRS](../packages/ui/approval_stamp_view/doc/SRS.md) | [SDD](../packages/ui/approval_stamp_view/doc/SDD.md) |
| `calendar_lib` | 月のカレンダー表示。日付ごとの値を抽象化した窓口で読み書きし、1 日・範囲の選択、開始曜日・表示する曜日・休日の色をテーマと設定で変えられる。 | 1 | [SRS](../packages/ui/calendar_lib/doc/SRS.md) | [SDD](../packages/ui/calendar_lib/doc/SDD.md) |
| `entity_screens` | 実体の定義(項目・種類・親子)から、台帳(テーブル/ツリー)と編集の画面を作る共通部品。 | 18 | [SRS](../packages/ui/entity_screens/doc/SRS.md) | [SDD](../packages/ui/entity_screens/doc/SDD.md) |
| `flgtable_lib` | `table_lib`ライブラリは、データを列と行のテーブル表示を行うFlutterライブラリです。既存のテーマをそのまま使用でき、多言語、ドラッグドロップに対応しています。ドラッ… | 6 | [SRS](../packages/ui/flgtable_lib/doc/SRS.md) | [SDD](../packages/ui/flgtable_lib/doc/SDD.md) |
| `loadux_lib` | 読み込み中の表示(円・バー)の部品。見た目は ThemeExtension(LoadingTheme)で差し替える。theme_lib には依存しない。 | 13 | [SRS](../packages/ui/loadux_lib/doc/SRS.md) | [SDD](../packages/ui/loadux_lib/doc/SDD.md) |
| `theme_lib` | 機能共通のテーマ管理(システム/ライト/ダーク切替、JSONの取り込み・書き出し)。 | 47 | [SRS](../packages/ui/theme_lib/doc/SRS.md) | [SDD](../packages/ui/theme_lib/doc/SDD.md) |
| `view_responsiveness` | レスポンシブデザインの部品。画面幅の区分(モバイル・タブレット・PC)・グリッド・セルの配置と、区分の通知(ResponsiveScope)。 | 9 | [SRS](../packages/ui/view_responsiveness/doc/SRS.md) | [SDD](../packages/ui/view_responsiveness/doc/SDD.md) |

### infra

| ライブラリ | 説明 | 利用元 | SRS | SDD |
|---|---|---|---|---|
| `data_test_harness` | テスト専用。GraphQLのテスト接続先・取得元の代役を一か所にまとめる。dev_dependenciesにだけ書く。 | 41 | [SRS](../packages/infra/data_test_harness/doc/SRS.md) | [SDD](../packages/infra/data_test_harness/doc/SDD.md) |
| `jwt_verification_test` | テスト専用。PocketBase が発行した JWT を PostGraphile とモデルで検証する結合テスト。 | 0 | [SRS](../packages/infra/jwt_verification_test/doc/SRS.md) | [SDD](../packages/infra/jwt_verification_test/doc/SDD.md) |
| `logger_provider` | This file provides guidance to Claude Code (claude.ai/code) when working with code in this… | 55 | [SRS](../packages/infra/logger_provider/doc/SRS.md) | [SDD](../packages/infra/logger_provider/doc/SDD.md) |
| `pbapi` | PocketBaseのJWT認証・セッション・ファイル共有のクライアント。 | 7 | [SRS](../packages/infra/pbapi/doc/SRS.md) | [SDD](../packages/infra/pbapi/doc/SDD.md) |
| `pms_graphql` | このファイルは、このリポジトリでコードを扱う際に Claude Code (claude.ai/code) へ向けたガイダンスを提供します。 | 42 | [SRS](../packages/infra/pms_graphql/doc/SRS.md) | [SDD](../packages/infra/pms_graphql/doc/SDD.md) |

### foundation

| ライブラリ | 説明 | 利用元 | SRS | SDD |
|---|---|---|---|---|
| `approval_stamp` | 承認スタンプの様式・PDF のテーマ・ヘッダ/フッタの書式(変数の展開)・配置の計算(画面を持たない純 Dart)。 | 6 | [SRS](../packages/foundation/approval_stamp/doc/SRS.md) | [SDD](../packages/foundation/approval_stamp/doc/SDD.md) |
| `data_strategist` | この`data_strategistライブラリ`は、データを要求する側と受け取る側の間を取り持つメディエーターとして振る舞うライブラリです。どちらも手段を気にすること無くデータ交換… | 23 | [SRS](../packages/foundation/data_strategist/doc/SRS.md) | [SDD](../packages/foundation/data_strategist/doc/SDD.md) |
| `localized_values` | 言語別の値(呼称・文章・ラベル)の表示の代替と、保存で送る差分。純 Dart。 | 10 | [SRS](../packages/foundation/localized_values/doc/SRS.md) | [SDD](../packages/foundation/localized_values/doc/SDD.md) |
| `markdown_ast` | Markdown の構文木・読み取り(パーサー)と、WYSIWYG の文書の型(画面を持たない純 Dart)。 | 7 | [SRS](../packages/foundation/markdown_ast/doc/SRS.md) | [SDD](../packages/foundation/markdown_ast/doc/SDD.md) |
| `markdown_pdf` | Markdown(構文木・読み取り)と、PDF の出力(テーマ・ヘッダ/フッタ・承認スタンプ・日本語フォント)。 | 2 | [SRS](../packages/foundation/markdown_pdf/doc/SRS.md) | [SDD](../packages/foundation/markdown_pdf/doc/SDD.md) |
| `markdown_to_wysiwyg` | Markdown を WYSIWYG の文書(ブロックの並び)に変換する(画面を持たない純 Dart)。 | 2 | [SRS](../packages/foundation/markdown_to_wysiwyg/doc/SRS.md) | [SDD](../packages/foundation/markdown_to_wysiwyg/doc/SDD.md) |
| `markdown_view` | Markdown(構文木)をテーマに沿った画面の部品にして出す(閲覧)。 | 3 | [SRS](../packages/foundation/markdown_view/doc/SRS.md) | [SDD](../packages/foundation/markdown_view/doc/SDD.md) |
| `query_builder` | A starting point for Dart libraries or applications. | 3 | [SRS](../packages/foundation/query_builder/doc/SRS.md) | [SDD](../packages/foundation/query_builder/doc/SDD.md) |
| `undo_redo` | 元に戻す・やり直す(Undo/Redo)。コマンドと、コマンド・値・対象を保持するスタック(Command パターン)。 | 1 | [SRS](../packages/foundation/undo_redo/doc/SRS.md) | [SDD](../packages/foundation/undo_redo/doc/SDD.md) |
| `wysiwyg_editor` | WYSIWYG(ビジュアル)と Markdown を切り替えて本文を編集する画面の部品。 | 2 | [SRS](../packages/foundation/wysiwyg_editor/doc/SRS.md) | [SDD](../packages/foundation/wysiwyg_editor/doc/SDD.md) |
| `wysiwyg_to_markdown` | WYSIWYG の文書(ブロックの並び)を Markdown にする(画面を持たない純 Dart)。 | 1 | [SRS](../packages/foundation/wysiwyg_to_markdown/doc/SRS.md) | [SDD](../packages/foundation/wysiwyg_to_markdown/doc/SDD.md) |

### model_providers

| ライブラリ | 説明 | 利用元 | SRS | SDD |
|---|---|---|---|---|
| `access_control_model` | access_control(ページアクセス管理)機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 3 | [SRS](../packages/model_providers/access_control_model/doc/SRS.md) | [SDD](../packages/model_providers/access_control_model/doc/SDD.md) |
| `announcement_model` | 「通知」機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 1 | [SRS](../packages/model_providers/announcement_model/doc/SRS.md) | [SDD](../packages/model_providers/announcement_model/doc/SDD.md) |
| `barcode_entry_model` | barcode_entry 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 3 | [SRS](../packages/model_providers/barcode_entry_model/doc/SRS.md) | [SDD](../packages/model_providers/barcode_entry_model/doc/SDD.md) |
| `cost_model` | 「原価・在庫評価額」機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 1 | [SRS](../packages/model_providers/cost_model/doc/SRS.md) | [SDD](../packages/model_providers/cost_model/doc/SDD.md) |
| `document_approval_model` | 「文書の承認・公開・スタンプの設定」機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 2 | [SRS](../packages/model_providers/document_approval_model/doc/SRS.md) | [SDD](../packages/model_providers/document_approval_model/doc/SDD.md) |
| `item_model` | item 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 3 | [SRS](../packages/model_providers/item_model/doc/SRS.md) | [SDD](../packages/model_providers/item_model/doc/SDD.md) |
| `manual_model` | manual 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 1 | [SRS](../packages/model_providers/manual_model/doc/SRS.md) | [SDD](../packages/model_providers/manual_model/doc/SDD.md) |
| `organization_model` | organization 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 2 | [SRS](../packages/model_providers/organization_model/doc/SRS.md) | [SDD](../packages/model_providers/organization_model/doc/SDD.md) |
| `plan_change_model` | 「計画変更」機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 1 | [SRS](../packages/model_providers/plan_change_model/doc/SRS.md) | [SDD](../packages/model_providers/plan_change_model/doc/SDD.md) |
| `production_plan_model` | production_plan 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 2 | [SRS](../packages/model_providers/production_plan_model/doc/SRS.md) | [SDD](../packages/model_providers/production_plan_model/doc/SDD.md) |
| `purchasing_model` | purchasing 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 3 | [SRS](../packages/model_providers/purchasing_model/doc/SRS.md) | [SDD](../packages/model_providers/purchasing_model/doc/SDD.md) |
| `quality_document_model` | quality_document 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 2 | [SRS](../packages/model_providers/quality_document_model/doc/SRS.md) | [SDD](../packages/model_providers/quality_document_model/doc/SDD.md) |
| `quality_model` | quality 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 4 | [SRS](../packages/model_providers/quality_model/doc/SRS.md) | [SDD](../packages/model_providers/quality_model/doc/SDD.md) |
| `resource_model` | resource 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 3 | [SRS](../packages/model_providers/resource_model/doc/SRS.md) | [SDD](../packages/model_providers/resource_model/doc/SDD.md) |
| `sales_model` | sales 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 2 | [SRS](../packages/model_providers/sales_model/doc/SRS.md) | [SDD](../packages/model_providers/sales_model/doc/SDD.md) |
| `shared_master_model` | shared_master 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 1 | [SRS](../packages/model_providers/shared_master_model/doc/SRS.md) | [SDD](../packages/model_providers/shared_master_model/doc/SDD.md) |
| `system_model` | system 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 2 | [SRS](../packages/model_providers/system_model/doc/SRS.md) | [SDD](../packages/model_providers/system_model/doc/SDD.md) |
| `work_record_model` | work_record 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 3 | [SRS](../packages/model_providers/work_record_model/doc/SRS.md) | [SDD](../packages/model_providers/work_record_model/doc/SDD.md) |

### features

| ライブラリ | 説明 | 利用元 | SRS | SDD |
|---|---|---|---|---|
| `access_control` | アクセス管理(ページのアクセスパス・部署の権限・担当者の許可)の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 3 | [SRS](../packages/features/access_control/doc/SRS.md) | [SDD](../packages/features/access_control/doc/SDD.md) |
| `announcement` | 通知(自分宛ての通知の一覧・既読・ダッシュボードの未読通知・ログイン時の監査の予定の通知づくり)。 | 2 | [SRS](../packages/features/announcement/doc/SRS.md) | [SDD](../packages/features/announcement/doc/SDD.md) |
| `app_core` | アプリの基盤の画面(ブート・エラー・設定)の実装。ログイン・ログアウトは認証(Keycloak)の導入後に追加する。 | 5 | [SRS](../packages/features/app_core/doc/SRS.md) | [SDD](../packages/features/app_core/doc/SDD.md) |
| `approval` | 承認一覧(承認待ちの一覧・複数選択の一括承認・パスワードの再入力・ダッシュボードの承認待ち通知)。 | 1 | [SRS](../packages/features/approval/doc/SRS.md) | [SDD](../packages/features/approval/doc/SDD.md) |
| `auth_files` | 認証(PocketBase のログイン・登録申請・コード入力・管理者操作)と共有ファイルのアップロード/ダウンロードの画面。 | 3 | [SRS](../packages/features/auth_files/doc/SRS.md) | [SDD](../packages/features/auth_files/doc/SDD.md) |
| `backstage` | アプリケーションの裏設定。システム制作者だけが入れる設定のページと、設定の保存・既定値・優先順位の解決を持つ。 | 3 | [SRS](../packages/features/backstage/doc/SRS.md) | [SDD](../packages/features/backstage/doc/SDD.md) |
| `barcode_entry` | バーコード実績登録。バーコードリーダー・スマートフォン・タブレットから symbol を読み込み、作業実績・受入検品・棚移動・設備点検を進める。 | 2 | [SRS](../packages/features/barcode_entry/doc/SRS.md) | [SDD](../packages/features/barcode_entry/doc/SDD.md) |
| `cost` | 原価 機能の実装(標準原価の一覧・在庫評価額の一覧・ロットの評価額。読み取りだけ。画面・ルート)。アプリだけがこのパッケージに依存する。 | 1 | [SRS](../packages/features/cost/doc/SRS.md) | [SDD](../packages/features/cost/doc/SDD.md) |
| `dashboard_container` | ダッシュボードに置く件数のコンテナ。レコード数の合計を、幅(Full・1/2・1/4)に応じた数だけ表示し、配置は設定として保存・復元する。 | 8 | [SRS](../packages/features/dashboard_container/doc/SRS.md) | [SDD](../packages/features/dashboard_container/doc/SDD.md) |
| `document_settings` | 承認スタンプ・PDF の設定(info_app.settings の stamp・pdf)の編集画面(プレビューつき)。 | 1 | [SRS](../packages/features/document_settings/doc/SRS.md) | [SDD](../packages/features/document_settings/doc/SDD.md) |
| `item` | 品目 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 9 | [SRS](../packages/features/item/doc/SRS.md) | [SDD](../packages/features/item/doc/SDD.md) |
| `maintenance` | メンテナンス中のページ。サーバーの応答がメンテナンス中のときに表示し、他のページへはリンクしない。 | 3 | [SRS](../packages/features/maintenance/doc/SRS.md) | [SDD](../packages/features/maintenance/doc/SDD.md) |
| `manual` | マニュアル(Wiki)。品質管理文書のページを、Markdown を正本に、閲覧・編集(Markdown / ビジュアル)・履歴・書き出しで育てる。 | 2 | [SRS](../packages/features/manual/doc/SRS.md) | [SDD](../packages/features/manual/doc/SDD.md) |
| `organization` | `packages/features/CLAUDE.md` の「organization」(単位・会社・事業所・部門部署・作業者・承認)を実装する機能プロジェクト。`package… | 7 | [SRS](../packages/features/organization/doc/SRS.md) | [SDD](../packages/features/organization/doc/SDD.md) |
| `plan_change` | 計画変更 機能の実装(計画変更の履歴・未処置一覧。画面・ルート)。アプリだけがこのパッケージに依存する。 | 1 | [SRS](../packages/features/plan_change/doc/SRS.md) | [SDD](../packages/features/plan_change/doc/SDD.md) |
| `production_plan` | 生産計画 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 5 | [SRS](../packages/features/production_plan/doc/SRS.md) | [SDD](../packages/features/production_plan/doc/SDD.md) |
| `production_process` | 工程 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 4 | [SRS](../packages/features/production_process/doc/SRS.md) | [SDD](../packages/features/production_process/doc/SDD.md) |
| `purchasing` | 購買 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 3 | [SRS](../packages/features/purchasing/doc/SRS.md) | [SDD](../packages/features/purchasing/doc/SDD.md) |
| `quality` | 品質管理 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 5 | [SRS](../packages/features/quality/doc/SRS.md) | [SDD](../packages/features/quality/doc/SDD.md) |
| `quality_common` | 品質共通 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 2 | [SRS](../packages/features/quality_common/doc/SRS.md) | [SDD](../packages/features/quality_common/doc/SDD.md) |
| `quality_document` | 品質管理文書 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 1 | [SRS](../packages/features/quality_document/doc/SRS.md) | [SDD](../packages/features/quality_document/doc/SDD.md) |
| `resource` | 資源 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 6 | [SRS](../packages/features/resource/doc/SRS.md) | [SDD](../packages/features/resource/doc/SDD.md) |
| `sales` | 営業 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 4 | [SRS](../packages/features/sales/doc/SRS.md) | [SDD](../packages/features/sales/doc/SDD.md) |
| `shared_master` | 共有マスタ(配送区分など複数のメニューにまたがるマスタ)の実装。 | 7 | [SRS](../packages/features/shared_master/doc/SRS.md) | [SDD](../packages/features/shared_master/doc/SDD.md) |
| `system` | システム 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 3 | [SRS](../packages/features/system/doc/SRS.md) | [SDD](../packages/features/system/doc/SDD.md) |
| `user_profile` | ログインユーザーの情報(顔写真)の表示と、自分のイメージの変更。画像は PocketBase の user_avatars。 | 1 | [SRS](../packages/features/user_profile/doc/SRS.md) | [SDD](../packages/features/user_profile/doc/SDD.md) |
| `work_record` | 作業実績 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 6 | [SRS](../packages/features/work_record/doc/SRS.md) | [SDD](../packages/features/work_record/doc/SDD.md) |

<!-- doc_gen:index:end -->

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
