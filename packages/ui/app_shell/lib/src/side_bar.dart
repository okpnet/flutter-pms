import 'package:flutter/material.dart';

import 'menu_model.dart';

/// サイドバー。通常は項目名つき、[iconOnly] のときはアイコンだけ(グループは押すと項目を選ぶ)。
class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
    required this.menu,
    this.iconOnly = false,
    this.header,
  });

  /// 通常の幅。
  static const double width = 248;

  /// アイコンだけのときの幅。
  static const double iconOnlyWidth = 72;

  final AppMenu menu;
  final bool iconOnly;

  /// 最上部に置く部品(ユーザーカードなど)。
  final Widget? header;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Material(
      color: scheme.surfaceContainerLow,
      child: SizedBox(
        width: iconOnly ? iconOnlyWidth : width,
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: [
            ?header,
            for (final item in menu.topItems) _item(context, item),
            for (final group in menu.groups)
              iconOnly ? _groupPopup(context, group) : _group(context, group),
          ],
        ),
      ),
    );
  }

  Widget _item(BuildContext context, AppMenuItem item, {bool child = false}) {
    final scheme = Theme.of(context).colorScheme;
    if (iconOnly) {
      return Tooltip(
        message: item.label,
        child: IconButton(
          icon: Icon(item.icon ?? Icons.circle_outlined),
          color: item.selected ? scheme.primary : null,
          onPressed: item.onSelected,
        ),
      );
    }
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.only(left: child ? 32 : 16, right: 8),
      leading: item.icon == null ? null : Icon(item.icon, size: 20),
      title: Text(item.label),
      selected: item.selected,
      selectedTileColor: scheme.secondaryContainer,
      onTap: item.onSelected,
    );
  }

  Widget _group(BuildContext context, AppMenuGroup group) => ExpansionTile(
    // 選択中の項目があるグループは開いておく
    key: PageStorageKey('group:${group.id}'),
    initiallyExpanded: group.hasSelected,
    leading: group.icon == null ? null : Icon(group.icon, size: 20),
    title: Text(group.label),
    dense: true,
    shape: const Border(),
    collapsedShape: const Border(),
    children: [for (final i in group.items) _item(context, i, child: true)],
  );

  Widget _groupPopup(BuildContext context, AppMenuGroup group) {
    final scheme = Theme.of(context).colorScheme;
    return PopupMenuButton<AppMenuItem>(
      tooltip: group.label,
      position: PopupMenuPosition.under,
      onSelected: (i) => i.onSelected(),
      itemBuilder: (context) => [
        for (final i in group.items)
          PopupMenuItem(value: i, child: Text(i.label)),
      ],
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Icon(
          group.icon ?? Icons.folder_outlined,
          color: group.hasSelected ? scheme.primary : null,
        ),
      ),
    );
  }
}
