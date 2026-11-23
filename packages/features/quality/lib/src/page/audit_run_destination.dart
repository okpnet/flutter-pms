import 'package:baton_lib/baton_lib.dart';

import 'audit_plan_destination.dart';

/// 自分の監査(自分のチームに割り当てられた監査実施詳細の一覧)へ。
final class MyAuditsDestination extends PageDestination<void> {
  const MyAuditsDestination();
}

/// 監査の実施(項目と異常の 2 画面)へ。[detailId] は監査実施詳細の ID。
final class AuditRunDestination extends PageDestination<void> {
  const AuditRunDestination(this.detailId);

  final String detailId;

  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'detailId': detailId};
}

/// 登録漏れ検出用の見本。遷移先を追加したら、ここにも 1 件足す。
const List<PageDestination<Object?>> auditRunDestinationSamples = [MyAuditsDestination(), AuditRunDestination('d1'), AuditPlanDestination()];
