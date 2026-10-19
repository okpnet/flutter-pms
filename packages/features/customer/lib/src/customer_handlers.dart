import 'package:customer_api/customer_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'customers_provider.dart';

/// [FindCustomerNameCommand] の処理。他の機能から顧客名を引くために使われる。
class FindCustomerNameHandler
    implements ActionCommandHandler<FindCustomerNameCommand, String?> {
  FindCustomerNameHandler(this._ref);

  final Ref _ref;

  @override
  Future<String?> handle(FindCustomerNameCommand command) async =>
      _ref.read(customersProvider.notifier).findById(command.id)?.name;
}
