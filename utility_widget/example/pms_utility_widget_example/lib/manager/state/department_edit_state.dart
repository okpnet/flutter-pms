import 'package:utility_widget/utiritiy_widget.dart';

class DepartmentEditState extends ChangeNotifier {
  List<String> ancestorIds = [];
  String? selectedId;

  Map<String, dynamic> row;

  DepartmentEditState({required this.row});

  Future<void> loadInitial(List<int> ids) async {
    ancestorIds = ids;
    // DBから展開
    notifyListeners();
  }

  Future<void> expand(int id) async {
    children[id] = await loadChildrenFromDB(id);
    notifyListeners();
  }

  void select(int id) {
    selectedId = id;
    notifyListeners();
  }

  void updateForm(String key, dynamic value) {
    form[key] = value;
    notifyListeners();
  }

  Future<void> save() async {
    await saveToDB(form);
  }
}

class DepartmentEditScope extends InheritedNotifier<DepartmentEditState> {
  const DepartmentEditScope({
    super.key,
    required DepartmentEditState notifier,
    required super.child,
  }) : super(notifier: notifier);

  static DepartmentEditState of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<DepartmentEditScope>()!
        .notifier!;
  }
}
