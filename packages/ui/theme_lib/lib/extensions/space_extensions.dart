import 'package:flutter/material.dart';

import '../tokens/space_field.dart';

extension BuildContextSpaceX on BuildContext {
  /// テーマで設定しているスペース
  double get spacing => SpaceField.of(Theme.of(this)).spacing;

  /// 生データを使いたいとき
  SpaceField get spaceField => SpaceField.of(Theme.of(this));
}

/// [Widget]の周囲に[SpaceField]の余白を確保する。
extension WidgetSpaceX on Widget {
  /// 全周
  Widget spaceAll(BuildContext context) =>
      Padding(padding: context.spaceField.all, child: this);

  /// 左右
  Widget spaceHorizontal(BuildContext context) =>
      Padding(padding: context.spaceField.horizontal, child: this);

  /// 上下
  Widget spaceVertical(BuildContext context) =>
      Padding(padding: context.spaceField.vertical, child: this);
}
