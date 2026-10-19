import '../../constants/constants.dart';
import '../expressions/expressions.dart';

///Expressionの巡回する抽象化インターフェイス
abstract interface class IVisitor<T> {
  ///(T)=>dynamic
  ExpressionCallBack fieldVisit(FieldExpression<T> ex);

  /// dynamic
  ExpressionCallBack valueVisit(ValueExpression ex);

  /// left = right | left != right
  ExpressionCallBack equalVisit(EqualExpression ex);

  /// &  AND
  ExpressionCallBack andVisit(AndExpression ex);

  /// left > right | left>= light
  ExpressionCallBack greaterVisit(GreaterExpression ex);

  /// | or
  ExpressionCallBack orVisit(OrExpression ex);

  /// {!}left.contains(right) | left {NOT} LIKE %right%
  ExpressionCallBack likeVisit(LikeExpression ex);

  /// {!}left==null | left IS {NOT} NULL
  ExpressionCallBack nullVisit(NullExpression ex);

  /// {!}left.startwith(right) | left {NOT} LIKE 'right%'
  ExpressionCallBack startWithVisit(StartWithExpression ex);

  /// {!}left.startwith(right) | left {NOT} LIKE '%right'
  ExpressionCallBack endWithVisit(EndWithExpression ex);

  // {!}right.contains(right) | left {NOT} IN (right)
  ExpressionCallBack inVisit(InExpression ex);

  // String
  ExpressionCallBack nameFieldVisit(NameFieldExpression ex);
}

///Expressionを巡回する抽象化クラス
abstract class Visitor<T> implements IVisitor<T> {}
