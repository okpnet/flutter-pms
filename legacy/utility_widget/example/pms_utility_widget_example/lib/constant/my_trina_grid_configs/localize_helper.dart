import 'dart:io';

import 'package:trina_grid/trina_grid.dart';

///https://qiita.com/myzw1mt3/items/8631d4615509119851a4
class LocalizeHelper {
  static TrinaGridLocaleText build() {
    final locale = Platform.localeName; //現在のロケール

    return TrinaGridLocaleText.japanese();
  }
}
