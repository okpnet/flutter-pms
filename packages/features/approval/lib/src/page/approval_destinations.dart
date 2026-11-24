import 'package:baton_lib/baton_lib.dart';

/// 承認一覧へ。[menu] はメニューのグループ ID(`operations`・`sales`・`purchasing`)。
final class ApprovalListDestination extends PageDestination<void> {
  const ApprovalListDestination(this.menu);

  final String menu;

  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'menu': menu};
}

/// 登録漏れ検出用の見本。遷移先を追加したら、ここにも 1 件足す。
const List<PageDestination<Object?>> approvalDestinationSamples = [
  ApprovalListDestination('operations'),
  ApprovalListDestination('sales'),
];
