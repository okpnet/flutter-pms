import 'package:data_strategist/lib.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'customer_model.dart';
import 'customer_repository.dart';

export 'customer_model.dart';

/// 顧客の取得元。GraphQL 版ができたら、アプリ側で overrideWithValue する。
final customerRepositoryProvider = Provider<ICustomerRepository>(
  (ref) => InMemoryCustomerRepository(),
);

/// 台帳が一度に取得する上限(動的読み込みなしのため、全件を想定した値)。
const customerFetchLimit = 1000;

/// 顧客の問い合わせ状態(Repository と取得設定を束ねる)。
final customerQueryStateProvider = Provider<QueryState<List<Customer>>>(
  (ref) => QueryState<List<Customer>>(
    expressionVisitorType: ExpressionVisitorType.list,
    repository: ref.watch(customerRepositoryProvider),
    limit: customerFetchLimit,
  ),
);

/// 顧客の一覧を取得する。
final customersProvider = FutureProvider.autoDispose<List<Customer>>(
  (ref) => ref
      .watch(customerQueryStateProvider)
      .facade
      .execute(PredicateModel(take: customerFetchLimit, skip: 0)),
);
