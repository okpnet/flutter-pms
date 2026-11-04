import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'pages/my_image_page.dart';
import 'user_profile_destinations.dart';
import 'user_profile_paths.dart';

/// ユーザー情報の表示(自分のイメージ)をアプリへ組み込むための口。
///
/// ルートはアプリの枠(`ShellRoute`)の中に置く。メニューの項目は持たない(アプリのユーザーメニューから開く)。
/// 顔写真の取得は [userAvatarProvider]、変更の可否は [isChangeUserImageProvider]、
/// PocketBase への接続(`pbConnectionProvider`)・ファイル選択はアプリ(またはテスト)が差し込む。
class UserProfileModule implements FeatureModule {
  const UserProfileModule();

  @override
  List<RouteBase> get routes => [
    GoRoute(
      path: UserProfilePaths.myImage,
      builder: (context, state) => const MyImagePage(),
    ),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) =>
      switch (destination) {
        MyImageDestination() => UserProfilePaths.myImage,
        _ => null,
      };

  @override
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {}
}
