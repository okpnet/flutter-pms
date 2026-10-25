import 'package:data_strategist/lib.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flgtable_lib/flgtable_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../i18n/strings_provider.dart';
import '../customer_destinations.dart';
import '../customers_provider.dart';

/// 顧客台帳の列。キーは graphql_provider_lib の `CustomerPage` に合わせる。
/// ラベルは言語ファイル(`lib/src/i18n`)。コメントが無いものは仮(doc/log に記録)。
List<ColumnDefinition<Customer>> customerColumns(SalesStrings strings) {
  final c = strings.customer.columns;
  return [
    ColumnDefinition<Customer>(
      key: 'code',
      label: c.code,
      getter: (c) => c.code,
    ),
    ColumnDefinition<Customer>(
      key: 'name',
      label: c.name,
      getter: (c) => c.name,
    ),
    ColumnDefinition<Customer>(
      key: 'mail',
      label: c.mail,
      getter: (c) => c.mail,
    ),
    ColumnDefinition<Customer>(
      key: 'phone',
      label: c.phone,
      getter: (c) => c.phone,
    ),
  ];
}

/// 顧客台帳(テーブル構造)。行をタップすると編集へ(遷移も CommandBus 経由)。
class CustomerListPage extends ConsumerWidget {
  const CustomerListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final strings = ref.watch(salesStringsProvider);
    final facade = ref.watch(customerQueryStateProvider).facade;
    return Scaffold(
      appBar: AppBar(title: Text(strings.customer.title)),
      body: FlgTable<Customer>(
        // 言語が変わったら列を作り直す
        key: ValueKey(strings.runtimeType),
        columns: customerColumns(strings),
        rowKey: (c) => c.id,
        config: const TableConfig(sortEnabled: true, filterEnabled: true),
        loader: (query) async {
          final items = await facade.execute(
            PredicateModel(take: customerFetchLimit, skip: 0),
          );
          return LoadResult<Customer>(
            items: items,
            totalCount: items.length,
            filteredCount: items.length,
            start: 0,
            count: items.length,
          );
        },
        events: TableEvents<Customer>(
          onRowActivated: (c) => ref
              .read(commandBusProvider)
              .execute(CustomerEditDestination(id: c.id)),
        ),
      ),
    );
  }
}
