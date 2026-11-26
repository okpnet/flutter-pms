// アカウント(管理者のユーザー作成・新規登録の申請・パスワードを忘れた依頼・コードの受け入れ)の評価。
// 仮想のサーバーが、実サーバー(pb_hooks)と同じ形で応答し、`pbapi` の実物のサービスを動かす。
import 'package:flutter_test/flutter_test.dart';
import 'package:pbapi/pbapi.dart';

import 'support/example_harness.dart';

/// 失敗する呼び出しの例外を返す(成功したら null)。
Future<Object?> failure(WidgetTester tester, Future<void> Function() call) =>
    tester
        .runAsync<Object?>(() async {
          try {
            await call();
            return null;
          } catch (e) {
            return e;
          }
        })
        .then((e) => e);

void main() {
  testWidgets('管理者がユーザーを作成 → コード(12 文字・1 回限り)→ 本人が有効化 → そのIDとパスワードでログインできる', (
    tester,
  ) async {
    final h = await ExampleHarness.start(tester);
    await h.login('admin', 'admin-pass');
    final admin = h.container.read(adminServiceProvider);
    final account = h.container.read(accountServiceProvider);

    final issued = (await tester.runAsync(
      () => admin.createUser(
        username: 'newuser',
        appUserId: 'STAFF9',
        name: '新人',
        mail: false,
      ),
    ))!;
    expect(issued.code.length, 12);
    expect(issued.kind, CodeKind.activate);
    expect(issued.mailed, isFalse);
    expect(issued.username, 'newuser');
    expect(issued.appUserId, 'STAFF9');

    // 同じユーザーID・同じ担当者の二重の作成は、入力の不備
    expect(
      await failure(
        tester,
        () => admin.createUser(
          username: 'newuser',
          appUserId: 'STAFF10',
          mail: false,
        ),
      ),
      isA<PbException>().having(
        (e) => e.kind,
        'kind',
        PbFailureKind.validation,
      ),
    );

    // コードを入力して有効化する。コードは 1 回限り
    await tester.runAsync(
      () => account.acceptCode(
        username: 'newuser',
        code: issued.code,
        password: 'newpass123',
      ),
    );
    expect(
      await failure(
        tester,
        () => account.acceptCode(
          username: 'newuser',
          code: issued.code,
          password: 'otherpass1',
        ),
      ),
      isA<PbException>(),
    );
    expect(
      h.server.users.firstWhere((u) => u.username == 'newuser').password,
      'newpass123',
    );
  });

  testWidgets('パスワードを忘れた依頼 → 管理者が再設定コードを発行(依頼はクローズ)→ 本人が新しいパスワードを入れる', (
    tester,
  ) async {
    final h = await ExampleHarness.start(tester);
    final account = h.container.read(accountServiceProvider);
    // ログイン前の依頼(存在しないIDでも成功の応答。存在の有無は分からせない)
    await tester.runAsync(() => account.requestPasswordReset('nobody'));
    expect(h.server.resetRequests, isEmpty);
    await tester.runAsync(() => account.requestPasswordReset('sato'));
    expect(h.server.resetRequests, hasLength(1));

    await h.login('admin', 'admin-pass');
    final admin = h.container.read(adminServiceProvider);
    final requests = (await tester.runAsync(() => admin.listResetRequests()))!;
    expect(requests.map((r) => r.username), ['sato']);

    final issued = (await tester.runAsync(
      () => admin.issueResetCode(requests.single.userId, mail: false),
    ))!;
    expect(issued.kind, CodeKind.reset);
    expect(issued.code.length, 12);
    expect((await tester.runAsync(() => admin.listResetRequests()))!, isEmpty);

    // 再発行すると、前のコードは無効になる
    final again = (await tester.runAsync(
      () => admin.issueResetCode(requests.single.userId, mail: false),
    ))!;
    expect(
      await failure(
        tester,
        () => account.acceptCode(
          username: 'sato',
          code: issued.code,
          password: 'brandnew99',
        ),
      ),
      isA<PbException>(),
    );
    await tester.runAsync(
      () => account.acceptCode(
        username: 'sato',
        code: again.code,
        password: 'brandnew99',
      ),
    );
    expect(
      h.server.users.firstWhere((u) => u.username == 'sato').password,
      'brandnew99',
    );
  });

  testWidgets('新規登録の申請 → 管理者が承認(コードを発行)/却下。管理者以外は操作できない', (tester) async {
    final h = await ExampleHarness.start(tester);
    final account = h.container.read(accountServiceProvider);
    await tester.runAsync(
      () => account.requestSignup(
        fullName: '山田 花子',
        requestedUsername: 'hanako',
        note: '製造部',
      ),
    );
    await tester.runAsync(() => account.requestSignup(fullName: '却下される人'));

    // 一般ユーザーは、管理者の操作を断られる
    await h.login('sato', 'sato-pass');
    final admin = h.container.read(adminServiceProvider);
    expect(
      await failure(tester, () => admin.listSignupRequests()),
      isA<PbException>().having((e) => e.kind, 'kind', PbFailureKind.forbidden),
    );
    await tester.runAsync(
      () => h.container.read(sessionServiceProvider).logout(),
    );
    await tester.runAsync(
      () =>
          h.container.read(sessionServiceProvider).login('admin', 'admin-pass'),
    );

    final list = (await tester.runAsync(() => admin.listSignupRequests()))!;
    expect(list.map((s) => s.fullName), ['山田 花子', '却下される人']);
    final issued = (await tester.runAsync(
      () => admin.activate(
        userId: list.first.userId,
        appUserId: 'STAFF20',
        mail: false,
      ),
    ))!;
    expect(issued.username, 'hanako');
    expect(issued.code.length, 12);
    await tester.runAsync(() => admin.reject(list.last.userId));
    expect((await tester.runAsync(() => admin.listSignupRequests()))!, isEmpty);
  });
}
