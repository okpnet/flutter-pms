import 'package:pluto_grid/pluto_grid.dart';
import 'package:utility_widget_example/pages/contants/my_pluto_grid_configs/localize_helper.dart';

///PlutoGridの設定
///ローカライズ設定があるので、Riverpodで状態管理した方が良い。
class GridConfigHelper {
  ///https://pub.dev/packages/slang#getting-started
  ///
  static PlutoGridConfiguration buil() {
    return PlutoGridConfiguration(
      columnSize: PlutoGridColumnSizeConfig(
        autoSizeMode: PlutoAutoSizeMode.scale,
      ),
      localeText: LocalizeHelper.build(), //ローカライズをINJECTする
    );
  }
}
