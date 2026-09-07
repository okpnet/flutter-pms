// Project imports:

import '../../../../imports.dart';
import '../register_actual_production.dart';

part 'register_actual_production_router.g.dart';

abstract class RegisterActualProductionConstant {
  static const String name = 'production_register';
  static const String path = '/actual/production/register';
}

@TypedGoRoute<RegisterActualProductionRouter>(
  path: RegisterActualProductionConstant.path,
  name: RegisterActualProductionConstant.name,
)
class RegisterActualProductionRouter extends GoRouteData
    with $RegisterActualProductionRouter {
  const RegisterActualProductionRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RegisterActualProduction();
  }
}
