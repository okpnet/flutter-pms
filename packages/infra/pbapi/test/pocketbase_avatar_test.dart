// アバター(user_avatars)の結合テスト。テスト用 PocketBase(Docker のテスト環境)に対して行う。
//
// 使い捨てのユーザー(本人・他の一般ユーザー・管理者)を作り、終わったらユーザーごと削除する
// (アバターはユーザーの削除で連動削除される)。テスト専用の名前を使う。本番のサーバーには実行しない。
// 管理者(superuser)の資格情報が要る(ユーザーの先行登録と後始末のため)。コードや Git には書かず、実行時に渡す:
//
//   flutter test test/pocketbase_avatar_test.dart \
//     --dart-define=PMS_TEST_POCKETBASE_URL=http://192.168.1.103:8090/api \
//     --dart-define=PMS_TEST_POCKETBASE_ADMIN_EMAIL=... \
//     --dart-define=PMS_TEST_POCKETBASE_ADMIN_PASSWORD=...
//
// 資格情報が無い・接続できないときはテストを中止(skip)する。
@Tags(['server'])
library;

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:pbapi/pbapi.dart';
import 'package:pocketbase/pocketbase.dart';

import 'support/fake_pocketbase.dart';

const _url = String.fromEnvironment(
  'PMS_TEST_POCKETBASE_URL',
  defaultValue: 'http://192.168.1.103:8090/api',
);
const _adminEmail = String.fromEnvironment('PMS_TEST_POCKETBASE_ADMIN_EMAIL');
const _adminPassword = String.fromEnvironment(
  'PMS_TEST_POCKETBASE_ADMIN_PASSWORD',
);

/// 1x1 の PNG(2種類。差し替えでファイル名が変わることの確認に使う)。
final _pngA = base64Decode(
  'iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mP8z8BQDwAEhQGAhKmMIQAAAABJRU5ErkJggg==',
);
final _pngB = base64Decode(
  'iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAIAAACQd1PeAAAADElEQVR4nGP4z8AAAAMBAQDJ/pLvAAAAAElFTkSuQmCC',
);

const _password = 'Passw0rd-Avatar-1';

Matcher _failure(PbFailureKind kind) => throwsA(
  isA<PbException>().having((e) => e.kind, 'kind', kind),
);

void main() {
  final suffix = DateTime.now().millisecondsSinceEpoch.toRadixString(36);
  final names = {
    'self': 'pbt.avself.$suffix',
    'other': 'pbt.avother.$suffix',
    'admin': 'pbt.avadmin.$suffix',
  };

  String? skipReason;
  late PocketBase superuser;
  final ids = <String, String>{}; // 役割 → PocketBase のユーザーID
  final services = <String, AvatarService>{};

  Future<PbConnection> open() =>
      PbConnection.open(url: _url, logger: RecordingLogger());

  setUpAll(() async {
    if (_adminEmail.isEmpty || _adminPassword.isEmpty) {
      skipReason = '管理者の資格情報(PMS_TEST_POCKETBASE_ADMIN_*)が渡されていない';
      return;
    }
    final uri = Uri.parse(_url);
    try {
      (await Socket.connect(
        uri.host,
        uri.port,
        timeout: const Duration(seconds: 3),
      )).destroy();
    } catch (_) {
      skipReason = '$_url に接続できない';
      return;
    }
    superuser = PocketBase(PbEndpoint.parse(_url).baseUrl);
    await superuser
        .collection('_superusers')
        .authWithPassword(_adminEmail, _adminPassword);

    var n = 0;
    for (final role in names.keys) {
      n++;
      // 管理者が先に登録して有効化コードを発行する(メールは送らない)。role を付けられるのは superuser だけ。
      final r = await superuser.send(
        '/api/app/admin/users',
        method: 'POST',
        body: {
          'username': names[role],
          'app_user_id': 'PBAV-$n',
          'mail': false,
          if (role == 'admin') 'role': 'admin',
        },
      );
      final connection = await open();
      final session = SessionService(connection);
      await AccountService(
        connection,
        session,
      ).acceptCode(username: names[role]!, code: '${r['code']}', password: _password);
      final s = await session.login(names[role]!, _password);
      ids[role] = s.userId;
      services[role] = AvatarService(connection);
    }
  });

  tearDownAll(() async {
    if (skipReason != null) return;
    for (final name in names.values) {
      try {
        final u = await superuser
            .collection('users')
            .getFirstListItem(superuser.filter('username = {:u}', {'u': name}));
        await superuser.collection('users').delete(u.id); // アバターは連動削除
      } catch (_) {}
    }
  });

  Future<void> Function() onServer(Future<void> Function() body) => () async {
    if (skipReason != null) {
      markTestSkipped(skipReason!);
      return;
    }
    await body();
  };

  test(
    '本人は登録・取得・差し替え・削除でき、差し替えるとファイル名が変わる',
    onServer(() async {
      final me = services['self']!;
      final id = ids['self']!;
      expect(await me.find(id), isNull);

      final first = await me.set(id, Uint8List.fromList(_pngA));
      expect(first.userId, id);
      expect(first.updatedBy, id);
      expect(await me.download(first), isNotEmpty);
      expect(await me.download(first, thumb: '128x128'), isNotEmpty);

      final second = await me.set(id, Uint8List.fromList(_pngB));
      expect(second.recordId, first.recordId, reason: '1人1枚。差し替えは同じレコード');
      expect(second.imageName, isNot(first.imageName));
      expect(second.cacheKey(), isNot(first.cacheKey()));

      expect((await me.findMany([id, ids['other']!])).keys, [id]);

      await me.delete(id);
      expect(await me.find(id), isNull);
      await me.delete(id); // 未登録なら何もしない
    }),
  );

  test(
    '他の一般ユーザーは、他人のアバターを登録・差し替え・削除できない(閲覧はできる)',
    onServer(() async {
      final owner = services['self']!;
      final other = services['other']!;
      final id = ids['self']!;

      await expectLater(
        other.set(id, Uint8List.fromList(_pngA)),
        _failure(PbFailureKind.validation),
        reason: '登録は 400',
      );

      final mine = await owner.set(id, Uint8List.fromList(_pngA));
      expect((await other.find(id))?.recordId, mine.recordId, reason: '閲覧は全員');
      await expectLater(
        other.set(id, Uint8List.fromList(_pngB)),
        _failure(PbFailureKind.notFound),
        reason: '差し替えは 404',
      );
      await expectLater(other.delete(id), _failure(PbFailureKind.notFound));
      expect((await owner.find(id))?.imageName, mine.imageName);
      await owner.delete(id);
    }),
  );

  test(
    '管理者は、他のユーザーのアバターを登録・差し替え・削除できる',
    onServer(() async {
      final admin = services['admin']!;
      final id = ids['other']!;

      final created = await admin.set(id, Uint8List.fromList(_pngA));
      expect(created.userId, id);
      expect(created.updatedBy, ids['admin'], reason: '最後に登録した人が管理者');

      final replaced = await admin.set(id, Uint8List.fromList(_pngB));
      expect(replaced.imageName, isNot(created.imageName));
      expect((await services['other']!.find(id))?.imageName, replaced.imageName);

      await admin.delete(id);
      expect(await services['other']!.find(id), isNull);
    }),
  );

  test(
    '画像でないファイル(拡張子だけ画像)と大きすぎるファイルは、validation で断られる',
    onServer(() async {
      final me = services['self']!;
      final id = ids['self']!;
      await expectLater(
        me.set(id, Uint8List.fromList(utf8.encode('not an image'))),
        _failure(PbFailureKind.validation),
      );
      await expectLater(
        me.set(id, Uint8List(3 * 1024 * 1024)),
        _failure(PbFailureKind.validation),
      );
      expect(await me.find(id), isNull);
    }),
  );

  test(
    '未ログインでは取得できない(通信しない)',
    onServer(() async {
      final anonymous = AvatarService(await open());
      await expectLater(
        anonymous.find(ids['self']!),
        _failure(PbFailureKind.unauthorized),
      );
    }),
  );
}
