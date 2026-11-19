import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:item/item.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;

/// 品目区分(`itemkind`)の通信テスト(検証用サーバー)。呼称(共通関数)・本体(ミューテーション)の登録 → 取得 → 更新 → 論理削除を
/// 確かめる。データを変更する(名前に明記)。後始末で論理削除する。一般ユーザーの資格情報を渡して実行する。
void main() {
  serverTest('品目区分の登録 → 取得 → 更新 → 取り消し(データを変更し、後始末で論理削除する)', (server) async {
    final client = server.provider.client;
    final staff = await client.query(
      QueryOptions(
        document: gql(
          r'''query { allInfoStaffs(filter: {code: {equalTo: "TANAKA"}}) { nodes { infoStaffId historyInfoStaffsByInfoStaffId(orderBy: REVISION_DESC, first: 1) { nodes { historyId } } } } }''',
        ),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final node = (staff.data?['allInfoStaffs']['nodes'] as List?)?.first;
    final staffId = node?['infoStaffId'] as String?;
    final historyId =
        (node?['historyInfoStaffsByInfoStaffId']['nodes'] as List?)
                ?.first['historyId']
            as String?;
    final repo = itemRepositories(
      client,
      auditUser: staffId == null || historyId == null
          ? null
          : () async => AuditUser(staffId: staffId, staffHistoryId: historyId),
    ).firstWhere((r) => r.definition.key == 'itemkind');
    final stamp = DateTime.now().microsecondsSinceEpoch;
    String? id;
    try {
      final saved = await repo.save(
        EntityRecord(
          id: '',
          values: {
            'code': 'TK$stamp',
            'name': 'テスト区分$stamp',
            'pronunciation': 'てすとくぶん',
            'nickname': '略',
            'remarks': 'メモ',
          },
        ),
      );
      id = saved.id;
      var row = (await repo.findById(id))!;
      expect(row.valueOf('code'), 'TK$stamp');
      expect(row.valueOf('name'), 'テスト区分$stamp');
      expect(row.valueOf('pronunciation'), 'てすとくぶん');
      expect(row.valueOf('nickname'), '略');
      expect(row.valueOf('remarks'), 'メモ');
      expect((await repo.find(take: 500)).any((r) => r.id == id), isTrue);

      await repo.save(
        EntityRecord(
          id: id,
          values: {
            ...row.values,
            'name': 'テスト区分$stamp-2',
            'nickname': '',
            'remarks': '',
          },
        ),
      );
      row = (await repo.findById(id))!;
      expect(row.valueOf('name'), 'テスト区分$stamp-2');
      expect(row.valueOf('nickname'), '');
      expect(row.valueOf('remarks'), '');
      expect(row.valueOf('pronunciation'), 'てすとくぶん', reason: '触らない項目は変わらない');

      await repo.remove(id);
      expect(await repo.findById(id), isNull);
    } finally {
      if (id != null) {
        try {
          await repo.remove(id);
        } on Object {
          // すでに取り消し済み
        }
      }
    }
  });

  test('名称が無いと、検証エラー(必須)', () async {
    final repo = itemRepositories(
      GraphQLClient(
        link: HttpLink('http://localhost:1'),
        cache: GraphQLCache(),
      ),
    ).firstWhere((r) => r.definition.key == 'itemkind');
    await expectLater(
      repo.save(const EntityRecord(id: '', values: {'name': ''})),
      throwsA(isA<EntityValidationException>()),
    );
  });
}
