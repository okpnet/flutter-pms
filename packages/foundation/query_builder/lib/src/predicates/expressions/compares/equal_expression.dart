import '../../../constants/constants.dart';
import '../../visitors/visitors.dart';
import '../expressions.dart';

///左を基準に右を評価する式
abstract interface class IEquqlExpression
    implements IExpression, IOperatorExpression {
  bool get isNot;
}

///左を基準に右を評価する式
class EqualExpression extends OperatorExpression implements IEquqlExpression {
  ///True:否定
  @override
  final bool isNot;

  EqualExpression(super.left, super.right, {bool? isNot, super.name})
    : isNot = isNot ?? false;

  @override
  ExpressionCallBack accept(IVisitor visitor) {
    try {
      return visitor.equalVisit(this);
    } catch (ex) {
      throw acceptAssertion(ex as Error);
    }
  }

  @override
  DebugNode acceptDebug() {
    final debugPrint = '${isNot ? '<>' : '='} [${name ?? "no_name"}]';
    final resultNode = DebugNode(debugPrint, [
      left.acceptDebug(),
      right.acceptDebug(),
    ]);
    return resultNode;
  }
}
