import '../import.dart';

extension TrinaRowExtension on TrinaRow {
  List<TrinaRow> get children {
    if (type is! TrinaRowTypeGroup) return [];
    return type.group.children;
  }

  bool get isExpanded {
    if (type is! TrinaRowTypeGroup) return false;
    return type.group.expanded;
  }

  set isExpanded(bool value) {
    type.group.setExpanded(value);
  }
}
