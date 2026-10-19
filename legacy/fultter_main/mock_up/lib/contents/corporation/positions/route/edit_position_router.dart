import 'package:mock_up/contents/corporation/positions/edtit_position.dart';
import 'package:mock_up/imports.dart';

part 'edit_position_router.g.dart';

abstract class EditPositionConstant {
  static const String name = 'position_edit';
  static const String path = '/corporation/position/edit';
}

@TypedGoRoute<EditPositionRouter>(
  path: EditPositionConstant.path,
  name: EditPositionConstant.name,
)
class EditPositionRouter extends GoRouteData with $EditPositionRouter {
  EditPositionRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditPosition();
  }
}
