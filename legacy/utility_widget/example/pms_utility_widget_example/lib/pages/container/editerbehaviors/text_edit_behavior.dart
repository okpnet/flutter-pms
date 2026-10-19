import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/src/lib/grids/widgets/editers/grid_edit_behavior.dart';

class TextEditBehavior extends GridEditBehavior<TrinaColumnTypeText> {
  @override
  Widget build({
    required BuildContext context,
    required TrinaColumnTypeText type,
    required initialValue,
    required String field,
    required String? title,
    required ValueChanged<dynamic> onCommit,
  }) {
    // 1. 初期値をコントローラーにセット
    final controller = TextEditingController(
      text: initialValue?.toString() ?? type.defaultValue,
    );
    final focusNode = FocusNode();

    // 2. フォーカスが外れた（入力を終えた、気移りした）タイミングを監視
    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        // 💡 確定として親（レジストリ・ダイアログ側）に値を送り返す
        onCommit(controller.text);
      }
    });
    return UtTextInput.primary(
      controller: controller,
      focusNode: focusNode,
      label: title, //ここはローカライズ
      requiered: true,
      initialValue: initialValue != null
          ? initialValue.toString()
          : type.defaultValue.toString(),
      onFieldSubmitted: (value) {
        onCommit(value); // Enterキー押下時も即確定
      },
    );
  }
}
