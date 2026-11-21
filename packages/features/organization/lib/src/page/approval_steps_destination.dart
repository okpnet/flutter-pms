import 'package:baton_lib/baton_lib.dart';

/// 承認の段の画面へ(承認パターンの台帳の行の操作「承認の段」から開く)。
/// [patternId] は承認パターンの ID、[patternName] は見出しに出す名称。
final class ApprovalStepsDestination extends PageDestination<void> {
  const ApprovalStepsDestination(this.patternId, {this.patternName = ''});

  final String patternId;
  final String patternName;

  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'patternId': patternId, 'patternName': patternName};
}

/// 登録漏れ検出用の見本。遷移先を追加したら、ここにも 1 件足す。
const List<PageDestination<Object?>> approvalStepsDestinationSamples = [ApprovalStepsDestination('p1', patternName: '購買申請')];
