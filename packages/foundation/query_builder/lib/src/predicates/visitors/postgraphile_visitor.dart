import '../../constants/constants.dart';
import '../expressions/expressions.dart';
import 'visitors.dart';

abstract interface class IPostgraphileVisitor<T> implements IVisitor<T> {}

/// Expressionを巡回して、PostGraphile(postgraphile-plugin-connection-filter)の
/// filter 引数の形に変換する(Visitor)。
///
/// 列名はスキーマを知らずに、Expressionのフィールド名(平坦化キー)のまま出す。
/// 関連をまたぐキー(`office||zipCode`)を入れ子のFilterへ展開するのは、スキーマを知っている
/// 側(pms_graphql の FlatFilterConverter)の責務とする。
///   - and/or は `{and: [...]}` / `{or: [...]}`(否定は `{not: ...}` で包む)
///   - equal: equalTo / notEqualTo、greater: greaterThan / greaterThanOrEqualTo
///   - like: includes、startWith: startsWith、endWith: endsWith(否定は notIncludes など)
///   - in: in / notIn、null: isNull(true/false)
class PostgraphileVisitor<T> extends GraphqlVisitor<T>
    implements IPostgraphileVisitor<T> {
  @override
  ExpressionCallBack andVisit(AndExpression ex) => _logical(ex, 'and', ex.expressions);

  @override
  ExpressionCallBack orVisit(OrExpression ex) => _logical(ex, 'or', ex.expressions);

  ExpressionCallBack _logical(Expression ex, String key, List<Expression> items) {
    return (dynamic t) {
      if (items.isEmpty) {
        return {};
      }
      typeValidation(ex, t);
      try {
        return {key: [for (final e in items) e.accept(this)(t)]};
      } catch (exception, trace) {
        throw AssertionError('${ex.name ?? ex.toString()} : $exception\n$trace');
      }
    };
  }

  /// `{列: {演算子: 値}}` を作る共通処理。
  ExpressionCallBack _compare(
    OperatorExpression ex,
    String Function() operator, {
    dynamic Function(dynamic value)? value,
  }) {
    return (dynamic t) {
      typeValidation(ex, t);
      try {
        final column = ex.left.accept(this)(t).toString();
        final right = ex.right.accept(this)(t);
        return {
          column: {operator(): _json(value == null ? right : value(right))},
        };
      } catch (exception, trace) {
        throw AssertionError('${ex.name ?? ex.toString()} : $exception\n$trace');
      }
    };
  }

  /// JSONに載せられる値にする(日時はISO 8601の文字列)。
  static dynamic _json(dynamic v) {
    if (v is DateTime) return v.toIso8601String();
    if (v is BigInt) return v.toString();
    if (v is Iterable) return [for (final e in v) _json(e)];
    return v;
  }

  @override
  ExpressionCallBack equalVisit(EqualExpression ex) =>
      _compare(ex, () => ex.isNot ? 'notEqualTo' : 'equalTo');

  @override
  ExpressionCallBack greaterVisit(GreaterExpression ex) => _compare(
        ex,
        () => ex.isLess
            ? (ex.isEqulity ? 'lessThanOrEqualTo' : 'lessThan')
            : (ex.isEqulity ? 'greaterThanOrEqualTo' : 'greaterThan'),
      );

  @override
  ExpressionCallBack likeVisit(LikeExpression ex) => _compare(
        ex,
        () => ex.isNot ? 'notIncludes' : 'includes',
        value: (v) => v.toString(),
      );

  @override
  ExpressionCallBack startWithVisit(StartWithExpression ex) => _compare(
        ex,
        () => ex.isNot ? 'notStartsWith' : 'startsWith',
        value: (v) => v.toString(),
      );

  @override
  ExpressionCallBack endWithVisit(EndWithExpression ex) => _compare(
        ex,
        () => ex.isNot ? 'notEndsWith' : 'endsWith',
        value: (v) => v.toString(),
      );

  @override
  ExpressionCallBack inVisit(InExpression ex) {
    return (dynamic t) {
      typeValidation(ex, t);
      try {
        final column = ex.left.accept(this)(t).toString();
        final right = ex.right.accept(this)(t);
        if (right is! List) {
          throw AssertionError(
            'Result value type of ${ex.name ?? ex.toString()} is $right, but right value on InExpression shall List type.',
          );
        }
        return {
          column: {ex.isNot ? 'notIn' : 'in': _json(right)},
        };
      } catch (exception, trace) {
        throw AssertionError('${ex.name ?? ex.toString()} : $exception\n$trace');
      }
    };
  }

  @override
  ExpressionCallBack nullVisit(NullExpression ex) {
    return (dynamic t) {
      typeValidation(ex, t);
      try {
        final column = ex.left.accept(this)(t).toString();
        return {
          column: {'isNull': !ex.isNot},
        };
      } catch (exception, trace) {
        throw AssertionError('${ex.name ?? ex.toString()} : $exception\n$trace');
      }
    };
  }
}
