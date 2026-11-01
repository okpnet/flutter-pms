# CLAUDE.md

## このライブラリについて
`pbapi`は、PocketBase(テスト環境は`http://192.168.1.103:8090`)の認証・セッション・ファイルのクライアントです。サーバーの仕様は`tools/docker/pocketbase/README.md`を参照します。

通信は公式のDart SDK [`pocketbase`](https://pub.dev/packages/pocketbase)(サーバーと同じ作者)を使います。独自のHTTP実装・他のOAuthライブラリは使いません(理由は`doc/log/20261101_0001.md`)。

### 機能
| 機能 | 入口 | 内容 |
|---|---|---|
| 新規登録 | `AccountService.register` | 招待制。管理者が決めたユーザーID+招待コード+利用者が決めたパスワード。登録後そのままログイン |
| パスワード変更 | `AccountService.changePassword` | 古いパスワードが一致したら新しいパスワードを適用。トークンが失効するため新しいパスワードで入り直す |
| パスワードを忘れた(メールあり) | `requestPasswordReset` → `confirmPasswordReset` | メールのコード(トークン)と新しいパスワードをまとめて渡す |
| パスワードを忘れた(メールなし) | `requestAdminPasswordReset` | 連絡手段`IAdminContact`をアプリが差し込む |
| ログイン/ログアウト | `SessionService.login` / `logout` | ログインはトークン(JWT)を含む`AuthSession`を返す。ログアウトは端末のトークンを破棄 |
| セッション管理 | `ensureSession` / `watch` | サーバーへ問い合わせて有効かを返す。アクションの度、または`watch`で定期的に |
| 共有ファイル | `SharedFileService` | アップロードはIDと版を返す。ファイルIDからダウンロード(最新または指定の版)。上書きしない |
| 個人ファイル | `PersonalFileService` | 設定のアップロード・ダウンロード・削除。本人だけが参照できる(サーバーの準備が必要。`doc/contents/server_user_files.md`) |

### 使い方の流れ
```dart
final connection = await PbConnection.open(
  url: 'http://192.168.1.103:8090/api',        // 末尾の /api は付けても付けなくてもよい
  logger: logger,
  tokenStore: secureTokenStore,                // 本番は安全な保管庫で実装する
);
ProviderScope(overrides: [pbConnectionProvider.overrideWithValue(connection)], child: ...);

final session = ref.read(sessionServiceProvider);
await session.login('tanaka.t', password);
if (!await session.ensureSession()) { /* ログイン画面へ */ }
```
詳細は`doc/contents/usage.md`。

## セキュリティ
1.  トークンは秘密情報。`AuthSession.toJson`・例外・ログに含めない。保存先`ITokenStore`は本番では`flutter_secure_storage`などの安全な保管庫で実装する(`shared_preferences`の平文は避ける)。
1.  ローカルのネットワーク以外では`https`を必須とする(`PbEndpoint`)。`http`は`localhost`・`10.x`・`172.16-31.x`・`192.168.x.x`・`*.local`だけ。
1.  SDKの例外(URLに短時間用のトークンが入りうる)は外へ出さず、`PbException`(種類・ステータス・サーバーのメッセージ)に変換する。
1.  パスワードは検証の失敗でも例外・ログに出さない。長さの確認(8文字以上)は通信の前に行う。
1.  ログインの失敗は`invalidCredentials`だけを返し、ユーザーIDの有無はわからない。メールでの再設定の依頼も、登録の有無がわからない。
1.  ダウンロードは短時間だけ有効なトークンを都度取得し、URLを保存・表示しない。

## 規則(このライブラリ固有)
1.  接続先・トークンの保存先・ロガーは`PbConnection`が持ち、各サービスはそれを受け取る(サービスが接続先を持たない)。
1.  サーバーの失敗は`PbException`で投げる。入力の誤りや認証の失敗(400/401/403/404/429)はエラーログに残さず、通信・サーバー(network/server/unknown)の失敗だけを`[pbapi]`接頭辞付きの`error`で残す。
1.  アプリのDBには、`AuthSession.appUserId`と、ファイルの`StoredFile.recordId`(または`appFileId`+`revision`)だけを保存する。ファイルの実体は持たない。
1.  `IPageSessionMediator`(`page_mediator_extension`)との接続は、別のIssueで行う。

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
