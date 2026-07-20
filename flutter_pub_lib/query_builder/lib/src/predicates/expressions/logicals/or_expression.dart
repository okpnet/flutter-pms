import '../../../constants/constant.dart';
import '../../visitors/visitors.dart';
import '../expressions.dart';

///左を基準に右を結合する式
abstract interface class IOrExpression
    implements IExpression, IListOperationExpreession {}

///左を基準に右を結合する式
class OrExpression extends ListOperationExpreession implements IOrExpression {
  OrExpression(super.expressions, {super.name});

  @override
  ExpressionCallBack accept(IVisitor visitor) {
    try {
      return visitor.orVisit(this);
    } catch (ex) {
      throw acceptAssertion(ex as Error);
    }
  }

  @override
  DebugNode acceptDebug() {
    final debugPrint = 'OR [${name ?? "no_name"}]';
    final resultNode = DebugNode(
      debugPrint,
      expressions.map((t) => t.acceptDebug()).toList(),
    );
    return resultNode;
  }
}
