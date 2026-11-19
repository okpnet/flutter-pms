import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:organization/organization.dart';

/// 組織の取得元(GraphQL 版。読み取り専用)の通信テスト(検証用サーバー。読み取りだけ)。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  group('検証用サーバー: 組織の取得元(読み取り専用)', () {
    serverTest('職員・事業所・部署を、画面の値(名称は言語コード ja)で取得できる', (server) async {
      final repos = organizationRepositories(server.provider.client);
      EntityRecord? first;
      for (final key in ['staff', 'site', 'department']) {
        final repo = repos.firstWhere((r) => r.definition.key == key);
        final rows = await repo.find(take: 50);
        // 検証用 DB に事業所・部署のデータが無いときは、取得できる(空)ことだけを確認する
        if (rows.isEmpty) {
          expect(key, isNot('staff'));
          continue;
        }
        expect(rows.any((r) => r.valueOf('name').isNotEmpty), isTrue, reason: key);
        final again = await repo.findById(rows.first.id);
        expect(again?.values, rows.first.values, reason: key);
        if (key == 'staff') first = rows.first;
        if (key == 'department') {
          for (final t in await repo.findByParent(null)) {
            expect(t.parentId, isNull);
          }
        }
      }
      expect(first!.valueOf('no'), isNotEmpty);
    });

    serverTest('事業所の住所(国・郵便番号・住所1・住所2・建物・電話番号・FAX)を、画面の値で取得できる', (server) async {
      final client = server.provider.client;
      Future<QueryResult> run(String document, [Map<String, dynamic> variables = const {}]) async {
        final result = await client.mutate(MutationOptions(document: gql(document), variables: variables, fetchPolicy: FetchPolicy.noCache));
        if (result.exception != null) throw result.exception!;
        return result;
      }

      // 呼称(名称)は、既存の単位のものを借りる(住所1・住所2・建物に、同じ呼称を指す。取得の対応の確認用)。会社は 1 社
      final base = await client.query(QueryOptions(
        document: gql('{ allSharedUnits(first: 1, filter: {remove: {equalTo: false}}) { nodes { names labels: sharedAppellationByNames { sharedDictionaryBySharedDictionaryNameId { sharedDictionaryValuesBySharedDictionaryId { nodes { dictionaryValue sharedLanguageCodeByLanguage: sharedLanguageCodeBySharedLanguageCodeId { code } } } } } } } allInfoCompanies(first: 1) { nodes { infoCompanyId } } }'),
        fetchPolicy: FetchPolicy.noCache,
      ));
      if (base.exception != null) throw base.exception!;
      final names = (base.data!['allSharedUnits']['nodes'] as List).first['names'] as String;
      final company = (base.data!['allInfoCompanies']['nodes'] as List).first['infoCompanyId'] as String;
      String? addressId;
      String? officeId;
      try {
        final address = await run(
          r'mutation($i: CreateInfoAddressInput!) { createInfoAddress(input: $i) { infoAddress { infoAddressId } } }',
          {
            'i': {
              'infoAddress': {
                'countryCode2': 'JP',
                'zipCode': '100-0001',
                'address1': names,
                'address2': names,
                'building': names,
                'phone': '03-0000-0000',
                'faxNumber': '03-1111-1111',
              },
            },
          },
        );
        addressId = address.data!['createInfoAddress']['infoAddress']['infoAddressId'] as String;
        final office = await run(
          r'mutation($i: CreateInfoOfficeInput!) { createInfoOffice(input: $i) { infoOffice { infoOfficeId } } }',
          {
            'i': {
              'infoOffice': {
                'infoCompanyId': company,
                'code': 'TST-ADDR-${DateTime.now().millisecondsSinceEpoch}',
                'names': names,
                'infoAddressId': addressId,
              },
            },
          },
        );
        officeId = office.data!['createInfoOffice']['infoOffice']['infoOfficeId'] as String;

        final site = organizationRepositories(client).firstWhere((r) => r.definition.key == 'site');
        final read = await site.findById(officeId);
        expect(read, isNotNull);
        expect(read!.valueOf('country_code_2'), 'JP');
        expect(read.valueOf('zip_code'), '100-0001');
        expect(read.valueOf('phone'), '03-0000-0000');
        expect(read.valueOf('fax_number'), '03-1111-1111');
        // 住所1・住所2・建物は、呼称(名称)の ja の値(借りた単位の名称と同じ。オブジェクトの文字列ではない)
        final unitName = read.valueOf('name');
        expect(unitName, isNotEmpty);
        for (final key in ['address1', 'address2', 'building']) {
          expect(read.valueOf(key), unitName, reason: key);
          expect(read.valueOf(key), isNot(contains('Instance of')), reason: key);
        }
      } finally {
        if (officeId != null) {
          await run(r'mutation($id: UUID!) { updateInfoOfficeByInfoOfficeId(input: {infoOfficeId: $id, infoOfficePatch: {remove: true}}) { clientMutationId } }', {'id': officeId});
        }
        if (addressId != null) {
          await run(r'mutation($id: UUID!) { updateInfoAddressByInfoAddressId(input: {infoAddressId: $id, infoAddressPatch: {remove: true}}) { clientMutationId } }', {'id': addressId});
        }
      }
    });

    test('実体は読み取り専用: 新規・保存・削除を出さず、書き込もうとすると失敗する', () {
      final repos = organizationRepositories(GraphQLClient(link: HttpLink('http://localhost:1'), cache: GraphQLCache()));
      expect(repos.map((r) => r.definition.key), ['stafficon', 'staff', 'site', 'department']);
      for (final r in repos.where((r) => !['stafficon', 'site'].contains(r.definition.key))) {
        expect(r.definition.viewOnly, isTrue);
        expect(r.definition.fields.every((f) => f.readOnly), isTrue);
        expect(() => r.save(const EntityRecord(id: '', values: {})), throwsUnsupportedError);
        expect(() => r.remove('x'), throwsUnsupportedError);
      }
      expect(repos.last.definition.isTree, isTrue);
    });
  });
}
