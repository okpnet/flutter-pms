import 'package:utility_widget_example/constant/results/result.dart';
import 'package:utility_widget_example/src/manager/model/summary_data.dart';

abstract class PgTreeDataLoader {
  /// parentId が null のときは root を返す
  Future<Result<SummaryLoadData>> loadChildrenOf({
    String? parentId,
    required int take,
    required int skip,
  });

  /// 親変更（デモではメモリ上だけ）
  void updateParent(String id, String newParentId);
}
