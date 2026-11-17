import 'dart:math';

import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:quality/quality.dart';

/// 異常報告のファイル(`compfile`)の取得元の通信テスト(検証用サーバー)。
/// 共有ファイルのつなぎ方(`trans_file` の行 → `trans_complaint_file`)・差し替え・取り消しを確かめる。
/// データを変更する(名前に明記)。後始末で、作った行を論理削除する。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  String uuid() {
    final r = Random.secure();
    String h(int n) =>
        List.generate(n, (_) => r.nextInt(16).toRadixString(16)).join();
    return '${h(8)}-${h(4)}-4${h(3)}-a${h(3)}-${h(12)}';
  }

  group('検証用サーバー: 異常報告のファイル', () {
    serverTest('登録 → 一覧 → 差し替え → 取り消しができる(データを変更し、後始末で論理削除する)', (server) async {
      final client = server.provider.client;
      final repos = qualityRepositories(client);
      final complaint = repos.firstWhere(
        (r) => r.definition.key == 'complaint',
      );
      final files = repos.firstWhere((r) => r.definition.key == 'compfile');
      final complaints = await complaint.find(take: 1);
      if (complaints.isEmpty) return markTestSkipped('異常報告が無い');
      final parent = complaints.first.id;
      final f1 = EntityFile(
        id: uuid(),
        name: 'a.pdf',
        mediaType: 'application/pdf',
      );
      final f2 = EntityFile(id: uuid(), name: 'b.png', mediaType: 'image/png');
      String? id;
      try {
        final saved = await files.save(
          EntityRecord(
            id: '',
            parentId: parent,
            values: {'file': f1.toValue()},
          ),
        );
        id = saved.id;
        var rows = await files.findByParent(parent);
        var mine = rows.firstWhere((r) => r.id == id);
        expect(EntityFile.tryParse(mine.valueOf('file'))?.name, 'a.pdf');
        expect(EntityFile.tryParse(mine.valueOf('file'))?.id, f1.id);
        expect(mine.valueOf('date'), isNotEmpty);

        // 差し替え(新しいファイルの行を作って付け替える)
        await files.save(
          EntityRecord(
            id: id,
            parentId: parent,
            values: {'file': f2.toValue()},
          ),
        );
        mine = (await files.findById(id))!;
        expect(EntityFile.tryParse(mine.valueOf('file'))?.id, f2.id);
        expect(
          EntityFile.tryParse(mine.valueOf('file'))?.mediaType,
          'image/png',
        );

        // 取り消し(論理削除)
        await files.remove(id);
        rows = await files.findByParent(parent);
        expect(rows.any((r) => r.id == id), isFalse);
        expect(await files.findById(id), isNull);
      } finally {
        // 後始末: 作ったファイルの行(binary_data = PocketBase の ID で探す)を論理削除する。つなぎの行は取り消し済み
        final found = await client.query(
          QueryOptions(
            document: gql(
              r'query($ids: [String!]) { allTransFiles(filter: {binaryData: {in: $ids}}) { nodes { transFileId } } }',
            ),
            variables: {
              'ids': [f1.id, f2.id],
            },
            fetchPolicy: FetchPolicy.noCache,
          ),
        );
        for (final n
            in (found.data?['allTransFiles']?['nodes'] as List? ?? const [])) {
          await client.mutate(
            MutationOptions(
              document: gql(
                r'mutation($id: UUID!) { updateTransFileByTransFileId(input: {transFileId: $id, transFilePatch: {remove: true}}) { clientMutationId } }',
              ),
              variables: {'id': (n as Map)['transFileId']},
            ),
          );
        }
        if (id != null) {
          await files.remove(id);
        }
      }
    });

    test('ファイルが無いと、検証エラー(必須)になる', () async {
      final repos = qualityRepositories(
        GraphQLClient(
          link: HttpLink('http://localhost:1'),
          cache: GraphQLCache(),
        ),
      );
      final files = repos.firstWhere((r) => r.definition.key == 'compfile');
      await expectLater(
        files.save(
          const EntityRecord(id: '', parentId: 'x', values: {'file': ''}),
        ),
        throwsA(isA<EntityValidationException>()),
      );
    });
  });
}
