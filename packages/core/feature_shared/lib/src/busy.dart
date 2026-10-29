import 'package:app_shell/app_shell.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 長時間の処理中の状態。処理中は、画面全体の操作と戻る操作を無効にする。
class BusyState {
  const BusyState({this.message = '', this.startedAt});

  /// 処理中でない。
  static const idle = BusyState();

  /// 「計算中」などの文言。空のときは処理中でない。
  final String message;
  final DateTime? startedAt;

  bool get isBusy => startedAt != null;

  Map<String, Object?> toJson() => {
    'message': message,
    'startedAt': startedAt?.toIso8601String(),
  };
}

/// 長時間の処理(例: 資材所要計算)の状態。処理は [BusyNotifier.run] で包む。
/// アプリは [BusyScope] を `MaterialApp` の `builder` に置き、画面全体を覆う。
final busyProvider = NotifierProvider<BusyNotifier, BusyState>(
  BusyNotifier.new,
);

class BusyNotifier extends Notifier<BusyState> {
  @override
  BusyState build() => BusyState.idle;

  /// [task] の実行中だけ、処理中にする。終わったら(失敗しても)元に戻す。
  /// すでに処理中のときは何もせず null を返す(二重に実行しない)。
  Future<T?> run<T>(String message, Future<T> Function() task) async {
    if (state.isBusy) return null;
    state = BusyState(message: message, startedAt: DateTime.now());
    try {
      return await task();
    } finally {
      if (ref.mounted) state = BusyState.idle;
    }
  }
}

/// 処理中([busyProvider])のあいだ、[child] 全体を覆って操作を無効にする。
///
/// パターン: Decorator(アプリ全体のウィジェットに、操作の禁止を足す)
class BusyScope extends ConsumerWidget {
  const BusyScope({super.key, required this.child, this.elapsedLabel = '経過時間'});

  final Widget child;
  final String elapsedLabel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final busy = ref.watch(busyProvider);
    return BusyOverlay(
      busy: busy.isBusy,
      message: busy.message,
      startedAt: busy.startedAt,
      elapsedLabel: elapsedLabel,
      child: child,
    );
  }
}
