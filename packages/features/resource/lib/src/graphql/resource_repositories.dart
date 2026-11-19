import 'package:localized_values/localized_values.dart';
import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:resource_model/resource_model.dart';

import 'package:pms_graphql/pms_graphql.dart' show AuditUserSource;

import '../entities/resource_definitions.dart';
import 'capability_repository.dart';
import 'equipment_tag_repository.dart';
import 'inspection_repositories.dart';
import 'license_repository.dart';

/// 資源の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、
/// `entityRepositoryOverridesProvider` に渡すと、サンプル(メモリ上)の代わりに使われる。
///
/// 【入れ替え: 呼称の DB 関数】 書き込みは、共通関数(`shared_appellation_save`・`shared_text_save`)で呼称・文章を作り、返った ID を本体のミューテーションに渡す形で、力量・資格・場所の取得元の `save` を入れ替え、`viewOnly` を外す
/// (`issue/C_202611.md` の 2-1)。
///
/// 対象は力量(`capability`)・資格(`license`)・場所(`location`。ツリー)・設備(`equipment`)。名称・読み・詳細は多言語の辞書・文章
/// (先頭の文)で、言語コード `ja` の値を読む。場所の親は場所ツリーの親の場所 ID。設備は名称を持たず、コード・品目・区分・場所を持つ。
/// ほかの実体(設備区分・点検・カレンダーなど)は、サンプルのまま。生成された型は、この中だけで使い、外へ出さない。
/// 抽出条件・並び順は無視する(サンプルと同じ)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
List<IEntityRepository> resourceRepositories(
  GraphQLClient client, {
  AuditUserSource? auditUser,
  IEntityFileTransfer fileTransfer = const UnsupportedEntityFileTransfer(),
}) {
  final language = _LanguageCode(client);
  return [
    // 点検予定 → 予定明細 → 点検実施(読み取り専用)・点検ファイル(書き込みできる。バイナリは PocketBase、DB は trans_file に名前・種類だけ)
    ...inspectionRepositories(
      client,
      () => language.id,
      auditUser: auditUser,
      fileTransfer: fileTransfer,
    ),
    // 設備タグ(書き込みできる。バイナリは PocketBase、DB は trans_file に名前・種類だけ)
    EquipmentTagRepository(
      resourceDefinitions.firstWhere((d) => d.key == 'equiptag'),
      client,
      () => language.id,
      auditUser,
      fileTransfer,
    ),
    // 力量(書き込みできる。呼称は共通関数、本体はミューテーション)
    CapabilityRepository(
      resourceDefinitions.firstWhere((d) => d.key == 'capability'),
      client,
      () => language.id,
      auditUser,
    ),
    // 資格(書き込みできる。呼称は共通関数、本体はミューテーション)
    LicenseRepository(
      resourceDefinitions.firstWhere((d) => d.key == 'license'),
      client,
      () => language.id,
      auditUser,
    ),
    _LocationRepository(_readOnly('location'), client, language),
    _EquipmentRepository(_readOnly('equipment'), client, language),
  ];
}

/// 生成された定義(DB に合わせた項目)を、すべて読み取り専用にして使う(台帳に「新規」を出さず、保存・削除を出さない)。
EntityDefinition _readOnly(String key) {
  final d = resourceDefinitions.firstWhere((d) => d.key == key);
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
    // 言語を絞った問い合わせは、絞った言語(ja)の値になる。言語ごとの値を取る問い合わせになれば、代替も効く
    return LocalizedValues.fromDictionary(dictionary).resolve('ja');
  }
}

class _LocationRepository extends _ReadOnlyRepository {
  _LocationRepository(super.definition, super.client, super.language);

  EntityRecord _record(Query$LocationPageRead$allMstrLocations$nodes n) {
    final l = n.labels;
    final parents = n.parent.nodes;
    return EntityRecord(
      id: n.mstrLocationId,
      parentId: parents.isEmpty ? null : parents.first?.parentMstrLocationId,
      values: {
        'code': _ReadOnlyRepository.text(n.code),
        'control_code': _ReadOnlyRepository.text(n.controlCode),
        'name': _ReadOnlyRepository.dict(
          l?.sharedDictionaryBySharedDictionaryNameId,
        ),
        'pronunciation': _ReadOnlyRepository.dict(
          l?.sharedDictionaryBySharedDictionaryPronunciationId,
        ),
        'use': n.available == null ? '' : (n.available! ? '使用中' : '使用停止'),
        'remarks': _ReadOnlyRepository.text(n.remarks),
      },
    );
  }

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$LocationPageRead(
      Options$Query$LocationPageRead(
        variables: Variables$Query$LocationPageRead.fromJson({
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
          in result.parsedData?.allMstrLocations?.nodes ??
              const <Query$LocationPageRead$allMstrLocations$nodes?>[])
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
      'mstrLocationId': {'equalTo': id},
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

class _EquipmentRepository extends _ReadOnlyRepository {
  _EquipmentRepository(super.definition, super.client, super.language);

  EntityRecord _record(Query$EquipmentPageRead$allMstrEquipments$nodes n) {
    return EntityRecord(
      id: n.mstrEquipmentId,
      values: {
        'code': _ReadOnlyRepository.text(n.code),
        'control_code': _ReadOnlyRepository.text(n.controlCode),
        'label_code': _ReadOnlyRepository.text(n.labelCode),
        'item': _ReadOnlyRepository.text(n.mstrItemId),
        'category': _ReadOnlyRepository.text(n.mstrEquipmentCategoryId),
        'location': _ReadOnlyRepository.text(n.mstrLocationId),
      },
    );
  }

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$EquipmentPageRead(
      Options$Query$EquipmentPageRead(
        variables: Variables$Query$EquipmentPageRead.fromJson({
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
          in result.parsedData?.allMstrEquipments?.nodes ??
              const <Query$EquipmentPageRead$allMstrEquipments$nodes?>[])
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
      'mstrEquipmentId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}
