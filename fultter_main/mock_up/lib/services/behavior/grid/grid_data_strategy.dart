import 'package:mock_up/services/services.dart';
import 'package:mock_up/services/settings/settings.dart';

import '../../../../imports.dart';

part 'grid_data_strategy.g.dart';

///データレポジトリへのアクセスを提供
///WidgetのCloseで初期化する
@riverpod
QueryState? gridDataStrategy(Ref ref) {
  ///データに応じたレポジトリの生成をする
  ///データテーブルによって変更する

  final setting = ref.read(mockUserSettingProvider);
  final limit = setting.fetchLimit;

  final router = ref.read(rootRouterProvider);
  debugPrint('router=${router.state.name}'); //取得できるのであれば、ページで切り替え

  ///[dynamic]は戻り値の型
  final mockRepository = MockRepository<dynamic>();
  return QueryState<dynamic>(
    expressionVisitorType: .graphQL,
    repository: mockRepository,
    limit: limit,
  );
}
