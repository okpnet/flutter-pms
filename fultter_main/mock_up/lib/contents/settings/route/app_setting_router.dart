import '../../../imports.dart';
import '../settings.dart';

part 'app_setting_router.g.dart';

abstract class AppSettingConstant {
  static const String name = 'app_setting';
  static const String path = '/setting/app';
}

@TypedGoRoute<AppSettingRouter>(
  path: AppSettingConstant.path,
  name: AppSettingConstant.name,
)
class AppSettingRouter extends GoRouteData with $AppSettingRouter {
  const AppSettingRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AppSetting();
  }
}
