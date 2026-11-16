import 'package:current_user/current_user.dart';
import 'package:test/test.dart';

class _Identity implements IUserIdentitySource {
  UserIdentity? value;
  @override
  UserIdentity? get current => value;
}

void main() {
  late _Identity identity;
  late int lookups;
  var lang = 'ja';
  Future<String?> Function(String) lookup = (_) async => null;

  CurrentUserHolder make() => CurrentUserHolder(
    identity: identity,
    lookupHistory: (id) {
      lookups++;
      return lookup(id);
    },
    languageCode: () => lang,
  );

  setUp(() {
    identity = _Identity();
    lookups = 0;
    lang = 'ja';
    lookup = (id) async => 'h-$id';
  });

  test('ログインしていなければ null で、履歴を引かない', () async {
    expect(await make()(), isNull);
    expect(lookups, 0);
  });

  test('履歴の ID を引いて使い回す。担当者が変わると引き直す', () async {
    final h = make();
    identity.value = const UserIdentity(staffId: 'a');
    expect((await h())!.staffHistoryId, 'h-a');
    await h();
    expect(lookups, 1);
    identity.value = const UserIdentity(staffId: 'b', isAdmin: true);
    final u = (await h())!;
    expect((u.staffId, u.staffHistoryId, u.isAdmin), ('b', 'h-b', true));
    expect(lookups, 2);
  });

  test('履歴が無ければ null(保持しない)', () async {
    lookup = (_) async => null;
    identity.value = const UserIdentity(staffId: 'a');
    expect(await make()(), isNull);
  });

  test('通信の失敗は投げる', () async {
    lookup = (_) async => throw StateError('network');
    identity.value = const UserIdentity(staffId: 'a');
    expect(make()(), throwsStateError);
  });

  test('言語はユーザーの環境に追従し、履歴は取り直さない', () async {
    final h = make();
    identity.value = const UserIdentity(staffId: 'a');
    expect((await h())!.languageCode, 'ja');
    lang = 'en';
    expect((await h())!.languageCode, 'en');
    expect(lookups, 1);
  });

  test('ログアウトで捨て、ログアウト状態は null', () async {
    final h = make();
    identity.value = const UserIdentity(staffId: 'a');
    await h();
    identity.value = null;
    expect(await h(), isNull);
    identity.value = const UserIdentity(staffId: 'a');
    await h();
    expect(lookups, 2);
  });
}
