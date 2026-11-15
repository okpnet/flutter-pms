import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:shared_master/shared_master.dart';

/// 共有マスタの取得元(GraphQL 版)の通信テスト(検証用サーバー)。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  group('検証用サーバー: 共有マスタの取得元', () {
    serverTest('利害関係者の一覧を、画面の値(名称は言語コード ja、役割は はい/いいえ)で取得できる', (server) async {
      final stakeholder = sharedMasterRepositories(server.provider.client).single;
      final rows = await stakeholder.find(take: 20);
      expect(rows, isNotEmpty);
      expect(rows.first.valueOf('code'), isNotEmpty);
      expect(rows.any((r) => r.valueOf('name').isNotEmpty), isTrue);
      for (final key in ['is_customer', 'is_supplier', 'is_logistics']) {
        expect(rows.first.values.containsKey(key), isTrue, reason: key);
      }
      final again = await stakeholder.findById(rows.first.id);
      expect(again?.values, rows.first.values);
    });

    test('定義: 利害関係者は書き込める。配送区分は読み取り専用。必須の検証は通信しない', () async {
      final repos = sharedMasterRepositories(GraphQLClient(link: HttpLink('http://localhost:1'), cache: GraphQLCache()));
      final def = repos.single.definition;
      expect(def.key, 'stakeholder');
      expect(def.viewOnly, isFalse);
      expect(def.fields.firstWhere((f) => f.key == 'mstr_shipping_kind_id').readOnly, isTrue);
      expect(def.fields.firstWhere((f) => f.key == 'name').readOnly, isFalse);
      await expectLater(repos.single.save(const EntityRecord(id: '', values: {})), throwsA(isA<EntityValidationException>()));
    });

    serverTest('利害関係者を登録・更新・削除(論理削除)できる。更新は渡した項目だけ変わる。コード重複は検証エラー', (server) async {
      final repo = sharedMasterRepositories(server.provider.client).single;
      final code = 'TST-${DateTime.now().millisecondsSinceEpoch}';
      String? id;
      try {
        final created = await repo.save(EntityRecord(id: '', values: {
          'code': code,
          'control_code': 'C1',
          'name': '試験商事',
          'pronunciation': 'シケンショウジ',
          'is_customer': 'はい',
          'is_supplier': 'いいえ',
          'is_logistics': 'はい',
          'mail': 'a@example.com',
          'remarks': '書き込みテスト',
        }));
        id = created.id;
        expect(created.valueOf('code'), code);
        expect(created.valueOf('name'), '試験商事');
        expect(created.valueOf('is_customer'), 'はい');
        expect(created.valueOf('is_logistics'), 'はい');
        expect(created.valueOf('mail'), 'a@example.com');

        // 名称だけを変える(画面は全項目を送る。ほかは変わらない)
        final renamed = await repo.save(created.copyWith(values: {...created.values, 'name': '試験商事(更新)'}));
        expect(renamed.valueOf('name'), '試験商事(更新)');
        expect(renamed.valueOf('code'), code);
        expect(renamed.valueOf('control_code'), 'C1');
        expect(renamed.valueOf('is_customer'), 'はい');
        expect(renamed.valueOf('is_logistics'), 'はい');
        expect(renamed.valueOf('mail'), 'a@example.com');
        expect(renamed.valueOf('remarks'), '書き込みテスト');

        // 役割とメールを変える。空にした項目は消える
        final changed = await repo.save(renamed.copyWith(values: {...renamed.values, 'is_customer': 'いいえ', 'is_supplier': 'はい', 'mail': ''}));
        expect(changed.valueOf('is_customer'), 'いいえ');
        expect(changed.valueOf('is_supplier'), 'はい');
        expect(changed.valueOf('is_logistics'), 'はい');
        expect(changed.valueOf('mail'), isEmpty);
        expect(changed.valueOf('control_code'), 'C1');

        // 同じコードの登録は、重複の検証エラー(DB の関数が止める)
        await expectLater(
          repo.save(EntityRecord(id: '', values: {'code': code, 'name': '重複'})),
          throwsA(isA<EntityValidationException>().having((e) => e.errors['code'], 'code', EntityFieldError.duplicate)),
        );
      } finally {
        if (id != null) await repo.remove(id);
      }
      expect(await repo.findById(id), isNull);
    });
  });
}
