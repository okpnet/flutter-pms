// Project imports:
import '../../../../imports.dart';
import '../office.dart';

part 'list_office_router.g.dart';

abstract class ListOfficeConstant {
  static const String name = 'office';
  static const String path = '/corporation/office';
}

@TypedGoRoute<ListOfficeRouter>(
  path: ListOfficeConstant.path,
  name: ListOfficeConstant.name,
)
class ListOfficeRouter extends GoRouteData with $ListOfficeRouter {
  const ListOfficeRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ListOffice();
  }
}
