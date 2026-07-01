import '../../constants/constants.dart';
import '../expressions/expressions.dart';
import 'visitors.dart';

abstract interface class ISqlVisitor<T> implements IVisitor<T> {}

///Expressionを巡回して、各Expressionに応じたSQLの条件式に変換する
class SqlVisitor<T> extends Visitor<T>
    with VisitorMixin
    implements ISqlVisitor<T> {
  @override
  ExpressionCallBack andVisit(AndExpression ex) {
    return (dynamic t) {
      typeValidation(ex, t);
      try {
        final parts = ex.expressions.map((e) => e.accept(this)(t)).toList();
        return parts.join(' AND ');
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
        return "$lValue ${ex.isNot ? 'NOT LIKE' : 'LIKE'} '%$rValue'";
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
        final lValue = l(t);
        final rValue = r(t);
        final values = changeType(rValue);
        return '$lValue ${ex.isNot ? '<>' : '='} $values';
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
      //typeValidation(ex, t);
      try {
        final l = ex.left.accept(this);
        final r = ex.right.accept(this);
        final lValue = l(t).toString();
        final rValue = r(t).toString();
        final eq = ex.isEqulity ? '=' : '';
        return "$lValue >$eq $rValue";
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
        final values = changeType(rValue);
        return "$lValue IN ($values)";
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
        return "$lValue ${ex.isNot ? 'NOT LIKE' : 'LIKE'} '%$rValue%'";
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
        final parts = ex.expressions.map((e) => e.accept(this)(t)).toList();
        return parts.join(' OR ');
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
        return "$lValue ${ex.isNot ? 'NOT LIKE' : 'LIKE'} '$rValue%'";
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

  String changeType(dynamic value) {
    return switch (value) {
      num number => number.toString(),
      List list => list.map((t) => changeType(t)).join(','),
      _ => "'$value'",
    };
  }

  @override
  ExpressionCallBack nullVisit(NullExpression ex) {
    return (dynamic t) {
      typeValidation(ex, t);
      try {
        final l = ex.left.accept(this);
        final lValue = l(t);
        return "$lValue ${ex.isNot ? 'IS NOT NULL' : 'IS NULL'}";
      } catch (exception, trace) {
        throw AssertionError(
          '${ex.name ?? ex.toString()} : ${exception.toString()}\n$trace',
        );
      }
    };
  }
}
