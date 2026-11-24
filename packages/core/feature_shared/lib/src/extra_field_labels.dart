import 'package:entity_screens/entity_screens.dart';

/// 生成された表示名([base])に、手書きの行の操作などの項目名([extra])を足す(Decorator)。
///
/// 生成物は再生成で上書きされるため、行の操作(`RowAction`)の名前は、機能のモジュールが持つ文字([extra])として足す。
/// キーは `<実体のキー>.<項目(操作)のキー>`(例 `order.complaint`)。ない項目は [base] に任せる。
class ExtraFieldLabels implements EntityLabels {
  const ExtraFieldLabels(this.base, this.extra, {this.entities = const {}, this.reverses = const {}});

  final EntityLabels base;
  final Map<String, String> extra;

  /// 手書きの実体の名称(キー = 実体のキー)。
  final Map<String, String> entities;

  /// 手書きの関連する一覧の見出し(キー = `<実体のキー>.<関連する実体のキー>`)。
  final Map<String, String> reverses;

  @override
  String entity(String entityKey) => entities[entityKey] ?? base.entity(entityKey);

  @override
  String field(String entityKey, String fieldKey) => extra['$entityKey.$fieldKey'] ?? base.field(entityKey, fieldKey);

  @override
  String reverse(String entityKey, String reverseEntityKey) =>
      reverses['$entityKey.$reverseEntityKey'] ?? base.reverse(entityKey, reverseEntityKey);
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

/// 実体の定義に、関連する実体の一覧を 1 つ足した定義を返す(編集画面の下に出す。[ReverseList.editable] なら追加・編集もできる)。
EntityDefinition withReverseList(EntityDefinition d, ReverseList reverse) => EntityDefinition(
  key: d.key,
  fields: d.fields,
  owner: d.owner,
  isTree: d.isTree,
  treeTitle: d.treeTitle,
  treeTags: d.treeTags,
  inlineInOwner: d.inlineInOwner,
  uniqueKeys: d.uniqueKeys,
  reverseLists: [...d.reverseLists, reverse],
  nest: d.nest,
  viewOnly: d.viewOnly,
  rowActions: d.rowActions,
  inMenu: d.inMenu,
  compactFlags: d.compactFlags,
  confirmSave: d.confirmSave,
);
