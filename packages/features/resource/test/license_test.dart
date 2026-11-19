import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;
import 'package:resource/resource.dart';

/// 資格(`license`)の通信テスト(検証用サーバー)。呼称(共通関数)・本体(ミューテーション)の登録 → 一覧 → 更新 →
/// コードの重複 → 論理削除を確かめる。データを変更する(名前に明記)。後始末で論理削除する。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  serverTest('資格の登録 → 取得 → 更新 → コードの重複 → 取り消し(データを変更し、後始末で論理削除する)', (
    server,
  ) async {
    final client = server.provider.client;
    // 更新者: ログイン中の担当者(JWT の staff_id)の最新の履歴
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
    final repo = resourceRepositories(
      client,
      auditUser: staffId == null || historyId == null
          ? null
          : () async => AuditUser(staffId: staffId, staffHistoryId: historyId),
    ).firstWhere((r) => r.definition.key == 'license');
    final stamp = DateTime.now().microsecondsSinceEpoch;
    final code = 'TL$stamp';
    final ids = <String>[];
    try {
      final saved = await repo.save(
        EntityRecord(
          id: '',
          values: {
            'code': code,
            'name': 'テスト資格$stamp',
            'pronunciation': 'てすとりきりょう',
            'detail': '説明の文',
            'public_license': 'はい',
            'customer_license': 'いいえ',
            'organization_license': 'はい',
            'remarks': 'メモ',
          },
        ),
      );
      ids.add(saved.id);
      var row = (await repo.findById(saved.id))!;
      expect(row.valueOf('code'), code);
      expect(row.valueOf('name'), 'テスト資格$stamp');
      expect(row.valueOf('pronunciation'), 'てすとりきりょう');
      expect(row.valueOf('detail'), '説明の文');
      expect(row.valueOf('public_license'), 'はい');
      expect(row.valueOf('customer_license'), 'いいえ');
      expect(row.valueOf('remarks'), 'メモ');
      expect((await repo.find(take: 500)).any((r) => r.id == saved.id), isTrue);

      // 更新(変えた項目だけ)。最大を消す
      await repo.save(
        EntityRecord(
          id: saved.id,
          values: {
            ...row.values,
            'name': 'テスト資格$stamp-2',
            'detail': '説明の文2',
            'customer_license': 'はい',
            'remarks': '',
          },
        ),
      );
      row = (await repo.findById(saved.id))!;
      expect(row.valueOf('name'), 'テスト資格$stamp-2');
      expect(row.valueOf('detail'), '説明の文2');
      expect(row.valueOf('customer_license'), 'はい');
      expect(row.valueOf('remarks'), '');
      expect(row.valueOf('public_license'), 'はい', reason: '触らない項目は変わらない');

      // 同じコードの登録は、コードの重複
      await expectLater(
        repo.save(
          EntityRecord(
            id: '',
            values: {
              'code': code,
              'name': '重複',
              'public_license': 'はい',
              'customer_license': 'はい',
              'organization_license': 'はい',
            },
          ),
        ),
        throwsA(
          isA<EntityValidationException>().having(
            (e) => e.errors['code'],
            'code',
            EntityFieldError.duplicate,
          ),
        ),
      );

      // 取り消し(論理削除)
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

  test('名称・コード・区分が無いと、検証エラー(必須)。区分の誤りは選択のエラー', () async {
    final repo = resourceRepositories(
      GraphQLClient(
        link: HttpLink('http://localhost:1'),
        cache: GraphQLCache(),
      ),
    ).firstWhere((r) => r.definition.key == 'license');
    await expectLater(
      repo.save(const EntityRecord(id: '', values: {'code': '', 'name': ''})),
      throwsA(
        isA<EntityValidationException>().having(
          (e) => e.errors.keys.toSet(),
          'keys',
          containsAll(['code', 'name', 'public_license']),
        ),
      ),
    );
    await expectLater(
      repo.save(
        const EntityRecord(
          id: '',
          values: {
            'code': 'x',
            'name': 'x',
            'public_license': 'たぶん',
            'customer_license': 'はい',
            'organization_license': 'はい',
          },
        ),
      ),
      throwsA(
        isA<EntityValidationException>().having(
          (e) => e.errors['public_license'],
          'public_license',
          EntityFieldError.invalidChoice,
        ),
      ),
    );
  });
}
