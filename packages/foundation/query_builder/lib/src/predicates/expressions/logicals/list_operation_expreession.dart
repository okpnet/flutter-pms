import '../expressions.dart';

///左を基準に右を評価する式
abstract interface class IListOperationExpreession implements IExpression {
  List<Expression> get expressions;
}

///左を基準に右を評価する式
abstract class ListOperationExpreession extends Expression
    implements IListOperationExpreession {
  ///左側の式
  @override
  final List<Expression> expressions;

  ///コンストラクタ
  ListOperationExpreession(this.expressions, {super.name});
}
