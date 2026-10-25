import 'package:data_strategist/lib.dart';

import 'customer_model.dart';

/// 顧客の取得元(Repository)。一覧は [IDataRepository] で取得し、1件の取得と更新を足す。
///
/// GraphQL 版を作るときはこれを実装し、[customerRepositoryProvider] を差し替える。
abstract interface class ICustomerRepository
    implements IDataRepository<List<Customer>> {
  Future<Customer?> findById(String id);

  Future<void> rename(String id, String name);
}

/// メモリ上のサンプル。抽出条件・並び順は無視する(絞り込みと並べ替えはテーブル側)。
class InMemoryCustomerRepository implements ICustomerRepository {
  InMemoryCustomerRepository([List<Customer>? customers])
    : _customers = [...(customers ?? _samples)];

  static const _samples = [
    Customer(
      id: '3c9a7e10-0000-4000-8000-000000000001',
      code: 'C001',
      name: '東京精機',
      mail: 'info@tokyo-seiki.example',
      phone: '03-0000-0001',
    ),
    Customer(
      id: '3c9a7e10-0000-4000-8000-000000000002',
      code: 'C002',
      name: '栃木製作所',
      mail: 'info@tochigi.example',
      phone: '028-000-0002',
    ),
    Customer(
      id: '3c9a7e10-0000-4000-8000-000000000003',
      code: 'C003',
      name: '大阪工業',
      mail: 'info@osaka-kogyo.example',
      phone: '06-0000-0003',
    ),
  ];

  final List<Customer> _customers;

  @override
  Future<List<Customer>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) async => _customers.skip(skip).take(take).toList();

  @override
  Future<Customer?> findById(String id) async {
    for (final c in _customers) {
      if (c.id == id) return c;
    }
    return null;
  }

  @override
  Future<void> rename(String id, String name) async {
    final i = _customers.indexWhere((c) => c.id == id);
    if (i >= 0) _customers[i] = _customers[i].copyWith(name: name);
  }
}
