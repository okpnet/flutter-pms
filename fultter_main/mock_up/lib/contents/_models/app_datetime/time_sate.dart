/// 現在時刻を返すための状態
class TimeState {
  final DateTime serverBaseTimeUtc;
  final Stopwatch stopwatch;

  TimeState({required this.serverBaseTimeUtc, required this.stopwatch});

  /// TimeStatekからみたUTC時刻（JST）を返す
  DateTime getNow() {
    final currentUtc = serverBaseTimeUtc.add(stopwatch.elapsed);
    return currentUtc.toLocal();
  }
}
