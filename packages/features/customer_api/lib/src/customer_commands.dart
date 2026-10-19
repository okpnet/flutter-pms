import 'package:baton_lib/baton_lib.dart';

/// 顧客名を id から取得する。見つからなければ null。
final class FindCustomerNameCommand extends ActionCommand<String?> {
  const FindCustomerNameCommand({required this.id});

  final int id;

  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'id': id};
}

/// 登録漏れ検出用の見本。命令を追加したら、ここにも1件足す。
const List<ActionCommand<Object?>> customerCommandSamples = [
  FindCustomerNameCommand(id: 1),
];
