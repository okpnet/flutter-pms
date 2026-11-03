// データを変更する(検証用サーバーへ書き込む)テスト。既定では実行しない(dart_test.yaml の server_write タグ)。
//   flutter test --run-skipped --tags server_write test/server_register_access_paths_test.dart
//
// pms_app の access_paths.csv の(公開でない)ページを、アクセスパスとして登録する。
// 登録済みの usecase_path は飛ばすので、何度実行しても重複しない。登録後に読み直して確かめる。
import 'dart:io';

import 'package:access_control_model/access_control_client.dart';
import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';

void main() {
  test(
    'データを変更する: access_paths.csv のページをアクセスパスとして登録する',
    () async {
      final server = await TestServer.connect();
      if (server == null) return markTestSkipped('検証用サーバーに接続できない');
      // 登録は複数回の呼び出しなので、制限時間の無い接続を使う
      final client = AccessControlClient(
        client: GraphQLClient(
          link: HttpLink(server.url),
          cache: GraphQLCache(),
        ),
      );
      final seeds = AccessPathSeed.parseCsv(
        File(
          '../../../apps/pms_app/doc/contents/access_paths.csv',
        ).readAsStringSync(),
      ).where((s) => !s.isPublic).toList();
      expect(seeds, isNotEmpty);

      final created = await client.registerMissingAccessPaths(seeds);
      // ignore: avoid_print
      print('登録: ${created.length} 件 / 対象 ${seeds.length} 件(${server.url})');

      for (final s in seeds) {
        expect(
          await client.findAccessPathId(s.usecasePath),
          isNotNull,
          reason: s.usecasePath,
        );
      }
      // 2回目は何も登録しない
      expect(await client.registerMissingAccessPaths(seeds), isEmpty);
    },
    tags: 'server_write',
    timeout: const Timeout(Duration(minutes: 10)),
  );
}
