// 手書き(tools/entity_gen/gen.js は上書きしない): 生成の雛形から、行の操作「異常の登録」を手で書き足している
import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quality/quality_api.dart' show ComplaintRegisterDestination;

import 'entities/purchasing_definitions.dart';
import 'entities/purchasing_labels.dart';
import 'entities/purchasing_seeds.dart';
import 'i18n/strings_provider.dart';

/// 購買をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class PurchasingModule extends EntityFeatureModule {
  const PurchasingModule();

  static const _complaintAction = RowAction(key: 'complaint', target: '');

  /// purchaserec の台帳に、行の操作「異常を登録」(品質管理の異常の登録の画面へ。対象を決めて開く)を足す。
  @override
  List<EntityDefinition> get definitions => [
    for (final d in purchasingDefinitions) d.key == 'purchaserec' ? withRowAction(d, _complaintAction) : d,
  ];

  @override
  Future<bool> handleRowAction(WidgetRef ref, RowAction action, EntityRecord record) async {
    if (action.key != 'complaint') return false;
    final label = record.valueOf('receive_at');
    await ref.read(commandBusProvider).execute(
      ComplaintRegisterDestination(target: 'purchaseRec', targetId: record.id, targetLabel: label.isEmpty ? null : label),
    );
    return true;
  }

  @override
  Map<String, List<EntityRecord>> get seeds => purchasingSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) {
    final t = ref.watch(purchasingStringsProvider);
    return ExtraFieldLabels(PurchasingLabels(t), {'purchaserec.complaint': t.complaintAction.purchaseRec});
  }

  @override
  String get menuGroupId => 'purchasing';

  @override
  String menuGroupLabel(WidgetRef ref) =>
      PurchasingLabels(ref.watch(purchasingStringsProvider)).menuGroup;
}
