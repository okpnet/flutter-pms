// 手書き(tools/entity_gen/gen.js は上書きしない): 生成の雛形から、手で書き足している
import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/widgets.dart' show ValueKey;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'entities/quality_definitions.dart';
import 'entities/quality_labels.dart';
import 'entities/quality_seeds.dart';
import 'i18n/strings_provider.dart';
import 'page/audit_plan_destination.dart';
import 'page/audit_plan_page.dart';
import 'page/audit_run_destination.dart';
import 'page/audit_run_page.dart';
import 'page/audit_run_paths.dart';
import 'page/complaint_register_destination.dart';
import 'page/complaint_register_page.dart';
import 'page/my_audits_page.dart';

/// 品質管理をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class QualityModule extends EntityFeatureModule {
  const QualityModule();

  @override
  List<EntityDefinition> get definitions => qualityDefinitions;

  @override
  Map<String, List<EntityRecord>> get seeds => qualitySeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) =>
      QualityLabels(ref.watch(qualityStringsProvider));

  @override
  String get menuGroupId => operationsMenuGroupId;

  /// 監査を実施する側の画面(自分の監査・監査の実施)。台帳(監査標準・計画)は、項目を作る側の画面のまま。
  @override
  List<RouteBase> get routes => [
    ...super.routes,
    GoRoute(path: AuditRunPaths.myAudits, builder: (context, state) => const MyAuditsPage()),
    GoRoute(path: AuditRunPaths.plan, builder: (context, state) => const AuditPlanPage()),
    GoRoute(
      path: ComplaintRegisterPaths.register,
      builder: (context, state) => ComplaintRegisterPage(
        key: ValueKey(state.uri.toString()),
        target: state.uri.queryParameters['target'],
        targetId: state.uri.queryParameters['id'],
        targetLabel: state.uri.queryParameters['label'],
      ),
    ),
    GoRoute(
      path: AuditRunPaths.run,
      builder: (context, state) => AuditRunPage(
        key: ValueKey(state.uri.queryParameters['id']),
        detailId: state.uri.queryParameters['id'] ?? '',
      ),
    ),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) => switch (destination) {
    MyAuditsDestination() => AuditRunPaths.myAudits,
    AuditPlanDestination() => AuditRunPaths.plan,
    ComplaintRegisterDestination(:final target, :final targetId, :final targetLabel) => ComplaintRegisterPaths.of(target: target, targetId: targetId, targetLabel: targetLabel),
    AuditRunDestination(:final detailId) => AuditRunPaths.runOf(detailId),
    _ => super.locationOf(destination),
  };

  /// メニューの先頭に「自分の監査」を足す(割り当てられた監査だけを見る入口)。
  @override
  List<MenuEntry> menuEntries(WidgetRef ref) {
    final s = ref.watch(qualityStringsProvider);
    MenuEntry entry(String label, PageDestination<Object?> destination) =>
        MenuEntry(groupId: menuGroupId, groupLabel: menuGroupLabel(ref), label: label, destination: destination);
    // 台帳の項目から、監査チーム(監査の子として開く)を除く。異常 → 異常の登録 → 自分の監査 → 監査の計画 → ほかの台帳の順
    bool isLedger(MenuEntry e, String key) => e.destination is EntityListDestination && (e.destination as EntityListDestination).entityKey == key;
    final ledgers = super.menuEntries(ref).where((e) => !isLedger(e, 'auditteam')).toList();
    final complaint = ledgers.where((e) => isLedger(e, 'complaint')).toList();
    final others = ledgers.where((e) => !isLedger(e, 'complaint')).toList();
    return [
      ...complaint,
      entry(s.complaintRegister.title, const ComplaintRegisterDestination()),
      entry(s.auditRun.myTitle, const MyAuditsDestination()),
      entry(s.auditPlan.title, const AuditPlanDestination()),
      ...others,
    ];
  }

  @override
  String menuGroupLabel(WidgetRef ref) => operationsMenuGroupLabel(ref.watch(localeProvider).languageCode);
}
