import 'package:data_strategist/lib.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'shipping_kind_model.dart';
import 'shipping_kind_repository.dart';

export 'shipping_kind_model.dart';

/// 配送区分の取得元。GraphQL 版ができたら、アプリ側で overrideWithValue する。
final shippingKindRepositoryProvider = Provider<IShippingKindRepository>(
  (ref) => InMemoryShippingKindRepository(),
);

/// 台帳が一度に取得する上限(動的読み込みなしのため、全件を想定した値)。
const shippingKindFetchLimit = 1000;

/// 配送区分の問い合わせ状態(Repository と取得設定を束ねる)。
final shippingKindQueryStateProvider = Provider<QueryState<List<ShippingKind>>>(
  (ref) => QueryState<List<ShippingKind>>(
    expressionVisitorType: ExpressionVisitorType.list,
    repository: ref.watch(shippingKindRepositoryProvider),
    limit: shippingKindFetchLimit,
  ),
);

/// 配送区分の一覧を取得する。
final shippingKindsProvider = FutureProvider.autoDispose<List<ShippingKind>>(
  (ref) => ref
      .watch(shippingKindQueryStateProvider)
      .facade
      .execute(PredicateModel(take: shippingKindFetchLimit, skip: 0)),
);
