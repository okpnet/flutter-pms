import '../../../imports.dart';
import '../../repositories/repositories.dart';
import '../../router/root_router.dart';
import '../../settings/settings.dart';

part 'repository_fetch_controller.g.dart';

@Riverpod(keepAlive: true)
QueryState<R> repositoryFetchController<R>(Ref ref) {
  ///データに応じたレポジトリの生成をする
  ///データテーブルによって変更する

  final setting = ref.read(mockUserSettingProvider);
  final limit = setting.fetchLimit;

  final router = ref.read(rootRouterProvider);
  debugPrint('router=${router.state.name}'); //取得できるのであれば、ページで切り替え

  ///[R]は戻り値の型
  ///ここでRに応じたレポジトリを生成する
  final mockRepository = MockRepository<R>();
  return QueryState<R>(
    expressionVisitorType: .graphQL,
    repository: mockRepository,
    limit: limit,
  );
}
