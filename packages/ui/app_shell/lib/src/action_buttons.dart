import 'package:flutter/material.dart';

/// 主の操作と副の操作を、同じ幅で、中央に横並びにする(例: 設定する / 標準に戻す)。
///
/// 画面のボタンの配置の標準。幅は 2 つで同じ([buttonWidth])、高さは標準より少し高め。
/// 副の操作は枠線のボタン。[secondaryLabel] を省くと、主の操作だけを中央に置く。
class ActionButtons extends StatelessWidget {
  const ActionButtons({
    super.key,
    required this.primaryLabel,
    required this.onPrimary,
    this.secondaryLabel,
    this.onSecondary,
    this.buttonWidth = 180,
  });

  final String primaryLabel;
  final VoidCallback? onPrimary;
  final String? secondaryLabel;
  final VoidCallback? onSecondary;
  final double buttonWidth;

  @override
  Widget build(BuildContext context) {
    const size = Size(0, 48);
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 16,
      runSpacing: 12,
      children: [
        SizedBox(
          width: buttonWidth,
          child: FilledButton(
            key: const ValueKey('actionPrimary'),
            style: FilledButton.styleFrom(minimumSize: size),
            onPressed: onPrimary,
            child: Text(primaryLabel),
          ),
        ),
        if (secondaryLabel != null)
          SizedBox(
            width: buttonWidth,
            child: OutlinedButton(
              key: const ValueKey('actionSecondary'),
              style: OutlinedButton.styleFrom(minimumSize: size),
              onPressed: onSecondary,
              child: Text(secondaryLabel!),
            ),
          ),
      ],
    );
  }
}
