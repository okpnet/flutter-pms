// 手書き(tools/entity_gen/gen.js は上書きしない): 生成の雛形から、行の操作「異常の登録」を手で書き足している
import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quality/quality_api.dart' show ComplaintRegisterDestination;

import 'entities/sales_definitions.dart';
import 'entities/sales_labels.dart';
import 'entities/sales_seeds.dart';
import 'i18n/strings_provider.dart';

/// 営業をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class SalesModule extends EntityFeatureModule {
  const SalesModule();

  static const _complaintAction = RowAction(key: 'complaint', target: '');

  /// order の台帳に、行の操作「クレームを登録」(品質管理の異常の登録の画面へ。対象を決めて開く)を足す。
  @override
  List<EntityDefinition> get definitions => [
    for (final d in salesDefinitions) d.key == 'order' ? withRowAction(d, _complaintAction) : d,
  ];

  @override
  Future<bool> handleRowAction(WidgetRef ref, RowAction action, EntityRecord record) async {
    if (action.key != 'complaint') return false;
    final label = record.valueOf('order_number');
    await ref.read(commandBusProvider).execute(
      ComplaintRegisterDestination(target: 'order', targetId: record.id, targetLabel: label.isEmpty ? null : label),
    );
    return true;
  }

  @override
  Map<String, List<EntityRecord>> get seeds => salesSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) {
    final t = ref.watch(salesStringsProvider);
    return ExtraFieldLabels(SalesLabels(t), {'order.complaint': t.complaintAction.order});
  }

  @override
  String get menuGroupId => 'sales';

  @override
  String menuGroupLabel(WidgetRef ref) =>
      SalesLabels(ref.watch(salesStringsProvider)).menuGroup;
}
