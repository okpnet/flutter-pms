import '../../constants.dart';
import '../expressions/expressions.dart';
import 'visitors.dart';

///空のインターフェイス
abstract interface class IListVisitor {}

///Expressionを巡回して、各Expressionに応じたListの条件式に変換する
class ListVisitor<T> extends Visitor<T>
    with VisitorMixin
    implements IListVisitor {
  ///ANDの処理。通常の&で結合
  @override
  ExpressionCallBack andVisit(AndExpression ex) {
    return (dynamic t) {
      typeValidation(ex, t);
      try {
        for (final e in ex.expressions) {
          final cb = e.accept(this);
          if (!cb(t)) return false;
        }
        return true;
      } catch (exception, trace) {
        throw AssertionError(
          '${ex.name ?? ex.toString()} : ${exception.toString()}\n$trace',
        );
      }
    };
  }

  /// {!}left==null | left IS {NOT} NULL
  @override
  ExpressionCallBack nullVisit(NullExpression ex) {
    return (dynamic t) {
      typeValidation(ex, t);
      try {
        final l = ex.left.accept(this);
        final lValue = l(t);
        return ex.isNot
            ? lValue.toString().isNotEmpty
            : lValue.toString().isEmpty;
      } catch (exception, trace) {
        throw AssertionError(
          '${ex.name ?? ex.toString()} : ${exception.toString()}\n$trace',
        );
      }
    };
  }

  ///=
  @override
  ExpressionCallBack equalVisit(EqualExpression ex) {
    return (dynamic t) {
      typeValidation(ex, t);
      try {
        final l = ex.left.accept(this);
        final r = ex.right.accept(this);
        final lValue = l(t);
        final rValue = r(t);
        return ex.isNot ? lValue != rValue : lValue == rValue;
      } catch (exception, trace) {
        throw AssertionError(
          '${ex.name ?? ex.toString()} : ${exception.toString()}\n$trace',
        );
      }
    };
  }

  ///インスタンスの値を抽出する
  @override
  ExpressionCallBack fieldVisit(FieldExpression<T> ex) {
    return (dynamic t) {
      typeValidation(ex, t);
      try {
        // ignore: unnecessary_cast
        final argment = t as T; //変換しないと例外が発生する
        final filed = ex.field(argment);
        return filed;
      } catch (exception, trace) {
        throw AssertionError(
          '${ex.name ?? ex.toString()} : ${exception.toString()}\n$trace',
        );
      }
    };
  }

  ///以上
  @override
  ExpressionCallBack greaterVisit(GreaterExpression ex) {
    return (dynamic t) {
      typeValidation(ex, t);
      try {
        final l = ex.left.accept(this);
        final r = ex.right.accept(this);
        final lValue = l(t);
        final rValue = r(t);
        return ex.isEqulity ? lValue >= rValue : lValue > rValue;
      } catch (exception, trace) {
        throw AssertionError(
          '${ex.name ?? ex.toString()} : ${exception.toString()}\n$trace',
        );
      }
    };
  }

  ///コンスタント値
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
  ExpressionCallBack orVisit(OrExpression ex) {
    return (dynamic t) {
      typeValidation(ex, t);
      try {
        for (final e in ex.expressions) {
          final cb = e.accept(this);
          if (cb(t)) return true;
        }
        return false;
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
        final lValue = l(t);
        final rValue = r(t);
        return ex.isNot
            ? !lValue.toString().contains(rValue.toString())
            : lValue.toString().contains(rValue.toString());
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
        final lValue = l(t);
        final rValue = r(t);
        return ex.isNot
            ? !lValue.toString().startsWith(rValue.toString())
            : lValue.toString().startsWith(rValue.toString());
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
        final lValue = l(t);
        final rValue = r(t);
        return ex.isNot
            ? !lValue.toString().endsWith(rValue.toString())
            : lValue.toString().endsWith(rValue.toString());
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
        final lValue = l(t);
        final rValue = r(t);
        if (rValue case List list) {
          return ex.isNot ? !list.contains(lValue) : list.contains(lValue);
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
  ExpressionCallBack nameFieldVisit(NameFieldExpression ex) {
    throw ExpressionError(
      ex,
      UnsupportedError(
        'The ${ex.name ?? ex.toString()} cannot be used for a function that has arguments of unknown type.',
      ),
    );
  }
}
