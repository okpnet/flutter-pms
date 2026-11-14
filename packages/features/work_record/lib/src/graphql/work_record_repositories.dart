import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:work_record_model/work_record_model.dart';

import '../entities/work_record_definitions.dart';

/// 作業実績の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、
/// `entityRepositoryOverridesProvider` に渡すと、サンプル(メモリ上)の代わりに使われる。
///
/// 【入れ替え: 呼称の DB 関数】 書き込みは `doc/query/20261114_0002_appellation_functions.sql` の補助(`ap_appellation_set`・
/// `ap_text_set`)を使うコンテナ・成績書の関数を足して適用したら、`~PageCall` を足して `save` を入れ替え、`viewOnly` を外す
/// (`issue/202611.md` の 2-1)。
///
/// 対象はコンテナ(`container`)・成績書(`certificate`)。名称は多言語のラベル(`trans_label`)で、言語コード `ja` の値を読む。
/// コンテナは、DB に親子の列が無いため、すべてトップに並べる。作業実績(`workrec`。読み込みが作業指示を必須にしている)・
/// 在庫の状況(`stockstatus`。DB のビューの列が画面案の項目と合わない)・引当申請・引当要求・ビジター品目は、サンプルのまま。
/// 生成された型は、この中だけで使い、外へ出さない。抽出条件・並び順は無視する(サンプルと同じ)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
List<IEntityRepository> workRecordRepositories(GraphQLClient client) {
  final language = _LanguageCode(client);
  return [
    _ContainerRepository(_readOnly('container'), client, language),
    _CertificateRepository(_readOnly('certificate'), client, language),
  ];
}

/// 生成された定義(DB に合わせた項目)を、すべて読み取り専用にして使う(台帳に「新規」を出さず、保存・削除を出さない)。
EntityDefinition _readOnly(String key) {
  final d = workRecordDefinitions.firstWhere((d) => d.key == key);
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

  /// 名称のラベル(`value.nodes[0].labelValue`)の、言語コード指定の値。
  static String label(dynamic l) {
    final nodes = l?.value?.nodes as List?;
    return nodes == null || nodes.isEmpty ? '' : text(nodes.first.labelValue);
  }
}

class _ContainerRepository extends _ReadOnlyRepository {
  _ContainerRepository(super.definition, super.client, super.language);

  EntityRecord _record(Query$ContainerPageRead$allTransContainers$nodes n) {
    final l = n.labels;
    return EntityRecord(
      id: n.transContainerId,
      values: {
        'code': _ReadOnlyRepository.text(n.code),
        'name': _ReadOnlyRepository.label(l),
        'remarks': _ReadOnlyRepository.text(n.remarks),
      },
    );
  }

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$ContainerPageRead(
      Options$Query$ContainerPageRead(
        variables: Variables$Query$ContainerPageRead.fromJson({
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
          in result.parsedData?.allTransContainers?.nodes ??
              const <Query$ContainerPageRead$allTransContainers$nodes?>[])
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
      'transContainerId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async =>
      parentId == null ? await find(take: 1000) : const [];
}

class _CertificateRepository extends _ReadOnlyRepository {
  _CertificateRepository(super.definition, super.client, super.language);

  EntityRecord _record(Query$CertificatePageRead$allTransCertificates$nodes n) {
    final l = n.labels;
    return EntityRecord(
      id: n.transCertificateId,
      values: {
        'serial': _ReadOnlyRepository.text(n.serial),
        'title': _ReadOnlyRepository.label(l),
        'class': _ReadOnlyRepository.text(n.$class),
        'remarks': _ReadOnlyRepository.text(n.remarks),
      },
    );
  }

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$CertificatePageRead(
      Options$Query$CertificatePageRead(
        variables: Variables$Query$CertificatePageRead.fromJson({
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
          in result.parsedData?.allTransCertificates?.nodes ??
              const <Query$CertificatePageRead$allTransCertificates$nodes?>[])
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
      'transCertificateId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}
