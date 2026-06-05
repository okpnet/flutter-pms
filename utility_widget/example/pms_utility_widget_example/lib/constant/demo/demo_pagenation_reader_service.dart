import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget_example/constant/demo/asset_reader.dart';
import 'package:utility_widget_example/constant/results/result.dart';
import 'package:utility_widget_example/src/manager/service/pms_repository_service.dart';

class DemoPagenaationReaderService
    extends ReaderService<TrinaLazyPaginationRequest> {
  final AssetReader assetReader;

  DemoPagenaationReaderService({required this.assetReader});

  @override
  Future<List<Map<String, dynamic>>> read(
    TrinaLazyPaginationRequest? consition,
  ) async {
    final rowJson = switch (await assetReader.toJsonFromCsv()) {
      Ok<List<Map<String, dynamic>>> jsonList => jsonList.value,
      _ => <Map<String, dynamic>>[],
    };
    return rowJson;
  }
}
