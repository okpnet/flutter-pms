import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:organization_model/organization_model.dart';

import '../entities/organization_definitions.dart';

/// 組織の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、
/// `entityRepositoryOverridesProvider` に渡すと、サンプル(メモリ上)の代わりに使われる。
///
/// 【入れ替え: 呼称の DB 関数】 書き込みは `doc/query/20261114_0002_appellation_functions.sql` の補助(`ap_appellation_set`・
/// `ap_text_set`)を使う職員・事業所・部署の関数を足して適用したら、`~PageCall` を足して `save` を入れ替え、`viewOnly` を外す
/// (`issue/202611.md` の 2-1)。
///
/// 対象は職員(`staff`)・事業所(`site`)・部署(`department`。ツリー)。名称・読み・略称は多言語の辞書で、言語コード `ja` の値を読む。
/// 部署の親は部署ツリー(`info_department_tree`)の親の部署 ID。事業所の都道府県・市区町村は、住所の辞書の対応が未確認のため空。
/// ほかの実体(会社・提供・役職・割当・部署区分・力量・資格・承認など)は、サンプルのまま。
/// 生成された型は、この中だけで使い、外へ出さない。抽出条件・並び順は無視する(サンプルと同じ)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
List<IEntityRepository> organizationRepositories(GraphQLClient client) {
  final language = _LanguageCode(client);
  return [
    _StaffRepository(_readOnly('staff'), client, language),
    _SiteRepository(_readOnly('site'), client, language),
    _DepartmentRepository(_readOnly('department'), client, language),
  ];
}

/// 生成された定義(DB に合わせた項目)を、すべて読み取り専用にして使う(台帳に「新規」を出さず、保存・削除を出さない)。
EntityDefinition _readOnly(String key) {
  final d = organizationDefinitions.firstWhere((d) => d.key == key);
  return EntityDefinition(
    key: d.key,
    owner: d.owner,
    isTree: d.isTree,
    uniqueKeys: d.uniqueKeys,
    reverseLists: d.reverseLists,
    fields: [
      for (final f in d.fields)
        FieldDefinition(
          key: f.key,
          kind: f.kind,
          required: false,
          readOnly: true,
          options: f.options,
          reference: f.reference,
        ),
    ],
    viewOnly: true,
  );
}

/// 検証用 DB の言語コード `ja` の ID(読み込みの必須の条件)。最初の1回だけ引く。
class _LanguageCode {
  _LanguageCode(this._client);

  final GraphQLClient _client;
  Future<String>? _id;

  Future<String> get id => _id ??= _load();

  Future<String> _load() async {
    final result = await _client.query(
      QueryOptions(
        document: gql(
          'query { allSharedLanguageCodes(first: 20, filter: {remove: {equalTo: false}}) { nodes { sharedLanguageCodeId code } } }',
        ),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    final nodes =
        (result.data?['allSharedLanguageCodes'] as Map?)?['nodes'] as List? ??
        const [];
    for (final n in nodes.whereType<Map>()) {
      if ('${n['code']}'.toLowerCase() == 'ja') {
        return n['sharedLanguageCodeId'] as String;
      }
    }
    throw StateError('言語コード ja が見つかりません');
  }
}

abstract class _ReadOnlyRepository implements IEntityRepository {
  _ReadOnlyRepository(this.definition, this.client, this.language);

  @override
  final EntityDefinition definition;
  final GraphQLClient client;
  final _LanguageCode language;

  @override
  Future<EntityRecord> save(EntityRecord record) =>
      throw UnsupportedError('${definition.key}: 読み取り専用です');

  @override
  Future<void> remove(String id) =>
      throw UnsupportedError('${definition.key}: 読み取り専用です');

  static String text(Object? v) => v == null ? '' : '$v';

  /// 辞書(`value.nodes[0].dictionaryValue`)の言語コード指定の値。
  static String dict(dynamic dictionary) {
    final nodes = dictionary?.value?.nodes as List?;
    return nodes == null || nodes.isEmpty
        ? ''
        : text(nodes.first.dictionaryValue);
  }

}

class _StaffRepository extends _ReadOnlyRepository {
  _StaffRepository(super.definition, super.client, super.language);

  EntityRecord _record(Query$StaffPageRead$allInfoStaffs$nodes n) {
    final l = n.labels;
    return EntityRecord(
      id: n.infoStaffId,
      values: {
        'no': _ReadOnlyRepository.text(n.code),
        'name': _ReadOnlyRepository.dict(
          l?.sharedDictionaryBySharedDictionaryNameId,
        ),
        'pronunciation': _ReadOnlyRepository.dict(
          l?.sharedDictionaryBySharedDictionaryPronunciationId,
        ),
        'sex': _ReadOnlyRepository.text(n.sex),
        'phone': _ReadOnlyRepository.text(n.phone),
        'private_phone': _ReadOnlyRepository.text(n.privatePhone),
        'symbol': _ReadOnlyRepository.text(n.symbol),
        'remarks': _ReadOnlyRepository.text(n.remarks),
      },
    );
  }

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$StaffPageRead(
      Options$Query$StaffPageRead(
        variables: Variables$Query$StaffPageRead.fromJson({
          'first': first,
          'offset': offset,
          'languageCodeId': await language.id,
          if (filter.isNotEmpty) 'filter': filter,
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    return [
      for (final n
          in result.parsedData?.allInfoStaffs?.nodes ??
              const <Query$StaffPageRead$allInfoStaffs$nodes?>[])
        if (n != null) _record(n),
    ];
  }

  @override
  Future<List<EntityRecord>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) => _read(take, skip, const {});

  @override
  Future<EntityRecord?> findById(String id) async {
    final rows = await _read(1, 0, {
      'infoStaffId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}

class _SiteRepository extends _ReadOnlyRepository {
  _SiteRepository(super.definition, super.client, super.language);

  EntityRecord _record(Query$OfficePageRead$allInfoOffices$nodes n) {
    final l = n.labels;
    final a = n.address;
    return EntityRecord(
      id: n.infoOfficeId,
      values: {
        'code': _ReadOnlyRepository.text(n.code),
        'name': _ReadOnlyRepository.dict(
          l?.sharedDictionaryBySharedDictionaryNameId,
        ),
        'pronunciation': _ReadOnlyRepository.dict(
          l?.sharedDictionaryBySharedDictionaryPronunciationId,
        ),
        'nickname': _ReadOnlyRepository.dict(
          l?.sharedDictionaryBySharedDictionaryNicknameId,
        ),
        'country_code_2': _ReadOnlyRepository.text(a?.countryCode2),
        'zip_code': _ReadOnlyRepository.text(a?.zipCode),
        'building': _ReadOnlyRepository.text(a?.building),
        'phone': _ReadOnlyRepository.text(a?.phone),
        'fax_number': _ReadOnlyRepository.text(a?.faxNumber),
      },
    );
  }

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$OfficePageRead(
      Options$Query$OfficePageRead(
        variables: Variables$Query$OfficePageRead.fromJson({
          'first': first,
          'offset': offset,
          'languageCodeId': await language.id,
          if (filter.isNotEmpty) 'filter': filter,
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    return [
      for (final n
          in result.parsedData?.allInfoOffices?.nodes ??
              const <Query$OfficePageRead$allInfoOffices$nodes?>[])
        if (n != null) _record(n),
    ];
  }

  @override
  Future<List<EntityRecord>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) => _read(take, skip, const {});

  @override
  Future<EntityRecord?> findById(String id) async {
    final rows = await _read(1, 0, {
      'infoOfficeId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}

class _DepartmentRepository extends _ReadOnlyRepository {
  _DepartmentRepository(super.definition, super.client, super.language);

  EntityRecord _record(Query$DepartmentPageRead$allInfoDepartments$nodes n) {
    final l = n.labels;
    final parents = n.parent.nodes;
    return EntityRecord(
      id: n.infoDepartmentId,
      parentId: parents.isEmpty ? null : parents.first?.parentInfoDepartmentId,
      values: {
        'code': _ReadOnlyRepository.text(n.code),
        'name': _ReadOnlyRepository.dict(
          l?.sharedDictionaryBySharedDictionaryNameId,
        ),
        'pronunciation': _ReadOnlyRepository.dict(
          l?.sharedDictionaryBySharedDictionaryPronunciationId,
        ),
        'nickname': _ReadOnlyRepository.dict(
          l?.sharedDictionaryBySharedDictionaryNicknameId,
        ),
        'site': _ReadOnlyRepository.text(n.infoOfficeId),
      },
    );
  }

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$DepartmentPageRead(
      Options$Query$DepartmentPageRead(
        variables: Variables$Query$DepartmentPageRead.fromJson({
          'first': first,
          'offset': offset,
          'languageCodeId': await language.id,
          if (filter.isNotEmpty) 'filter': filter,
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    return [
      for (final n
          in result.parsedData?.allInfoDepartments?.nodes ??
              const <Query$DepartmentPageRead$allInfoDepartments$nodes?>[])
        if (n != null) _record(n),
    ];
  }

  @override
  Future<List<EntityRecord>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) => _read(take, skip, const {});

  @override
  Future<EntityRecord?> findById(String id) async {
    final rows = await _read(1, 0, {
      'infoDepartmentId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  /// ツリーの子。親が null はトップ。親ごとの絞り込みはサーバー側に無いため、取得した中から選ぶ。
  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async {
    final rows = await _read(1000, 0, const {});
    return [
      for (final r in rows)
        if (r.parentId == parentId) r,
    ];
  }
}
