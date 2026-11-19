import 'package:feature_shared/feature_shared.dart';

/// 実績登録の画面へ(生産計画が中心。計画の工程計画明細と対の実績を、開始・終了で登録する)。
///
/// [planId] を渡すと、その生産計画を先頭にして開く(バーコード画面の作業指示から開くときなど)。
final class WorkRegisterDestination extends PageDestination<void> {
  const WorkRegisterDestination({this.planId});

  final String? planId;

  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'planId': planId};
}
