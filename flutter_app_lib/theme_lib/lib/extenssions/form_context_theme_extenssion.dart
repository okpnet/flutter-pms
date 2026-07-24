import '../constants/constant.dart';

import '../fields/field_extenssions.dart';

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
    if (theme.iconButtonTheme.style == null) {
      throw AssertionError(
        '${LibError.notImplementThemeData}${theme.iconButtonTheme.runtimeType}',
      );
    }
    return IconButton.styleFrom(
      backgroundColor: theme.colorScheme.primary,
      foregroundColor: theme.colorScheme.onPrimary,
    ).merge(theme.iconButtonTheme.style);
  }

  ///枠がある無背景のアイコンボタンスタイル
  ButtonStyle get iconSecondaryBtn {
    final theme = Theme.of(this);
    if (theme.iconButtonTheme.style == null) {
      throw AssertionError(
        '${LibError.notImplementThemeData}${theme.iconButtonTheme.runtimeType}',
      );
    }
    return IconButton.styleFrom(
      // backgroundColor: theme.colorScheme.primary,
      foregroundColor: theme.colorScheme.primary,
      side: BorderSide(color: theme.colorScheme.primary), //枠線
    ).merge(theme.iconButtonTheme.style);
  }

  ///無背景のアイコンのみのアイコンボタンスタイル
  ButtonStyle get iconTertiary {
    final theme = Theme.of(this);
    if (theme.iconButtonTheme.style == null) {
      throw AssertionError(
        '${LibError.notImplementThemeData}${theme.iconButtonTheme.runtimeType}',
      );
    }
    return IconButton.styleFrom(
      foregroundColor: theme.colorScheme.primary,
    ).merge(theme.iconButtonTheme.style);
  }

  ///プライマリボタン。ソリッドスタイルのボタン。
  ButtonStyle get primaryBtn {
    final theme = Theme.of(this);
    if (theme.elevatedButtonTheme.style == null) {
      throw AssertionError(
        '${LibError.notImplementThemeData}${theme.runtimeType}',
      );
    }
    return ElevatedButton.styleFrom(
      foregroundColor: theme.colorScheme.onPrimary,
      backgroundColor: theme.colorScheme.primary,
    ).merge(theme.elevatedButtonTheme.style);
  }

  ///セカンダリボタン。アウトラインスタイルのボタン。
  ButtonStyle get secondaryBtn {
    final theme = Theme.of(this);
    if (theme.outlinedButtonTheme.style == null) {
      throw AssertionError(
        '${LibError.notImplementThemeData}${theme.runtimeType}',
      );
    }
    return OutlinedButton.styleFrom(
      side: BorderSide(
        color: theme.colorScheme.primary,
        // width: AppButton.borderWidth,
      ),
    ).merge(theme.outlinedButtonTheme.style!);
  }

  ///ターシャリボタン。テキストスタイルのボタン。
  ButtonStyle get tertiaryBtn {
    final theme = Theme.of(this);
    if (theme.textButtonTheme.style == null) {
      throw AssertionError(
        '${LibError.notImplementThemeData}${theme.runtimeType}',
      );
    }
    return TextButton.styleFrom().merge(theme.textButtonTheme.style);
  }
}
