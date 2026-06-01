import 'package:flutter/animation.dart';
import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget/core/ut_widget_design.dart';
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

  static TrinaGridConfiguration treeTo({
    TrinaGridSelectingMode selectionMode = .cell,
  }) {
    return TrinaGridConfiguration(
      columnSize: TrinaGridColumnSizeConfig(
        autoSizeMode: TrinaAutoSizeMode.scale,
      ),
      localeText: LocalizeHelper.build(), //ローカライズをINJECTする
      enableMoveDownAfterSelecting: true,
      selectingMode: selectionMode,

      style: TrinaGridStyleConfig(
        activatedColor: Colors.deepOrange,
        cellActiveColor: Colors.amber,
      ),
    );
  }
}
