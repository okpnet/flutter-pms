import 'package:customer_api/customer_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'customer_handlers.dart';
import 'customer_paths.dart';
import 'pages/customer_edit_page.dart';
import 'pages/customer_list_page.dart';
import 'pages/customer_picker_page.dart';

/// 顧客機能をアプリへ組み込むための口。
class CustomerModule implements FeatureModule {
  const CustomerModule();

  @override
  List<RouteBase> get routes => [
    GoRoute(
      path: CustomerPaths.list,
      builder: (context, state) => const CustomerListPage(),
      routes: [
        // ':id' より先に置く('pick' が id として解釈されないように)
        GoRoute(
          path: CustomerPaths.pickSegment,
          builder: (context, state) => const CustomerPickerPage(),
        ),
        GoRoute(
          path: CustomerPaths.editSegment,
          builder: (context, state) => CustomerEditPage(
            id: int.tryParse(state.pathParameters['id'] ?? ''),
          ),
        ),
      ],
    ),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) =>
      switch (destination) {
        CustomerListDestination() => CustomerPaths.list,
        CustomerEditDestination(:final id) => CustomerPaths.edit(id),
        CustomerPickerDestination() => CustomerPaths.pick,
        _ => null,
      };

  @override
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {
    registry.register<FindCustomerNameCommand, String?>(
      FindCustomerNameHandler(ref),
    );
  }
}
