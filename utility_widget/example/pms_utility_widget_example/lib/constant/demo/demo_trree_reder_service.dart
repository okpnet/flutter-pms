import 'package:utility_widget_example/constant/demo/asset_reader.dart';
import 'package:utility_widget_example/constant/results/result.dart';
import 'package:utility_widget_example/src/manager/service/pms_repository_service.dart';

class DemoTrreeRederService
    extends ReaderService<({String? parentId, int skip})> {
  final String parentKey;
  final String idKey;
  final int takeCount;
  final AssetReader assetReader;

  DemoTrreeRederService({
    required this.assetReader,
    required this.parentKey,
    required this.idKey,
    this.takeCount = 4,
  });

  @override
  Future<List<Map<String, dynamic>>> read(
    ({String? parentId, int skip})? condition,
  ) async {
    final rowJson = switch (await assetReader.toJsonFromCsv()) {
      Ok<List<Map<String, dynamic>>> jsonList => jsonList.value,
      _ => <Map<String, dynamic>>[],
    };
    bool isChild(Map<String, dynamic> row) => condition!.parentId == null
        ? row[parentKey] ==
              row[idKey] //トップフィールド条件
        : row[parentKey].toString() == condition &&
              row[parentKey] != row[idKey]; //通常条件
    return rowJson
        .where(isChild)
        .skip(condition!.skip)
        .take(takeCount)
        .toList();
  }
}
