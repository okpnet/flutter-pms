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

/// 点検の連なり(点検予定 → 予定明細 → 点検実施 → ファイル)の通信テスト(検証用サーバー)。
/// 親は読み取り(取得できること)、ファイルは題名(共通関数)・ファイル(先に保存先へ → trans_file と点検ファイルを 1 トランザクション)・
/// 差し替え・取り消しを確かめる。データを変更する(名前に明記)。後始末で論理削除する。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  EntityFile pending(String n, String name, String type) => EntityFile(
    id: '${EntityFile.pendingPrefix}$n',
    name: name,
    mediaType: type,
  );

  serverTest('点検予定 → 予定明細 → 点検実施を、親の ID ごとに取得できる', (server) async {
    final repos = resourceRepositories(server.provider.client);
    IEntityRepository of(String key) =>
        repos.firstWhere((r) => r.definition.key == key);
    final schedules = await of('inspectionschedule').find(take: 20);
    expect(schedules, isNotEmpty);
    var details = <EntityRecord>[];
    for (final s in schedules) {
      details = await of('scheduledetail').findByParent(s.id);
      if (details.isNotEmpty) {
        expect(details.first.parentId, s.id);
        expect(details.first.valueOf('start'), isNotEmpty);
        break;
      }
    }
    expect(details, isNotEmpty);
    // 親の ID で 1 件を引ける
    expect(
      (await of('scheduledetail').findById(details.first.id))?.id,
      details.first.id,
    );
  });

  serverTest('点検ファイルの登録 → 一覧 → 差し替え → 取り消し(データを変更し、後始末で論理削除する)', (
    server,
  ) async {
    final client = server.provider.client;
    final transfer = _Transfer();
    final repos = resourceRepositories(client, fileTransfer: transfer);
    IEntityRepository of(String key) =>
        repos.firstWhere((r) => r.definition.key == key);
    // 点検実施(trans_inspect_record)を 1 件探す
    String? recordId;
    for (final s in await of('inspectionschedule').find(take: 20)) {
      for (final d in await of('scheduledetail').findByParent(s.id)) {
        final rs = await of('inspectionresult').findByParent(d.id);
        if (rs.isNotEmpty) {
          recordId = rs.first.id;
          break;
        }
      }
      if (recordId != null) break;
    }
    if (recordId == null) return markTestSkipped('点検実施が無い');
    final files = of('inspectionfile');
    String? id;
    try {
      final saved = await files.save(
        EntityRecord(
          id: '',
          parentId: recordId,
          values: {
            'file': pending('1', 'report.pdf', 'application/pdf').toValue(),
          },
        ),
      );
      id = saved.id;
      var row = (await files.findByParent(
        recordId,
      )).firstWhere((r) => r.id == id);
      final f1 = EntityFile.tryParse(row.valueOf('file'))!;
      expect(
        f1.id,
        transfer.uploaded.single,
        reason: 'DB の trans_file_id = app_file_id',
      );
      expect(f1.name, 'report.pdf');
      expect(row.valueOf('regdate'), isNotEmpty);

      await files.save(
        EntityRecord(
          id: id,
          parentId: recordId,
          values: {'file': pending('2', 'photo.jpg', 'image/jpeg').toValue()},
        ),
      );
      row = (await files.findById(id))!;
      expect(
        EntityFile.tryParse(row.valueOf('file'))?.id,
        transfer.uploaded.last,
      );
      expect(transfer.uploaded, hasLength(2));

      await files.remove(id);
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
      if (id != null) await files.remove(id);
    }
  });
}
