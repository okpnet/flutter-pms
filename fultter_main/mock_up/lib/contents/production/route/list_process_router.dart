import '../../../imports.dart';
import '../production.dart';

part 'list_process_router.g.dart';

abstract class ListProcessConstant {
  static const String name = 'process';
  static const String path = '/product/process';
}

@TypedGoRoute<ListProcessRouter>(
  path: ListProcessConstant.path,
  name: ListProcessConstant.name,
)
class ListProcessRouter extends GoRouteData with $ListProcessRouter {
  const ListProcessRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ListProcess();
  }
}
