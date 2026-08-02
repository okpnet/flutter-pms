// Dart imports:
import 'dart:io';

// Package imports:
import 'package:trina_grid/trina_grid.dart';

// Project imports:
import 'package:mock_up/imports.dart';

///TrinaGridの設定を管理するクラス
class GridConfiguration {
  ///https://pub.dev/packages/slang#getting-started

  final TrinaGridConfiguration _config;

  ///標準グリッドの設定
  TrinaGridConfiguration get listConfig =>
      _config.copyWith(localeText: getLocalize(), selectingMode: .row);

  ///ツリーグリッドの設定
  TrinaGridConfiguration get treeConfig => _config.copyWith(
    localeText: getLocalize(),
    enableMoveDownAfterSelecting: true,
    selectingMode: .row,
    style: TrinaGridStyleConfig(
      activatedColor: Colors.deepOrange,
      cellActiveColor: Colors.amber,
    ),
  );

  GridConfiguration()
    : _config = TrinaGridConfiguration(
        columnSize: TrinaGridColumnSizeConfig(
          autoSizeMode: TrinaAutoSizeMode.scale,
        ),
      );

  ///ローカライズ
  TrinaGridLocaleText getLocalize() {
    final locale = Platform.localeName; //現在のロケール
    return TrinaGridLocaleText.japanese();
  }
}
