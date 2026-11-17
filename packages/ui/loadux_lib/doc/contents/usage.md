# loadux_lib の使い方

```dart
// 領域の全体が読み込み中
const LoadingIndicator.centered()
// 文言つき(文言は多言語にして渡す)
LoadingIndicator.centered(label: t.loading)
// ボタンの中の小さな円
const LoadingIndicator(size: 16, strokeWidth: 2)
// 横に長いバー
const LoadingBar()
```

見た目を変える(テーマの側):
```dart
ThemeData(extensions: [LoadingTheme(color: scheme.primary, strokeWidth: 3, size: 40)])
```
