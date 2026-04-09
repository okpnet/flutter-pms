import 'package:utility_widget/styles/export/ut_widget_design.dart';

import '../ut_sidemenu.dart';

mixin UtSideMixin on Widget {
  //アカウントアイコンのサイズ
  final ({double width, double height}) iconSize = (width: 50, height: 50);
  //アカウント名のフォントサイズの拡大率
  final double accountFontSizeScale = 1.25;
  //画面幅に対するメニューの幅の最小割合
  final double headerWidthPercentage = 0.12;
  //メニューの幅の固定最大値
  final double headerMaxWidth = 320;
  //アカウント名の幅。これ以上は折り返し2行まで表示。
  final double headerNameMaxWidth = 160;
  //アカウントアイコンとアカウント名のスペース
  final double accountPaddingSpace = 12;

  Color backGroundColor(BuildContext context) =>
      Theme.of(context).colorScheme.surfaceContainerLowest;

  Color hilightColor(BuildContext context) =>
      Theme.of(context).colorScheme.secondaryContainer;

  Color frontColor(BuildContext context) =>
      Theme.of(context).colorScheme.onSurface;

  //サイドメニュー幅計算
  double menuWidth(BuildContext context) {
    final width =
        MediaQuery.of(context).size.width * headerWidthPercentage; //メニュー幅
    return width > headerMaxWidth ? width : headerMaxWidth;
  }

  //Listtile生成
  ListTile createListtile({
    required UtSideItem item,
    required BuildContext context,
  }) {
    return ListTile(
      selected: item.isSelected,
      leading: item.icon,
      selectedColor: hilightColor(context),
      focusColor: hilightColor(context),
      title: Text(item.label, style: TextStyle(color: frontColor(context))),
      onTap: item.onPress,
    );
  }

  //メニューボタン生成
  MenuItemButton createMenubutton({
    required UtSideItem item,
    required BuildContext context,
  }) {
    return MenuItemButton(
      onPressed: item.onPress,
      leadingIcon: item.icon,
      child: Text(item.label, style: TextStyle(color: frontColor(context))),
    );
  }

  Widget createExpansionTile({
    required UtSideItem item,
    required BuildContext context,
    List<Widget> children = const [],
  }) {
    return ColoredBox(
      color: item.isSelected ? hilightColor(context) : Colors.transparent,
      child: ExpansionTile(
        backgroundColor: backGroundColor(context),
        textColor: frontColor(context),
        title: Text(item.label, style: TextStyle(color: frontColor(context))),
        leading: item.icon,
        children: children,
      ),
    );
  }

  //ツリーメニュー生成
  Widget createBranchMenuItem({
    required UtSideItem item,
    required BuildContext context,
  }) {
    return _createBranchMenuItemRecursive(item, context);
  }

  //再帰
  Widget _createBranchMenuItemRecursive(UtSideItem item, BuildContext context) {
    if (item.options == null || item.options!.isEmpty) {
      return createListtile(item: item, context: context);
    }

    return createExpansionTile(
      item: item,
      context: context,
      children: [
        for (var value in item.options!)
          _createBranchMenuItemRecursive(value, context),
      ],
    );
  }
}
