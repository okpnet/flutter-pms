import 'package:flutter/material.dart';

import '../label/table_labels.dart';

/// ページネーションの各部品を差し替えるためのビルダー群。
///
/// パターン: Strategy(部品ごとの描画方法)
class PaginationBuilders {
  const PaginationBuilders({this.previous, this.next, this.page});

  final Widget Function(BuildContext context, bool enabled, VoidCallback onTap)?
  previous;
  final Widget Function(BuildContext context, bool enabled, VoidCallback onTap)?
  next;

  /// [page]は1始まりの表示用ページ番号。
  final Widget Function(
    BuildContext context,
    int page,
    bool selected,
    VoidCallback onTap,
  )?
  page;
}

/// 進む・戻る・ページ番号のパネル。ページ数が1のときは「1」だけを表示する。
class PaginationPanel extends StatelessWidget {
  const PaginationPanel({
    super.key,
    required this.page,
    required this.pageCount,
    required this.digits,
    required this.labels,
    required this.onSelect,
    this.builders = const PaginationBuilders(),
  });

  /// 0始まりの現在ページ。
  final int page;
  final int pageCount;
  final int digits;
  final TableLabels labels;
  final PaginationBuilders builders;
  final ValueChanged<int> onSelect;

  /// 現在ページを含む[digits]個ずつのブロックで番号を表示する。
  static List<int> visiblePages(int page, int pageCount, int digits) {
    if (pageCount <= 1) return const [0];
    final start = (page ~/ digits) * digits;
    final end = start + digits < pageCount ? start + digits : pageCount;
    return [for (var i = start; i < end; i++) i];
  }

  @override
  Widget build(BuildContext context) {
    final canPrev = page > 0;
    final canNext = page < pageCount - 1;
    void prev() => onSelect(page - 1);
    void next() => onSelect(page + 1);
    return Wrap(
      key: const Key('paginationPanel'),
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 4,
      children: [
        builders.previous?.call(context, canPrev, prev) ??
            TextButton(
              onPressed: canPrev ? prev : null,
              child: Text(labels.previous),
            ),
        for (final p in visiblePages(page, pageCount, digits))
          builders.page?.call(context, p + 1, p == page, () => onSelect(p)) ??
              (p == page
                  ? FilledButton.tonal(
                      onPressed: () => onSelect(p),
                      child: Text('${p + 1}'),
                    )
                  : TextButton(
                      onPressed: () => onSelect(p),
                      child: Text('${p + 1}'),
                    )),
        builders.next?.call(context, canNext, next) ??
            TextButton(
              onPressed: canNext ? next : null,
              child: Text(labels.next),
            ),
      ],
    );
  }
}
