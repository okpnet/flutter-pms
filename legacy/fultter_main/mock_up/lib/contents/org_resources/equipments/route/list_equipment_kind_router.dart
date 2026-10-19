import 'package:mock_up/imports.dart';

import '../_equipments.dart';

part 'list_equipment_kind_router.g.dart';

abstract class ListEquipmentKindConstant {
  static const String name = 'category_of_equipment';
  static const String path = '/orgresources/category';
}

@TypedGoRoute<ListEquipmentKindRouter>(
  path: ListEquipmentKindConstant.path,
  name: ListEquipmentKindConstant.name,
)
class ListEquipmentKindRouter extends GoRouteData
    with $ListEquipmentKindRouter {
  const ListEquipmentKindRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ListEquipmentKind();
  }
}
