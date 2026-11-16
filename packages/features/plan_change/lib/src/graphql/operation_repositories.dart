import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';

import '../entities/plan_change_definitions.dart';
import 'cancel_open_actions.dart';

/// 未処置一覧の行の操作の実体(`actreqrelease` など)の取得元。保存すると、DB の関数を呼び、計画変更が追記される。
///
/// 台帳・編集・削除は無い(追記のみ。R3)。一覧は常に空、1件の取得は null。保存は新規だけで、成功すると追記された
/// 計画変更の ID を持つ [EntityRecord] を返す。対象(`target`)は、未処置一覧の行の id(`種類:UUID`)から UUID だけを取る。
/// DB の失敗(errcode)は、数量の誤りだけを画面の検証エラーにし、それ以外は例外のまま投げる(画面は保存失敗を出す)。
///
/// パターン: Adapter(画面の [EntityRecord] と、DB の関数の呼び出しを変換する)
List<IEntityRepository> operationRepositories(GraphQLClient client) {
  final actions = CancelOpenActions(client);
  return [
    for (final d in planChangeDefinitions.where(
      (d) => _operations.containsKey(d.key),
    ))
      _OperationRepository(d, actions, _operations[d.key]!),
  ];
}

typedef _Operation =
    Future<CancelOpenActionResult> Function(
      CancelOpenActions actions,
      _Input input,
    );

class _Input {
  const _Input(this.target, this.quantity, this.container, this.reason);

  final String target;
  final String quantity;
  final String? container;
  final String? reason;
}

/// 実体のキー → 呼び出し。
final Map<String, _Operation> _operations = {
  'actreqrelease': (a, i) =>
      a.releaseInventoryRequest(i.target, reason: i.reason),
  'actreqhold': (a, i) => a.holdInventoryRequest(
    i.target,
    containerId: i.container!,
    reason: i.reason,
  ),
  'actlotrelease': (a, i) => a.releaseLot(i.target, reason: i.reason),
  'actlothold': (a, i) => a.holdLot(
    i.target,
    containerId: i.container!,
    quantity: i.quantity.isEmpty ? null : i.quantity,
    reason: i.reason,
  ),
  'actlotscrap': (a, i) =>
      a.scrapLot(i.target, quantity: i.quantity, reason: i.reason),
  'actlotdeliver': (a, i) =>
      a.deliverLot(i.target, quantity: i.quantity, reason: i.reason),
  'actshipcancel': (a, i) =>
      a.cancelShippingOrderDetail(i.target, reason: i.reason),
  'actpurcancel': (a, i) =>
      a.cancelPurchaseDetail(i.target, quantity: i.quantity, reason: i.reason),
};

class _OperationRepository implements IEntityRepository {
  _OperationRepository(this.definition, this._actions, this._operation);

  @override
  final EntityDefinition definition;
  final CancelOpenActions _actions;
  final _Operation _operation;

  @override
  Future<List<EntityRecord>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) async => const [];

  @override
  Future<EntityRecord?> findById(String id) async => null;

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];

  @override
  Future<void> remove(String id) =>
      throw UnsupportedError('${definition.key}: 追記のみの操作です');

  /// 未処置一覧の行の id(`種類:UUID`)から UUID を取る。
  static String targetOf(String rowId) =>
      rowId.substring(rowId.lastIndexOf(':') + 1);

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    if (record.id.isNotEmpty) {
      throw UnsupportedError('${definition.key}: 追記のみの操作です(更新できません)');
    }
    final container = record.valueOf('container');
    final reason = record.valueOf('reason');
    try {
      final result = await _operation(
        _actions,
        _Input(
          targetOf(record.valueOf('target')),
          record.valueOf('quantity'),
          container.isEmpty ? null : container,
          reason.isEmpty ? null : reason,
        ),
      );
      return EntityRecord(id: result.planChangeId, values: record.values);
    } on CancelOpenActionException catch (e) {
      // OPR02: 数量・引数が不正(0 以下・残や在庫を超える)
      if (e.errcode == 'OPR02' &&
          definition.fields.any((f) => f.key == 'quantity')) {
        throw const EntityValidationException({
          'quantity': EntityFieldError.aboveMaximum,
        });
      }
      rethrow;
    }
  }
}
