import 'package:utility_widget/styles/export/ut_widget_design.dart';
import 'package:utility_widget/styles/layout_model/ut_direction.dart';
import 'package:utility_widget/styles/ut_style.dart';

import '../ut_sidemenu.dart';

mixin UtSideMixin on Widget {
  final double accountHeadderHight = 50 + 10;
  //アカウントアイコンのサイズ
  final ({double width, double height}) iconSize = (width: 50, height: 50);
  //アカウント名のフォントサイズの拡大率
  final double accountFontSizeScale = 1.25;
  //画面幅に対するメニューの幅の最小割合
  final double headerWidthPercentage = 0.12;
  //メニューの幅の固定最大値
  final double headerMaxWidth = 340;
  //アカウント名の幅。これ以上は折り返し2行まで表示。
  final double headerNameMaxWidth = 160;
  //アカウントアイコンとアカウント名のスペース
  final double accountPaddingSpace = 12;
  //現在選択されているメニューアイテムゲッター
  UtSideItem? get selectedItem => null;
  //メニューアイテム選択を実行したときのメソッドのゲッター
  void Function(UtSideItem)? get onSelectItem => null;

  ColorScheme colorScheme(BuildContext context) =>
      Theme.of(context).colorScheme;

  Color backGroundColor(BuildContext context) =>
      colorScheme(context).surfaceContainerLowest;

  Color hilightColor(BuildContext context) =>
      colorScheme(context).secondaryContainer;

  Color frontColor(BuildContext context) => colorScheme(context).onSurface;

  //サイドメニュー幅計算
  double menuWidth(BuildContext context) {
    final width =
        MediaQuery.of(context).size.width * headerWidthPercentage; //メニュー幅
    return width > headerMaxWidth ? width : headerMaxWidth;
  }

  //Listtile生成
  Widget buildListtile({
    required UtSideItem item,
    required BuildContext context,
    required bool hasSelected,
    VoidCallback Function(UtSideItem)? onTapBuilder,
  }) {
    return UtLayoutCrevice.margin(
      direction: UtDirection.horizontal,
      child: ColoredBox(
        color: hasSelected ? hilightColor(context) : Colors.transparent,
        child: ListTile(
          selected: item == selectedItem,
          leading: item.icon,
          selectedTileColor: hilightColor(context),
          focusColor: hilightColor(context),
          title: Text(item.label, style: TextStyle(color: frontColor(context))),
          onTap: onTapBuilder != null ? onTapBuilder(item) : null,
        ),
      ),
    );
  }

  //メニューボタン生成
  MenuItemButton buildMenubutton({
    required UtSideItem item,
    required BuildContext context,
  }) {
    return MenuItemButton(
      onPressed: item.onPress,
      leadingIcon: item.icon,
      child: Text(item.label, style: TextStyle(color: frontColor(context))),
    );
  }

  Widget buildExpansionTile({
    required UtSideItem item,
    required BuildContext context,
    required bool hasSelected,
    List<Widget> children = const [],
  }) {
    return UtLayoutCrevice.margin(
      direction: UtDirection.horizontal,
      child: ColoredBox(
        color: hasSelected ? hilightColor(context) : Colors.transparent,
        child: ExpansionTile(
          backgroundColor: backGroundColor(context),
          initiallyExpanded: hasSelected,
          textColor: frontColor(context),
          title: Text(item.label, style: TextStyle(color: frontColor(context))),
          leading: item.icon,
          children: children,
        ),
      ),
    );
  }

  //ツリーメニュー生成
  Widget buildBranchMenuItem({
    required UtSideItem item,
    required BuildContext context,
  }) {
    final hasSelected = hasSelectedFind(item);
    return _buildeBranchMenuItemRecursive(
      item: item,
      context: context,
      hasSelected: hasSelected,
    );
  }

  //再帰
  Widget _buildeBranchMenuItemRecursive({
    required UtSideItem item,
    required BuildContext context,
    required bool hasSelected,
  }) {
    if (item.options == null || item.options!.isEmpty) {
      return buildListtile(
        item: item,
        context: context,
        hasSelected: item == selectedItem,
        onTapBuilder: (item) {
          return () {
            if (onSelectItem != null) {
              onSelectItem!(item);
            }
            item.onPress();
          };
        },
      );
    }

    return buildExpansionTile(
      item: item,
      context: context,
      hasSelected: hasSelected,
      children: [
        for (var value in item.options!)
          _buildeBranchMenuItemRecursive(
            item: value,
            context: context,
            hasSelected: hasSelected,
          ),
      ],
    );
  }

  ///選択を含んでいるか
  bool hasSelectedFind(UtSideItem item) {
    if (selectedItem == null) {
      return false;
    }
    final list = flatToList(item);
    return list.contains(selectedItem);
  }

  ///木構造の平坦化
  List<UtSideItem> flatToList(UtSideItem item) {
    var result = [item];
    if (item.options == null || item.options!.isEmpty) {
      return result;
    }
    for (var child in item.options!) {
      final list = flatToList(child);
      if (list.isNotEmpty) {
        list.addAll(list);
      }
    }
    return result;
  }
}
