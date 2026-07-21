import '../constants/constant.dart';

import '../fields/field_extenssion.dart';

extension ContextThemeExtenssion on BuildContext {
  SpaceField? get space => Theme.of(this).extension<SpaceField>();
}
