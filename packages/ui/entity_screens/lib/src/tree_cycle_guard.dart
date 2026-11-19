import 'record.dart';

/// 体系(ツリー)の親を変えたとき、循環しないかを、保存の前に調べる(Guard)。
///
/// 自分自身や、自分の子孫を親にすると循環する。DB の体系の閉包(`hrchy_xxx`。祖先と子孫のすべての組)を
/// 引く関数を [isAncestorOf] に渡す。DB のトリガー(`trg_00_cycle_*`。エラーの文に「体系の循環」)は
/// 最後の砦で、通常はここで先に止める。
///
/// 使い方(取得元の保存・親の付け替えの前に呼ぶ):
/// ```dart
/// await guard.ensureAllowed(id: record.id, newParentId: record.parentId);
/// ```
class TreeCycleGuard {
  const TreeCycleGuard(this.isAncestorOf);

  /// [ancestorId] が [descendantId] の祖先(同じ ID を含む)か。
  final Future<bool> Function(String ancestorId, String descendantId)
  isAncestorOf;

  /// 親をたどって調べる版。閉包を引けない取得元(サンプルなど)向け。[parentOf] は ID から親の ID(トップは null)を返す。
  factory TreeCycleGuard.walkingParents(
    Future<String?> Function(String id) parentOf,
  ) => TreeCycleGuard((ancestorId, descendantId) async {
    String? current = descendantId;
    final seen = <String>{};
    while (current != null && seen.add(current)) {
      if (current == ancestorId) return true;
      current = await parentOf(current);
    }
    return false;
  });

  /// [newParentId] を [id] の親にしてよいか。循環するなら親の項目の `parentCycle` で [EntityValidationException]。
  /// 新規([id] が空)・トップ([newParentId] が null か空)は調べない。
  Future<void> ensureAllowed({
    required String id,
    required String? newParentId,
  }) async {
    if (id.isEmpty || newParentId == null || newParentId.isEmpty) return;
    if (await isAncestorOf(id, newParentId)) {
      throw const EntityValidationException({
        EntityValidationException.parentKey: EntityFieldError.parentCycle,
      });
    }
  }

  /// DB のトリガーが返したエラーの文が、体系の循環か(検査をすり抜けたときに、同じ検証エラーにする)。
  static bool isTriggerMessage(String message) => message.contains('体系の循環');
}
