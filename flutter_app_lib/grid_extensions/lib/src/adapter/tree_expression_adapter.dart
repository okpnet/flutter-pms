import '../import.dart';

///Treeに応じた条件式モデルを生成する
abstract class TreeExpressionAdapter<R> {
  ///読み込み最初の条件式。以降は[toCondition]が呼ばれる
  Expressions get initiBuildPredicate;

  ///最初以降の展開時の条件式
  Expressions buildPredicate(TrinaRow? parentRow);
}

class Expressions {
  final Expression? expression;
  final SortExpression? sortExpression;

  Expressions({this.expression, this.sortExpression});
}
