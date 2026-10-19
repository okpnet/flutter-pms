import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 顧客(サンプル)。実運用では GraphQL の生成型に置き換える。
class Customer {
  const Customer({required this.id, required this.name});

  final int id;
  final String name;

  Customer copyWith({String? name}) => Customer(id: id, name: name ?? this.name);
}

/// 顧客一覧の状態(サンプルではメモリ上のデータ)。
class CustomersNotifier extends Notifier<List<Customer>> {
  @override
  List<Customer> build() => const [
    Customer(id: 1, name: '東京精機'),
    Customer(id: 2, name: '栃木製作所'),
    Customer(id: 3, name: '大阪工業'),
  ];

  Customer? findById(int id) {
    for (final c in state) {
      if (c.id == id) return c;
    }
    return null;
  }

  void rename(int id, String name) {
    state = [
      for (final c in state) c.id == id ? c.copyWith(name: name) : c,
    ];
  }
}

final customersProvider = NotifierProvider<CustomersNotifier, List<Customer>>(
  CustomersNotifier.new,
);
