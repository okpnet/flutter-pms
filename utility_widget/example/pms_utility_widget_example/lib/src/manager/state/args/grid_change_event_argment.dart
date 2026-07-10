import 'package:utility_widget_example/src/manager/manager.dart';
import 'package:utility_widget_example/src/manager/state/args/event_argment.dart';

///Gridの変更イベント引数
abstract class GridChangeEventArgment implements IStateChangeArgment {
  ///変更があったモデル
  final RowModel rowModel;
  GridChangeEventArgment(this.rowModel);
}

///行ドロップ前
class BeforeRowDropEventArgment extends GridChangeEventArgment {
  BeforeRowDropEventArgment(super.rowModel);
}

///行ドロップ後
class AfterRowDropEventArgment extends GridChangeEventArgment {
  ///変更があったモデル
  final RowModel beforeRowModel;
  AfterRowDropEventArgment(this.beforeRowModel, super.rowModel);
}
