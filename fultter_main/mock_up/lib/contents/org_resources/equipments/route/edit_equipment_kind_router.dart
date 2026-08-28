import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:mock_up/contents/org_resources/equipments/edit_equipment_kind.dart';

part 'edit_equipment_kind_router.g.dart';

abstract class EditEquipmentKindRouterConstant {
  static const String name = 'kind_of_equipment';
  static const String path = '/orgresources/equipment/kind/edit';
}

@TypedGoRoute<EditEquipmentKindRouter>(
  path: EditEquipmentKindRouterConstant.path,
  name: EditEquipmentKindRouterConstant.name,
)
class EditEquipmentKindRouter extends GoRouteData
    with $EditEquipmentKindRouter {
  const EditEquipmentKindRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditEquipmentKind();
  }
}
