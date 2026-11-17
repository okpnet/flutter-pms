import 'dart:math';

import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:resource/resource.dart';

String _uuid() {
  final r = Random.secure();
  String h(int n) =>
      List.generate(n, (_) => r.nextInt(16).toRadixString(16)).join();
  return '${h(8)}-${h(4)}-4${h(3)}-a${h(3)}-${h(12)}';
}

/// 保存先(PocketBase)の代役。
class _Transfer implements IEntityFileTransfer {
  final uploaded = <String>[];

  @override
  Future<EntityFile?> pick() async => null;

  @override
  Future<EntityFile> upload(EntityFile picked) async {
    final id = _uuid();
    uploaded.add(id);
    return EntityFile(id: id, name: picked.name, mediaType: picked.mediaType);
  }

  @override
  Future<bool> download(EntityFile file) async => true;
}

/// 設備タグ(`equiptag`)の通信テスト(検証用サーバー)。名称(共通関数)・ファイル(先に保存先へ → trans_file とタグを 1 トランザクション)・
/// 差し替え・取り消しを確かめる。データを変更する(名前に明記)。後始末で論理削除する。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  EntityFile pending(String n, String name, String type) => EntityFile(
    id: '${EntityFile.pendingPrefix}$n',
    name: name,
    mediaType: type,
  );

  serverTest('設備タグの登録 → 一覧 → 更新 → 差し替え → 取り消し(データを変更し、後始末で論理削除する)', (
    server,
  ) async {
    final client = server.provider.client;
    final transfer = _Transfer();
    final tags = resourceRepositories(
      client,
      fileTransfer: transfer,
    ).firstWhere((r) => r.definition.key == 'equiptag');
    final name = 'テストタグ${DateTime.now().microsecondsSinceEpoch}';
    String? id;
    try {
      final saved = await tags.save(
        EntityRecord(
          id: '',
          values: {
            'name': name,
            'file': pending('1', 'tag.png', 'image/png').toValue(),
            'remarks': 'メモ',
          },
        ),
      );
      id = saved.id;
      var row = (await tags.findById(id))!;
      expect(row.valueOf('name'), name);
      expect(row.valueOf('remarks'), 'メモ');
      final f1 = EntityFile.tryParse(row.valueOf('file'))!;
      expect(
        f1.id,
        transfer.uploaded.single,
        reason: 'DB の trans_file_id = app_file_id',
      );
      expect(f1.name, 'tag.png');

      // 名称・備考の更新(ファイルは変えない)
      await tags.save(
        EntityRecord(
          id: id,
          values: {'name': '$name-2', 'file': f1.toValue(), 'remarks': 'メモ2'},
        ),
      );
      row = (await tags.findById(id))!;
      expect(row.valueOf('name'), '$name-2');
      expect(row.valueOf('remarks'), 'メモ2');
      expect(transfer.uploaded, hasLength(1), reason: 'ファイルは上げ直さない');

      // 差し替え
      await tags.save(
        EntityRecord(
          id: id,
          values: {
            'name': '$name-2',
            'file': pending('2', 'tag2.pdf', 'application/pdf').toValue(),
            'remarks': 'メモ2',
          },
        ),
      );
      row = (await tags.findById(id))!;
      expect(
        EntityFile.tryParse(row.valueOf('file'))?.id,
        transfer.uploaded.last,
      );
      expect(transfer.uploaded, hasLength(2));

      await tags.remove(id);
      expect(await tags.findById(id), isNull);
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
      if (id != null) await tags.remove(id);
    }
  });

  test('名称・ファイルが無いと、検証エラー(必須)になる', () async {
    final tags = resourceRepositories(
      GraphQLClient(
        link: HttpLink('http://localhost:1'),
        cache: GraphQLCache(),
      ),
    ).firstWhere((r) => r.definition.key == 'equiptag');
    await expectLater(
      tags.save(const EntityRecord(id: '', values: {'name': '', 'file': ''})),
      throwsA(isA<EntityValidationException>()),
    );
  });
}
