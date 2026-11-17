import 'dart:math';

import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:organization/organization.dart';

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

/// 担当者のアイコン(`stafficon`)の通信テスト(検証用サーバー)。名称(共通関数)・担当者の履歴・ファイル(先に保存先へ →
/// trans_file とアイコンを 1 トランザクション)・差し替え・取り消しを確かめる。データを変更する(名前に明記)。後始末で論理削除する。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  EntityFile pending(String n, String name, String type) => EntityFile(
    id: '${EntityFile.pendingPrefix}$n',
    name: name,
    mediaType: type,
  );

  serverTest('担当者のアイコンの登録 → 一覧 → 更新 → 差し替え → 取り消し(データを変更し、後始末で論理削除する)', (
    server,
  ) async {
    final client = server.provider.client;
    final transfer = _Transfer();
    final repos = organizationRepositories(client, fileTransfer: transfer);
    final staff = repos.firstWhere((r) => r.definition.key == 'staff');
    final icons = repos.firstWhere((r) => r.definition.key == 'stafficon');
    final staffRows = await staff.find(take: 1);
    if (staffRows.isEmpty) return markTestSkipped('担当者が無い');
    final parent = staffRows.first.id;
    final name = 'テストアイコン${DateTime.now().microsecondsSinceEpoch}';
    String? id;
    try {
      final saved = await icons.save(
        EntityRecord(
          id: '',
          parentId: parent,
          values: {
            'name': name,
            'file': pending('1', 'icon.png', 'image/png').toValue(),
            'remarks': '',
          },
        ),
      );
      id = saved.id;
      var row = (await icons.findByParent(
        parent,
      )).firstWhere((r) => r.id == id);
      expect(row.valueOf('name'), name);
      final f1 = EntityFile.tryParse(row.valueOf('file'))!;
      expect(
        f1.id,
        transfer.uploaded.single,
        reason: 'DB の trans_file_id = app_file_id',
      );

      await icons.save(
        EntityRecord(
          id: id,
          parentId: parent,
          values: {'name': '$name-2', 'file': f1.toValue(), 'remarks': 'メモ'},
        ),
      );
      row = (await icons.findById(id))!;
      expect(row.valueOf('name'), '$name-2');
      expect(row.valueOf('remarks'), 'メモ');
      expect(transfer.uploaded, hasLength(1));

      await icons.save(
        EntityRecord(
          id: id,
          parentId: parent,
          values: {
            'name': '$name-2',
            'file': pending('2', 'icon2.jpg', 'image/jpeg').toValue(),
            'remarks': 'メモ',
          },
        ),
      );
      row = (await icons.findById(id))!;
      expect(
        EntityFile.tryParse(row.valueOf('file'))?.id,
        transfer.uploaded.last,
      );

      await icons.remove(id);
      expect(await icons.findById(id), isNull);
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
      if (id != null) await icons.remove(id);
    }
  });
}
