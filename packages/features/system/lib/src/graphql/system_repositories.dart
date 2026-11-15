import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:system_model/system_model.dart';

import '../entities/system_definitions.dart';

/// システムの実体の取得元(GraphQL 版)。アプリが [GraphQLClient] を渡して組み立て、
/// `entityRepositoryOverridesProvider` に渡すと、サンプル(メモリ上)の代わりに使われる。
///
/// 【暫定】書き込みは、適用済みの `unit_save`(マスタごとの保存関数。方針に合わないため、いずれ外す)を使っている。
/// 共通関数(`shared_appellation_save`・`shared_text_save`)と、平らなミューテーション(単位の create・update)に入れ替える
/// (`issue/20261115_0001.md`・`tools/docker/postgresql/issue/20261115_0001.md`)。
///
/// 対象は単位(`unit`)。名称・読み・略称は多言語の辞書(`shared_appellation`)、詳細は多言語の文章(`shared_text`)で、
/// 言語コード `ja` の値を読み書きする。登録・更新は DB の関数 `unit_save`(`doc/query/20261114_0002_appellation_functions.sql`。
/// 辞書・呼称・文章・本体を1回の呼び出し = 1トランザクションで行う)、削除は論理削除(`remove = true`)。
/// 更新は「渡した項目だけ」の関数のため、詳細は読み込みが先頭の文(`lead_text`)だけを返すので、変えたときだけ送る(変えないと全文が先頭の文で上書きされる)。ほかの項目も、変わったものだけ送る。
/// 他の言語の値は触らない。生成された型は、この中だけで使い、外へ出さない。
/// 抽出条件・並び順は無視する(絞り込みと並べ替えはテーブル側。サンプルと同じ)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
List<IEntityRepository> systemRepositories(GraphQLClient client) {
  final language = _LanguageCode(client);
  return [_UnitRepository(_unitDefinition, client, language)];
}

/// 生成された定義(DB に合わせた項目)を使う。記号(`symbol`)は DB が採番するため読み取り専用。
final EntityDefinition _unitDefinition = () {
  final d = systemDefinitions.firstWhere((d) => d.key == 'unit');
  return EntityDefinition(
    key: d.key,
    owner: d.owner,
    uniqueKeys: d.uniqueKeys,
    fields: [
      for (final f in d.fields)
        if (f.key == 'symbol')
          FieldDefinition(
            key: f.key,
            kind: f.kind,
            required: false,
            readOnly: true,
          )
        else
          f,
    ],
  );
}();

/// DB の関数のエラー(RAISE の文。PostGraphile は errcode を返さない)を、画面の検証エラーにする。それ以外はそのまま投げる。
Never _throwMapped(OperationException e) {
  final message = e.graphqlErrors.map((x) => x.message).join(' ');
  if (message.contains('名称(ja)は必須') || message.contains('名称(ja)は空にできません')) {
    throw const EntityValidationException({'name': EntityFieldError.required});
  }
  if (message.contains('コードは必須')) {
    throw const EntityValidationException({'code': EntityFieldError.required});
  }
  if (message.contains('コードが重複')) {
    throw const EntityValidationException({'code': EntityFieldError.duplicate});
  }
  throw e;
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

class _UnitRepository implements IEntityRepository {
  _UnitRepository(this.definition, this.client, this.language);

  @override
  final EntityDefinition definition;
  final GraphQLClient client;
  final _LanguageCode language;

  /// 登録・更新(DB の関数 unit_save)。更新は、変わった項目だけ送る(読み書きするのは言語コード ja の値だけ)。
  @override
  Future<EntityRecord> save(EntityRecord record) async {
    String t(String key) => record.valueOf(key).trim();
    if (t('name').isEmpty) {
      throw const EntityValidationException({
        'name': EntityFieldError.required,
      });
    }
    final isNew = record.id.isEmpty;
    final existing = isNew ? null : await findById(record.id);
    // 送る項目: 新規は入力のあった項目、更新は読み込んだ値から変わった項目(空に変えたときは空文字で消す)
    bool send(String key) =>
        isNew ? t(key).isNotEmpty : t(key) != (existing?.valueOf(key) ?? '');
    Map<String, String>? ja(String key) => send(key) ? {'ja': t(key)} : null;
    final result = await client.mutate$UnitSavePageCall(
      Options$Mutation$UnitSavePageCall(
        variables: Variables$Mutation$UnitSavePageCall(
          pUnitId: isNew ? null : record.id,
          pName: isNew || send('name') ? {'ja': t('name')} : null,
          pPronunciation: ja('pronunciation'),
          pNickname: ja('nickname'),
          pDetail: ja('detail'),
          pRemarks: send('remarks') ? t('remarks') : null,
        ),
      ),
    );
    final e = result.exception;
    if (e != null) _throwMapped(e);
    final id = result.parsedData?.unitSave?.sharedUnit?.sharedUnitId;
    if (id == null) throw StateError('単位を保存できませんでした');
    return (await findById(id)) ?? record;
  }

  /// 論理削除(`remove = true`)。物理削除はしない。使用中かの判定は呼び出し側([EntityCatalog])が行う。
  @override
  Future<void> remove(String id) async {
    final result = await client.mutate$UnitPageRemove(
      Options$Mutation$UnitPageRemove(
        variables: Variables$Mutation$UnitPageRemove(
          sharedUnitId: id,
          remove: true,
        ),
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
  }

  static String _text(Object? v) => v == null ? '' : '$v';

  /// 辞書(`value.nodes[0].dictionaryValue`)の言語コード指定の値。
  static String _dict(dynamic dictionary) {
    final nodes = dictionary?.value?.nodes as List?;
    return nodes == null || nodes.isEmpty
        ? ''
        : _text(nodes.first.dictionaryValue);
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
