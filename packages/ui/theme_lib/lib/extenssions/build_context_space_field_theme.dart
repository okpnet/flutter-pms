import 'package:theme_lib/constants/constant.dart';

import '../fields/field_extenssions.dart';

extension BuildContextSpaceFieldTheme on BuildContext {
  ///全周に[SpaceField]で定義してあるスペースを確保する
  Widget spaceAll(Widget child) => child.spaceAll(this);

  ///上下に[SpaceField]で定義してあるスペースを確保する
  Widget spaceHorizontal(Widget child) => child.spaceHorizontal(this);

  ///左右に[SpaceField]で定義してあるスペースを確保する
  Widget spaceVirtica(Widget child) => child.spaceVirtical(this);

  ///生データを使いたいとき
  ISpaceField get spaceValues => _getField();

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

///Widgetに対する余白
extension WidgetSpaceTheme on Widget {
  ///拡張テーマ取得
  SpaceField _getSpaceField(BuildContext context) {
    final spaceField = Theme.of(context).extension<SpaceField>();
    if (spaceField == null) {
      throw AssertionError('${LibError.notImplementThtmeExtenssion}SpaceField');
    }
    return spaceField;
  }

  Widget _space(BuildContext context, EdgeInsets direction) {
    if (this is IconButton) {
      return Container(margin: direction, child: this);
    }
    return Padding(padding: direction, child: this);
  }

  ///全周に[SpaceField]で定義してあるスペースを確保する
  Widget spaceAll(BuildContext context) {
    final theme = _getSpaceField(context);
    return _space(context, theme.all);
  }

  ///左右に[SpaceField]で定義してあるスペースを確保する
  Widget spaceHorizontal(BuildContext context) {
    final theme = _getSpaceField(context);
    return _space(context, theme.horizontal);
  }

  ///上下に[SpaceField]で定義してあるスペースを確保する
  Widget spaceVirtical(BuildContext context) {
    final theme = _getSpaceField(context);
    return _space(context, theme.vertical);
  }
}
