///行の読み込みの状態管理
final class TreeLoadStatus {
  ///その行の子の総数
  final int numberOfRecords;

  ///現在の位置。ソートで順番が変わってしまう。
  final int current;

  bool get isLatest => current >= numberOfRecords;

  TreeLoadStatus({required this.current, required this.numberOfRecords});

  TreeLoadStatus copyWith({int? current, int? numberOfRecords}) {
    return TreeLoadStatus(
      current: current ?? this.current,
      numberOfRecords: numberOfRecords ?? this.numberOfRecords,
    );
  }
}
