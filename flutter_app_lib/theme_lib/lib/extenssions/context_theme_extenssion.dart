import '../constants/constant.dart';

import '../fields/field_extenssion.dart';

extension ContextThemeExtenssion on BuildContext {
  SpaceField? get space => Theme.of(this).extension<SpaceField>();

  ///テキストインプットのデコレーション
  InputDecoration get primaryInputDecoration {
    final borderExt = Theme.of(this).extension<BorderField>();

    if (borderExt == null) {
      throw AssertionError(
        'Theme not has Not implement ${BorderField().runtimeType}',
      );
    }

    final radius = borderExt.radius;
    return InputDecoration(
      isDense: true,
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
    );
  }
}
