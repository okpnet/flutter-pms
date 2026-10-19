import 'package:query_builder/src/constants/constant.dart';

import 'package:query_builder/src/predicates/visitors/visitor.dart';

import '../expressions.dart';

abstract interface class INullExpression
    implements IExpression, IOperatorExpression {
  bool get isNot;
}

class NullExpression extends OperatorExpression implements INullExpression {
  ///True:否定
  @override
  final bool isNot;
  NullExpression(Expression left, {this.isNot = false, super.name})
    : super(left, ValueExpression(null));

  @override
  ExpressionCallBack accept(IVisitor<dynamic> visitor) {
    try {
      return visitor.nullVisit(this);
    } catch (ex) {
      throw acceptAssertion(ex as Error);
    }
  }

  @override
  DebugNode acceptDebug() {
    final debugPrint = 'IS ${isNot ? 'NOT ' : ''}NULL [${name ?? "no_name"}]';
    final resultNode = DebugNode(debugPrint, [
      left.acceptDebug(),
      right.acceptDebug(),
    ]);
    return resultNode;
  }
}
