import 'package:mock_up/imports.dart';

import '../equipments.dart';

part 'list_category_equipment_router.g.dart';

abstract class ListCategoryEquipmentConstant {
  static const String name = 'category_of_equipment';
  static const String path = '/orgresources/category';
}

@TypedGoRoute<ListCategoryEquipmentRouter>(
  path: ListCategoryEquipmentConstant.path,
  name: ListCategoryEquipmentConstant.name,
)
class ListCategoryEquipmentRouter extends GoRouteData
    with $ListCategoryEquipmentRouter {
  const ListCategoryEquipmentRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ListCategoryEquipment();
  }
}
