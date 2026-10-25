/// 枠の部品が使う文字列。アプリが言語ごとに渡す(多言語は呼び出し側で行う)。
///
/// パターン: Value Object
class AppShellLabels {
  const AppShellLabels({this.openMenu = 'メニューを開く', this.userMenu = 'ユーザーメニュー'});

  /// ハンバーガーボタンの説明。
  final String openMenu;

  /// ユーザーコンテナの説明。
  final String userMenu;
}
