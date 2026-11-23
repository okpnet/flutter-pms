import 'package:entity_screens/entity_screens.dart';

/// 生成された表示名([base])に、手書きの行の操作などの項目名([extra])を足す(Decorator)。
///
/// 生成物は再生成で上書きされるため、行の操作(`RowAction`)の名前は、機能のモジュールが持つ文字([extra])として足す。
/// キーは `<実体のキー>.<項目(操作)のキー>`(例 `order.complaint`)。ない項目は [base] に任せる。
class ExtraFieldLabels implements EntityLabels {
  const ExtraFieldLabels(this.base, this.extra);

  final EntityLabels base;
  final Map<String, String> extra;

  @override
  String entity(String entityKey) => base.entity(entityKey);

  @override
  String field(String entityKey, String fieldKey) => extra['$entityKey.$fieldKey'] ?? base.field(entityKey, fieldKey);

  @override
  String reverse(String entityKey, String reverseEntityKey) => base.reverse(entityKey, reverseEntityKey);
}

/// 実体の定義に、行の操作を 1 つ足した定義を返す(生成された定義は直接編集しない)。
EntityDefinition withRowAction(EntityDefinition d, RowAction action) => EntityDefinition(
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
