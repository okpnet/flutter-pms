/// 認証(PocketBase)と共有ファイルの画面(実装)。アプリだけが読み込む。
///
/// - [AuthFilesModule]: アプリへ組み込む口(ログイン前の画面は枠の外に置く)
/// - [authFilesStringsProvider]: 文字列(slang)
/// - [IFilePickerGateway] / [IFileSaverGateway]: ファイルの選択・保存の差し込み口
///   (既定は OS のダイアログの [PlatformFilePicker]・[PlatformFileSaver])
/// - [SecureTokenStore] / [tokenStoreProvider]: ログイン情報の安全な保管庫(OS の保管庫)
/// - [authFilesSignOut]: ログアウト(PocketBase のセッションと保管庫を破棄する)
/// 他の機能が使う遷移先の型は `auth_files_api.dart` を読み込む。
library;

export 'src/auth_files_module.dart' show AuthFilesModule;
export 'src/auth_files_paths.dart';
export 'src/file_gateway.dart';
export 'src/i18n/strings_provider.dart'
    show AuthFilesStrings, authFilesStringsProvider;
export 'src/platform_file_gateway.dart';
export 'src/secure_token_store.dart';
export 'src/sign_out.dart';
