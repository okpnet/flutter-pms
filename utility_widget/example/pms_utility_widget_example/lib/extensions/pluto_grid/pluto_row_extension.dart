import 'package:pluto_grid/pluto_grid.dart';

extension PlutoRowExtension on PlutoRow {
  List<PlutoRow> get children {
    if (type is! PlutoRowTypeGroup) return [];
    return type.group.children;
  }

  bool get isExpanded {
    if (type is! PlutoRowTypeGroup) return false;
    return type.group.expanded;
  }

  set isExpanded(bool value) {
    type.group.setExpanded(value);
  }
}
