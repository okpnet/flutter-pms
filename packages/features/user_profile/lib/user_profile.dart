/// ユーザー情報の表示(顔写真・自分のイメージ)の実装。アプリだけが読み込む。
///
/// - [UserProfileModule]: アプリへ組み込む口
/// - [userAvatarProvider] / [UserAvatarState]: ログインユーザーの顔写真(`AppUser.photo` に渡す)
/// - [isChangeUserImageProvider]: ユーザーが自分のイメージを変更できるか(標準は不可。起動時のプロパティ)
/// - [IImagePickerGateway] / [IImageNormalizer]: 画像の選択・縮小の差し込み口
/// - [userProfileStringsProvider]: 文字列(slang)
/// 他の機能が使う遷移先の型は `user_profile_api.dart` を読み込む。
library;

export 'src/avatar/default_avatar.dart';
export 'src/avatar/image_normalizer.dart';
export 'src/avatar/image_picker_gateway.dart';
export 'src/avatar/image_policy.dart';
export 'src/avatar/user_avatar_provider.dart';
export 'src/i18n/strings_provider.dart'
    show UserProfileStrings, userProfileStringsProvider;
export 'src/user_profile_module.dart' show UserProfileModule;
export 'src/user_profile_paths.dart';
