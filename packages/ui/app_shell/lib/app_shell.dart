/// アプリ全体の枠(メインフレーム)の部品。
///
/// - [AppMenu] / [AppMenuGroup] / [AppMenuItem]: サイドバーとハンバーガーメニューが共有するメニューの表示用モデル
/// - [AppUser] / [UserMenuAction]: ログインユーザーの表示用モデル
/// - [AppTitleBar] / [SideBar] / [HamburgerMenu] / [UserContainer]: 部品
/// - [ScreenScaffold] / [ScreenTitle]: 機能の画面の骨組みと見出し(AppBar を使わない)
/// - [MultiMainFrame] / [SingleMainFrame] / [SelectionFrame]: フレーム(画面の枠)
///
/// 機能・認証の実体は知らない。表示する項目、権限の判定、ユーザー情報は、呼び出し側(アプリ)が渡す。
library;

export 'src/app_shell_labels.dart';
export 'src/hamburger_menu.dart';
export 'src/main_frame.dart';
export 'src/menu_model.dart';
export 'src/screen_scaffold.dart';
export 'src/side_bar.dart';
export 'src/title_bar.dart';
export 'src/user_container.dart';
