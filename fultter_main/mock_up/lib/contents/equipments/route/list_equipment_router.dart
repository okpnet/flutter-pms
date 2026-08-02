import 'package:mock_up/contents/contents.dart';
import 'package:mock_up/imports.dart';

part 'list_equipment_router.g.dart';

abstract class ListEquipmentConstant {
  static const String name = 'equipment';
  static const String path = '/equipments/equipment';
}

@TypedGoRoute<ListEquipmentRouter>(
  path: ListEquipmentConstant.path,
  name: ListEquipmentConstant.name,
)
class ListEquipmentRouter extends GoRouteData with $ListEquipmentRouter {
  const ListEquipmentRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ListEquipment();
  }
}
