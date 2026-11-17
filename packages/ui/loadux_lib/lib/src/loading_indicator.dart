import 'package:flutter/material.dart';

import 'loading_theme.dart';

/// 読み込み中の円。大きさ・線の太さ・色は、引数 → [LoadingTheme] の順に決まる。
///
/// [label] があれば、円の下に文言を出す(文言は呼び出し側が多言語にして渡す)。
/// [semanticLabel] は、読み上げ用(省略時は [label])。
class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    super.key,
    this.size,
    this.strokeWidth,
    this.color,
    this.label,
    this.semanticLabel,
  }) : centered = false;

  /// 中央に置く(画面・領域の全体が読み込み中のとき)。
  const LoadingIndicator.centered({
    super.key,
    this.size,
    this.strokeWidth,
    this.color,
    this.label,
    this.semanticLabel,
  }) : centered = true;

  final double? size;
  final double? strokeWidth;
  final Color? color;
  final String? label;
  final String? semanticLabel;
  final bool centered;

  @override
  Widget build(BuildContext context) {
    final theme = LoadingTheme.of(context);
    final side = size ?? theme.size;
    final circle = SizedBox(
      key: const ValueKey('loadingCircle'),
      width: side,
      height: side,
      child: CircularProgressIndicator(
        strokeWidth: strokeWidth ?? theme.strokeWidth,
        color: color ?? theme.color,
        semanticsLabel: semanticLabel ?? label,
      ),
    );
    final text = label;
    final body = text == null
        ? circle
        : Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              circle,
              const SizedBox(height: 12),
              Text(
                text,
                style:
                    theme.labelStyle ?? Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          );
    return centered ? Center(child: body) : body;
  }
}

/// 読み込み中のバー(横に長い)。高さ・色は、引数 → [LoadingTheme] の順に決まる。
class LoadingBar extends StatelessWidget {
  const LoadingBar({super.key, this.minHeight, this.color, this.semanticLabel});

  final double? minHeight;
  final Color? color;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final theme = LoadingTheme.of(context);
    return LinearProgressIndicator(
      minHeight: minHeight ?? theme.barHeight,
      color: color ?? theme.color,
      semanticsLabel: semanticLabel,
    );
  }
}
