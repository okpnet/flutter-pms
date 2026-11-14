import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:quality_model/quality_model.dart';

import '../entities/quality_definitions.dart';

/// 品質管理の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、
/// `entityRepositoryOverridesProvider` に渡すと、サンプル(メモリ上)の代わりに使われる。
///
/// 【入れ替え: 呼称の DB 関数】 書き込みは `doc/query/20261114_0002_appellation_functions.sql` の補助(`ap_appellation_set`・
/// `ap_text_set`)を使う苦情・監査・監査基準の関数を足して適用したら、`~PageCall` を足して `save` を入れ替え、`viewOnly` を外す
/// (`issue/202611.md` の 2-1)。
///
/// 対象は苦情(`complaint`)・監査(`audit`)・監査基準(`auditstd`)。題名は多言語のラベル(`trans_label`)・詳細は多言語の文章
/// (`trans_text`。先頭の文)、監査基準の名称・読み・略称は多言語の辞書(`shared_appellation`)・詳細は文章(`shared_text`)で、
/// 言語コード `ja` の値を読む。ほかの実体は、サンプルのまま: 親の ID を必須にする読み込みの実体(受入・関係者・ファイル・受注・
/// 工程・設備の苦情の子、受注リスク・工程リスク、監査チーム・監査員など)、帳票(`report`)。
/// 生成された型は、この中だけで使い、外へ出さない。抽出条件・並び順は無視する(サンプルと同じ)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
List<IEntityRepository> qualityRepositories(GraphQLClient client) {
  final language = _LanguageCode(client);
  return [
    _ComplaintRepository(_readOnly('complaint'), client, language),
    _AuditRepository(_readOnly('audit'), client, language),
    _AuditStdRepository(_readOnly('auditstd'), client, language),
  ];
}

/// 生成された定義(DB に合わせた項目)を、すべて読み取り専用にして使う(台帳に「新規」を出さず、保存・削除を出さない)。
EntityDefinition _readOnly(String key) {
  final d = qualityDefinitions.firstWhere((d) => d.key == key);
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

  /// 文章(`value.nodes[0].leadText`)の先頭の文。
  static String lead(dynamic textValue) {
    final nodes = textValue?.value?.nodes as List?;
    return nodes == null || nodes.isEmpty ? '' : text(nodes.first.leadText);
  }

  /// DB の numeric(文字列)を、画面の数値の形にする(小数の 0 は省く)。
  static String number(Object? v) {
    final s = text(v);
    if (s.isEmpty) return '';
    final n = num.tryParse(s);
    if (n == null) return s;
    return n == n.roundToDouble() ? '${n.round()}' : '$n';
  }

  /// 辞書(`value.nodes[0].dictionaryValue`)の言語コード指定の値。
  static String dict(dynamic dictionary) {
    final nodes = dictionary?.value?.nodes as List?;
    return nodes == null || nodes.isEmpty
        ? ''
        : text(nodes.first.dictionaryValue);
  }

  /// 日付(ISO 8601)を、画面の日付の形(年-月-日)にする。
  static String date(Object? v) {
    final s = text(v);
    return s.length >= 10 ? s.substring(0, 10) : s;
  }

  /// 名称のラベル(`value.nodes[0].labelValue`)の、言語コード指定の値。
  static String label(dynamic l) {
    final nodes = l?.value?.nodes as List?;
    return nodes == null || nodes.isEmpty ? '' : text(nodes.first.labelValue);
  }
}

class _ComplaintRepository extends _ReadOnlyRepository {
  _ComplaintRepository(super.definition, super.client, super.language);

  EntityRecord _record(Query$ComplaintPageRead$allTransComplaints$nodes n) {
    return EntityRecord(
      id: n.transComplaintId,
      values: {
        'occurent_at': _ReadOnlyRepository.date(n.occurentAt),
        'title': _ReadOnlyRepository.label(n.labels),
        'detail': _ReadOnlyRepository.lead(n.detailTexts),
        'reporter_staff_id': _ReadOnlyRepository.text(n.reporterStaffId),
        'remarks': _ReadOnlyRepository.text(n.remarks),
      },
    );
  }

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$ComplaintPageRead(
      Options$Query$ComplaintPageRead(
        variables: Variables$Query$ComplaintPageRead.fromJson({
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
          in result.parsedData?.allTransComplaints?.nodes ??
              const <Query$ComplaintPageRead$allTransComplaints$nodes?>[])
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
      'transComplaintId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}

class _AuditRepository extends _ReadOnlyRepository {
  _AuditRepository(super.definition, super.client, super.language);

  EntityRecord _record(Query$AuditPageRead$allTransAudits$nodes n) {
    return EntityRecord(
      id: n.transAuditId,
      values: {
        'audit_std_id': _ReadOnlyRepository.text(n.auditStdId),
        'staff_id': _ReadOnlyRepository.text(n.staffId),
        'scheduled_start_date': _ReadOnlyRepository.date(n.scheduledStartDate),
        'expected_end_date': _ReadOnlyRepository.date(n.expectedEndDate),
        'title': _ReadOnlyRepository.label(n.labels),
        'detail': _ReadOnlyRepository.lead(n.detailTexts),
        'info_department_id': _ReadOnlyRepository.text(n.infoDepartmentId),
        'mstr_stakeholder_id': _ReadOnlyRepository.text(n.mstrStakeholderId),
        'remarks': _ReadOnlyRepository.text(n.remarks),
      },
    );
  }

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$AuditPageRead(
      Options$Query$AuditPageRead(
        variables: Variables$Query$AuditPageRead.fromJson({
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
          in result.parsedData?.allTransAudits?.nodes ??
              const <Query$AuditPageRead$allTransAudits$nodes?>[])
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
      'transAuditId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}

class _AuditStdRepository extends _ReadOnlyRepository {
  _AuditStdRepository(super.definition, super.client, super.language);

  EntityRecord _record(Query$AuditStdPageRead$allMstrAuditStds$nodes n) {
    final l = n.labels;
    return EntityRecord(
      id: n.mstrAuditStdId,
      values: {
        'code': _ReadOnlyRepository.text(n.code),
        'control_code': _ReadOnlyRepository.text(n.controlCode),
        'name': _ReadOnlyRepository.dict(
          l?.sharedDictionaryBySharedDictionaryNameId,
        ),
        'pronunciation': _ReadOnlyRepository.dict(
          l?.sharedDictionaryBySharedDictionaryPronunciationId,
        ),
        'nickname': _ReadOnlyRepository.dict(
          l?.sharedDictionaryBySharedDictionaryNicknameId,
        ),
        'category': _ReadOnlyRepository.number(n.category),
        'detail': _ReadOnlyRepository.lead(n.detailTexts),
        'remarks': _ReadOnlyRepository.text(n.remarks),
      },
    );
  }

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$AuditStdPageRead(
      Options$Query$AuditStdPageRead(
        variables: Variables$Query$AuditStdPageRead.fromJson({
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
          in result.parsedData?.allMstrAuditStds?.nodes ??
              const <Query$AuditStdPageRead$allMstrAuditStds$nodes?>[])
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
      'mstrAuditStdId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}
