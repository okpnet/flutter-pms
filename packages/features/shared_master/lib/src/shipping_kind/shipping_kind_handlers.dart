import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';

import 'shipping_kind_commands.dart';
import 'shipping_kinds_provider.dart';

/// [FindShippingKindNameCommand] の処理。他の機能から配送区分名を引くために使われる。
class FindShippingKindNameHandler
    implements ActionCommandHandler<FindShippingKindNameCommand, String?> {
  FindShippingKindNameHandler(this._ref);

  final Ref _ref;

  @override
  Future<String?> handle(FindShippingKindNameCommand command) async {
    try {
      final kind = await _ref
          .read(shippingKindRepositoryProvider)
          .findById(command.id);
      return kind?.name;
    } catch (e, s) {
      // 共有マスタが発生元のエラーだけを残し、呼び出し元へ再スローする
      _ref
          .read(loggerProvider)
          .error(
            '[shared_master] 配送区分名の取得に失敗: ${command.toJson()}',
            ex: e,
            trace: s,
          );
      rethrow;
    }
  }
}
