import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mock_up/contents/org_resources/equipments/edit_equipment.dart';

part 'edit_equipment_router.g.dart';

abstract class EditEquipmentRouterConstant {
  static const String name = 'kind_of_equipment';
  static const String path = '/orgresources/equipment/kind/edit';
}

@TypedGoRoute<EditEquipmentRouter>(
  path: EditEquipmentRouterConstant.path,
  name: EditEquipmentRouterConstant.name,
)
class EditEquipmentRouter extends GoRouteData with $EditEquipmentRouter {
  const EditEquipmentRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditEquipment();
  }
}
