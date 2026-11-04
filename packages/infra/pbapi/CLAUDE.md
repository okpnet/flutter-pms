# CLAUDE.md

## このライブラリについて
`pbapi`は、PocketBase(テスト環境は`http://192.168.1.103:8090`)の認証・セッション・ファイルのクライアントです。サーバーの仕様は`tools/docker/pocketbase/README.md`を参照します。

通信は公式のDart SDK [`pocketbase`](https://pub.dev/packages/pocketbase)(サーバーと同じ作者)を使います。独自のHTTP実装・他のOAuthライブラリは使いません(理由は`doc/log/20261101_0001.md`)。

### アカウントの状態
サーバー(`users`)の状態は`pending`(申請中)→`approved`(承認済み・未有効化)→`active`(有効)、および`disabled`(無効)。**ログインできるのは`active`だけで、可否はサーバーが判定する**(クライアントは状態を判定しない)。ログインできない理由(未承認・未有効化・無効・パスワード違い)は区別して返さず、すべて`invalidCredentials`になる。

### 機能
| 機能 | 入口 | 内容 |
|---|---|---|
| 登録申請 | `AccountService.requestSignup` | `POST /api/app/signup`。氏名・希望ID・任意のメール・本人情報`profile`(自由なJSON、16KBまで)。応答はいつも同じ(202)で、希望IDの使用状況はわからない。未処理の申請が上限に達すると受付停止(503) |
| コード入力(有効化・再設定) | `AccountService.acceptCode` | `POST /api/app/codes/accept`。ユーザーID+コード+新しいパスワード。有効化とパスワード再設定で共通。成功は204。失敗は理由によらず同じ400 |
| パスワードを忘れた | `AccountService.requestPasswordReset` | `POST /api/app/password-reset/request`。ユーザーIDまたはEメール。応答はいつも同じ(202)。メールで送るか管理者が手渡すかはサーバーが判断し、クライアントは分岐しない。続けて`acceptCode`でコードを入力する |
| パスワード変更 | `AccountService.changePassword` | 古いパスワードが一致したら新しいパスワードを適用。トークンが失効するため新しいパスワードで入り直す |
| プロフィール変更 | `AccountService.updateProfile` | 本人が変えられるのは`name`だけ。`username`・`app_user_id`・`role`・`email`・`disabled`・`avatar`は変えられない(アバターは下の`AvatarService`) |
| アバター | `AvatarService` | サーバーの`user_avatars`(`users.avatar`は使わない)。取得(`find`・`findMany`)は有効なユーザー全員、登録・差し替え(`set`)・削除(`delete`)は本人または管理者。1人1枚で上書き。画像は`download`(任意でサムネイル`128x128`・`256x256`)。キャッシュのキーは`UserAvatar.cacheKey`(差し替えるとファイル名が変わる)。権限が無いと登録は400(`validation`)、差し替え・削除は404(`notFound`)。形式はJPEG/PNG/WebP、2MBまで(サーバー設定)。**原寸の画像にはEXIF(位置情報)が残るため、アプリ側で縮小してからアップロードする** |
| ログイン/ログアウト | `SessionService.login` / `logout` | ログイン欄は「ユーザーIDまたはEメール」の1つ。大文字小文字は区別しない。トークン(JWT)を含む`AuthSession`を返す。ログアウトは端末のトークンを破棄 |
| セッション管理 | `ensureSession` / `watch` | サーバーへ問い合わせて有効かを返す(auth-refresh)。画面の切り替え・保存・呼び出しの度、または`watch`で定期的に。401/403/404ならトークンを破棄してログイン画面へ戻す |
| GraphQL用トークン | `SessionService.graphqlToken` | `GET /api/app/graphql-token`。短期(既定15分)のJWTと期限。期限の少し前まで使い回し、切れたら`ensureSession`の後に取り直す。サーバーが無設定のときは404。取得済みの JWT は別のユーザーでログインし直したとき・ログアウト・無効なセッションで破棄する(前のユーザーの担当者のIDを使い回さない) |
| 管理者(申請・コード・無効化) | `AdminService` | 下の表 |
| 共有ファイル | `SharedFileService` | アップロードはIDと版を返す。ファイルIDからダウンロード(最新または指定の版)。上書きしない |
| 個人ファイル | `PersonalFileService` | 設定のアップロード・ダウンロード・削除。本人だけが参照できる(サーバーの準備が必要。`doc/contents/server_user_files.md`) |

**管理者**(`role=admin`かつ有効なユーザー、またはsuperuser)だけが使える`AdminService`。権限はサーバーが判定し、一般ユーザーが呼ぶと`forbidden`になる。管理者アカウントを対象にした操作(再設定コード・無効化など)はsuperuserだけ。

| メソッド | API | 内容 |
|---|---|---|
| `listSignupRequests` | `GET /api/collections/signup_profiles/records?expand=user` | 申請の一覧 |
| `activate` | `POST /api/app/admin/users/{id}/activate` | 承認。`app_user_id`(必須)・`username`・`email`・`name`を指定し、有効化コードを返す |
| `reject` | `POST /api/app/admin/users/{id}/reject` | 却下。申請中のユーザーと本人情報をまとめて削除 |
| `createUser` | `POST /api/app/admin/users` | 管理者が先に登録(「承認済み」で作成し、有効化コードを返す)。`role=admin`を付けられるのはsuperuserだけ |
| `listResetRequests` | `GET /api/collections/reset_requests/records?filter=status='open'&expand=user` | メールなしの再設定依頼の一覧 |
| `issueResetCode` | `POST /api/app/admin/users/{id}/reset-code` | 再設定コードの発行。依頼は自動でクローズ |
| `setDisabled` | `POST /api/app/admin/users/{id}/disable` | 無効化(全端末のトークンを即時失効)・再有効化 |

- 新規ユーザーの流れは「申請(`requestSignup`)→ 管理者が`listSignupRequests`で確認し、App DBに担当者を登録して`pb_user_id`を保存 → `activate`でコード発行(メールあり・SMTP有効ならサーバーが送信、`mailed=false`なら手渡し)→ 本人が`acceptCode`」。**順番は「App DBに登録 → `activate`」で固定**。`activate`は同じ`app_user_id`で何度でも呼べ、呼ぶたびにコードを発行し直して前のコードを無効にする(コードを紛失したときも同じ)。
- コードは12文字(`0 O 1 I`なし)。ハイフン・空白・大文字小文字は区別しない。1回限り。有効期限は有効化72時間・再設定24時間。規定回数失敗すると無効になる。

### 使い方の流れ
```dart
final connection = await PbConnection.open(
  url: 'http://192.168.1.103:8090/api',        // 末尾の /api は付けても付けなくてもよい
  logger: logger,
  tokenStore: secureTokenStore,                // 本番は安全な保管庫で実装する
);
ProviderScope(overrides: [pbConnectionProvider.overrideWithValue(connection)], child: ...);

final session = ref.read(sessionServiceProvider);
await session.login('tanaka.t', password);     // ユーザーIDまたはEメール
if (!await session.ensureSession()) { /* ログイン画面へ */ }
```
詳細は`doc/contents/usage.md`。

## セキュリティ
1.  トークンは秘密情報。`AuthSession.toJson`・例外・ログに含めない。保存先`ITokenStore`は本番では`flutter_secure_storage`などの安全な保管庫で実装する(`shared_preferences`の平文は避ける)。GraphQL用のJWTも同じ扱い。
1.  ローカルのネットワーク以外では`https`を必須とする(`PbEndpoint`)。`http`は`localhost`・`10.x`・`172.16-31.x`・`192.168.x.x`・`*.local`だけ。
1.  SDKの例外(URLに短時間用のトークンが入りうる)は外へ出さず、`PbException`(種類・ステータス・サーバーのメッセージ)に変換する。
1.  パスワードとコードは検証の失敗でも例外・ログに出さない。パスワードの長さの確認(8文字以上)は通信の前に行う。管理者APIが返す有効化コード・再設定コードも秘密情報で、`toJson`・ログに含めない。
1.  ログインの失敗は`invalidCredentials`だけを返し、ユーザーIDの有無・状態はわからない。コード入力の失敗(誤り・期限切れ・回数超過・ID違い)も区別しない。申請とパスワードの再設定の依頼も、登録の有無がわからない(いつも成功として扱う)。
1.  ダウンロードは短時間だけ有効なトークンを都度取得し、URLを保存・表示しない。

## 規則(このライブラリ固有)
1.  接続先・トークンの保存先・ロガーは`PbConnection`が持ち、各サービスはそれを受け取る(サービスが接続先を持たない)。
1.  サーバーの失敗は`PbException`で投げる。入力の誤りや認証の失敗(400/401/403/404/429)と申請の受付停止(503)は`debug`、通信・サーバー(network/server/unknown)の失敗だけを`error`で、どちらも`PbException.logMessage`(`[pbapi] 操作名: 種類 (status=N) fields={項目:コード} server="…"`)の1行で残す。
1.  エラーメッセージはログ・エラー追跡のためのもので、ユーザーに見せる文言ではない。このライブラリは利用者向けの文言を持たず、機能の切り分けに必要な情報(操作名・種類`kind`・ステータス・項目ごとのエラーコード`fieldErrors`・サーバーのメッセージ)だけを持つ。`fieldErrors`は文言ではなくコード(`validation_required`など)。利用者向けの文言への置き換えはページ(画面)側の責務。メッセージにパスワード・コード・トークン・URL・入力値を含めない。プログラムの誤り(`ArgumentError`)のメッセージも、開発者向けの英語で条件だけを書く。
1.  サーバーの状態(申請中・承認済み・有効・無効)や管理者の権限を、クライアントで判定しない。サーバーの応答(`invalidCredentials`・`forbidden`など)に従う。
1.  429(レート制限)は同じIPからの回数で制限される。対象は申請・再設定の依頼・コード入力・ログイン。`rateLimited`として返す。
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
