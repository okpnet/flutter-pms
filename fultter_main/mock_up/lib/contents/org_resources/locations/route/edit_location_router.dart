import 'package:mock_up/contents/org_resources/locations/edit_location.dart';
import 'package:mock_up/imports.dart';

part 'edit_location_router.g.dart';

abstract class EditLocationConstant {
  static const String name = 'location_edit';
  static const String path = '/orgresources/location/edit';
}

@TypedGoRoute<EditLocationRouter>(
  path: EditLocationConstant.path,
  name: EditLocationConstant.name,
)
class EditLocationRouter extends GoRouteData with $EditLocationRouter {
  const EditLocationRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditLocation();
  }
}
