import 'package:theme_lib/constants/constant.dart';

import '../fields/field_extenssions.dart';

extension BuildContextSpaceFieldTheme on BuildContext {
  ///全集に[SpaceField]で定義してあるスペースを確保する
  Widget spaceAll(Widget child) {
    final theme = _getField();
    if (child is IconButton) {
      return Container(
        margin: theme.all, // 外側余白として適用
        child: child, // 引数でもらった生のWidgetをそのまま流す（無加工）
      );
    }
    return Padding(padding: theme.all, child: child);
  }

  Widget spaceLeft(Widget child) {
    final theme = _getField();
    if (child is IconButton) {
      return Container(
        margin: theme.all, // 外側余白として適用
        child: child, // 引数でもらった生のWidgetをそのまま流す（無加工）
      );
    }
    return Padding(padding: theme.left, child: child);
  }

  ///テーマで設定しているスペース
  double get spacing => _getField().spacing;

  SpaceField _getField() {
    final theme = Theme.of(this).extension<SpaceField>();
    if (theme == null) {
      throw AssertionError('${LibError.notImplementThtmeExtenssion}SpaceField');
    }
    return theme;
  }
}
