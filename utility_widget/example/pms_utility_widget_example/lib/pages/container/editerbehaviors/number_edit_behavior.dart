import 'package:flutter/services.dart';
import 'package:trina_grid/trina_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/src/lib/grids/widgets/editers/grid_edit_behavior.dart';

class NumberEditBehavior extends GridEditBehavior<TrinaColumnTypeNumber> {
  @override
  Widget build({
    required BuildContext context,
    required TrinaColumnTypeNumber type,
    required initialValue,
    required String field,
    required String? title,
    required ValueChanged<dynamic> onCommit,
  }) {
    // 1. 初期値を安全に文字列化してコントローラーにセット（初期値がない場合はdefaultValueを考慮）
    final startValue = initialValue ?? type.defaultValue;
    final controller = TextEditingController(
      text: startValue?.toString() ?? '',
    );
    final focusNode = FocusNode();

    // 2. フォーカスアウト時の確定処理
    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        _parseAndCommit(controller.text, type, onCommit);
      }
    });

    // 3. 小数点を許可するか（fractionDigits が 0 より大きければ許可）
    final allowDecimal = type.decimalPoint > 0;
    return UtTextInput.primary(
      controller: controller,
      focusNode: focusNode,
      keyboardType: TextInputType.numberWithOptions(
        decimal: allowDecimal,
        signed: type.negative, // 👈 typeのプロパティから「負数入力」を自動制御
      ),
      // 💡 typeのプロパティ（negative, allowDecimal）を先読みして、動的に正規表現フォーマッタを構築
      inputFormatters: [
        FilteringTextInputFormatter.allow(
          RegExp(
            // negative が true なら先頭のマイナスを許可
            (type.negative ? r'^-?' : r'^') +
                // allowDecimal が true なら小数点を許可
                (allowDecimal ? r'\d*\.?\d*' : r'\d*'),
          ),
        ),
      ],
      label: title, //ここはローカライズ
      requiered: true,
      initialValue: initialValue != null
          ? initialValue.toString()
          : type.defaultValue.toString(),
      onFieldSubmitted: (value) {
        _parseAndCommit(value, type, onCommit);
      },
    );
  }

  /// 既存のTypeプロパティの規則（小数点桁数など）に則って安全にパースしてコミットする
  void _parseAndCommit(
    String text,
    TrinaColumnTypeNumber type,
    ValueChanged<dynamic> onCommit,
  ) {
    if (text.isEmpty || text == '-') {
      onCommit(null);
      return;
    }

    // 1. パース処理
    num? parsedValue = num.tryParse(text);
    if (parsedValue == null) {
      onCommit(null);
      return;
    }

    // 2. 💡 負数チェック
    if (!type.negative && parsedValue < 0) {
      parsedValue = parsedValue.abs(); // 負数不許可なら絶対値にする等の補正
    }

    // 3. 💡 decimalPoint（小数点以下の最大桁数）に則って値を丸める
    if (type.decimalPoint > 0 && parsedValue is double) {
      // 指定の小数点桁数に安全に丸める
      final mod = text.split('.');
      if (mod.length > 1 && mod[1].length > type.decimalPoint) {
        parsedValue = double.parse(
          parsedValue.toStringAsFixed(type.decimalPoint),
        );
      }
    } else if (type.decimalPoint == 0) {
      parsedValue = parsedValue.toInt(); // 小数点以下が0桁指定なら強制的に整数化
    }

    // 4. 確定した数値を通知
    onCommit(parsedValue);
  }
}
