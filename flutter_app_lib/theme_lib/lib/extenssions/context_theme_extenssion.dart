import '../constants/constant.dart';

import '../fields/field_extenssion.dart';

extension ContextThemeExtenssion on BuildContext {
  SpaceField? get space => Theme.of(this).extension<SpaceField>();

  ///テキストインプットのデコレーション
  InputDecoration get primaryInputDecoration => InputDecoration(
    isDense: true,
    border: const OutlineInputBorder(borderRadius: AppRadius.edgeBorderRadius),
  );

  ///メインカラーのソリッドアイコンボタンスタイル
  ButtonStyle get iconPrimaryBtn {
    final theme = Theme.of(this);
    return IconButton.styleFrom(
      backgroundColor: theme.colorScheme.primary,
      foregroundColor: theme.colorScheme.onPrimary,
    ).merge(theme.iconButtonTheme.style);
  }

  ///枠がある無背景のアイコンボタンスタイル
  ButtonStyle get iconSecondaryBtn {
    final theme = Theme.of(this);
    return IconButton.styleFrom(
      // backgroundColor: theme.colorScheme.primary,
      foregroundColor: theme.colorScheme.primary,
      side: BorderSide(color: theme.colorScheme.primary), //枠線
    ).merge(theme.iconButtonTheme.style);
  }

  ///無背景のアイコンのみのアイコンボタンスタイル
  ButtonStyle get iconTertiary {
    final theme = Theme.of(this);
    return IconButton.styleFrom(
      foregroundColor: theme.colorScheme.onSurfaceVariant,
    ).merge(theme.iconButtonTheme.style);
  }
}
