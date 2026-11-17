import 'dart:math';

import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:quality/quality.dart';

String _uuid() {
  final r = Random.secure();
  String h(int n) =>
      List.generate(n, (_) => r.nextInt(16).toRadixString(16)).join();
  return '${h(8)}-${h(4)}-4${h(3)}-a${h(3)}-${h(12)}';
}

/// 保存先(PocketBase)の代役。新しい UUID で「上げた」ことにし、失敗も再現する。
class _Transfer implements IEntityFileTransfer {
  final uploaded = <String>[]; // 上げた app_file_id
  bool failUpload = false;

  @override
  Future<EntityFile?> pick() async => null;

  @override
  Future<EntityFile> upload(EntityFile picked) async {
    if (failUpload) throw StateError('boom');
    final id = _uuid();
    uploaded.add(id);
    return EntityFile(id: id, name: picked.name, mediaType: picked.mediaType);
  }

  @override
  Future<bool> download(EntityFile file) async => true;
}

/// 異常報告のファイル(`compfile`)の取得元の通信テスト(検証用サーバー)。
/// 保存の順(先に保存先へ上げる → `trans_file` とつなぎを 1 トランザクションで登録)・差し替え・取り消し・失敗時を確かめる。
/// データを変更する(名前に明記)。後始末で、作った行を論理削除する。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  EntityFile pending(String n, String name, String type) => EntityFile(
    id: '${EntityFile.pendingPrefix}$n',
    name: name,
    mediaType: type,
  );

  Future<int> filesNamed(
    GraphQLClient client,
    String name, {
    required bool activeOnly,
  }) async {
    final filter = activeOnly
        ? '{name: {equalTo: \$n}, remove: {equalTo: false}}'
        : '{name: {equalTo: \$n}}';
    final found = await client.query(
      QueryOptions(
        document: gql(
          'query(\$n: String!) { allTransFiles(filter: $filter) { totalCount } }',
        ),
        variables: {'n': name},
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    return found.data?['allTransFiles']?['totalCount'] as int;
  }

  group('検証用サーバー: 異常報告のファイル', () {
    serverTest(
      '登録 → 一覧 → 差し替え → 取り消しができる。DB の trans_file_id は、保存先へ上げた ID と同じ(データを変更し、後始末で論理削除する)',
      (server) async {
        final client = server.provider.client;
        final transfer = _Transfer();
        final repos = qualityRepositories(client, fileTransfer: transfer);
        final complaint = repos.firstWhere(
          (r) => r.definition.key == 'complaint',
        );
        final files = repos.firstWhere((r) => r.definition.key == 'compfile');
        final complaints = await complaint.find(take: 1);
        if (complaints.isEmpty) return markTestSkipped('異常報告が無い');
        final parent = complaints.first.id;
        String? id;
        try {
          final saved = await files.save(
            EntityRecord(
              id: '',
              parentId: parent,
              values: {
                'file': pending('1', 'a.pdf', 'application/pdf').toValue(),
              },
            ),
          );
          id = saved.id;
          expect(transfer.uploaded, hasLength(1));
          final appFileId1 = transfer.uploaded.single;

          var rows = await files.findByParent(parent);
          var mine = rows.firstWhere((r) => r.id == id);
          final f1 = EntityFile.tryParse(mine.valueOf('file'))!;
          // DB の trans_file_id が、保存先へ上げた ID(app_file_id)と同じ
          expect(f1.id, appFileId1);
          expect(f1.name, 'a.pdf');
          expect(f1.mediaType, 'application/pdf');
          expect(f1.isPending, isFalse);
          expect(mine.valueOf('date'), isNotEmpty);

          // 変えずに保存し直しても、上げ直さない
          await files.save(
            EntityRecord(
              id: id,
              parentId: parent,
              values: {'file': f1.toValue()},
            ),
          );
          expect(transfer.uploaded, hasLength(1));

          // 差し替え(選び直し: 新しいファイルを上げ、新しい行を作りながら付け替える)
          await files.save(
            EntityRecord(
              id: id,
              parentId: parent,
              values: {'file': pending('2', 'b.png', 'image/png').toValue()},
            ),
          );
          expect(transfer.uploaded, hasLength(2));
          mine = (await files.findById(id))!;
          final f2 = EntityFile.tryParse(mine.valueOf('file'))!;
          expect(f2.id, transfer.uploaded.last);
          expect(f2.mediaType, 'image/png');

          // 取り消し(論理削除)
          await files.remove(id);
          rows = await files.findByParent(parent);
          expect(rows.any((r) => r.id == id), isFalse);
          expect(await files.findById(id), isNull);
        } finally {
          for (final fileId in transfer.uploaded) {
            await client.mutate(
              MutationOptions(
                document: gql(
                  r'mutation($id: UUID!) { updateTransFileByTransFileId(input: {transFileId: $id, transFilePatch: {remove: true}}) { clientMutationId } }',
                ),
                variables: {'id': fileId},
              ),
            );
          }
          if (id != null) {
            await files.remove(id);
          }
        }
      },
    );

    serverTest('保存先へ上げるのに失敗したら、DB には何も作らない', (server) async {
      final client = server.provider.client;
      final transfer = _Transfer()..failUpload = true;
      final repos = qualityRepositories(client, fileTransfer: transfer);
      final complaint = repos.firstWhere(
        (r) => r.definition.key == 'complaint',
      );
      final files = repos.firstWhere((r) => r.definition.key == 'compfile');
      final complaints = await complaint.find(take: 1);
      if (complaints.isEmpty) return markTestSkipped('異常報告が無い');
      final parent = complaints.first.id;
      final before = (await files.findByParent(parent)).length;
      final marker = 'fail-${DateTime.now().microsecondsSinceEpoch}.bin';
      await expectLater(
        files.save(
          EntityRecord(
            id: '',
            parentId: parent,
            values: {'file': pending('x', marker, '').toValue()},
          ),
        ),
        throwsA(isA<StateError>()),
      );
      expect((await files.findByParent(parent)).length, before);
      expect(await filesNamed(client, marker, activeOnly: false), 0);
    });

    serverTest('DB の登録に失敗したら(親が無い)、全部ロールバックされ、trans_file の行は残らない', (
      server,
    ) async {
      final client = server.provider.client;
      final transfer = _Transfer();
      final repos = qualityRepositories(client, fileTransfer: transfer);
      final files = repos.firstWhere((r) => r.definition.key == 'compfile');
      final marker = 'orphan-${DateTime.now().microsecondsSinceEpoch}.bin';
      await expectLater(
        files.save(
          EntityRecord(
            id: '',
            // 存在しない異常報告(つなぎの登録が外部キーで失敗する)
            parentId: '00000000-0000-4000-8000-000000000000',
            values: {'file': pending('o', marker, '').toValue()},
          ),
        ),
        throwsA(anything),
      );
      expect(
        transfer.uploaded,
        hasLength(1),
        reason: '保存先へは上がった(参照されないファイルだけが残る)',
      );
      // 論理削除ではなく、行そのものが無い(ロールバック)
      expect(await filesNamed(client, marker, activeOnly: false), 0);
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
