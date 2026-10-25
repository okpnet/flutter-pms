import 'package:data_strategist/lib.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flgtable_lib/flgtable_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../i18n/strings_provider.dart';
import '../shipping_kind_destinations.dart';
import '../shipping_kinds_provider.dart';

/// 配送区分台帳の列。キーは graphql_provider_lib の `ShippingKindReadFields` に合わせる。
/// ラベルは言語ファイル(`lib/src/i18n`)。コメントが無いものは仮(doc/log に記録)。
List<ColumnDefinition<ShippingKind>> shippingKindColumns(
  SharedMasterStrings strings,
) {
  final c = strings.shippingKind.columns;
  return [
    ColumnDefinition<ShippingKind>(
      key: 'code',
      label: c.code,
      getter: (k) => k.code,
    ),
    ColumnDefinition<ShippingKind>(
      key: 'name',
      label: c.name,
      getter: (k) => k.name,
    ),
    ColumnDefinition<ShippingKind>(
      key: 'pronunciation',
      label: c.pronunciation,
      getter: (k) => k.pronunciation,
    ),
    ColumnDefinition<ShippingKind>(
      key: 'nickname',
      label: c.nickname,
      getter: (k) => k.nickname,
    ),
    ColumnDefinition<ShippingKind>(
      key: 'remarks',
      label: c.remarks,
      getter: (k) => k.remarks,
    ),
  ];
}

/// 配送区分台帳(テーブル構造)。行の操作で編集へ、「新規」で登録へ(遷移も CommandBus 経由)。
class ShippingKindListPage extends ConsumerWidget {
  const ShippingKindListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final strings = ref.watch(sharedMasterStringsProvider);
    final facade = ref.watch(shippingKindQueryStateProvider).facade;
    return Scaffold(
      appBar: AppBar(
        title: Text(strings.shippingKind.title),
        actions: [
          IconButton(
            tooltip: strings.shippingKind.create,
            icon: const Icon(Icons.add),
            onPressed: () => ref
                .read(commandBusProvider)
                .execute(const ShippingKindEditDestination()),
          ),
        ],
      ),
      body: FlgTable<ShippingKind>(
        // 言語が変わったら列を作り直す
        key: ValueKey(strings.runtimeType),
        columns: shippingKindColumns(strings),
        rowKey: (k) => k.id,
        config: const TableConfig(sortEnabled: true, filterEnabled: true),
        loader: (query) async {
          final items = await facade.execute(
            PredicateModel(take: shippingKindFetchLimit, skip: 0),
          );
          return LoadResult<ShippingKind>(
            items: items,
            totalCount: items.length,
            filteredCount: items.length,
            start: 0,
            count: items.length,
          );
        },
        events: TableEvents<ShippingKind>(
          onRowActivated: (k) => ref
              .read(commandBusProvider)
              .execute(ShippingKindEditDestination(id: k.id)),
        ),
      ),
    );
  }
}
