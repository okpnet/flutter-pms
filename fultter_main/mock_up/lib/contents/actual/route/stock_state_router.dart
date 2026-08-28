// Project imports:

import '../../../imports.dart';
import '../_actual.dart';

part 'stock_state_router.g.dart';

abstract class StockStateConstant {
  static const String name = 'actual_stock_state';
  static const String path = '/actual/stock_state';
}

@TypedGoRoute<StockStateRouter>(
  path: StockStateConstant.path,
  name: StockStateConstant.name,
)
class StockStateRouter extends GoRouteData with $StockStateRouter {
  const StockStateRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return StockState();
  }
}
