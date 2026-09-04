import '../../../imports.dart';
import '../_settings.dart';

part 'user_setting_router.g.dart';

abstract class UserSettingConstant {
  static const String name = 'user_setting';
  static const String path = '/setting/user';
}

@TypedGoRoute<UserSettingRouter>(
  path: UserSettingConstant.path,
  name: UserSettingConstant.name,
)
class UserSettingRouter extends GoRouteData with $UserSettingRouter {
  const UserSettingRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return UserSetting();
  }
}
