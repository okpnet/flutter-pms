import '../../../imports.dart';
import '../production.dart';

part 'build_mrp_router.g.dart';

abstract class BuildMrpConstant {
  static const String name = 'run_mrp_to_build';
  static const String path = '/product/run_mrp';
}

@TypedGoRoute<BuildMrpRouter>(
  path: BuildMrpConstant.path,
  name: BuildMrpConstant.name,
)
class BuildMrpRouter extends GoRouteData with $BuildMrpRouter {
  const BuildMrpRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BuildMrp();
  }
}
