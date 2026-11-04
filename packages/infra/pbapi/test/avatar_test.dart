import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:pbapi/pbapi.dart';

import 'support/fake_pocketbase.dart';

void main() {
  group('アバター(user_avatars)', () {
    late FakePocketBase server;
    late AvatarService avatars;

    Map<String, Object?> record({
      String id = 'a1',
      String user = 'u2',
      String image = 'img_abc.png',
    }) => {
      'id': id,
      'collectionId': 'c_user_avatars',
      'collectionName': 'user_avatars',
      'user': user,
      'image': image,
      'updated_by': 'u1',
      'updated': '2026-11-04 10:00:00.000Z',
    };

    Map<String, Object?> list(List<Object?> items) => {
      'page': 1,
      'perPage': 1,
      'totalItems': items.length,
      'totalPages': items.isEmpty ? 0 : 1,
      'items': items,
    };

    setUp(() async {
      server = FakePocketBase();
      server.on(
        'POST',
        '/api/collections/users/auth-with-password',
        (r) => server.json(authBody()),
      );
      final connection = await server.open();
      await SessionService(connection).login('a', 'b');
      avatars = AvatarService(connection);
      server.requests.clear();
    });

    test('取得: 未登録はnull、登録済みは識別情報を返す。キャッシュのキーは画像のファイル名', () async {
      server.on(
        'GET',
        '/api/collections/user_avatars/records',
        (r) => server.json(list([])),
      );
      expect(await avatars.find('u2'), isNull);

      server.on(
        'GET',
        '/api/collections/user_avatars/records',
        (r) => server.json(list([record()])),
      );
      final avatar = (await avatars.find('u2'))!;
      expect(avatar.recordId, 'a1');
      expect(avatar.userId, 'u2');
      expect(avatar.imageName, 'img_abc.png');
      expect(avatar.updatedBy, 'u1');
      expect(avatar.cacheKey('128x128'), 'avatar:img_abc.png:128x128');
      expect(avatar.cacheKey(), 'avatar:img_abc.png:orig');
      // 絞り込みはユーザーIDを値として渡す(式に埋め込まない)
      final get = server.where('GET', '/api/collections/user_avatars/records');
      expect(get.last.url.queryParameters['filter'], contains('u2'));
    });

    test('未ログインは通信せずunauthorized', () async {
      final anonymous = AvatarService(await FakePocketBase().open());
      await expectLater(
        anonymous.find('u2'),
        throwsA(
          isA<PbException>().having(
            (e) => e.kind,
            'kind',
            PbFailureKind.unauthorized,
          ),
        ),
      );
    });

    test('複数ユーザーをまとめて取得する(50件ずつ・重複は除く)', () async {
      server.on(
        'GET',
        '/api/collections/user_avatars/records',
        (r) => server.json({
          'page': 1,
          'perPage': 500,
          'totalItems': 2,
          'totalPages': 1,
          'items': [record(user: 'u2'), record(id: 'a2', user: 'u3')],
        }),
      );
      final map = await avatars.findMany(['u2', 'u3', 'u2']);
      expect(map.keys, unorderedEquals(['u2', 'u3']));
      expect(
        server.where('GET', '/api/collections/user_avatars/records'),
        hasLength(1),
      );
      expect(await avatars.findMany([]), isEmpty);

      // 60人は2回に分けて取る
      server.requests.clear();
      await avatars.findMany([for (var i = 0; i < 60; i++) 'u$i']);
      expect(
        server.where('GET', '/api/collections/user_avatars/records'),
        hasLength(2),
      );
    });

    test('登録: 無ければ作成(user+image)。あれば差し替え(PATCH)', () async {
      server.on(
        'GET',
        '/api/collections/user_avatars/records',
        (r) => server.json(list([])),
      );
      server.on(
        'POST',
        '/api/collections/user_avatars/records',
        (r) => server.json(record()),
      );
      final created = await avatars.set(
        'u2',
        Uint8List.fromList([1, 2, 3]),
        filename: 'me.png',
      );
      expect(created.imageName, 'img_abc.png');
      final body = server
          .where('POST', '/api/collections/user_avatars/records')
          .single
          .body;
      expect(body, contains('name="image"'));
      expect(body, contains('filename="me.png"'));
      expect(body, contains('"user":"u2"'));

      server.requests.clear();
      server.on(
        'GET',
        '/api/collections/user_avatars/records',
        (r) => server.json(list([record()])),
      );
      server.on(
        'PATCH',
        '/api/collections/user_avatars/records/a1',
        (r) => server.json(record(image: 'img_new.png')),
      );
      final replaced = await avatars.set('u2', Uint8List(1));
      expect(replaced.imageName, 'img_new.png');
      expect(
        server.where('POST', '/api/collections/user_avatars/records'),
        isEmpty,
      );
      // 持ち主(user)は変更できないので、差し替えでは送らない
      expect(
        server
            .where('PATCH', '/api/collections/user_avatars/records/a1')
            .single
            .body,
        isNot(contains('"user"')),
      );
    });

    test('権限が無いとき: 登録は400=validation、差し替え・削除は404=notFound', () async {
      server.on(
        'GET',
        '/api/collections/user_avatars/records',
        (r) => server.json(list([])),
      );
      server.on(
        'POST',
        '/api/collections/user_avatars/records',
        (r) => server.json({'status': 400, 'message': 'denied'}, status: 400),
      );
      await expectLater(
        avatars.set('u9', Uint8List(1)),
        throwsA(
          isA<PbException>().having(
            (e) => e.kind,
            'kind',
            PbFailureKind.validation,
          ),
        ),
      );

      server.on(
        'GET',
        '/api/collections/user_avatars/records',
        (r) => server.json(list([record(user: 'u9')])),
      );
      server.on(
        'PATCH',
        '/api/collections/user_avatars/records/a1',
        (r) => server.json({'status': 404, 'message': 'x'}, status: 404),
      );
      server.on(
        'DELETE',
        '/api/collections/user_avatars/records/a1',
        (r) => server.json({'status': 404, 'message': 'x'}, status: 404),
      );
      for (final call in [
        () => avatars.set('u9', Uint8List(1)),
        () => avatars.delete('u9'),
      ]) {
        await expectLater(
          call(),
          throwsA(
            isA<PbException>().having(
              (e) => e.kind,
              'kind',
              PbFailureKind.notFound,
            ),
          ),
        );
      }
    });

    test('削除: 未登録なら何もしない', () async {
      server.on(
        'GET',
        '/api/collections/user_avatars/records',
        (r) => server.json(list([])),
      );
      await avatars.delete('u2');
      expect(
        server.where('DELETE', '/api/collections/user_avatars/records/a1'),
        isEmpty,
      );

      server.on(
        'GET',
        '/api/collections/user_avatars/records',
        (r) => server.json(list([record()])),
      );
      server.on(
        'DELETE',
        '/api/collections/user_avatars/records/a1',
        (r) => http.Response('', 204),
      );
      await avatars.delete('u2');
      expect(
        server.where('DELETE', '/api/collections/user_avatars/records/a1'),
        hasLength(1),
      );
    });

    test('画像の取得: tokenを都度取り、サムネイルを指定できる。URLは例外に出さない', () async {
      const avatar = UserAvatar(
        recordId: 'a1',
        userId: 'u2',
        imageName: 'img_abc.png',
      );
      server.on('POST', '/api/files/token', (r) => server.json({'token': 'tk'}));
      server.on(
        'GET',
        '/api/files/user_avatars/a1/img_abc.png',
        (r) => http.Response.bytes(utf8.encode('IMG'), 200),
      );
      expect(
        utf8.decode(await avatars.download(avatar, thumb: '128x128')),
        'IMG',
      );
      final get = server
          .where('GET', '/api/files/user_avatars/a1/img_abc.png')
          .single;
      expect(get.url.queryParameters['thumb'], '128x128');
      expect(get.url.queryParameters['token'], 'tk');

      // 画像が取れないときは種類で返し、tokenを含む文字列を出さない
      server.on(
        'GET',
        '/api/files/user_avatars/a1/img_abc.png',
        (r) => http.Response('', 404),
      );
      await expectLater(
        avatars.download(avatar),
        throwsA(
          isA<PbException>()
              .having((e) => e.kind, 'kind', PbFailureKind.notFound)
              .having((e) => '$e', 'text', isNot(contains('tk'))),
        ),
      );
    });

    test('不正なユーザーID・サムネイルはArgumentError(通信しない)', () async {
      for (final id in ['', 'a b', '../x']) {
        await expectLater(avatars.find(id), throwsArgumentError, reason: id);
      }
      const avatar = UserAvatar(
        recordId: 'a1',
        userId: 'u2',
        imageName: 'img_abc.png',
      );
      await expectLater(
        avatars.download(avatar, thumb: '999x999'),
        throwsArgumentError,
      );
      expect(server.requests, isEmpty);
    });
  });
}
