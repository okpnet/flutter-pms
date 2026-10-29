import 'dart:async';

import 'package:flutter/material.dart';

/// 長時間の処理中に、画面全体の操作を無効にして「計算中」を示す覆い。
///
/// [busy] のあいだ、[child] 全体(メニュー・ボタン・入力)の操作とキーボードのフォーカスを無効にし、
/// 戻る操作([PopScope])も止める。中央に、処理が止まっていないことを示す表示(回転と経過時間)を出す。
/// 色だけでなく文字([message])でも「計算中」と分かるようにする。
class BusyOverlay extends StatelessWidget {
  const BusyOverlay({
    super.key,
    required this.busy,
    required this.child,
    this.message = '',
    this.startedAt,
    this.elapsedLabel = '経過時間',
  });

  final bool busy;
  final Widget child;

  /// 「計算中」などの文言。
  final String message;

  /// 処理を始めた時刻(経過時間の表示に使う)。null のときは経過時間を出さない。
  final DateTime? startedAt;

  /// 経過時間の見出し。
  final String elapsedLabel;

  @override
  Widget build(BuildContext context) => PopScope(
    canPop: !busy,
    child: Stack(
      fit: StackFit.passthrough,
      children: [
        // 操作・フォーカスを無効にする(メニュー・ボタン・戻る操作の経路すべて)
        AbsorbPointer(
          absorbing: busy,
          child: ExcludeFocus(excluding: busy, child: child),
        ),
        if (busy)
          Positioned.fill(
            child: Semantics(
              container: true,
              liveRegion: true,
              label: message,
              child: ColoredBox(
                key: const ValueKey('busyBarrier'),
                color: Colors.black45,
                child: Center(
                  child: _BusyCard(
                    message: message,
                    startedAt: startedAt,
                    elapsedLabel: elapsedLabel,
                  ),
                ),
              ),
            ),
          ),
      ],
    ),
  );
}

class _BusyCard extends StatefulWidget {
  const _BusyCard({
    required this.message,
    required this.startedAt,
    required this.elapsedLabel,
  });

  final String message;
  final DateTime? startedAt;
  final String elapsedLabel;

  @override
  State<_BusyCard> createState() => _BusyCardState();
}

class _BusyCardState extends State<_BusyCard> {
  Timer? _timer;
  late final Duration _base;
  int _ticks = 0;

  @override
  void initState() {
    super.initState();
    // 表示した時点までの経過時間。以降は毎秒数える(処理が止まっていないことを示す)
    final started = widget.startedAt;
    _base = started == null
        ? Duration.zero
        : DateTime.now().difference(started).abs();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted) setState(() => _ticks++);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  static String format(Duration d) {
    final m = d.inMinutes.toString().padLeft(2, '0');
    final s = (d.inSeconds % 60).toString().padLeft(2, '0');
    return '$m:$s';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final elapsed = widget.startedAt == null
        ? null
        : _base + Duration(seconds: _ticks);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 12,
          children: [
            const SizedBox(
              width: 48,
              height: 48,
              child: CircularProgressIndicator(),
            ),
            Text(widget.message, style: theme.textTheme.titleMedium),
            if (elapsed != null)
              Text(
                '${widget.elapsedLabel} ${format(elapsed)}',
                key: const ValueKey('busyElapsed'),
                style: theme.textTheme.bodyMedium,
              ),
          ],
        ),
      ),
    );
  }
}
