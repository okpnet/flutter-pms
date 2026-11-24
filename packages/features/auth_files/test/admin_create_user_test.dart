import 'package:auth_files/auth_files.dart';
import 'package:auth_files/auth_files_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pbapi/pbapi.dart';

/// 管理者のユーザー作成の代役。受けた引数を記録する。
class _FakeAdmin implements AdminService {
  final List<Map<String, Object?>> calls = [];
  Object? failure;

  @override
  Future<IssuedCode> createUser({
    required String username,
    required String appUserId,
    String? email,
    String? name,
    String role = 'user',
    bool mail = true,
  }) async {
    calls.add({'username': username, 'appUserId': appUserId, 'email': email, 'name': name, 'role': role, 'mail': mail});
    if (failure != null) throw failure!;
    return IssuedCode(
      userId: 'pb1',
      username: username,
      appUserId: appUserId,
      kind: CodeKind.activate,
      code: 'ABCDEFGHJKLM',
      expiresAt: DateTime(2026, 12, 1),
      mailed: mail && email != null,
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

Future<void> _open(WidgetTester tester, _FakeAdmin admin, PageDestination<Object?> start) async {
  await tester.binding.setSurfaceSize(const Size(900, 1100));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(
    FeatureHost(
      title: 'AuthFiles',
      modules: [const AuthFilesModule()],
      entries: [FeatureHostEntry('開く', start)],
      overrides: [adminServiceProvider.overrideWithValue(admin)],
    ),
  );
  await tester.pumpAndSettle();
  await tester.tap(find.text('開く'));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('担当者の ID と氏名が初期値で入り(ID は変えられない)、ユーザーを作ると有効化コードを一度だけ見せる', (tester) async {
    final admin = _FakeAdmin();
    await _open(tester, admin, const AdminCreateUserDestination(appUserId: 'staff-1', name: '佐藤 健一'));
    expect(find.text('アカウント管理: ユーザーの作成'), findsOneWidget);
    expect(tester.widget<TextField>(find.byKey(const Key('cu-staff'))).readOnly, isTrue);
    expect(tester.widget<TextField>(find.byKey(const Key('cu-staff'))).controller!.text, 'staff-1');
    expect(tester.widget<TextField>(find.byKey(const Key('cu-name'))).controller!.text, '佐藤 健一');

    await tester.enterText(find.byKey(const Key('cu-username')), 'sato.k');
    await tester.tap(find.byKey(const Key('cu-create')));
    await tester.pumpAndSettle();
    expect(admin.calls.single, {'username': 'sato.k', 'appUserId': 'staff-1', 'email': null, 'name': '佐藤 健一', 'role': 'user', 'mail': false});
    expect(find.text('発行したコード'), findsOneWidget);
    expect(find.textContaining('ABCDEFGHJKLM'), findsOneWidget);
    expect(find.textContaining('本人へ手渡ししてください'), findsOneWidget);
    await tester.tap(find.descendant(of: find.byType(AlertDialog), matching: find.text('戻る')));
    await tester.pumpAndSettle();
    expect(find.textContaining('ABCDEFGHJKLM'), findsNothing); // 閉じると再表示できない
    expect(find.text('ユーザーを作成しました。コードを本人へ渡してください。'), findsOneWidget);
  });

  testWidgets('メールは送らない(Eメールを入れても、メール送信を依頼しない。送信の選択も無い)', (tester) async {
    final admin = _FakeAdmin();
    await _open(tester, admin, const AdminCreateUserDestination(appUserId: 's2'));
    expect(find.byKey(const Key('cu-mail')), findsNothing);
    await tester.enterText(find.byKey(const Key('cu-username')), 'tanaka');
    await tester.enterText(find.byKey(const Key('cu-email')), 'tanaka@example.com');
    await tester.tap(find.byKey(const Key('cu-create')));
    await tester.pumpAndSettle();
    expect(admin.calls.single['mail'], isFalse);
    expect(admin.calls.single['email'], 'tanaka@example.com');
    expect(find.text('メールで送信済み'), findsNothing);
  });

  testWidgets('入力の誤り(ユーザーID・担当者の ID・メールの形式)は、送信せずに表示する', (tester) async {
    final admin = _FakeAdmin();
    await _open(tester, admin, const AdminCreateUserDestination());
    await tester.tap(find.byKey(const Key('cu-create')));
    await tester.pumpAndSettle();
    expect(find.text('入力してください。'), findsWidgets);
    expect(admin.calls, isEmpty);
    await tester.enterText(find.byKey(const Key('cu-username')), 'ab');
    await tester.enterText(find.byKey(const Key('cu-staff')), 's3');
    await tester.enterText(find.byKey(const Key('cu-email')), 'not-mail');
    await tester.tap(find.byKey(const Key('cu-create')));
    await tester.pumpAndSettle();
    expect(find.textContaining('ユーザーIDは'), findsOneWidget);
    expect(find.textContaining('メールアドレスの形式'), findsOneWidget);
    expect(admin.calls, isEmpty);
  });

  test('遷移先は JSON にできる', () {
    expect(const AdminCreateUserDestination(appUserId: 'a', name: 'n').toJson()['appUserId'], 'a');
    expect(AuthFilesPaths.adminCreateUserOf(appUserId: 'a b', name: '佐藤'), contains('staff=a+b'));
  });
}
