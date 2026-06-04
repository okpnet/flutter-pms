import 'package:utility_widget_example/constant/demo/asset_reader.dart';
import 'package:utility_widget_example/constant/results/result.dart';
import 'package:utility_widget_example/src/manager/service/pms_repository_service.dart';

class DemoReaderService extends ReaderService<AssetReader> {
  @override
  Future<List<Map<String, dynamic>>> read(AssetReader? consition) async {
    final rowJson = switch (await consition!.toJsonFromCsv()) {
      Ok<List<Map<String, dynamic>>> jsonList => jsonList.value,
      _ => <Map<String, dynamic>>[],
    };
    return rowJson;
  }
}
