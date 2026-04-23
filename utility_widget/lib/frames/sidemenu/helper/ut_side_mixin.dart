// Project imports:
import 'package:utility_widget/styles/constans/ut_space_style.dart';

import '../../../styles/constans/ut_style_default_constant.dart';
import '../../../styles/export/ut_widget_design.dart';
import '../../../styles/layout_model/ut_direction.dart';
import '../../../styles/ut_style.dart';
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

  ///レベル毎の下位のスペース
  final double levelSpace = 10;

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

  ///レベル深さで左側
  EdgeInsets _buildEdgeinsetsFromLevel(int level) {
    final horizontalValue = UtSpaceStyle.xl.value;
    final virticalValue = UtSpaceStyle.md.value;
    return level == 1
        ? EdgeInsets.symmetric(
            horizontal: horizontalValue,
            vertical: virticalValue,
          )
        : EdgeInsets.only(
            left: levelSpace * level,
            bottom: virticalValue,
            right: horizontalValue,
            top: virticalValue,
          );
  }

  //Listtile生成
  Widget buildListtile({
    required UtSideItem item,
    required BuildContext context,
    required bool hasSelected,
    required int level,
    VoidCallback Function(UtSideItem)? onTapBuilder,
  }) {
    final padding = _buildEdgeinsetsFromLevel(level);
    return ColoredBox(
      color: hasSelected ? hilightColor(context) : Colors.transparent,
      child: UtLayoutCrevice.margin(
        direction: UtDirection.vertical,
        child: ListTile(
          selected: item == selectedItem,
          contentPadding: padding,
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
    required int level,
    List<Widget> children = const [],
  }) {
    return ColoredBox(
      color: hasSelected ? hilightColor(context) : Colors.transparent,
      child: UtLayoutCrevice.margin(
        direction: UtDirection.vertical,
        child: ExpansionTile(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          collapsedShape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          collapsedBackgroundColor: backGroundColor(context),
          tilePadding: _buildEdgeinsetsFromLevel(level),

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
    final addLevelList = flatToList(item, 1);
    final hasSelected = hasSelectedFind(item, addLevelList);

    return _buildeBranchMenuItemRecursive(
      item: item,
      context: context,
      hasSelected: hasSelected,
      list: addLevelList,
    );
  }

  //再帰
  Widget _buildeBranchMenuItemRecursive({
    required UtSideItem item,
    required BuildContext context,
    required bool hasSelected,
    required List<({UtSideItem item, int level})> list,
  }) {
    final level = list.firstWhere((value) => value.item == item).level;
    if (item.options == null || item.options!.isEmpty) {
      return buildListtile(
        item: item,
        context: context,
        hasSelected: item == selectedItem,
        level: level,
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
      level: level,
      children: [
        for (var value in item.options!)
          _buildeBranchMenuItemRecursive(
            item: value,
            context: context,
            hasSelected: hasSelected,
            list: list,
          ),
      ],
    );
  }

  ///選択を含んでいるか
  bool hasSelectedFind(
    UtSideItem item,
    List<({UtSideItem item, int level})> list,
  ) {
    if (selectedItem == null) {
      return false;
    }
    return list.map((value) => value.item).contains(selectedItem);
  }

  ///木構造の平坦化
  List<({UtSideItem item, int level})> flatToList(UtSideItem item, int level) {
    var result = [(item: item, level: level)];
    if (item.options == null || item.options!.isEmpty) {
      return result;
    }
    for (var child in item.options!) {
      final list = flatToList(child, level + 1);
      if (list.isNotEmpty) {
        result.addAll(list);
      }
    }
    return result;
  }
}
