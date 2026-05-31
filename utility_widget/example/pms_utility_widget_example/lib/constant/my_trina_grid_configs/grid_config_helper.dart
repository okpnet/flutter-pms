import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget_example/constant/my_trina_grid_configs/localize_helper.dart';

///PlutoGridの設定
///ローカライズ設定があるので、Riverpodで状態管理した方が良い。
class GridConfigHelper {
  ///https://pub.dev/packages/slang#getting-started
  ///
  static TrinaGridConfiguration build() {
    return TrinaGridConfiguration(
      columnSize: TrinaGridColumnSizeConfig(
        autoSizeMode: TrinaAutoSizeMode.scale,
      ),
      localeText: LocalizeHelper.build(), //ローカライズをINJECTする
    );
  }

  static TrinaGridConfiguration treeTo() {
    return TrinaGridConfiguration(
      columnSize: TrinaGridColumnSizeConfig(
        autoSizeMode: TrinaAutoSizeMode.scale,
      ),
      localeText: LocalizeHelper.build(), //ローカライズをINJECTする
      enableMoveDownAfterSelecting: true,
    );
  }
}
