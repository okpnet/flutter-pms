import 'package:baton_lib/baton_lib.dart';

/// 顧客一覧へ。
final class CustomerListDestination extends PageDestination<void> {
  const CustomerListDestination();
}

/// 顧客の編集へ。
final class CustomerEditDestination extends PageDestination<void> {
  const CustomerEditDestination({required this.id});

  final int id;

  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'id': id};
}

/// 顧客を1件選んで、その id を返す(キャンセル時は null)。
final class CustomerPickerDestination extends PageDestination<int?> {
  const CustomerPickerDestination();
}

/// 登録漏れ検出用の見本。遷移先を追加したら、ここにも1件足す。
const List<PageDestination<Object?>> customerDestinationSamples = [
  CustomerListDestination(),
  CustomerEditDestination(id: 1),
  CustomerPickerDestination(),
];
