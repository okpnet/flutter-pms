import 'package:flutter_riverpod/flutter_riverpod.dart';

/// サイドバーをアイコンだけにする設定(使用ユーザーにだけ影響する設定)。
/// 画面が狭いタブレットでは、この設定にかかわらずアイコンだけになる。
/// 設定画面(AppCore)が変更し、アプリの枠が読む。
final sidebarIconOnlyProvider = NotifierProvider<SidebarIconOnlyNotifier, bool>(
  SidebarIconOnlyNotifier.new,
);

class SidebarIconOnlyNotifier extends Notifier<bool> {
  @override
  bool build() => false;

  void set(bool value) => state = value;
}
