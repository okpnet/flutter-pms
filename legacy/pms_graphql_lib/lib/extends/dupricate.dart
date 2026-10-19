class DuplicateResult<T> {
  final List<T> uniqueList;
  final List<DuplicateLog<T>> logs;

  DuplicateResult({required this.uniqueList, required this.logs});
}

class DuplicateLog<T> {
  final T item;
  final int originalIndex;
  final int duplicateOfIndex;

  DuplicateLog({
    required this.item,
    required this.originalIndex,
    required this.duplicateOfIndex,
  });

  @override
  String toString() =>
      "Item '$item' at index $originalIndex is duplicate of index $duplicateOfIndex";
}

DuplicateResult<T> removeDuplicates<T>(
  List<T> list, {
  bool preferLast = false,
}) {
  final seen = <T, int>{}; // item → first/last index
  final logs = <DuplicateLog<T>>[];

  // 処理方向を決める
  final indexes = preferLast
      ? List.generate(list.length, (i) => list.length - 1 - i)
      : List.generate(list.length, (i) => i);

  for (final i in indexes) {
    final item = list[i];

    if (seen.containsKey(item)) {
      // 重複ログを残す
      logs.add(
        DuplicateLog(
          item: item,
          originalIndex: i,
          duplicateOfIndex: seen[item]!,
        ),
      );

      // preferLast の場合は index を更新する
      if (preferLast) {
        seen[item] = i;
      }
    } else {
      seen[item] = i;
    }
  }

  // uniqueList を元の順序で返す
  final uniqueIndexes = seen.values.toList()..sort();
  final uniqueList = uniqueIndexes.map((i) => list[i]).toList();

  return DuplicateResult(uniqueList: uniqueList, logs: logs);
}
