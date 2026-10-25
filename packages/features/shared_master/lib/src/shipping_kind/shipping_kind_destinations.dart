import 'package:baton_lib/baton_lib.dart';

/// 配送区分台帳へ。
final class ShippingKindListDestination extends PageDestination<void> {
  const ShippingKindListDestination();
}

/// 配送区分の編集へ。[id] が null のときは新規登録。
final class ShippingKindEditDestination extends PageDestination<void> {
  const ShippingKindEditDestination({this.id});

  final String? id;

  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'id': id};
}

/// 配送区分を1件選んで、その id を返す(キャンセル時は null)。
final class ShippingKindPickerDestination extends PageDestination<String?> {
  const ShippingKindPickerDestination();
}

/// 登録漏れ検出用の見本。遷移先を追加したら、ここにも1件足す。
const List<PageDestination<Object?>> shippingKindDestinationSamples = [
  ShippingKindListDestination(),
  ShippingKindEditDestination(id: '5b1f0c1e-0000-4000-8000-000000000001'),
  ShippingKindEditDestination(),
  ShippingKindPickerDestination(),
];
