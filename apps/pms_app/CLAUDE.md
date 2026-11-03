# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## このアプリについて

PMS のシェルアプリ。GoRouter を構築済みのモックアップ(旧 `legacy/fultter_main/mock_up`)を移設したもの。以降、このプロジェクトへの指示は `issue/` に置く。

起動: `flutter run -d windows`(このフォルダで)。テスト・解析は `flutter test` / `flutter analyze`。

##  規則
1.  ディリクトリ/ファイル
    1.  生成結果のレポートは`doc/log`ディリクトリにファイル名`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  同じ年月日、同じ番号に対する追加変更は`年月日_4桁ゼロ埋の番号_add_1からの連番.md`として保存する。
    2.  生成したライブラリに関する使い方やヘルプなどの使用にかかわるレポートは`doc/contents`の保存する。
    3.  最終的にこの`CLAUDE.md`へ統合される追加、変更の指示は`issue`ディリクトリに`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  つまり`生成結果のレポート`と連動する。
        2.  `CLAUDE.md`への統合も指示に含める。統合時、削除指示が無い限り`issue`ディリクトリ`doc/log`ディリクトリの中を削除しない。`CLAUDE.md`には変更や追加、削除であることについて記録しない(生成時に`issue`ディリクトリ`doc/log`ディリクトリを参照するため)。
    4.  細分化した機能別に`lib/`以下のディリクトリを2階層を限度(`lib/xxx/xxx`)として分ける。細分化の程度は、2階層になる程度の抽象度とする。
        1.  細分化する機能が少ない(5以下)のとき、1階層で良い(`lib/xxx`)。
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

## 構成
0.  ページ用の拡張・メンテナンス・ダッシュボード
    1.  メンテナンス中のページは `maintenance`(ライブラリ)のページを使う。ルートは `ShellRoute` の外に置き(`standaloneFeatureModules`)、ルーターの `redirect` で、ページの切り替え・更新のたびにセッション(`pageSessionMediatorProvider`)を更新して確認し、`maintenanceRedirect` でメンテナンス中はどのページもメンテナンスページへ向ける。確認先は `--dart-define=MAINTENANCE_URL=...`(HTTP 503 をメンテナンス中とする)。未指定のときは常に利用可能とする。
    2.  セッション確認の実体は `services/session`。メンテナンスの確認を先に行い(`MaintenanceAwarePageSession`)、使えるときだけ認証(`pms_authenticator` の `AuthController`)を確認する(`AuthenticatorPageSession`)。認証が未初期化(ログインしていない)ときは通信せずログアウトとして扱う。テストでは、メンテナンスの確認だけを差し替える。
    3.  ダッシュボードは `app_core` のページ(`/dashboard`)を使う。件数の元は `services/dashboard` のモック(`mockCountSources`)で、GraphQL の `totalCount` を返す取得元ができたら `RepositoryCountSource` へ置き換える。保存された配置が無いときは `defaultDashboardLayout` にする(`main.dart`)。
1.  機能(ライブラリ)の組み込み
    1.  `packages/features`の機能は`lib/services/features/feature_modules.dart`の`featureModules`に並べる。ルートは`root_router.dart`の`ShellRoute`(`UnControlContentsFrame`)に追加し、命令の窓口は`main()`で`commandBusProvider`へ`createFeatureCommandBus`を差し込む。サイドバーの項目は機能の`MenuContributor`から`DrawerMenu`が集める。
    1.  アプリのページの一覧(パスと名前 ja・en)を `doc/contents/access_paths.csv` に置く。アクセス管理(`access_control`)のアクセスパスを**初回に一括で登録する元**であり、ページの**参考の一覧**でもある。頻繁に使うものではない。ページを追加・変更したときは、必要に応じて更新する。初回の登録のあとの追加は、アクセス管理の登録画面で1件ずつ行う。
2.  多言語(slang)
    1.  文字列は`lib/i18n`の言語ファイル(`ja.i18n.yaml`が基準、`en.i18n.yaml`など)に置き、`dart run slang`で生成する(生成物もコミット)。`feature_shared`の`localeProvider`を`ref.watch`する`appStringsProvider`で取得する。slangのグローバル変数は使わない。
    2.  表示する文字列とメッセージは全て言語ファイルに置く。エラーは文字列ではなく種類(enum・例外の型)で持ち、画面が表示時に文字列へ変換する。ログの文言は多言語の対象にしない。
    3.  グリッドの列名など、置き換え予定のモック画面の文字列は、置き換え先のライブラリ画面(DBのコメント)に任せ、先に移さない。
3.  警告
    1.  未使用の変数・フィールド・インポート・関数は削除する。
4.  枠と設定
    1.  タイトルバー・サイドバー・ユーザー表示は`app_shell`の`MultiMainFrame`(`AppMainFrame`)を使い、アプリ独自の枠を作らない。文字列は`app_core`の文字列を使う。
    1.  ユーザー設定(言語・サイドバー・ユーザー)は`settings_keeper`で`shared_preferences`に保存する(`main()`で`settingsStorageProvider`を差し込む)。保存する形のJSONモデルは`app_core`に定義する。
5.  ページのアクセスパス(CSV)
    1.  アプリのページ(`TypedGoRoute`・`GoRoute`、機能のページ)を追加・変更・削除するたびに、アクセスパスの一覧 `doc/contents/access_paths.csv` を更新する。これがアクセス管理(`access_control`)で登録するアクセスパスの元で、アプリが正規に発行する権限の単位になる。
    1.  列は `usecase_path`(ページのパス)、`name_ja`・`name_en`(名前)、`feature`、`public`(ログイン前から使えるページは `true`。アクセス権の対象にせず、登録しない)。`symbol` は DB のトリガーが自動で付けるので、CSV には持たない。
    1.  生成は `node tools/entity_gen/access_paths.js`(リポジトリのルートで実行)。台帳(実体)は自動で増える。手書きのページは `tools/entity_gen/access_paths.js` の `CUSTOM` に、台帳の英語名は `EN` に足す(英語名が無いと失敗する)。生成後は差分をレビューする。
    1.  `usecase_path` は全体で一意にする。名前(ja・en)を変えるときは、登録済みのアクセスパスを編集画面で直す(CSV の登録は、`usecase_path` が未登録のものだけを追加する)。
    1.  登録は `access_control_model` の `AccessControlClient.registerMissingAccessPaths`(`AccessPathSeed.parseCsv` で CSV を読む)か、アクセス管理の登録画面で行う。
6.  GraphQL・PocketBase の接続
    1.  `--dart-define=GRAPHQL_URL=...`(PostGraphile)を指定したときだけ、画面の取得元を GraphQL 版にする(`lib/services/graphql`)。未指定はサンプル。
    1.  `--dart-define=POCKETBASE_URL=...`(PocketBase)を指定したときだけ、`pbapi` の接続を開く(`lib/services/pocketbase`)。GraphQL の認証ヘッダーは `pbapi` の `SessionService.graphqlToken` の JWT を使う(取得・更新は `pbapi`)。トークンの保存先は、いまはメモリ。
    1.  PostGraphile が JWT を検証する設定になるまで、JWT は効かない(`tools/docker/postgresql/issue/20261103_0003.md`)。
