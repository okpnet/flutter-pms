import '../import.dart';

///Treeの条件式生成するUIとレポジトリのアダプタ
abstract class TreeExpressionAdapter {
  ///最初に読み込むの条件式とソート式
  Expressions get initiBuildPredicate;

  ///最初以降の読み込むの条件式とソート式
  Expressions buildPredicate(TrinaRow? parentRow);
}

///検索条件とソート条件のセットモデル
class Expressions {
  final Expression? expression;
  final SortExpression? sortExpression;

  Expressions({this.expression, this.sortExpression});
}
