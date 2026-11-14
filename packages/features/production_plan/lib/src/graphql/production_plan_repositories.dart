import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:production_plan_model/production_plan_model.dart';

import '../entities/production_plan_definitions.dart';

/// 生産計画の実体の取得元(GraphQL 版)。アプリが [GraphQLClient] を渡して組み立て、
/// `entityRepositoryOverridesProvider` に渡すと、サンプル(メモリ上)の代わりに使われる。
///
/// 対象は、DB に対応する実体(資材計画・生産計画)。生産計画は、停止・打ち切りを読み取り専用の項目で持つ
/// (停止・打ち切りの計画は、MRP が凍結し、工程の負荷に積まれない)。
///
/// 資材計画・生産計画は登録・更新・削除(論理削除)ができる。品目の履歴ID+IDは、画面の ID から最新の履歴ID を引いて送る。担当者(更新者)は送らない。
/// 停止・打ち切りは読み取り専用で、変えない。
/// 停止・打ち切りの操作は、DB の関数(\`operations_plan_set_stop\`・\`operations_plan_discontinue\`)で行い、画面は別に作る。
/// 生成された型は、この中だけで使い、外へ出さない。抽出条件・並び順は無視する(サンプルと同じ)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
List<IEntityRepository> productionPlanRepositories(GraphQLClient client) {
  final language = _LanguageCode(client);
  return [
    _ResourcePlanRepository(_resourcePlanDefinition, client, language),
    _OperationsPlanRepository(_operationsPlanDefinition, client, language),
  ];
}

EntityDefinition _definition(String key) =>
    productionPlanDefinitions.firstWhere((d) => d.key == key);

/// 書き込める定義。取得元が値を返す項目のうち、[readOnlyKeys] だけを読み取り専用にし、ほかは生成された定義のまま編集できる。
EntityDefinition _writableDefinition(
  String key,
  Set<String> supplied,
  Set<String> readOnlyKeys,
) {
  final d = _definition(key);
  return EntityDefinition(
    key: d.key,
    owner: d.owner,
    fields: [
      for (final f in d.fields)
        if (supplied.contains(f.key))
          readOnlyKeys.contains(f.key) ? _readOnly(f) : f,
    ],
  );
}

/// 資材計画: 取得元が値を返す項目。
final EntityDefinition _resourcePlanDefinition =
    _writableDefinition('resplan', {
      'trans_order_detail_id',
      'trans_unrecognized_detail_id',
      'item_id',
      'parent_trans_operations_plan_id',
      'register_at',
      'quantity',
      'inventory_resavation',
      'deadline',
      'remarks',
    }, const {});

/// 生産計画: 取得元が値を返す項目。停止・打ち切りは読み取り専用(操作は DB の関数)。
final EntityDefinition _operationsPlanDefinition = _writableDefinition(
  'opsplan',
  {'deadline', 'quantity', 'stop', 'discontinue', 'remarks'},
  const {'stop', 'discontinue'},
);

FieldDefinition _readOnly(FieldDefinition f) => FieldDefinition(
  key: f.key,
  kind: f.kind,
  required: false,
  readOnly: true,
  options: f.options,
  reference: f.reference,
);

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

  /// 品目の最新の履歴ID(`revision` が最大の行)。品目の ID から引く。
  Future<String> itemHistoryId(String masterId) async {
    final result = await client.query(
      QueryOptions(
        document: gql(
          'query(\$id: UUID!) { allHistoryMstrItems(first: 1, condition: {mstrItemId: \$id}, orderBy: REVISION_DESC) { nodes { historyId } } }',
        ),
        variables: {'id': masterId},
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    final nodes =
        (result.data?['allHistoryMstrItems'] as Map?)?['nodes'] as List? ??
        const [];
    if (nodes.isEmpty) throw StateError('履歴が見つかりません: $masterId');
    return (nodes.first as Map)['historyId'] as String;
  }

  /// 画面の値(文字)を、送る値にする。空は null。
  static String? str(EntityRecord r, String key) {
    final v = r.valueOf(key).trim();
    return v.isEmpty ? null : v;
  }

  /// 日付(年-月-日)を、送る日時(ISO 8601)にする。
  static String? isoDate(EntityRecord r, String key) {
    final v = str(r, key);
    if (v == null) return null;
    return DateTime.tryParse(v)?.toIso8601String();
  }

  /// 必須の項目が空・数値・日付が不正なときは [EntityValidationException]。
  void validate(EntityRecord r) {
    final errors = <String, EntityFieldError>{};
    for (final f in definition.fields) {
      if (f.readOnly) continue;
      final v = r.valueOf(f.key).trim();
      if (v.isEmpty) {
        if (f.required) errors[f.key] = EntityFieldError.required;
        continue;
      }
      if (f.kind == FieldKind.number && num.tryParse(v) == null) {
        errors[f.key] = EntityFieldError.invalidNumber;
      }
      if (f.kind == FieldKind.date && DateTime.tryParse(v) == null) {
        errors[f.key] = EntityFieldError.invalidDate;
      }
    }
    if (errors.isNotEmpty) throw EntityValidationException(errors);
  }

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

  /// 日付(ISO 8601)を、画面の日付の形(年-月-日)にする。
  static String date(Object? v) {
    final s = text(v);
    return s.length >= 10 ? s.substring(0, 10) : s;
  }

  /// DB の numeric(文字列)を、画面の数値の形にする(小数の 0 は省く)。
  static String number(Object? v) {
    final s = text(v);
    if (s.isEmpty) return '';
    final n = num.tryParse(s);
    if (n == null) return s;
    return n == n.roundToDouble() ? '${n.round()}' : '$n';
  }

  static String flag(bool? v) => v == true ? flagOn : '';
}

class _ResourcePlanRepository extends _ReadOnlyRepository {
  _ResourcePlanRepository(super.definition, super.client, super.language);

  EntityRecord _record(
    Query$ResourcePlanPageRead$allTransResourcePlans$nodes n,
  ) => EntityRecord(
    id: n.transResourcePlanId,
    values: {
      'trans_order_detail_id': _ReadOnlyRepository.text(n.transOrderDetailId),
      'trans_unrecognized_detail_id': _ReadOnlyRepository.text(
        n.transUnrecognizedDetailId,
      ),
      'item_id': _ReadOnlyRepository.text(n.itemId),
      'parent_trans_operations_plan_id': _ReadOnlyRepository.text(
        n.parentTransOperationsPlanId,
      ),
      'register_at': _ReadOnlyRepository.date(n.registerAt),
      'quantity': _ReadOnlyRepository.number(n.quantity),
      'inventory_resavation': _ReadOnlyRepository.number(n.inventoryResavation),
      'deadline': _ReadOnlyRepository.date(n.deadline),
      'remarks': _ReadOnlyRepository.text(n.remarks),
    },
  );

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$ResourcePlanPageRead(
      Options$Query$ResourcePlanPageRead(
        variables: Variables$Query$ResourcePlanPageRead.fromJson({
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
          in result.parsedData?.allTransResourcePlans?.nodes ??
              const <Query$ResourcePlanPageRead$allTransResourcePlans$nodes?>[])
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
      'transResourcePlanId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    validate(record);
    final itemId = _ReadOnlyRepository.str(record, 'item_id')!;
    final vars = <String, dynamic>{
      'transOrderDetailId': _ReadOnlyRepository.str(
        record,
        'trans_order_detail_id',
      ),
      'transUnrecognizedDetailId': _ReadOnlyRepository.str(
        record,
        'trans_unrecognized_detail_id',
      ),
      'parentTransOperationsPlanId': _ReadOnlyRepository.str(
        record,
        'parent_trans_operations_plan_id',
      ),
      'registerAt': _ReadOnlyRepository.isoDate(record, 'register_at'),
      'quantity': _ReadOnlyRepository.str(record, 'quantity'),
      'inventoryResavation': _ReadOnlyRepository.str(
        record,
        'inventory_resavation',
      ),
      'deadline': _ReadOnlyRepository.isoDate(record, 'deadline'),
      'itemHistoryId': await itemHistoryId(itemId),
      'itemId': itemId,
      'remarks': _ReadOnlyRepository.str(record, 'remarks'),
    };
    String id;
    if (record.id.isEmpty) {
      final result = await client.mutate$ResourcePlanPageCreate(
        Options$Mutation$ResourcePlanPageCreate(
          variables: Variables$Mutation$ResourcePlanPageCreate.fromJson(vars),
        ),
      );
      final e = result.exception;
      if (e != null) throw e;
      id = result
          .parsedData!
          .createTransResourcePlan!
          .transResourcePlan!
          .transResourcePlanId;
    } else {
      final result = await client.mutate$ResourcePlanPageEdit(
        Options$Mutation$ResourcePlanPageEdit(
          variables: Variables$Mutation$ResourcePlanPageEdit.fromJson({
            ...vars,
            'transResourcePlanId': record.id,
          }),
        ),
      );
      final e = result.exception;
      if (e != null) throw e;
      id = record.id;
    }
    return (await findById(id)) ?? record;
  }

  /// 論理削除(`remove = true`)。物理削除はしない。
  @override
  Future<void> remove(String id) async {
    final result = await client.mutate$ResourcePlanPageRemove(
      Options$Mutation$ResourcePlanPageRemove(
        variables: Variables$Mutation$ResourcePlanPageRemove(
          transResourcePlanId: id,
          remove: true,
        ),
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
  }
}

class _OperationsPlanRepository extends _ReadOnlyRepository {
  _OperationsPlanRepository(super.definition, super.client, super.language);

  EntityRecord _record(
    Query$OperationsPlanPageRead$allTransOperationsPlans$nodes n,
  ) => EntityRecord(
    id: n.transOperationsPlanId,
    parentId: n.transResourcePlanId,
    values: {
      'deadline': _ReadOnlyRepository.date(n.deadline),
      'quantity': _ReadOnlyRepository.number(n.quantity),
      'remarks': _ReadOnlyRepository.text(n.remarks),
      'stop': _ReadOnlyRepository.flag(n.stop),
      'discontinue': _ReadOnlyRepository.flag(n.discontinue),
    },
  );

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$OperationsPlanPageRead(
      Options$Query$OperationsPlanPageRead(
        variables: Variables$Query$OperationsPlanPageRead.fromJson({
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
          in result.parsedData?.allTransOperationsPlans?.nodes ??
              const <
                Query$OperationsPlanPageRead$allTransOperationsPlans$nodes?
              >[])
        if (n != null) _record(n),
    ];
  }

  /// 親(資材計画)が決まらない一覧は、資材計画ごとに引く(台帳の「表の中の表」は、親ごとに [findByParent] を使う)。
  @override
  Future<List<EntityRecord>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) async => const [];

  @override
  Future<EntityRecord?> findById(String id) async {
    final rows = await _read(1, 0, {
      'transOperationsPlanId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async =>
      parentId == null
      ? const []
      : _read(200, 0, {
          'transResourcePlanId': {'equalTo': parentId},
        });

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    validate(record);
    final vars = <String, dynamic>{
      'quantity': _ReadOnlyRepository.str(record, 'quantity'),
      'deadline': _ReadOnlyRepository.isoDate(record, 'deadline'),
      'remarks': _ReadOnlyRepository.str(record, 'remarks'),
    };
    String id;
    if (record.id.isEmpty) {
      final parentId = record.parentId;
      if (parentId == null) {
        throw const EntityValidationException({
          EntityValidationException.parentKey: EntityFieldError.required,
        });
      }
      final result = await client.mutate$OperationsPlanPageCreate(
        Options$Mutation$OperationsPlanPageCreate(
          variables: Variables$Mutation$OperationsPlanPageCreate.fromJson({
            ...vars,
            'transResourcePlanId': parentId,
          }),
        ),
      );
      final e = result.exception;
      if (e != null) throw e;
      id = result
          .parsedData!
          .createTransOperationsPlan!
          .transOperationsPlan!
          .transOperationsPlanId;
    } else {
      final result = await client.mutate$OperationsPlanPageEdit(
        Options$Mutation$OperationsPlanPageEdit(
          variables: Variables$Mutation$OperationsPlanPageEdit.fromJson({
            ...vars,
            'transOperationsPlanId': record.id,
          }),
        ),
      );
      final e = result.exception;
      if (e != null) throw e;
      id = record.id;
    }
    return (await findById(id)) ?? record;
  }

  /// 論理削除(`remove = true`)。物理削除はしない。
  @override
  Future<void> remove(String id) async {
    final result = await client.mutate$OperationsPlanPageRemove(
      Options$Mutation$OperationsPlanPageRemove(
        variables: Variables$Mutation$OperationsPlanPageRemove(
          transOperationsPlanId: id,
          remove: true,
        ),
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
  }
}
