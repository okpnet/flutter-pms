import 'package:utility_widget/utiritiy_widget.dart';

abstract class PmsState extends ChangeNotifier {}

class PmsStateScope<T extends PmsState> extends InheritedNotifier<T> {
  const PmsStateScope({super.key, required T notifier, required super.child})
    : super(notifier: notifier);

  static T of<T extends PmsState>(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<PmsStateScope<T>>()!
        .notifier!;
  }
}
