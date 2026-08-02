import '../../../imports.dart';
import '../production.dart';

part 'tree_processes_chart_router.g.dart';

abstract class TreeProcessesChartConstant {
  static const String name = 'tree_chart_processes';
  static const String path = '/product/processes_chart';
}

@TypedGoRoute<TreeProcessesChartRouter>(
  path: TreeProcessesChartConstant.path,
  name: TreeProcessesChartConstant.name,
)
class TreeProcessesChartRouter extends GoRouteData
    with $TreeProcessesChartRouter {
  const TreeProcessesChartRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TreeProcessesChart();
  }
}
