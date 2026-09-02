/// [removeDuplicates] の実行結果。重複を取り除いたリストと、除外された重複のログを保持する。
class DuplicateResult<T> {
  /// 重複を取り除いた後のリスト。
  final List<T> uniqueList;

  /// 除外された重複アイテムのログ一覧。
  final List<DuplicateLog<T>> logs;

  DuplicateResult({required this.uniqueList, required this.logs});
}

/// 重複として除外された1件分のログ情報。
class DuplicateLog<T> {
  /// 重複として除外されたアイテム本体。
  final T item;

  /// 除外されたアイテムの、元のリストにおけるインデックス。
  final int originalIndex;

  /// 重複元(残された方)のアイテムのインデックス。
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

/// [list] から重複する要素を取り除く。
///
/// [preferLast] が true の場合は後から出現した要素を残し、先に出現した方を重複として扱う。
/// false の場合は先に出現した要素を残す。戻り値には重複を取り除いた後のリストに加えて
/// 除外されたアイテムのログが含まれるため、重複除去の内容をログ出力したい場合に呼び出す。
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
