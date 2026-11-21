import 'package:baton_lib/baton_lib.dart';

/// 標準の承認パターンの画面へ(会社情報の「承認」から開く。対象ごとに、登録が申請になる承認パターンを選ぶ)。
final class ApprovalDefaultsDestination extends PageDestination<void> {
  const ApprovalDefaultsDestination();
}

/// 登録漏れ検出用の見本。遷移先を追加したら、ここにも 1 件足す。
const List<PageDestination<Object?>> approvalDefaultsDestinationSamples = [ApprovalDefaultsDestination()];
