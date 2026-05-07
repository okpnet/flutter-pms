import 'dart:io';

import 'package:pluto_grid/pluto_grid.dart';

///https://qiita.com/myzw1mt3/items/8631d4615509119851a4
class LocalizeHelper {
  static PlutoGridLocaleText build() {
    final locale = Platform.localeName; //現在のロケール

    return PlutoGridLocaleText.japanese();
  }
}
