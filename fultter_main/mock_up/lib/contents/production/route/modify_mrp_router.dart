import '../../../imports.dart';
import '../production.dart';

part 'modify_mrp_router.g.dart';

abstract class ModifyMrpConstant {
  static const String name = 'modify_mrp';
  static const String path = '/product/modify_mrp';
}

@TypedGoRoute<ModifyMrpRouter>(
  path: ModifyMrpConstant.path,
  name: ModifyMrpConstant.name,
)
class ModifyMrpRouter extends GoRouteData with $ModifyMrpRouter {
  const ModifyMrpRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ModifyMrp();
  }
}
