import 'package:cost_model/cost_model.dart';
import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:gql/ast.dart' show DocumentNode;
import 'package:graphql/client.dart';

import '../entities/cost_definitions.dart';

/// 原価の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立てる。
///
/// 対象は、標準原価(`costunit`。DB のビュー `v_item_unit_cost`)・在庫評価額(`costvaluation`。`v_item_valuation`)・
/// ロットの評価額(`costlot`。`v_visiter_valuation`)。原価・評価額は DB のビューが計算した値をそのまま写す
/// (Dart で計算しない)。社外の所有・譲渡・仮止め・評価の対象は boolean の列で受け取り、画面の真偽の項目に写す。
/// 抽出条件・並び順は無視する(絞り込みと並べ替えはテーブル側)。
///
/// パターン: Adapter(ビューの行 → 画面の [EntityRecord])
List<IEntityRepository> costRepositories(GraphQLClient client) => [
  _CostRepository(
    _definition('costunit'),
    client,
    document: documentNodeQueryCostItemUnitPageRead,
    listKey: 'allVItemUnitCosts',
    idKey: 'itemId',
    record: (n) => {
      'item': _text(n['itemId']),
      'purchase_cost': _number(n['purchaseCost']),
      'production_cost': _number(n['productionCost']),
      'component_cost': _number(n['componentCost']),
      'unit_cost': _number(n['unitCost']),
      'has_supplier': _flag(n['hasSupplier']),
      'has_components': _flag(n['hasComponents']),
    },
    orderBy: 'ITEM_CODE_ASC',
  ),
  _CostRepository(
    _definition('costvaluation'),
    client,
    document: documentNodeQueryCostItemValuationPageRead,
    listKey: 'allVItemValuations',
    idKey: 'itemId',
    record: (n) => {
      'item': _text(n['itemId']),
      'quantity': _number(n['quantity']),
      'evaluated_quantity': _number(n['evaluatedQuantity']),
      'external_quantity': _number(n['externalQuantity']),
      'amount': _number(n['amount']),
    },
    orderBy: 'ITEM_CODE_ASC',
  ),
  _CostRepository(
    _definition('costlot'),
    client,
    document: documentNodeQueryCostVisiterValuationPageRead,
    listKey: 'allVVisiterValuations',
    idKey: 'transVisiterId',
    record: (n) => {
      'symbol': _text(n['symbol']),
      'item': _text(n['itemId']),
      'quantity': _number(n['quantity']),
      'held': _flag(n['held']),
      'external_owned': _flag(n['externalOwned']),
      'transferred': _flag(n['transferred']),
      'evaluated': _flag(n['evaluated']),
      'unit_cost': _number(n['unitCost']),
      'unit_value': _number(n['unitValue']),
      'amount': _number(n['amount']),
    },
    orderBy: 'SYMBOL_ASC',
  ),
];

EntityDefinition _definition(String key) => costDefinitions.firstWhere((d) => d.key == key);

String _text(Object? v) => v == null ? '' : '$v';

/// DB の numeric(文字列)を、画面の数値の形にする(小数の 0 は省く)。
String _number(Object? v) {
  final s = _text(v);
  if (s.isEmpty) return '';
  final n = num.tryParse(s);
  if (n == null) return s;
  return n == n.roundToDouble() ? '${n.round()}' : '$n';
}

/// 真偽(boolean の列)。画面の真偽の項目の値(オン = [flagOn]、オフ = 空)。
String _flag(Object? v) => v == true ? flagOn : '';

class _CostRepository implements IEntityRepository {
  _CostRepository(
    this.definition,
    this.client, {
    required this.document,
    required this.listKey,
    required this.idKey,
    required this.record,
    required this.orderBy,
  });

  @override
  final EntityDefinition definition;
  final GraphQLClient client;
  final DocumentNode document;
  final String listKey;
  final String idKey;
  final Map<String, String> Function(Map<String, dynamic> node) record;
  final String orderBy;

  Future<List<EntityRecord>> _read(int first, int offset, Map<String, dynamic> filter) async {
    final result = await client.query(
      QueryOptions(
        document: document,
        variables: {
          'first': first,
          'offset': offset,
          'orderBy': [orderBy],
          if (filter.isNotEmpty) 'filter': filter,
        },
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    final nodes = ((result.data?[listKey] as Map?)?['nodes'] as List?) ?? const [];
    return [
      for (final n in nodes.whereType<Map<String, dynamic>>()) EntityRecord(id: _text(n[idKey]), values: record(n)),
    ];
  }

  @override
  Future<List<EntityRecord>> find({required int take, int skip = 0, Expression? predicate, SortExpression? orders}) =>
      _read(take, skip, const {});

  @override
  Future<EntityRecord?> findById(String id) async {
    final rows = await _read(1, 0, {
      idKey: {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];

  @override
  Future<EntityRecord> save(EntityRecord record) => throw UnsupportedError('${definition.key}: 読み取り専用です');

  @override
  Future<void> remove(String id) => throw UnsupportedError('${definition.key}: 読み取り専用です');
}
