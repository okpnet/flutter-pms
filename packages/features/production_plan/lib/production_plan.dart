/// 生産計画 機能(実装)。アプリだけが読み込み、公開するのは [ProductionPlanModule] と、
/// MRP の窓口([IMrpGateway]・[mrpGatewayProvider]・[mrpStaffIdProvider])など、アプリが差し込む型。
/// 他の機能が使う遷移先の型は `production_plan_api.dart` を読み込む。
library;

export 'src/mrp/graphql_mrp_gateway.dart';
export 'src/mrp/mrp_gateway.dart';
export 'src/mrp/mrp_models.dart';
export 'src/production_plan_module.dart' show ProductionPlanModule;
