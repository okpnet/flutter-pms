# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## ワークスペース概要

Dart pub workspace + melos のモノレポ(Flutter, Windows デスクトップ向け)。ルートの [pubspec.yaml](pubspec.yaml) が workspace 定義と melos 設定を兼ね、`pubspec.lock` はルートに1つだけ。セットアップ手順の詳細は [WORKSPACE.md](WORKSPACE.md)。

workspace 対象は `apps/*` と `packages/*/*`(フォルダを置けば自動で対象。ルート pubspec の編集は不要)。`legacy/`(grid_lib, gqlib 等)と `tools/`(database, docker, condition_pipeline, uml)は対象外。

## コマンド

PowerShell から実行。melos は `dart pub global activate melos` で導入済みの前提。

```powershell
flutter pub get                      # workspace 全体を一括解決(ルートで)
melos bootstrap                      # ルート pubspec の bootstrap 節のバージョンを各パッケージへ同期
melos run analyze                    # 全体を dart analyze
melos run test                       # Flutter + 純Dart 両方のテスト
melos run gen                        # build_runner を使うパッケージのコード生成
melos exec --category=features -- flutter test   # 層ごと(apps/features/core/ui/infra/foundation)
melos exec --scope=customer -- flutter test      # 特定パッケージだけ
cd apps\pms_app; flutter run -d windows          # アプリ起動
tools\init\test_admin_init.bat                   # テスト環境: アプリからログインできる管理者を用意する(本番は admin_init.bat。tools\init\README.md)
tools\init\test_user_init.bat                    # テスト環境: ダミーの担当者を PocketBase のユーザーにする(本番は user_init.bat -File users.csv)
cd tools/config_user_generator; dart run bin/config_user_generator.dart   # 裏設定の入口のハッシュを作る(下記)。設定ファイルの暗号化は tools/config_generator(--help)
```

裏設定の入口(ログインページの特定のユーザーIDとパスワード)のハッシュは、`tools\config_user_generator` で上のコマンドを実行して作る(ユーザーIDとパスワードは標準入力。反復回数は引数で変えられる。例 `... config_user_generator.dart 200000`。`--help` で使い方)。出力の `{"entry": {...}}` を `apps\pms_app\assets\backstage.json` に貼り、アプリを再起動する。ID・パスワードをソース・アセットに書かない。詳細は [packages/features/backstage/README.md](packages/features/backstage/README.md)。

単一テスト: 対象パッケージ内で `flutter test test/xxx_test.dart`(純Dart パッケージは `dart test test/xxx_test.dart`、`--plain-name "名前"` で絞り込み)。

## アーキテクチャ

依存は上から下への一方向のみ:

`apps` → `features` → `core` → `ui` / `model_providers` / `infra` → `foundation`

- `apps/pms_app`: シェルアプリ。旧 mock_up を移設したもので、GoRouter を構築する。このプロジェクトの規則・指示は [apps/pms_app/CLAUDE.md](apps/pms_app/CLAUDE.md) を参照。
- `apps/entry_app`: 実績登録専用アプリ(Android・Windows)。`barcode_entry` だけを載せる。規則は [apps/entry_app/CLAUDE.md](apps/entry_app/CLAUDE.md)。
- `packages/features/`: 1機能=1パッケージ `xxx`(実装=画面・ルート・ハンドラ、`XxxModule implements FeatureModule`)。契約(遷移先・命令の型)は同じパッケージの `lib/xxx_api.dart`(契約だけのバレル)で公開し、実装の入口 `lib/xxx.dart` はアプリだけが読み込む。機能同士・アプリは `xxx_api.dart` の型だけを使い、`lib/src` や実装の入口は読み込まない。
- `packages/core/`: `baton_lib`(コマンドバス)、`feature_shared`(機能とアプリの仲介)、`settings_keeper`(ローカル設定の保存と復元)、`page_mediator_extension`(ページ用の拡張。データ取得・設定の保存・セッション確認の窓口)、`selection_result`(選択画面が返す選択の結果`Selection`。対象の種類・一意な id・表示名・追加の値。JSON の`encode`/`decode`でも受け渡せる)。
- `packages/ui/`: UI基盤。`entity_screens`(実体の定義から台帳・編集の画面を作る)、`app_shell`(タイトルバー・サイドバー・ハンバーガー・ログインユーザーの枠)を含む。
- `packages/model_providers/`: 機能ごとの GraphQL モデル(`xxx_model`)。下の「GraphQL モデル生成ルール」を参照。
- `packages/infra/`(pms_graphql, logger_provider, data_test_harness, pbapi), `packages/foundation/`(画面を持たない汎用部品)。

### baton_lib(コマンドバス)

機能パッケージ間・アプリ間のやりとりは文字列ではなく `Command<R>` オブジェクトで行う。画面遷移も `Destination<R> extends Command<R>` として同じ入口(`CommandBus.execute`)に通し、ログ・権限などの横断処理は Middleware で差し込む。アプリ側で `Destination` かどうかでナビゲーションとハンドラに振り分ける。詳細仕様・命名規則・ドキュメント配置ルールは [packages/core/baton_lib/CLAUDE.md](packages/core/baton_lib/CLAUDE.md) を参照(同パッケージで作業するときは必読。レポートは `doc/log`、使い方は `doc/contents`、指示は `issue/` に置く規則)。

### settings_keeper(設定の保存と復元)

テーマ・ウィンドウの位置など、ローカルに持つ設定を保存・復元する。設定の持ち主(`SettingsOriginator`)が自分の状態を `SettingsMemento` にして `SettingsKeeper` に預ける(Memento)。保存の手段は `SettingsStorage` で、標準の `FileSettingsStorage`(JSONファイル)と `InMemorySettingsStorage`(既定)から、アプリが `settingsStorageProvider` を上書きして選ぶ・独自実装に差し替える(Strategy)。保存・復元の失敗は例外にせず、`[settings_keeper]` 付きでログに残して `false` を返す。詳細は [packages/core/settings_keeper/CLAUDE.md](packages/core/settings_keeper/CLAUDE.md)、使い方は同パッケージの `doc/contents/usage.md` を参照。

### data_test_harness(テスト専用の道具)

アプリ・機能・foundation は GraphQL の接続先を持たない。取得元は `IDataRepository`(`data_strategist`)で受け、GraphQL の実装(`pms_graphql` の `GraphqlDataRepository`)はアプリが組み立てる。テストの接続先(検証用サーバー)と取得元の代役(`RecordingDataRepository`)は `packages/infra/data_test_harness` だけが持ち、使う側は必ず `dev_dependencies` に書く(`dependencies` に書くと検査テストが失敗する)。`data_strategist` と `query_builder` のテストは、循環を避けるためこのパッケージに依存せず、GraphQL に接続しない。詳細は [packages/infra/data_test_harness/CLAUDE.md](packages/infra/data_test_harness/CLAUDE.md) を参照。

## 認証

認証は PocketBase に切り替える。Keycloak を使う `pms_authenticator` は削除した(認証は PocketBase だけ)。導入までのログインは、仮のボタンで標準のユーザーに戻す。PocketBase のセッション確認は、認証の窓口(`page_mediator_extension` の `IPageSessionMediator`)の実装として `pms_app` の `PocketBasePageSession` が行う(`POCKETBASE_URL` を指定したときだけ。指定しないときはこれまでのまま)。ログイン前の画面は `auth_files`、ログインしていなければログインへ向けるのは `pms_app` の `authRedirect`。

PocketBase のクライアントは `packages/infra/pbapi`(公式 SDK の `pocketbase` を使う。新規登録・パスワード・ログイン/ログアウト・セッション確認・共有ファイル・個人ファイル)。トークンは秘密情報として扱い、保存先は `ITokenStore` で差し替える。アプリの既定は OS の安全な保管庫(`auth_files` の `SecureTokenStore`、`flutter_secure_storage`)で、ログインは次の起動でも続く。ログアウトは `auth_files` の `authFilesSignOut`(`app_core` の `signOutProvider` に差し込む)がセッションと保管庫を破棄する。共有ファイルの選択・保存は `file_picker`(`auth_files`)。接続先は `https`(ローカルのネットワークのみ `http` 可)。ログイン・登録・再設定の画面は `packages/features/auth_files`。詳細は [packages/infra/pbapi/CLAUDE.md](packages/infra/pbapi/CLAUDE.md) を参照。

GraphQL(PostGraphile)には PocketBase が発行した短期の JWT(`SessionService.graphqlToken`、`GET /api/app/graphql-token`、既定15分)を `Authorization: Bearer` で送る。JWT はメモリ上(Riverpod のサービス)にだけ置き、暗号化・永続化はしない。JWT を用意できないとき(未ログイン・破棄)は通信せず、`pms_graphql` の `SessionUnavailableException` を投げる。結果の型は `SessionExpiredError`(期限切れ=401・不正=403・セッション無し=`missing`)、`PermissionDeniedError`(DB の権限なし。JWT なしの匿名を含む)、`NetworkError`(認証サーバーに接続できないだけ)。PocketBase → PostGraphile → 全モデルの検証は `packages/infra/jwt_verification_test`(テスト専用。実行方法と実施ログは同プロジェクトの `CLAUDE.md`・`doc/`)。JWT の鍵(`PB_GRAPHQL_JWT_SECRET`)を Git に入れない(`tools/docker/postgraphile/.env` は追跡されているため注意)。

## バーコードの体系

バーコードは、読み込むと**メニューに応じた画面まで導く**ための入口で、システムの核心。バーコードの文字列は **コード(メニューの種類を表す)+ シンボル(DB の対象を一意に表す `symbol`)** で構成する。読み込むと、バーコードのメニュー(`barcode_entry`)へ入り、シンボルで対象を検索し、コードのメニューの種類に応じた画面まで進める。

1.  作業指示書の N 工程目のバーコード: 該当する生産計画の N 工程目の実績を登録する画面へ進む。
1.  コンテナのバーコード: 払出・入庫を選ばせ、製品識別ラベルを読み込むことで、投入または取り出しができる。
1.  画面・流れはコードの形式を知らず、取得元(`IScanGateway`)がコードとシンボルを解釈する。コードの付け方(種類の一覧・桁・区切り)は、このプロジェクトのコード体系として [packages/features/barcode_entry/CLAUDE.md](packages/features/barcode_entry/CLAUDE.md) で定義する。

## メンテナンス情報サーバー

`tools/docker/maintenance`(nginx 1つ、FTP なし、既定ポート 18480)。アプリの `MAINTENANCE_URL` に `/health`(通常 200・メンテナンス中 503)を指定する。通知する情報ファイルは `/info/` を GET で読み、認証つき(Basic)の PUT/DELETE で書き換える。ID・パスワード・ポートは `.env` にまとめ、Git に入れない。詳細は [tools/docker/maintenance/README.md](tools/docker/maintenance/README.md)。

## 受注・発注まわりの仕様(キャンセル・停止・返品・精算・支給・所有)

DB(`tools/docker/postgresql/script`、スキーマ `tests`)の仕様。正は DDL(`06_cteate_test.sql`)と、`issue/change_request.md`(定義書・設計の資料の対応と決定事項の全文)。初期化スクリプトの順は `05_init_test` → `06_cteate_test` → `07_visiter_functions` → `08_mrp` → `09_grant_test` → `10_mrp_dummy` → `11_barcode_dummy` → `12_cancel_supply_constraints` → `13_visiter_owner` → `14_app_admin_dummy` → `15_user_dummy`(変えない)。

### 設計の共通ルール
1.  状態・区分をコード値(smallint・文字列の定数)で持たない・判定しない。はい/いいえは boolean 列、利用者が増やせる分類はサロゲートキーのマスタにし、マスタにも boolean を持たせる。アプリ・ビューは boolean で判定する(マスタの `code` で分岐しない)。コード値の enum をモデルに作らない。
1.  「キャンセル」「停止」などの表示用の文字は、ビューで1か所だけ定義する(アプリごとに解釈を持たない)。
1.  記録(計画変更・支給・返品・精算)は追記のみ。取り扱いが変わったら1件追加し、元の行は書き換えない。
1.  trans からマスタを参照するときは、履歴ID+ID の組で `history_mstr_*` を参照する。
1.  棚ビジターの数量は、棚ビジターの行(+・−)と受払実績が持つ。中間テーブル(返品ビジター・支給ビジター)は数量を持たない。
1.  ビューには `symbol` 列を含める。

### キャンセル・停止・計画変更
1.  受注明細・発注明細のキャンセルは数量の累計 `cancel_quantity`(0 ≤ cancel_quantity ≤ quantity。一部も全部も同じ列)。数量を書き換えない・生産計画を削除しない。「全部キャンセル済み」は列に持たず、ビューの `cancel_closed` で判定する。
1.  停止は boolean `stop`(受注明細・発注明細・生産計画)。MRP は停止中の需要・生産計画を凍結する。延期は納期の変更として計画変更に残す。生産計画の打ち切りは `discontinue`(生産残 = 0。仕掛品は処置が必要)。完了まで続ける生産は受注明細のまま進め、途中の請求は受注明細精算(`trans_order_detail_settlement`。精算1件 = 請求書1行。値引きとは分ける)で持つ。
1.  変更・処置の履歴は計画変更記録(`trans_plan_change`)。種別の列は持たず、どの列に値が入っているかで分かる(数量・日付の新旧、`old_stop`/`new_stop`、処置の boolean `discontinue`/`release`/`hold`/`scrap`/`deliver`、保管先コンテナ、精算、理由、MRP 提案)。対象は受注明細・発注明細・生産計画・引当予約・棚ビジター・出荷オーダー明細のどれか1つ。起点と処置は `parent_trans_plan_change_id` でつなぐ。MRP が反映した計画変更は `reflected_trans_mrp_run_id` でつなぐ。
1.  キャンセル後の品物の処置: 在庫にする = `release`、押さえる = `hold` + コンテナ(`visiter_move(p_hold: true)`。仮止めなので MRP は使わない)、顧客へ引き渡す = `deliver` + 精算、廃棄 = `scrap`、材料に戻す = `release` + 材料品目で入庫し直す。押さえたままの品は未処置一覧に出し続ける。
1.  新しいマスタ: `mstr_change_reason`(`customer_cause`/`supplier_cause`/`quality_cause`)、`mstr_return_kind`(`receive`)、`mstr_settlement_kind`(`delivery`)。

### 返品
売買の取り消しだけを扱う(`trans_return`・`trans_return_detail`・`trans_return_visiter`)。顧客からの返品は `receive = true`(明細は受注明細・出荷明細実績。入庫の+の行をつなぐ)、仕入先・外注先への返品は `receive = false`(明細は発注明細・受入実績。`visiter_issue` の−の行をつなぐ)。代品あり(`replacement`)は受注残・発注残に戻す。支給材の返却・戻りは返品ではなく支給で扱う。

### 支給と所有
1.  顧客支給は0円発注ではなく支給(`trans_supply`・`trans_supply_detail`・`trans_supply_visiter`)で受ける。支給予定は受注のときに登録する(充てる資材計画を指定)。ロットがつながっていなければ「予定」。取り決めが変わったら、その受注明細を指定して再MRP する。顧客支給の品目は発注を提案せず、足りなければ MRP は要判断の `SUPPLY_REQUEST`(支給依頼)を出す(供給区分6 = 顧客の支給予定)。
1.  支給の値: `receive`(受け取り)、`counterpart_owns`(相手先の所有にする)、`company_owns`(自社の所有にする)。両方 true は不可。場面ごとの値は `issue/change_request.md` の 2-4。受け入れは仮止めで+の行を作り、検品後に解除する。支給品の異常は支給異常(`trans_complaint_supply`)に登録する。
1.  発注先への無償支給は自社の所有のまま(元の評価額)。有償支給は販売(支給明細1件 = 請求書1行。`paid_supply`・`paid_by_switch`・`paid_amount`)。外注発注明細の `material_supply`/`paid_supply` は発注時の条件で、実際の受け渡しと切り替えは支給に記録する。外注先専用のコンテナは作らず、ユーザーが選んだコンテナへ引当して移す。
1.  顧客支給で作った物は顧客の所有。返却不要(譲渡)なら `company_owns` の支給を付けて自社の所有にし、在庫として使える。製品が顧客の所有かどうかは受注明細の `customer_property` に明示する。
1.  有効な所有者は `trans_visiter_owner`(ロット1件につき1行。行なし/所有者 NULL = 自社)に切り出し、13 のトリガーだけが書く。アプリは書かない(PostGraphile では create/update/delete を `@omit` にする。読み取り専用のモデルにする)。決め方は上から順に、①直接つながる支給のうち所有を変える最新、②分割元の所有者、③作業実績で作ったロットは最上位の受注明細が `customer_property = true` ならその顧客、④自社。`customer_property` や受注の顧客を後から変えたら `visiter_owner_rebuild()`(管理者だけ)で決め直す。
1.  評価額: 顧客の所有物は評価しない、譲渡で自社の物になった材料は0円、購入品+支給品で作った品目は購入品+生産コスト(支給品は0円)、発注先へ無償で渡した材料は元の評価額、有償で渡した材料は発注先の物。
1.  `info_provision` 系のマスタは「会社が顧客へ何を提供するか」(ISO 9001 4項)で、支給とは関係ない。受注1件に明細は複数登録できる。

### ビュー(読み取りはビューの列で判定する)
| ビュー | 内容 |
|---|---|
| `v_order_detail_balance` | 受注明細の残(数量 − キャンセル + 代品ありの返品 − 出荷)、`open_quantity`(停止中は0)、`cancel_closed`、精算額の合計、`customer_property` |
| `v_purchase_detail_balance` | 発注明細の残、停止、`cancel_closed` |
| `v_plan_change_unreflected` | MRP に未反映の計画変更 |
| `v_supply_detail_balance` | 支給明細ごとの予定・つないだ数量・未受入(MRP の支給予定)・今の数量(発注先にある量)・`paid_supply`・`paid_by_switch`・`paid_amount` |
| `v_external_property` | 社外の所有物の一覧(顧客・発注先。ISO 9001 8.5.3) |
| `v_item_on_hand` | 社外の所有物を空き在庫に数えない |
| `v_mrp_visiter_item`・`v_visiter_item`・`v_visiter_origin_check`・`v_complaint_target` ほか | 品目の経路に支給ビジター・返品ビジターを追加。異常の対象に支給異常を追加 |

### MRP(`08_mrp.sql`)
受注の需要は `v_order_detail_balance`、発注残は `v_purchase_detail_balance` を使う。全部キャンセルは需要なし、`stop = true` は凍結(従属需要も)。確定: 発注の取消は数量を書き換えず残りを `cancel_quantity` にし、生産の取消は着手済みを打ち切り・未着手を削除し、いずれも計画変更を記録(MRP 提案付き)して未反映の計画変更に `reflected_trans_mrp_run_id` を入れる。ペギングに `trans_mrp_pegging.trans_supply_detail_id` を持つ。補助関数は `mrp_root_order_detail`・`mrp_op_frozen`・`mrp_cancel_purchase_detail`(`@omit`)。

### 権限
13 の関数のオーナーは `APP_OWNER_ID`。`visiter_owner_refresh` は一般ユーザー・管理者、`visiter_owner_rebuild` は管理者だけが実行できる。一般ユーザー(`APP_USER_ID`)は `SELECT, INSERT, UPDATE, DELETE`(05・09)で、登録・`visiter_move`・`mrp_run`・`mrp_execute` が使える。管理者は ALL。ただし `trans_visiter_owner` は一般ユーザー・管理者とも読み取りだけ(13 で REVOKE)。

### 未決・未作成
`v_cancel_open_item`(未処置一覧)、キャンセル・停止・保管・返品・支給の操作をまとめる DB 関数(1トランザクションで計画変更と処置を登録)、`v_plan_change`(計画変更の表示用の文字)、受注金額のビュー(`v_sales_record`・`v_shipping_order_status` ほか)への精算額の追加、原価計算のビュー。

## バージョン管理

依存・SDK バージョンはルート [pubspec.yaml](pubspec.yaml) の `melos > command > bootstrap` で集中管理する。上げるときはここだけ直して `melos bootstrap`(各パッケージの該当行は "Managed by Melos" コメント付きで上書きされる)。

##　規則
1.  ディリクトリ/ファイル
    1.  生成結果のレポートは`doc/log`ディリクトリにファイル名`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  同じ年月日、同じ番号に対する追加変更は`年月日_4桁ゼロ埋の番号_add_1からの連番.md`として保存する。
    2.  生成したライブラリに関する使い方やヘルプなどの使用にかかわるレポートは`doc/contens`の保存する。
    3.  最終的にこの`CLAUDE.md`へ統合される追加、変更の指示は`issue`ディリクトリに`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  つまり`生成結果のレポート`と連動する。
        2.  `CLAUDE.md`への統合も指示に含める。統合時、削除指示が無い限り`issue`ディリクトリ`doc/log`ディリクトリの中を削除しない。`CLAUDE.md`には変更や追加、削除であることについて記録しない(生成時に`issue`ディリクトリ`doc/log`ディリクトリを参照するため)。
2.  命名規則
    1.  ファイル名、クラス名など名前付けのルールはFlutterの規則、慣例に従う。
    2.  クラス名はデザインパターンがわかる、または意味が通る英語の名詞とする。ただし、`はい/いいえ`のような`isXxxx`などの`is/as/has`の慣例を優先する。
        1.  `Command`などデザインパターンのみの名前だと誤解や衝突を招くため、機能、動きの名詞化したものと組み合わせる。
    3.  プリフィクスにライブラリ名をつけない(BatonLibXXのような)。
3.  バレルファイルを使用する
    1.  バレルファイルにまとめ、このライブラリを使用する側は1行を読み込むだけで解決できるようにする。ただし、相互に関連が無い独立した機能の場合はバレルファイルを分けて、仕様側が機能に応じて選択できるようにする(例えば、ファイル参照機能と計算機能があり、計算機能がファイル参照を行わない場合は別々にする)。ただし、ユーザーの使用体験を優先する。ライブラリ全体の機能が少ない(10以下)ときにインポートするファイルを分ける必要はない。
4.  インスタンスのJSON化
    1.  生成するこのライブラリのインターフェイス、クラスのインスタンスをJSONにコンバートできる。ただし、エラー追跡のためであり、現時点で機能を復元する目的では使用しない。
5.  ログを残す
    1.  ライブラリは実行したときのログを残す。ただし、このライブラリ側のエラーログだけを残し、実行側のアプリケーションがどの実行でエラーが発生したか調査するとき、機能毎のライブラリ側なのかを切り分け可能にするために、適切に選別する。
    2.  ロガーはRiverpodから提供され、アプリケーション全体をとおして同じ仕様のログ出力を行う。
6.  GOFデザインパターン
    1.  クラス名やファイル名にデザインパターンを含めない場合は、コメントに該当するパターン名を追加する。
    2.  必ずしもデザインパターンに割り当てる必要はない。
## GraphQL モデル生成ルール

### 方針
- GraphQL のモデルは画面(機能)単位で生成する。全画面のモデルを1つのライブラリで生成しない(旧 graphql_provider は廃止済み)。
- モデルパッケージは `packages/model_providers/<機能>_model/` に置く。`packages/features/` は画面機能であり、モデルは置かない。
- 機能パッケージは、自分に対応するモデルパッケージだけに依存する。
- 機能をまたいで受け渡すのは ID や基本型だけにする。生成された型(列挙型・入力型を含む)を機能の外に出さない。
- スカラーの変換処理と GraphQL クライアントは `packages/infra/pms_graphql` を使う。スキーマ本体は共有しない。
- PostGraphile 側はカスタマイズしない。スキーマの縮小はクライアント側の抜き出しツールで行う。
- モデル生成は graphql_codegen を使う。ジェネレーター本体は自作しない。

### 生成の流れ
1. `gql/*.yaml` を編集する(人が書くのはここだけ)
2. `melos run gql` を実行する
   - ① gql:yaml  … YAML → `lib/src/graphql/*.graphql`
   - ② gql:prune … 本家スキーマ(`.schema/schema.graphql`)から画面用 `lib/src/graphql/schema.graphql` を抜き出す。同時に検証も行う
   - ③ gql:build … build_runner でモデルを生成する
- DB を変更したときは、先に `melos run gql:schema` で本家スキーマを更新してから `melos run gql` を実行する。② で失敗した機能、または schema.graphql に差分が出た機能が影響範囲となる。

### 禁止事項
- `.schema/schema.graphql`(本家、10MB超)を Git に入れない。
- 画面用の `schema.graphql` を手で編集しない(必ず抜き出しツールで再生成する)。
- `*.graphql.dart` を手で編集しない。
- 新しく一括生成用のモデルライブラリを作らない。
7.  テスト
    1.  通常のテストに加えて、ローディングや実際の挙動を含めてテストを行う。
        1.  挙動や見た目のテストはユーザーが行うため、Claudeは通常のテストのみを行う。
        2.  サーバーに接続できない場合を除き、文章で指定が困難なもの、コード上で指し示すには時間がかかるもの、など指示があったものは、画面を立ち上げてその状態をスクリーンショットで評価し、対策を提案する。
8.  実装中のライブラリの異常調査
    1.  使用するライブラリに問題がある場合は、その評価と改修も行う。
        1.  そのライブラリのプロジェクトの`doc/log`に問題と対応を記録する。
        2.  テスト通過後に、そのライブラリのプロジェクトの`issue`が対応し完了したことを識別するため、ファイル名に`D_`のプリフィックスをつける。過去の`issue`が古く後に上書きされたもの、このアプリのテストで通過したため完了とみてよいものも対象に含める。未対応があるが一部実施済みの場合は`C_`(Continue)をつける。
        3.  判断が必要なもの、提案があるものは、そのライブラリのプロジェクトの`issue/`に判断・提案の内容を記録する。
        4.  必要だと思われたライブラリ・機能が不要だった場合は、削除の対象として、そのライブラリのプロジェクトの`issue/`に記録する。
9.  GraphQLへアクセスする前の確認(このプロジェクトすべてに適用する)
    1.  メンテナンスサーバーの情報にアクセスし、メンテナンス中のときは、GraphQLへ通信せず中断して、メンテナンス中のページへ遷移する。
    2.  ユーザーのセッションを評価し、セッションが切れているときは、GraphQLへ通信せず中断して、セッション切れのページへ遷移する(ページがログインへの遷移を促す)。
    3.  すでに適用されているアプリ・ライブラリでは、重ねて実装しない。`GraphqlAccessGuard`(`page_mediator_extension`)を、`pms_app`はGraphQLの認証ヘッダーの前に置き、ページの切り替えのリダイレクトで適用済み。`entry_app`はメンテナンスの確認を適用済み(セッション切れは認証の導入時)。適用していないアプリを追加・変更するときは、この確認を組み込む。
10. プロジェクト間をまたぐ指示
    1.  指示や実装が、プロジェクト(アプリ・ライブラリ)をまたいで行われるときの`issue`・`doc/log`の扱い。各プロジェクトの`CLAUDE.md`にも同じ内容を置く。
    2.  指示をしたプロジェクト: `doc/log`に、指示の内容・指示した先のプロジェクト・実施した結果を記録する。
    3.  指示を受けたプロジェクト: 指示の内容と、指示をしたプロジェクトを`issue`に追加し、実施した結果を`doc/log`に記録する。
