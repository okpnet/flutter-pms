import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget_example/src/manager/converter/pms_model_converter.dart';

mixin GridProvider {
  Future<List<TrinaRow>> toWidgetRow(
    PmsRowConverter converter,
    List<Map<String, dynamic>> list,
  ) async {
    return list.map((t) => converter.to(t)).toList();
  }
}
