import 'package:flutter/material.dart';

import '../tokens/border_field.dart';

/// 検索窓の見た目（完全な丸み・枠線なし・塗りつぶし）にする。
///
/// 通常の入力欄はテーマ全体に適用済みのため、変換は不要。
Widget _search(BuildContext context, Widget child) {
  final theme = Theme.of(context);
  final border = BorderField.of(theme);
  OutlineInputBorder outline(BorderSide side) => OutlineInputBorder(
    borderRadius: border.fullBorderRadius,
    borderSide: side,
  );
  return Theme(
    data: theme.copyWith(
      inputDecorationTheme: theme.inputDecorationTheme.copyWith(
        border: outline(BorderSide.none),
        enabledBorder: outline(BorderSide.none),
        focusedBorder: outline(
          BorderSide(
            color: theme.colorScheme.primary,
            width: border.activeBorderWidth,
          ),
        ),
        filled: true,
        fillColor: theme.colorScheme.surfaceContainerHigh,
      ),
    ),
    child: child,
  );
}

extension TextFormFieldSearchX on TextFormField {
  Widget toSearch(BuildContext context) => _search(context, this);
}

extension TextFieldSearchX on TextField {
  Widget toSearch(BuildContext context) => _search(context, this);
}
