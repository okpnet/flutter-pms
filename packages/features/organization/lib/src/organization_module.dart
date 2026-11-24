// 手書き(tools/entity_gen/gen.js は上書きしない): 生成の雛形から、手で書き足している
import 'package:auth_files/auth_files_api.dart' show AdminCreateUserDestination;
import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'entities/organization_definitions.dart';
import 'entities/organization_labels.dart';
import 'entities/organization_seeds.dart';
import 'i18n/strings_provider.dart';
import 'page/approval_defaults_destination.dart';
import 'page/approval_defaults_page.dart';
import 'page/approval_defaults_paths.dart';
import 'page/approval_steps_destination.dart';
import 'page/approval_steps_page.dart';
import 'page/approval_steps_paths.dart';
import 'page/company_home_page.dart';

/// 会社情報をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
class OrganizationModule extends EntityFeatureModule {
  const OrganizationModule();

  static const _createUserAction = RowAction(key: 'create_user', target: '');
  static const _stepsAction = RowAction(key: 'steps', target: '');

  /// 作業者の台帳に、行の操作「ユーザーを作成」(管理者のユーザー作成の画面へ。担当者の ID と氏名を渡す)を足す。
  @override
  List<EntityDefinition> get definitions => [
    for (final d in organizationDefinitions)
      switch (d.key) {
        'staff' => _withAction(d, _createUserAction),
        'approvalpattern' => _withAction(d, _stepsAction), // 承認の段の画面(ドラッグで並べ替え)へ
        _ => d,
      },
  ];

  static EntityDefinition _withAction(EntityDefinition d, RowAction action) => EntityDefinition(
    key: d.key,
    fields: d.fields,
    owner: d.owner,
    isTree: d.isTree,
    treeTitle: d.treeTitle,
    treeTags: d.treeTags,
    inlineInOwner: d.inlineInOwner,
    uniqueKeys: d.uniqueKeys,
    reverseLists: d.reverseLists,
    nest: d.nest,
    viewOnly: d.viewOnly,
    rowActions: [...d.rowActions, action],
    inMenu: d.inMenu,
    compactFlags: d.compactFlags,
    confirmSave: d.confirmSave,
  );

  @override
  Map<String, List<EntityRecord>> get seeds => organizationSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) => _Labels(ref.watch(organizationStringsProvider));

  @override
  String get menuGroupId => 'organization';

  /// 会社情報の台帳(`/e/company`)は、表ではなく、概要の画面(画面案の「会社情報」)を出す。
  @override
  Widget? customListPage(WidgetRef ref, String key) =>
      key == 'company' ? CompanyHomePage(scope: entityScope(ref)) : null;

  /// メニューには、「会社情報」の 1 項目だけを出す(画面案どおり)。事業所・部署・承認・作業者などは、概要の画面から開く。
  @override
  List<MenuEntry> menuEntries(WidgetRef ref) {
    final labels = labelsOf(ref);
    return [
      MenuEntry(
        groupId: menuGroupId,
        groupLabel: menuGroupLabel(ref),
        label: labels.entity('company'),
        destination: const EntityListDestination('company'),
      ),
    ];
  }

  /// 標準の承認パターンの画面(会社情報の「承認」から開く)。
  @override
  List<RouteBase> get routes => [
    ...super.routes,
    GoRoute(path: ApprovalDefaultsPaths.home, builder: (context, state) => const ApprovalDefaultsPage()),
    GoRoute(
      path: ApprovalStepsPaths.home,
      builder: (context, state) => ApprovalStepsPage(
        key: ValueKey(state.uri.queryParameters['id']),
        patternId: state.uri.queryParameters['id'] ?? '',
        patternName: state.uri.queryParameters['name'] ?? '',
      ),
    ),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) => switch (destination) {
    ApprovalDefaultsDestination() => ApprovalDefaultsPaths.home,
    ApprovalStepsDestination(:final patternId, :final patternName) => ApprovalStepsPaths.of(patternId, patternName: patternName),
    _ => super.locationOf(destination),
  };

  /// 承認パターンの編集画面の下に、承認の段(子の表。ドラッグで並べ替え・追加・編集・削除)を出す。
  @override
  Widget? editSection(BuildContext context, WidgetRef ref, String entityKey, String id) =>
      entityKey == 'approvalpattern' ? ApprovalStepsPage(key: ValueKey('steps:$id'), patternId: id, embedded: true) : null;

  /// 承認パターンの台帳の行の操作「承認の段」で、承認の段の画面(ドラッグで並べ替え)へ進む。
  @override
  Future<bool> handleRowAction(WidgetRef ref, RowAction action, EntityRecord record) async {
    if (action.key == 'create_user') {
      await ref.read(commandBusProvider).execute(AdminCreateUserDestination(appUserId: record.id, name: record.valueOf('name')));
      return true;
    }
    if (action.key != 'steps') return false;
    await ref.read(commandBusProvider).execute(ApprovalStepsDestination(record.id, patternName: record.valueOf('name')));
    return true;
  }

  @override
  String menuGroupLabel(WidgetRef ref) =>
      OrganizationLabels(ref.watch(organizationStringsProvider)).menuGroup;
}

/// 生成された表示名に、手書きの操作の名前(ユーザーを作成)を足す。
class _Labels extends OrganizationLabels {
  // ignore: use_super_parameters
  const _Labels(OrganizationStrings t) : _strings = t, super(t);

  final OrganizationStrings _strings;

  @override
  String field(String entityKey, String fieldKey) =>
      entityKey == 'staff' && fieldKey == 'create_user'
      ? _strings.staffUser.createUser
      : entityKey == 'approvalpattern' && fieldKey == 'steps'
      ? _strings.staffUser.approvalSteps
      : super.field(entityKey, fieldKey);
}
