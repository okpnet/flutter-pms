import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:item_model/item_model.dart';

import '../entities/production_process_definitions.dart';

/// 工程の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、
/// `entityRepositoryOverridesProvider` に渡すと、サンプル(メモリ上)の代わりに使われる。
///
/// 【入れ替え: 呼称の DB 関数】 書き込みは `doc/query/20261114_0002_appellation_functions.sql` の補助(`ap_appellation_set`・
/// `ap_text_set`)を使う作業・工程運用の関数を足して適用したら、`~PageCall` を足して `save` を入れ替え、`viewOnly` を外す
/// (`issue/202611.md` の 2-1)。
///
/// 対象は作業(`task`。ツリー)・工程運用(`operation`)。名称・読み・略称は多言語の辞書、詳細は多言語の文章(先頭の文)で、
/// 言語コード `ja` の値を読む。作業の親は作業ツリーの親の作業 ID。標準時間は、DB の間隔(`interval`)を分に直した値。
/// ほかの実体(作業区分・作業資源・工程の作業・適用品目など)は、サンプルのまま。
/// 生成された型は、この中だけで使い、外へ出さない。抽出条件・並び順は無視する(サンプルと同じ)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
List<IEntityRepository> productionProcessRepositories(GraphQLClient client) {
  final language = _LanguageCode(client);
  return [
    _TaskRepository(_readOnly('task'), client, language),
    _OperationRepository(_readOnly('operation'), client, language),
  ];
}

/// 生成された定義(DB に合わせた項目)を、すべて読み取り専用にして使う(台帳に「新規」を出さず、保存・削除を出さない)。
EntityDefinition _readOnly(String key) {
  final d = productionProcessDefinitions.firstWhere((d) => d.key == key);
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

  /// DB の numeric(文字列)を、画面の数値の形にする(小数の 0 は省く)。
  static String number(Object? v) {
    final s = text(v);
    if (s.isEmpty) return '';
    final n = num.tryParse(s);
    if (n == null) return s;
    return n == n.roundToDouble() ? '${n.round()}' : '$n';
  }

  /// 多言語の文章(`value.nodes[0].leadText`)の先頭の文。
  static String lead(dynamic textValue) {
    final nodes = textValue?.value?.nodes as List?;
    return nodes == null || nodes.isEmpty ? '' : text(nodes.first.leadText);
  }

  /// 辞書(`value.nodes[0].dictionaryValue`)の言語コード指定の値。
  static String dict(dynamic dictionary) {
    final nodes = dictionary?.value?.nodes as List?;
    return nodes == null || nodes.isEmpty
        ? ''
        : text(nodes.first.dictionaryValue);
  }
}

class _TaskRepository extends _ReadOnlyRepository {
  _TaskRepository(super.definition, super.client, super.language);

  EntityRecord _record(Query$TaskPageRead$allMstrTasks$nodes n) {
    final l = n.labels;
    final parents = n.parent.nodes;
    final t = n.defaultTime;
    final minutes = t == null
        ? null
        : (t.days ?? 0) * 1440 +
              (t.hours ?? 0) * 60 +
              (t.minutes ?? 0) +
              (t.seconds ?? 0) / 60;
    return EntityRecord(
      id: n.mstrTaskId,
      parentId: parents.isEmpty ? null : parents.first?.parentMstrTaskId,
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
        'detail': _ReadOnlyRepository.lead(n.detailTexts),
        'class': _ReadOnlyRepository.number(n.$class),
        'default_time': minutes == null
            ? ''
            : _ReadOnlyRepository.number(minutes),
        'remarks': _ReadOnlyRepository.text(n.remarks),
      },
    );
  }

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$TaskPageRead(
      Options$Query$TaskPageRead(
        variables: Variables$Query$TaskPageRead.fromJson({
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
          in result.parsedData?.allMstrTasks?.nodes ??
              const <Query$TaskPageRead$allMstrTasks$nodes?>[])
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
      'mstrTaskId': {'equalTo': id},
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

class _OperationRepository extends _ReadOnlyRepository {
  _OperationRepository(super.definition, super.client, super.language);

  EntityRecord _record(Query$OperationPageRead$allMstrOperations$nodes n) {
    final l = n.labels;
    return EntityRecord(
      id: n.mstrOperationId,
      values: {
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
    final result = await client.query$OperationPageRead(
      Options$Query$OperationPageRead(
        variables: Variables$Query$OperationPageRead.fromJson({
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
          in result.parsedData?.allMstrOperations?.nodes ??
              const <Query$OperationPageRead$allMstrOperations$nodes?>[])
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
      'mstrOperationId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}
