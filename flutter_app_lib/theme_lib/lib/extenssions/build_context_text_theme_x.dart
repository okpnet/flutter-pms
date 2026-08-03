import '../constants/constant.dart';

enum TextSizeStyleMode {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
  labelLarge,
  labelMedium,
  labelSmall,
}

extension BuildContextTextThemeX on BuildContext {
  TextTheme textThemee() => Theme.of(this).textTheme;

  TextStyle? textStyleMode(TextSizeStyleMode mode) {
    final theme = textThemee();
    return switch (mode) {
      .displayLarge => theme.displayLarge,
      .displayMedium => theme.displayMedium,
      .displaySmall => theme.displaySmall,
      .headlineLarge => theme.headlineLarge,
      .headlineMedium => theme.headlineMedium,
      .headlineSmall => theme.headlineSmall,
      .titleLarge => theme.titleLarge,
      .titleMedium => theme.titleMedium,
      .titleSmall => theme.titleSmall,
      .bodyLarge => theme.bodyLarge,
      .bodyMedium => theme.bodyMedium,
      .bodySmall => theme.bodySmall,
      .labelLarge => theme.labelLarge,
      .labelMedium => theme.labelMedium,
      .labelSmall => theme.labelSmall,
      //_ => throw AssertionError('Not implement'),
    };
  }
}
