# pbapi の使い方

概要・セキュリティは[CLAUDE.md](../../CLAUDE.md)。サーバーの仕様(状態・コード・API)は`tools/docker/pocketbase/README.md`。

## 1. 起動時に接続を開く
```dart
final connection = await PbConnection.open(
  url: const String.fromEnvironment('PB_URL', defaultValue: 'http://192.168.1.103:8090/api'),
  logger: logger,                 // ILoggerProvider(logger_provider)
  tokenStore: SecureTokenStore(), // ITokenStore の実装(下の例)。省略するとメモリだけ(閉じるとログアウト)
);

runApp(ProviderScope(
  overrides: [pbConnectionProvider.overrideWithValue(connection)],
  child: const MyApp(),
));
```
`url`が`https`以外で、ローカルのネットワーク以外を指すと`ArgumentError`になります。

### トークンの保存先(本番)
```dart
class SecureTokenStore implements ITokenStore {
  static const _key = 'pb_auth';
  final _storage = const FlutterSecureStorage();
  @override
  Future<String?> read() => _storage.read(key: _key);
  @override
  Future<void> write(String data) => _storage.write(key: _key, value: data);
  @override
  Future<void> delete() => _storage.delete(key: _key);
}
```

## 2. ログイン・セッション
```dart
final session = ref.read(sessionServiceProvider);

try {
  final s = await session.login('tanaka.t', password); // ユーザーIDまたはEメール
  // s.token (JWT), s.userId, s.appUserId, s.expiresAt
} on PbException catch (e) {
  // e.kind: invalidCredentials / rateLimited / network ...
}

// 画面の切り替え・保存・呼び出しの直前
if (!await session.ensureSession(minInterval: const Duration(seconds: 30))) {
  // ログイン画面へ
}

// 定期的な確認(購読をやめると止まる)
session.watch(interval: const Duration(minutes: 5)).listen((valid) { if (!valid) { /* ログイン画面へ */ } });

await session.logout();
```
- ログインできない理由(未承認・未有効化・無効・パスワード違い)は区別されず、すべて`invalidCredentials`です。
- `ensureSession`は、通信できないときに`PbException(network)`を投げます(有効か無効かは決めません)。

### GraphQL用のトークン
```dart
final gql = await session.graphqlToken();   // gql.token, gql.expiresAt
// Authorization: Bearer ${gql.token}
```
短期(既定15分)のJWTです。期限の60秒前までは取得済みのものを使い回し、過ぎていれば取り直します(`margin`で変更)。ログアウトやセッション切れで破棄されます。サーバーがGraphQL用に設定されていないときは`PbException(notFound)`です。

## 3. 新規登録・コード入力・パスワード
新規ユーザーの流れは「本人が申請 → 管理者が承認してコードを発行 → 本人がコードとパスワードを入力 → ログイン」です。

```dart
final account = ref.read(accountServiceProvider);

// ① 申請(ログイン不要)。応答はいつも同じで、希望IDが使われているかはわからない
await account.requestSignup(
  fullName: '山田 太郎',
  requestedUsername: 'yamada.t',
  contactEmail: 'yamada@example.com',      // 省略可。メールありならコードがメールで届く
  profile: {'dept_wish': '製造部'},        // 担当者の本人情報(自由なJSON、16KBまで)
);

// ② 管理者がコードを発行(下の「管理者」)。メールなし・SMTP無効なら手渡し

// ③ コード入力(ログイン不要)。有効化とパスワード再設定で共通
await account.acceptCode(username: 'yamada.t', code: 'ABCD-EFGH-JKLM', password: password);
await session.login('yamada.t', password);  // ログインするかは画面が決める(acceptCodeはしない)

// パスワードを忘れた(ユーザーIDまたはEメール)。応答はいつも同じ
await account.requestPasswordReset('yamada.t');
// → メールまたは管理者から届いたコードを acceptCode に渡す

// パスワード変更(ログイン中)。古いパスワードが違えば PbException.fieldErrors['oldPassword']
await account.changePassword(oldPassword: old, newPassword: next);

// プロフィール変更(名前だけ。アバターは 5-2 の AvatarService)
await account.updateProfile(name: '山田 太郎');
```
- コードの誤り・期限切れ・回数超過・ユーザーIDの誤りは区別されず、すべて`validation`です。
- パスワードは8文字以上。短いと通信せず`ArgumentError`になります。
- 申請の受付が止まっているとき(未処理の申請が上限)は`unavailable`(503)です。

## 4. 管理者
`role=admin`で有効なユーザー(またはsuperuser)でログインしているときだけ使えます。権限はサーバーが判定し、一般ユーザーが呼ぶと`forbidden`です。

```dart
final admin = ref.read(adminServiceProvider);

// 承認: ① 申請の一覧 ② アプリのDBに担当者を登録(pb_user_id に request.userId を保存)③ activate
final requests = await admin.listSignupRequests();          // 古い順。fullName, profile, userId ...
final issued = await admin.activate(userId: requests.first.userId, appUserId: 'U0001');
// issued.code を本人へ渡す。issued.mailed が true ならメール送信済み

await admin.reject(requests.first.userId);                  // 却下(申請を削除)

// 管理者が先に登録(「承認済み」で作成してコードを発行)
await admin.createUser(username: 'tanaka.t', appUserId: 'U0002', email: 'tanaka@example.com');

// パスワード再設定の依頼(メールなし)に対応: 本人確認のうえ、コードを手渡す
final pending = await admin.listResetRequests();
final reset = await admin.issueResetCode(pending.first.userId);

// 無効化(全端末のトークンが即時失効)/ 元に戻す
await admin.setDisabled(userId);
await admin.setDisabled(userId, disabled: false);
```
- 順番は「アプリのDBに登録 → `activate`」で固定です。`activate`は同じ`appUserId`で何度でも呼べ、呼ぶたびにコードを発行し直して前のコードを無効にします(コードを紛失したときも同じ)。
- `IssuedCode.code`は秘密情報で、`toJson`・`toString`に含まれません。画面に出す・手渡す用途以外で保存・記録しないでください。
- 退職などで使わなくなったアカウントは、削除ではなく無効化にします。

## 5. ファイル
```dart
final shared = ref.read(sharedFileServiceProvider);

final stored = await shared.upload(appFileId: 'doc-1', bytes: bytes, filename: 'a.pdf');
// stored.recordId / stored.appFileId / stored.revision をアプリのDBに保存する

final file = await shared.download('doc-1');            // 最新の版。無ければ null
final v1 = await shared.download('doc-1', revision: 1); // 指定の版
// file.bytes を保存するのはアプリ側

final history = await shared.history('doc-1');          // 新しい順

// 個人ファイル(設定)。サーバーの準備が必要: server_user_files.md
final personal = ref.read(personalFileServiceProvider);
await personal.upload(key: 'settings', bytes: utf8.encode(jsonEncode(settings)));
final bytes = await personal.download('settings');
```

## 5-2. アバター(ユーザーの画像)
サーバーの`user_avatars`を使います(`users.avatar`は使いません)。取得は有効なユーザー全員、登録・差し替え・削除は本人または管理者です。
```dart
final avatars = ref.read(avatarServiceProvider);

// 取得(未登録は null)。複数人の一覧はまとめて取る
final mine = await avatars.find(session.userId);
final many = await avatars.findMany(['u1', 'u2']);         // userId → UserAvatar

// 画像のバイト列。サムネイルは '128x128' / '256x256'(省略で原寸)
if (mine != null) {
  final bytes = await avatars.download(mine, thumb: '128x128');
  // キャッシュのキーは mine.cacheKey('128x128')(差し替えるとファイル名が変わる)
}

// 登録または差し替え(1人1枚。上書き)。本人、または管理者が他のユーザーに対して
final saved = await avatars.set(userId, resizedBytes, filename: 'me.png');
await avatars.delete(userId);
```
- **EXIF:** 原寸の画像には位置情報などが残ります。アプリ側で縮小(例: 512px)してからアップロードしてください。
- 形式は JPEG / PNG / WebP、2MBまで(サーバーが中身で判定。違うと`validation`)。
- 権限が無いとき、登録は`validation`(400)、差し替え・削除は`notFound`(404)です。

## 6. エラーとログ
このライブラリはユーザーに見せる文言を持ちません。`PbException`はログ・エラー追跡のためのもので、画面に出す文言への置き換えはページ側で行います。

| 項目 | 内容 |
|---|---|
| `kind` | 処理を分ける種類。`validation` / `invalidCredentials` / `unauthorized` / `forbidden` / `notFound` / `rateLimited` / `unavailable` / `server` / `network` / `unknown` |
| `statusCode` | HTTPのステータス(通信できないときは0) |
| `operation` | 失敗した操作の名前(`login`、`acceptCode`、`activate`など) |
| `fieldErrors` | 項目ごとのエラー**コード**(`{'password': 'validation_length_out_of_range'}`)。文言ではない |
| `message` | サーバーのメッセージ(ログ用) |
| `logMessage` | ログの1行。`[pbapi] acceptCode: validation (status=400) fields={code:validation_invalid} server="…"` |
| `isTransient` | `network`・`server`・`unavailable`。少し待ってやり直せる可能性がある |

- 通信・サーバーの失敗(`network`/`server`/`unknown`)は`error`、入力の誤りや認証の失敗は`debug`で、どちらも`logMessage`を残します。
- パスワード・コード・トークン・URL・入力値は、例外にもログにも含まれません。

## 7. テスト
- 通信を差し替えるテスト: `PbConnection.open(httpClientFactory: () => MockClient(...))`。`test/support/fake_pocketbase.dart`を参照。
- 実サーバーのテスト(`server`タグ): `flutter test --exclude-tags server`で除外できる。別のサーバーは`--dart-define=PMS_TEST_POCKETBASE_URL=...`。
  - `pocketbase_server_test.dart`: データを作らない(疎通・未ログインの拒否)。
  - `pocketbase_integration_test.dart`: 利用者・ファイルを作って検証し、後始末する。superuserの資格情報を実行時に渡す(コード・Gitには書かない)。Dockerのテスト環境専用で、本番には実行しない。
    `--dart-define=PMS_TEST_POCKETBASE_ADMIN_EMAIL=... --dart-define=PMS_TEST_POCKETBASE_ADMIN_PASSWORD=...`
  - サーバーのレート制限(ログインは同一IPで1分10回)があるため、続けて実行するときは1分以上あける。
- `flutter test`がこの環境で落ちる場合は`--no-test-assets`を付ける。
