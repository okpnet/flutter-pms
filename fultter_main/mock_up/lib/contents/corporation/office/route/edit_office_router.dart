// Project imports:
import '../../../../imports.dart';
import '../office.dart';

part 'edit_office_router.g.dart';

abstract class EditOfficeConstant {
  static const String name = 'office_edit';
  static const String path = '/corporation/office/edit';
}

@TypedGoRoute<EditOfficeRouter>(
  path: EditOfficeConstant.path,
  name: EditOfficeConstant.name,
)
class EditOfficeRouter extends GoRouteData with $EditOfficeRouter {
  const EditOfficeRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditOffice();
  }
}
