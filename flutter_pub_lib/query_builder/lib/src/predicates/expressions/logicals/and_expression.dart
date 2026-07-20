import '../../../constants/constant.dart';
import '../../visitors/visitors.dart';
import '../expressions.dart';

///左を基準に右を結合する式
abstract interface class IAndExpression
    implements IExpression, IListOperationExpreession {}

///左を基準に右を結合する式
class AndExpression extends ListOperationExpreession implements IAndExpression {
  AndExpression(super.expressions, {super.name});

  @override
  ExpressionCallBack accept(IVisitor visitor) {
    try {
      return visitor.andVisit(this);
    } catch (ex) {
      throw acceptAssertion(ex as Error);
    }
  }

  @override
  DebugNode acceptDebug() {
    final debugPrint = 'AND [${name ?? "no_name"}]';
    final resultNode = DebugNode(
      debugPrint,
      expressions.map((t) => t.acceptDebug()).toList(),
    );
    return resultNode;
  }
}
