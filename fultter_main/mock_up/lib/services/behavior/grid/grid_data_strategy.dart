import '../../../../imports.dart';

part 'grid_data_strategy.g.dart';

///データレポジトリへのアクセスを提供
@riverpod
class GridDataStrategy extends _$GridDataStrategy {
  @override
  QueryState? build() => null;

  void init<R>(QueryState<R> state) => state = state;
}
