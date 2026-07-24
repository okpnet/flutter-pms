import 'package:theme_lib/constants/constant.dart';

import '../fields/field_extenssions.dart';

extension ConstantContextThemeExtenssion on BuildContext {
  ///全集に[SpaceField]で定義してあるスペースを確保する
  Widget spaceAll(Widget child) {
    final theme = Theme.of(this).extension<SpaceField>();
    if (theme == null) {
      throw AssertionError('${LibError.notImplementThtmeExtenssion}SpaceField');
    }
    if (child is IconButton) {
      //1IconButtonはPaddingが失敗するので、事前に除外する。
      throw AssertionError('${LibError.doNotWrapPadding}IconButton');
    }
    return Padding(padding: theme.all, child: child);
  }
}
