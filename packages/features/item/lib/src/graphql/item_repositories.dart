import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:item_model/item_model.dart';

import '../entities/item_definitions.dart';

/// 品目の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、
/// `entityRepositoryOverridesProvider` に渡すと、サンプル(メモリ上)の代わりに使われる。
///
/// 【入れ替え: 呼称の DB 関数】 書き込みは `doc/query/20261114_0002_appellation_functions.sql` の補助(`ap_appellation_set`・
/// `ap_text_set`)を使う品目・品目区分の関数を足して適用したら、`~PageCall` を足して `save` を入れ替え、`viewOnly` を外す
/// (`issue/202611.md` の 2-1)。
///
/// 対象は品目区分(`itemkind`)・品目(`item`。ツリー)。名称・読み・略称は多言語の辞書、詳細は多言語の文章(先頭の文)で、
/// 言語コード `ja` の値を読む。品目の親は、品目ツリー(`mstr_item_tree`)の親の品目 ID。ほかの実体(品目HS・工程・サイズなど)は、
/// サンプルのまま。生成された型は、この中だけで使い、外へ出さない。抽出条件・並び順は無視する(サンプルと同じ)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
List<IEntityRepository> itemRepositories(GraphQLClient client) {
  final language = _LanguageCode(client);
  return [
    _ItemKindRepository(_readOnly('itemkind'), client, language),
    _ItemRepository(_readOnly('item'), client, language),
  ];
}

/// 生成された定義(DB に合わせた項目)を、すべて読み取り専用にして使う(台帳に「新規」を出さず、保存・削除を出さない)。
/// 取得元が値を返さない項目(`itemkind` の読み・略称は返す。`item` は下の項目)だけを残す。
EntityDefinition _readOnly(String key) {
  final d = itemDefinitions.firstWhere((d) => d.key == key);
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

  static String yesNo(bool? v) => v == null ? '' : (v ? 'はい' : 'いいえ');
}

class _ItemKindRepository extends _ReadOnlyRepository {
  _ItemKindRepository(super.definition, super.client, super.language);

  EntityRecord _record(Query$ItemKindPageRead$allMstrItemKinds$nodes n) {
    final l = n.labels;
    return EntityRecord(
      id: n.mstrItemKindId,
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
        'remarks': _ReadOnlyRepository.text(n.remarks),
      },
    );
  }

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$ItemKindPageRead(
      Options$Query$ItemKindPageRead(
        variables: Variables$Query$ItemKindPageRead.fromJson({
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
          in result.parsedData?.allMstrItemKinds?.nodes ??
              const <Query$ItemKindPageRead$allMstrItemKinds$nodes?>[])
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
      'mstrItemKindId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}

class _ItemRepository extends _ReadOnlyRepository {
  _ItemRepository(super.definition, super.client, super.language);

  EntityRecord _record(Query$ItemPageRead$allMstrItems$nodes n) {
    final l = n.labels;
    final detail = n.detailTexts?.value.nodes;
    final parents = n.parent.nodes;
    return EntityRecord(
      id: n.mstrItemId,
      parentId: parents.isEmpty ? null : parents.first?.parentMstrItemId,
      values: {
        'code': _ReadOnlyRepository.text(n.code),
        'identification': _ReadOnlyRepository.text(n.identification),
        'control_code': _ReadOnlyRepository.text(n.controlCode),
        'label_code': _ReadOnlyRepository.text(n.labelCode),
        'name': _ReadOnlyRepository.dict(
          l?.sharedDictionaryBySharedDictionaryNameId,
        ),
        'pronunciation': _ReadOnlyRepository.dict(
          l?.sharedDictionaryBySharedDictionaryPronunciationId,
        ),
        'nickname': _ReadOnlyRepository.dict(
          l?.sharedDictionaryBySharedDictionaryNicknameId,
        ),
        'mstr_item_kind_id': _ReadOnlyRepository.text(n.mstrItemKindId),
        'catalog_item': _ReadOnlyRepository.yesNo(n.catalogItem),
        'detail': detail == null || detail.isEmpty
            ? ''
            : _ReadOnlyRepository.text(detail.first?.leadText),
        'shared_unit_id': _ReadOnlyRepository.text(n.sharedUnitId),
        'remarks': _ReadOnlyRepository.text(n.remarks),
      },
    );
  }

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$ItemPageRead(
      Options$Query$ItemPageRead(
        variables: Variables$Query$ItemPageRead.fromJson({
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
          in result.parsedData?.allMstrItems?.nodes ??
              const <Query$ItemPageRead$allMstrItems$nodes?>[])
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
      'mstrItemId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  /// ツリーの子。親が null はトップ(親の品目が無い品目)。親ごとの絞り込みはサーバー側に無いため、取得した中から選ぶ。
  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async {
    final rows = await _read(1000, 0, const {});
    return [
      for (final r in rows)
        if (r.parentId == parentId) r,
    ];
  }
}
