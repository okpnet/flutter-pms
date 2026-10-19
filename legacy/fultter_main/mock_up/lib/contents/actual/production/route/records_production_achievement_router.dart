import 'package:go_router/go_router.dart';
import 'package:mock_up/contents/actual/production/records_production_achievement.dart';

import '../../../../imports.dart';

part 'records_production_achievement_router.g.dart';

abstract class RecordsProductionAchievementConstant {
  static const String name = 'production_records';
  static const String path = '/actual/production/records';
}

@TypedGoRoute<RecordsProductionAchievementRouter>(
  path: RecordsProductionAchievementConstant.path,
  name: RecordsProductionAchievementConstant.name,
)
class RecordsProductionAchievementRouter extends GoRouteData
    with $RecordsProductionAchievementRouter {
  RecordsProductionAchievementRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RecordsProductionAchievement();
  }
}
