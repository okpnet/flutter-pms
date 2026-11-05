import 'dart:typed_data';

import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:logger_provider/logger_provider.dart';
import 'package:pbapi/pbapi.dart';
import 'package:theme_lib/theme_lib.dart';
import 'package:user_profile/user_profile.dart';
import 'package:user_profile/user_profile_api.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger));
}

/// ログインしているユーザーの代役(サーバーに接続しない)。
class ExampleSession implements SessionService {
  @override
  AuthSession? get current => AuthSession(
    token: 'example-token',
    userId: 'example-user',
    username: 'yamada.t',
    appUserId: 'U0001',
  );

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

/// 画像の保存先の代役(メモリ上)。選んだ画像の登録・取得・削除を、サーバーなしで確かめられる。
class InMemoryAvatarService implements AvatarService {
  UserAvatar? _avatar;
  Uint8List? _bytes;
  int _version = 0;

  @override
  Future<UserAvatar?> find(String userId) async => _avatar;

  @override
  Future<UserAvatar> set(
    String userId,
    Uint8List bytes, {
    String filename = 'avatar.png',
  }) async {
    _bytes = bytes;
    _version++;
    return _avatar = UserAvatar(
      recordId: 'example-avatar',
      userId: userId,
      imageName: 'avatar_$_version.png',
    );
  }

  @override
  Future<void> delete(String userId) async {
    _avatar = null;
    _bytes = null;
  }

  @override
  Future<Uint8List> download(UserAvatar avatar, {String? thumb}) async =>
      _bytes ?? Uint8List(0);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

/// ユーザー情報の表示(顔写真・自分のイメージ)を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。
///
/// 画像の保存先と PocketBase のセッションは代役。変更できる設定にして確かめるには、
/// `flutter run -d windows --dart-define=IS_CHANGE_USER_IMAGE=true`。
/// [canChange] を渡すと、起動時のプロパティの代わりにその値を使う(テスト用)。
class ExampleApp extends StatelessWidget {
  const ExampleApp({
    super.key,
    required this.logger,
    this.canChange,
    this.extraOverrides = const [],
  });

  final ILoggerProvider logger;
  final bool? canChange;

  /// 追加の上書き(テスト用)。
  final List<Override> extraOverrides;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: 'ユーザー情報 (example)',
    modules: const [UserProfileModule()],
    entries: const [
      FeatureHostEntry('自分のイメージ', MyImageDestination()),
      FeatureHostEntry('表示パターン', UserDisplayDestination()),
    ],
    logger: logger,
    overrides: [
      themeLoggerProvider.overrideWithValue(logger),
      userSummaryProvider.overrideWith(
        () => UserSummaryNotifier(
          const UserSummary(name: '山田 太郎', role: '管理者'),
        ),
      ),
      sessionServiceProvider.overrideWithValue(ExampleSession()),
      avatarServiceProvider.overrideWithValue(InMemoryAvatarService()),
      if (canChange != null) isChangeUserImageProvider.overrideWithValue(canChange!),
      ...extraOverrides,
    ],
    themeOf: (ref) => ref.watch(lightThemeProvider),
    darkThemeOf: (ref) => ref.watch(darkThemeProvider),
    themeModeOf: (ref) => ref.watch(themeModeProvider),
  );
}
