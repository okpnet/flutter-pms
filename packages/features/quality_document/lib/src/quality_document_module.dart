// 手書き(tools/entity_gen/gen.js は上書きしない): 生成の雛形から、手で書き足している
import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/widgets.dart' show ValueKey;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'entities/quality_document_definitions.dart';
import 'entities/quality_document_labels.dart';
import 'entities/quality_document_seeds.dart';
import 'i18n/strings_provider.dart';
import 'page/document_body_destination.dart';
import 'page/document_body_page.dart';
import 'page/document_body_paths.dart';

/// 品質管理文書をアプリへ組み込むための口。
///
/// 台帳・編集の画面は実体の定義から作る([EntityFeatureModule])。
/// 取得元はサンプル(メモリ上)で、GraphQL 版は [repositories] を差し替える。
///
/// 文書コンテンツの台帳の行の操作「本文を編集」で、本文の画面(`DocumentBodyPage`。Markdown の閲覧・編集)へ進む。
/// 生成された定義は直接編集せず、ここで操作を足す。
class QualityDocumentModule extends EntityFeatureModule {
  const QualityDocumentModule();

  static const _bodyAction = RowAction(key: 'edit_body', target: '');

  @override
  List<EntityDefinition> get definitions => [
    for (final d in qualityDocumentDefinitions) d.key == 'doccontent' ? _withBodyAction(d) : d,
  ];

  static EntityDefinition _withBodyAction(EntityDefinition d) => EntityDefinition(
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
    rowActions: [...d.rowActions, _bodyAction],
    inMenu: d.inMenu,
    compactFlags: d.compactFlags,
    confirmSave: d.confirmSave,
  );

  @override
  Map<String, List<EntityRecord>> get seeds => qualityDocumentSeeds;

  @override
  EntityLabels labelsOf(WidgetRef ref) => _Labels(ref.watch(qualityDocumentStringsProvider));

  @override
  String get menuGroupId => operationsMenuGroupId;

  /// 文書と文書コンテンツ(ページ)の閲覧・編集は、マニュアル(`manual`。文書 = ルート、コンテンツ = ページの木)に統合した。
  /// 台帳の画面(`/e/doc`・`/e/doccontent`)は残すが、メニューには出さない。文書階層(`doctier`)・レポート(`report`)も、
  /// 文書のメニュー(台帳の 1 項目)には出さず、管理者の設定の入口から開く(画面とパスは残す)。
  static const _hiddenFromMenu = {'doc', 'doccontent', 'doctier', 'report'};

  @override
  List<MenuEntry> menuEntries(WidgetRef ref) => [
    for (final e in super.menuEntries(ref))
      if (!(e.destination is EntityListDestination && _hiddenFromMenu.contains((e.destination as EntityListDestination).entityKey))) e,
  ];

  @override
  String menuGroupLabel(WidgetRef ref) =>
      operationsMenuGroupLabel(ref.watch(localeProvider).languageCode);

  @override
  List<RouteBase> get routes => [
    ...super.routes,
    GoRoute(
      path: DocumentBodyPaths.home,
      builder: (context, state) => DocumentBodyPage(
        key: ValueKey(state.uri.queryParameters['id']),
        contentId: state.uri.queryParameters['id'] ?? '',
        startEditing: state.uri.queryParameters['edit'] == '1',
      ),
    ),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) => switch (destination) {
    DocumentBodyDestination(:final contentId, :final edit) => DocumentBodyPaths.of(contentId, edit: edit),
    _ => super.locationOf(destination),
  };

  @override
  Future<bool> handleRowAction(WidgetRef ref, RowAction action, EntityRecord record) async {
    if (action.key != _bodyAction.key) return false;
    await ref.read(commandBusProvider).execute(DocumentBodyDestination(record.id));
    return true;
  }
}

/// 生成された表示名に、手書きの操作の名前(本文を編集)を足す。
class _Labels extends QualityDocumentLabels {
  const _Labels(QualityDocumentStrings t) : _strings = t, super(t);

  final QualityDocumentStrings _strings;

  @override
  String field(String entityKey, String fieldKey) =>
      fieldKey == 'edit_body' ? _strings.body.action : super.field(entityKey, fieldKey);
}
