import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:quality/quality.dart';

/// 保存先(PocketBase)の代役。上げた ID を記録し、失敗も再現する。
class _Transfer implements IEntityFileTransfer {
  final uploaded = <String, String>{}; // app_file_id → 仮の ID
  bool failUpload = false;

  @override
  Future<EntityFile?> pick() async => null;

  @override
  Future<void> upload(EntityFile picked, String appFileId) async {
    if (failUpload) throw StateError('boom');
    uploaded[appFileId] = picked.id;
  }

  @override
  Future<bool> download(EntityFile file) async => true;
}

/// 異常報告のファイル(`compfile`)の取得元の通信テスト(検証用サーバー)。
/// 保存の順(`trans_file` の行 → その ID で保存先へ → つなぎ)・差し替え・取り消し・上げる失敗を確かめる。
/// データを変更する(名前に明記)。後始末で、作った行を論理削除する。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  EntityFile pending(String n, String name, String type) => EntityFile(
    id: '${EntityFile.pendingPrefix}$n',
    name: name,
    mediaType: type,
  );

  group('検証用サーバー: 異常報告のファイル', () {
    serverTest(
      '登録 → 一覧 → 差し替え → 取り消しができる。保存先へは DB が採番した ID で上がる(データを変更し、後始末で論理削除する)',
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
          // 保存先へは、DB が採番した trans_file_id で 1 回上がった(仮の ID ではない)
          expect(transfer.uploaded, hasLength(1));
          final dbId1 = transfer.uploaded.keys.single;
          expect(transfer.uploaded[dbId1], 'pending:1');
          expect(EntityFile.tryParse(saved.valueOf('file'))?.id, dbId1);

          var rows = await files.findByParent(parent);
          var mine = rows.firstWhere((r) => r.id == id);
          final f1 = EntityFile.tryParse(mine.valueOf('file'))!;
          expect(f1.id, dbId1);
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

          // 差し替え(選び直し: 新しい行・ファイルを作って付け替える)
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
          expect(f2.id, isNot(dbId1));
          expect(transfer.uploaded.containsKey(f2.id), isTrue);
          expect(f2.mediaType, 'image/png');

          // 取り消し(論理削除)
          await files.remove(id);
          rows = await files.findByParent(parent);
          expect(rows.any((r) => r.id == id), isFalse);
          expect(await files.findById(id), isNull);
        } finally {
          for (final fileId in transfer.uploaded.keys) {
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

    serverTest('保存先へ上げるのに失敗したら、つながず、作ったファイルの行も取り消す(データを変更し、後始末で論理削除する)', (
      server,
    ) async {
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
      // 作った行は論理削除されている(名前で探しても、有効な行は無い)
      final found = await client.query(
        QueryOptions(
          document: gql(
            r'query($n: String!) { allTransFiles(filter: {name: {equalTo: $n}, remove: {equalTo: false}}) { totalCount } }',
          ),
          variables: {'n': marker},
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
      expect(found.data?['allTransFiles']?['totalCount'], 0);
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
