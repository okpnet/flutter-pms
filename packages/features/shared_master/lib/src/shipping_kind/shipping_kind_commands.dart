import 'package:baton_lib/baton_lib.dart';

/// 配送区分の名称を id から取得する。見つからなければ null。
final class FindShippingKindNameCommand extends ActionCommand<String?> {
  const FindShippingKindNameCommand({required this.id});

  final String id;

  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'id': id};
}

/// 登録漏れ検出用の見本。命令を追加したら、ここにも1件足す。
const List<ActionCommand<Object?>> shippingKindCommandSamples = [
  FindShippingKindNameCommand(id: '5b1f0c1e-0000-4000-8000-000000000001'),
];
