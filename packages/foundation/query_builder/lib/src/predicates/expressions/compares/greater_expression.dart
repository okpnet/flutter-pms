import '../../../constants/constants.dart';
import '../../visitors/visitors.dart';
import '../expressions.dart';

///左を基準に右を評価する式
abstract interface class IGreateExpression
    implements IExpression, IOperatorExpression {
  bool get isEqulity;

  ///True:大小を逆にする(左が右より小さい)
  bool get isLess;
}

///左を基準に右を評価する式
class GreaterExpression extends OperatorExpression
    implements IGreateExpression {
  ///True:~以上にする
  @override
  final bool isEqulity;

  ///True:左が右より小さい(~以下は[isEqulity]と併用)
  @override
  final bool isLess;

  GreaterExpression(
    super.left,
    super.right, {
    bool? isEqulity,
    bool? isLess,
    super.name,
  })
    : isEqulity = isEqulity ?? false,
      isLess = isLess ?? false;

  @override
  ExpressionCallBack accept(IVisitor visitor) {
    try {
      return visitor.greaterVisit(this);
    } catch (ex) {
      throw acceptAssertion(ex as Error);
    }
  }

  @override
  DebugNode acceptDebug({int? level}) {
    final debugPrint = '${isLess ? "<" : ">"}${isEqulity ? "=" : ""} [${name ?? "no_name"}]';
    final resultNode = DebugNode(debugPrint, [
      left.acceptDebug(),
      right.acceptDebug(),
    ]);
    return resultNode;
  }
}
