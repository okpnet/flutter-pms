import 'package:mock_up/contents/actual/materials/records_purchase_recive.dart';
import 'package:mock_up/imports.dart';

part 'records_purchase_recive_router.g.dart';

abstract class RecordsPurchaseReciveConstant {
  static const String name = 'actual_purchase_recive';
  static const String path = '/actual/purchase_recive/records';
}

@TypedGoRoute<RecordsPurchaseReciveRouter>(
  path: RecordsPurchaseReciveConstant.path,
  name: RecordsPurchaseReciveConstant.name,
)
class RecordsPurchaseReciveRouter extends GoRouteData
    with $RecordsPurchaseReciveRouter {
  RecordsPurchaseReciveRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RecordsPurchaseRecive();
  }
}
