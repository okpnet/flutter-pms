import '../../constants/constants.dart';
import '../expressions/expressions.dart';
import 'visitors.dart';

abstract interface class IGraphqlVisitor<T> implements IVisitor<T> {}

///Expressionを巡回して、各Expressionに応じたGraphQLの条件式に変換する
class GraphqlVisitor<T> extends Visitor<T>
    with VisitorMixin
    implements IGraphqlVisitor<T> {
  @override
  ExpressionCallBack andVisit(AndExpression ex) {
    return (dynamic t) {
      if (ex.expressions.isEmpty) {
        return {};
      }
      typeValidation(ex, t);
      try {
        final parts = ex.expressions.map((e) => e.accept(this)(t)).toList();
        return {"_and": parts};
      } catch (exception, trace) {
        throw AssertionError(
          '${ex.name ?? ex.toString()} : ${exception.toString()}\n$trace',
        );
      }
    };
  }

  @override
  ExpressionCallBack orVisit(OrExpression ex) {
    return (dynamic t) {
      if (ex.expressions.isEmpty) {
        return {};
      }
      typeValidation(ex, t);
      try {
        final parts = ex.expressions.map((e) => e.accept(this)(t)).toList();
        return {"_or": parts};
      } catch (exception, trace) {
        throw AssertionError(
          '${ex.name ?? ex.toString()} : ${exception.toString()}\n$trace',
        );
      }
    };
  }

  @override
  ExpressionCallBack endWithVisit(EndWithExpression ex) {
    return (dynamic t) {
      typeValidation(ex, t);
      try {
        final l = ex.left.accept(this);
        final r = ex.right.accept(this);
        final lValue = l(t).toString();
        final rValue = r(t).toString();
        return {
          lValue: {ex.isNot ? '_nlike' : '_like': '%$rValue'},
        };
      } catch (exception, trace) {
        throw AssertionError(
          '${ex.name ?? ex.toString()} : ${exception.toString()}\n$trace',
        );
      }
    };
  }

  @override
  ExpressionCallBack equalVisit(EqualExpression ex) {
    return (dynamic t) {
      typeValidation(ex, t);
      try {
        final l = ex.left.accept(this);
        final r = ex.right.accept(this);
        final lValue = l(t).toString();
        final rValue = r(t);
        return {
          lValue: {ex.isNot ? '_neq' : '_eq': rValue},
        };
      } catch (exception, trace) {
        throw AssertionError(
          '${ex.name ?? ex.toString()} : ${exception.toString()}\n$trace',
        );
      }
    };
  }

  @override
  ExpressionCallBack fieldVisit(FieldExpression<T> ex) {
    return (dynamic t) {
      typeValidation(ex, t);
      try {
        // ignore: unnecessary_cast
        final argment = t as T; //変換しないと例外が発生する
        final filed = ex.field(argment).toString();
        return filed;
      } catch (exception, trace) {
        throw AssertionError(
          '${ex.name ?? ex.toString()} : ${exception.toString()}\n$trace',
        );
      }
    };
  }

  @override
  ExpressionCallBack greaterVisit(GreaterExpression ex) {
    return (dynamic t) {
      typeValidation(ex, t);
      try {
        final l = ex.left.accept(this);
        final r = ex.right.accept(this);
        final lValue = l(t).toString();
        final rValue = r(t);
        return {
          lValue: {ex.isEqulity ? '_gte' : '_gt': rValue},
        };
      } catch (exception, trace) {
        throw AssertionError(
          '${ex.name ?? ex.toString()} : ${exception.toString()}\n$trace',
        );
      }
    };
  }

  @override
  ExpressionCallBack inVisit(InExpression ex) {
    return (dynamic t) {
      typeValidation(ex, t);
      try {
        final l = ex.left.accept(this);
        final r = ex.right.accept(this);
        final lValue = l(t).toString();
        final rValue = r(t);
        if (rValue case List list) {
          return {
            lValue: {ex.isNot ? '_nin' : '_in': list},
          };
        }
        throw AssertionError(
          'Result value type of ${ex.name ?? ex.toString()} is ${rValue.toString()},but right value on InExpression shall List type.',
        );
      } catch (exception, trace) {
        throw AssertionError(
          '${ex.name ?? ex.toString()} : ${exception.toString()}\n$trace',
        );
      }
    };
  }

  @override
  ExpressionCallBack likeVisit(LikeExpression ex) {
    return (dynamic t) {
      typeValidation(ex, t);
      try {
        final l = ex.left.accept(this);
        final r = ex.right.accept(this);
        final lValue = l(t).toString();
        final rValue = r(t).toString();
        return {
          lValue: {ex.isNot ? '_nlike' : '_like': '%$rValue%'},
        };
      } catch (exception, trace) {
        throw AssertionError(
          '${ex.name ?? ex.toString()} : ${exception.toString()}\n$trace',
        );
      }
    };
  }

  @override
  ExpressionCallBack startWithVisit(StartWithExpression ex) {
    return (dynamic t) {
      typeValidation(ex, t);
      try {
        final l = ex.left.accept(this);
        final r = ex.right.accept(this);
        final lValue = l(t).toString();
        final rValue = r(t).toString();
        return {
          lValue: {ex.isNot ? '_nlike' : '_like': '$rValue%'},
        };
      } catch (exception, trace) {
        throw AssertionError(
          '${ex.name ?? ex.toString()} : ${exception.toString()}\n$trace',
        );
      }
    };
  }

  @override
  ExpressionCallBack valueVisit(ValueExpression ex) {
    return (dynamic t) {
      try {
        final value = ex.value;
        return value;
      } catch (exception, trace) {
        throw AssertionError(
          '${ex.name ?? ex.toString()} : ${exception.toString()}\n$trace',
        );
      }
    };
  }

  @override
  ExpressionCallBack nameFieldVisit(NameFieldExpression ex) {
    return (dynamic t) {
      //typeValidation(ex, t);
      try {
        // ignore: unnecessary_cast
        final filed = ex.value;
        return filed;
      } catch (exception, trace) {
        throw AssertionError(
          '${ex.name ?? ex.toString()} : ${exception.toString()}\n$trace',
        );
      }
    };
  }

  @override
  ExpressionCallBack nullVisit(NullExpression ex) {
    return (dynamic t) {
      typeValidation(ex, t);

      try {
        // 左辺はフィールド名を返す Expression
        final l = ex.left.accept(this);
        final lValue = l(t);

        return <String, dynamic>{
          lValue: {
            "_is_null":
                !ex.isNot, // isNot=false → IS NULL, isNot=true → IS NOT NULL
          },
        };
      } catch (exception, trace) {
        throw AssertionError(
          '${ex.name ?? ex.toString()} : ${exception.toString()}\n$trace',
        );
      }
    };
  }
}
