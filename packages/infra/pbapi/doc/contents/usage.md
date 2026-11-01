# pbapi の使い方

概要・セキュリティは[CLAUDE.md](../../CLAUDE.md)。

## 1. 起動時に接続を開く
```dart
final connection = await PbConnection.open(
  url: const String.fromEnvironment('PB_URL', defaultValue: 'http://192.168.1.103:8090/api'),
  logger: logger,                 // ILoggerProvider(logger_provider)
  tokenStore: SecureTokenStore(), // ITokenStore の実装(下の例)。省略するとメモリだけ(閉じるとログアウト)
);

runApp(ProviderScope(
  overrides: [
    pbConnectionProvider.overrideWithValue(connection),
    // メールを登録していない人向け。使うときだけ
    // adminContactProvider.overrideWithValue(MyAdminContact()),
  ],
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
`ensureSession`は、通信できないときに`PbException(network)`を投げます(有効か無効かは決めません)。

## 3. 新規登録・パスワード
```dart
final account = ref.read(accountServiceProvider);

// 招待制: ユーザーIDは管理者が決める。招待コードとパスワードを入力して登録(そのままログイン)
await account.register(username: 'tanaka.t', inviteCode: 'ABCD2345EFGH', password: password);

// 変更(ログイン中)。古いパスワードが違えば PbException.fieldErrors['oldPassword']
await account.changePassword(oldPassword: old, newPassword: next);

// 忘れた(メールを登録している人): ① メールを送る ② 届いたコードと新しいパスワードを渡す
await account.requestPasswordReset('tanaka@example.com');
await account.confirmPasswordReset(token: codeFromMail, newPassword: next);

// 忘れた(メールを登録していない人): 管理者へ依頼(IAdminContact が必要)
await account.requestAdminPasswordReset('tanaka.t');
```
画面は別のライブラリで作ります。「コードが一致したら変更画面へ」は、コードの確認だけを先に行うAPIが無いため、コードと新しいパスワードを続けて入力させ、まとめて`confirmPasswordReset`へ渡します。

## 4. ファイル
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

## 5. テスト
- 通信を差し替えるテスト: `PbConnection.open(httpClientFactory: () => MockClient(...))`。`test/support/fake_pocketbase.dart`を参照。
- 実サーバーのテスト(`server`タグ): `flutter test --exclude-tags server`で除外できる。別のサーバーは`--dart-define=PMS_TEST_POCKETBASE_URL=...`。
- `flutter test`がこの環境で落ちる場合は`--no-test-assets`を付ける。
