import 'package:localized_values/localized_values.dart';
import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:organization_model/organization_model.dart';

import 'package:pms_graphql/pms_graphql.dart' show AuditUserSource;

import '../entities/organization_definitions.dart';
import 'approval_pattern_repository.dart';
import 'approval_scope_repositories.dart';
import 'site_repository.dart';
import 'staff_repository.dart';
import 'staff_icon_repository.dart';

/// 組織の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、
/// `entityRepositoryOverridesProvider` に渡すと、サンプル(メモリ上)の代わりに使われる。
///
/// 【入れ替え: 呼称の DB 関数】 書き込みは、共通関数(`shared_appellation_save`・`shared_text_save`)で呼称・文章を作り、返った ID を本体のミューテーションに渡す形で、職員・事業所・部署の取得元の `save` を入れ替え、`viewOnly` を外す
/// (`issue/202611.md#C_202611` の 2-1)。
///
/// 対象は職員(`staff`。書き込みできる)・事業所(`site`)・部署(`department`。ツリー)。名称・読み・略称は多言語の辞書で、言語コード `ja` の値を読む。
/// 部署の親は部署ツリー(`info_department_tree`)の親の部署 ID。事業所の住所は、住所(`info_address`)の国・郵便番号・住所1・住所2・建物・電話番号・FAX(住所1・住所2・建物は多言語の辞書の `ja` の値。住所1 = 都道府県と市区町村、住所2 = 町名・番地・号)。
/// 承認パターン(`approvalpattern`)・アクセスパスの承認(`accesspathapproval`)・承認の範囲(`approvalscope`)は書き込みできる
/// (名称・読みは共通関数、承認の段は専用の画面)。ほかの実体(会社・提供・役職・割当・部署区分・力量・資格など)は、サンプルのまま。
/// 生成された型は、この中だけで使い、外へ出さない。抽出条件・並び順は無視する(サンプルと同じ)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
List<IEntityRepository> organizationRepositories(
  GraphQLClient client, {
  AuditUserSource? auditUser,
  IEntityFileTransfer fileTransfer = const UnsupportedEntityFileTransfer(),
}) {
  final language = LanguageCodeCache(client);
  return [
    // 担当者のアイコン(書き込みできる。バイナリは PocketBase、DB は trans_file に名前・種類だけ)
    StaffIconRepository(
      organizationDefinitions.firstWhere((d) => d.key == 'stafficon'),
      client,
      () => language.id,
      auditUser,
      fileTransfer,
    ),
    // 作業者(書き込みできる。ユーザーの作成は別の操作)
    StaffRepository(organizationDefinitions.firstWhere((d) => d.key == 'staff'), client, () => language.id, auditUser),
    SiteRepository(
      organizationDefinitions.firstWhere((d) => d.key == 'site'),
      client,
      () => language.id,
      auditUser,
    ),
    _DepartmentRepository(_readOnly('department'), client, language),
    // 承認パターンの台帳(書き込みできる。承認の段は専用の画面)
    ApprovalPatternRepository(
      organizationDefinitions.firstWhere((d) => d.key == 'approvalpattern'),
      client,
      () => language.id,
      auditUser,
    ),
    // アクセスパスの承認・承認の範囲(書き込みできる)
    AccessPathApprovalRepository(
      organizationDefinitions.firstWhere((d) => d.key == 'accesspathapproval'),
      client,
      () => language.id,
      auditUser,
    ),
    ApprovalScopeRepository(organizationDefinitions.firstWhere((d) => d.key == 'approvalscope'), client, auditUser),
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
class LanguageCodeCache {
  LanguageCodeCache(this._client);

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
  final LanguageCodeCache language;

  @override
  Future<EntityRecord> save(EntityRecord record) =>
      throw UnsupportedError('${definition.key}: 読み取り専用です');

  @override
  Future<void> remove(String id) =>
      throw UnsupportedError('${definition.key}: 読み取り専用です');

  static String text(Object? v) => v == null ? '' : '$v';

  /// 辞書(`value.nodes[0].dictionaryValue`)の言語コード指定の値。
  static String dict(dynamic dictionary) {
    // 言語を絞った問い合わせは、絞った言語(ja)の値になる。言語ごとの値を取る問い合わせになれば、代替も効く
    return LocalizedValues.fromDictionary(dictionary).resolve('ja');
  }
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
