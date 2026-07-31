import 'package:mock_up/contents/_errors/errors.dart';
import 'package:mock_up/imports.dart';

part 'contents_error_router.g.dart';

abstract class ContentsErrorConstant {
  static const String name = 'error';
  static const String path = '/error';
}

@TypedGoRoute<ContentsErrorRouter>(
  path: ContentsErrorConstant.path,
  name: ContentsErrorConstant.name,
)
class ContentsErrorRouter extends GoRouteData with $ContentsErrorRouter {
  const ContentsErrorRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ContentError(exception: state.extra as Exception);
  }
}
