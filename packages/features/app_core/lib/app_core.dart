/// アプリの基盤(ブート・エラー・設定)の実装。アプリだけが読み込む。
///
/// - [AppCoreModule]: アプリへ組み込む口
/// - [appCoreStringsProvider]: アプリの枠(タイトルバー・メニュー)の文字列も含む(アプリが使う)
/// - [UserSettingsOriginator] / [userSettingsAutoSaveProvider] / [UserSettingsModel]: 使用言語・画面・ユーザーの設定の保存と復元(保存先はアプリが settings_keeper で選ぶ)
/// 他の機能が使う遷移先の型は `app_core_api.dart` を読み込む。
library;

export 'src/app_core_module.dart' show AppCoreModule;
export 'src/i18n/strings_provider.dart'
    show AppCoreStrings, appCoreStringsProvider;
export 'src/settings/user_settings.dart';
export 'src/settings/user_settings_model.dart';
