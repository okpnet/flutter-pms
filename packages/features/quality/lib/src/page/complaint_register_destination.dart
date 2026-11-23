import 'package:baton_lib/baton_lib.dart';

/// 異常の登録の画面へ。受注・受入・顧客などの行の操作から、対象を決めて開ける。
///
/// [target] は対象の種類の名前(`equipment`・`process`・`work`・`purchaseRec`・`visiter`・`order`・`stakeholder`)、
/// [targetId]・[targetLabel] は対象の ID と表示名(省略すると、画面で選ぶ)。機能同士は、この契約の文字だけで受け渡す。
final class ComplaintRegisterDestination extends PageDestination<void> {
  const ComplaintRegisterDestination({this.target, this.targetId, this.targetLabel});

  final String? target;
  final String? targetId;
  final String? targetLabel;

  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'target': target, 'targetId': targetId, 'targetLabel': targetLabel};
}
