import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:system_model/system_model.dart';

import '../entities/system_definitions.dart';

/// システムの実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、
/// `entityRepositoryOverridesProvider` に渡すと、サンプル(メモリ上)の代わりに使われる。
///
/// 【入れ替え: 呼称の DB 関数】 書き込みは `doc/query/20261114_0002_appellation_functions.sql` の `unit_save` を適用したら、
/// `~PageCall` を足して `save` を入れ替え、`viewOnly` を外す(`issue/202611.md` の 2-1)。
///
/// 対象は単位(`unit`)。名称・読み・略称は多言語の辞書(`shared_appellation`)、詳細は多言語の文章(`shared_text`)で、
/// 言語コード `ja` の値を読む。これらの書き込みは、辞書・呼称を複数の表へ登録する必要があり、途中で失敗すると孤児が残るため、
/// DB の関数にまとめてから行う(`tools/docker/postgresql/issue/20261103_0002.md` の案)。それまで、実体を読み取り専用
/// ([EntityDefinition.viewOnly])にする。生成された型は、この中だけで使い、外へ出さない。
/// 抽出条件・並び順は無視する(絞り込みと並べ替えはテーブル側。サンプルと同じ)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
List<IEntityRepository> systemRepositories(GraphQLClient client) {
  final language = _LanguageCode(client);
  return [_UnitRepository(_unitDefinition, client, language)];
}

/// 生成された定義(DB に合わせた項目)を、すべて読み取り専用にして使う(台帳に「新規」を出さず、保存・削除を出さない)。
final EntityDefinition _unitDefinition = () {
  final d = systemDefinitions.firstWhere((d) => d.key == 'unit');
  return EntityDefinition(
    key: d.key,
    owner: d.owner,
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
}();

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

class _UnitRepository implements IEntityRepository {
  _UnitRepository(this.definition, this.client, this.language);

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

  static String _text(Object? v) => v == null ? '' : '$v';

  /// 辞書(`value.nodes[0].dictionaryValue`)の言語コード指定の値。
  static String _dict(dynamic dictionary) {
    final nodes = dictionary?.value?.nodes as List?;
    return nodes == null || nodes.isEmpty ? '' : _text(nodes.first.dictionaryValue);
  }

  EntityRecord _record(Query$UnitPageRead$allSharedUnits$nodes n) {
    final labels = n.labels;
    final detail = n.detailTexts?.value.nodes;
    return EntityRecord(
      id: n.sharedUnitId,
      values: {
        'name': _dict(labels?.sharedDictionaryBySharedDictionaryNameId),
        'pronunciation': _dict(
          labels?.sharedDictionaryBySharedDictionaryPronunciationId,
        ),
        'nickname': _dict(labels?.sharedDictionaryBySharedDictionaryNicknameId),
        'detail': detail == null || detail.isEmpty
            ? ''
            : _text(detail.first?.leadText),
        'symbol': _text(n.symbol),
        'remarks': _text(n.remarks),
      },
    );
  }

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$UnitPageRead(
      Options$Query$UnitPageRead(
        variables: Variables$Query$UnitPageRead.fromJson({
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
          in result.parsedData?.allSharedUnits?.nodes ??
              const <Query$UnitPageRead$allSharedUnits$nodes?>[])
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
      'sharedUnitId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}
