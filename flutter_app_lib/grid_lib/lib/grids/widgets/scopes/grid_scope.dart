import 'package:utility_widget/utiritiy_widget.dart';

abstract class PmsState extends ChangeNotifier {}

///Widgetの変更監視
class GridScope<T extends ChangeNotifier> extends InheritedNotifier<T> {
  const GridScope({super.key, required T notifier, required super.child})
    : super(notifier: notifier);

  static T of<T extends PmsState>(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<GridScope<T>>()!
        .notifier!;
  }
}
