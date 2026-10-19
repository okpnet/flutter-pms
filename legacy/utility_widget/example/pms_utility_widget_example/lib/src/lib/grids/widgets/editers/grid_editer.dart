import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/src/lib/grids/widgets/widgets.dart';
import '../../../constants/constant.dart';
import '../../../undoredo/undo_redo.dart';

typedef KeyColumn = Map<String, TrinaColumn>;
typedef GetWidget = Widget Function(BuildContext context, List<Widget> editors);

///RowModelの編集用画面
class GridEditer extends StatefulWidget {
  ///親からUnsoState状態管理を受け取る
  final IUndoRedoState undoRedoState;

  ///TrinaColumnType別にWidgetを生成するWrapperの保管
  final GridEditerRepository repository;

  ///コピーされた行のMap
  final JsonMap clone;

  ///TrinaRowのFieldと列のMap
  final KeyColumn columns;

  /// 💡 レイアウトを外側から制御するためのビルダ関数
  final GetWidget? layoutBuilder;

  GridEditer({
    super.key,
    required this.undoRedoState,
    required this.repository,
    required TrinaRow row,
    this.layoutBuilder,
  }) : clone = row.toJson(),
       columns = row.cells.map((key, value) => MapEntry(key, value.column));
  @override
  State<StatefulWidget> createState() => _GridEditerState();
}

class _GridEditerState extends State<GridEditer> {
  @override
  Widget build(BuildContext context) {
    final editors = toWidget(context);
    // 外部からレイアウトビルダーが渡されていればそれを使い、なければデフォルト（RowやWrap）にする
    if (widget.layoutBuilder != null) {
      return widget.layoutBuilder!(context, editors);
    }

    // デフォルト：画面からはみ出さないように Wrap や ListView. Pilgrimにするのが安全です
    return Wrap(spacing: 8.0, runSpacing: 8.0, children: editors);
  }

  ///キーとTrinaColumnから
  List<Widget> toWidget(BuildContext context) {
    List<Widget> result = [];
    widget.columns.forEach((key, value) {
      if (!value.readOnly) {
        final value = widget.clone[key];
        final build = widget.repository.buildEditor(
          context: context,
          parentModel: widget.clone,
          column: value,
          initialValue: value,
        );
        result.add(build);
      }
    });
    return result;
  }
}
