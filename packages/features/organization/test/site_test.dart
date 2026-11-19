import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:organization/organization.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;

/// 事業所(`site`)の通信テスト(検証用サーバー)。呼称(共通関数)・住所・事業所本体(入れ子のミューテーション)の
/// 登録 → 取得 → 更新 → コードの重複 → 論理削除を確かめる。データを変更する。後始末で論理削除する。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  serverTest('事業所の登録(住所つき) → 取得 → 更新 → コードの重複 → 取り消し', (server) async {
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
    final repo = organizationRepositories(
      client,
      auditUser: staffId == null || historyId == null
          ? null
          : () async => AuditUser(staffId: staffId, staffHistoryId: historyId),
    ).firstWhere((r) => r.definition.key == 'site');
    final stamp = DateTime.now().microsecondsSinceEpoch;
    final code = 'TS$stamp';
    final ids = <String>[];
    try {
      final saved = await repo.save(
        EntityRecord(
          id: '',
          values: {
            'code': code,
            'name': 'テスト事業所$stamp',
            'pronunciation': 'てすとじぎょうしょ',
            'zip_code': '100-0001',
            'address1': '東京都千代田区',
            'address2': '千代田1-1',
            'building': 'テストビル',
            'phone': '03-0000-0000',
          },
        ),
      );
      ids.add(saved.id);
      var row = (await repo.findById(saved.id))!;
      expect(row.valueOf('code'), code);
      expect(row.valueOf('name'), 'テスト事業所$stamp');
      expect(row.valueOf('pronunciation'), 'てすとじぎょうしょ');
      expect(row.valueOf('zip_code'), '100-0001');
      expect(row.valueOf('address1'), '東京都千代田区');
      expect(row.valueOf('building'), 'テストビル');
      expect(row.valueOf('phone'), '03-0000-0000');
      expect((await repo.find(take: 500)).any((r) => r.id == saved.id), isTrue);

      // 更新(変えた項目だけ)。建物を消し、FAX を足す
      await repo.save(
        EntityRecord(
          id: saved.id,
          values: {
            ...row.values,
            'name': 'テスト事業所$stamp-2',
            'building': '',
            'fax_number': '03-1111-1111',
          },
        ),
      );
      row = (await repo.findById(saved.id))!;
      expect(row.valueOf('name'), 'テスト事業所$stamp-2');
      expect(row.valueOf('building'), '');
      expect(row.valueOf('fax_number'), '03-1111-1111');
      expect(row.valueOf('address2'), '千代田1-1', reason: '触らない項目は変わらない');

      // 同じコードの登録は、コードの重複
      await expectLater(
        repo.save(EntityRecord(id: '', values: {'code': code, 'name': '重複'})),
        throwsA(
          isA<EntityValidationException>().having(
            (e) => e.errors['code'],
            'code',
            EntityFieldError.duplicate,
          ),
        ),
      );

      // 住所なしの事業所に、あとから住所を足す
      final bare = await repo.save(
        EntityRecord(id: '', values: {'code': '${code}B', 'name': '住所なし'}),
      );
      ids.add(bare.id);
      await repo.save(
        EntityRecord(
          id: bare.id,
          values: {...bare.values, 'zip_code': '530-0001'},
        ),
      );
      expect((await repo.findById(bare.id))!.valueOf('zip_code'), '530-0001');

      await repo.remove(saved.id);
      expect(await repo.findById(saved.id), isNull);
    } finally {
      for (final id in ids) {
        try {
          await repo.remove(id);
        } on Object {
          // すでに取り消し済み
        }
      }
    }
  });

  test('名称・コードが無いと、検証エラー(必須)', () async {
    final repo = organizationRepositories(
      GraphQLClient(
        link: HttpLink('http://localhost:1'),
        cache: GraphQLCache(),
      ),
    ).firstWhere((r) => r.definition.key == 'site');
    await expectLater(
      repo.save(const EntityRecord(id: '', values: {'code': '', 'name': ''})),
      throwsA(
        isA<EntityValidationException>().having(
          (e) => e.errors.keys.toSet(),
          'keys',
          containsAll(['code', 'name']),
        ),
      ),
    );
  });
}
