import 'customer_commands.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';

import 'customers_provider.dart';

/// [FindCustomerNameCommand] の処理。他の機能から顧客名を引くために使われる。
class FindCustomerNameHandler
    implements ActionCommandHandler<FindCustomerNameCommand, String?> {
  FindCustomerNameHandler(this._ref);

  final Ref _ref;

  @override
  Future<String?> handle(FindCustomerNameCommand command) async {
    try {
      return (await _ref.read(customerRepositoryProvider).findById(command.id))
          ?.name;
    } catch (e, s) {
      // 顧客機能が発生元のエラーだけを残し、呼び出し元へ再スローする
      _ref
          .read(loggerProvider)
          .error('[customer] 顧客名の取得に失敗: ${command.toJson()}', ex: e, trace: s);
      rethrow;
    }
  }
}
