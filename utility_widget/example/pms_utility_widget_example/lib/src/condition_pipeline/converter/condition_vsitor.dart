import 'package:utility_widget_example/src/condition_pipeline/condition/condition_value.dart';
import '../condition/field_operator.dart';
import '../condition/parent_condtionn.dart';
import '../condition/search_condition.dart';

abstract class ConditionVisitor<T> {
  bool Function(T) visit(SearchCondition condition);
}

class WherePredicateVisitor<T> {
  bool Function(T) visit(SearchCondition condition) {
    // 親ノードか？
    if (condition case IParentCondition parent) {
      return _visitParent(parent);
    }

    // 葉ノード（FieldCondition）
    if (condition is FieldCondition) {
      return _visitField(condition);
    }

    throw UnsupportedError('Unknown condition type: $condition');
  }

  bool Function(T) _visitParent(IParentCondition cond) {
    final childPredicates = cond.children.map((c) => visit(c)).toList();

    final rule = cond.siblingsRule; // AND / OR

    if (rule == .and) {
      return (T item) => childPredicates.every((p) => p(item));
    } else {
      return (T item) => childPredicates.any((p) => p(item));
    }
  }

  bool Function(T) _visitField(FieldCondition cond) {
    return (T item) {
      final value = _getFieldValue(item, cond.field);
      final rightValue = cond.value.value;
      return switch (cond.operator) {
        EqualOperator eq =>
          !eq.isNot ? value == rightValue : value != rightValue,
        InOperator inOp =>
          !inOp.isNot
              ? (rightValue as List).contains(value)
              : !(rightValue as List).contains(value),
        NullOperator nullOp => !nullOp.isNot,
        LikeOperator likeOp =>
          !likeOp.isNot
              ? value.toString().contains(rightValue.toString())
              : !value.toString().contains(rightValue.toString()),
        StartWithOperator startWithOp =>
          !startWithOp.isNot
              ? value.toString().startsWith(rightValue.toString())
              : !value.toString().startsWith(rightValue.toString()),
        EndWithOperator endWithOp =>
          !endWithOp.isNot
              ? value.toString().endsWith(rightValue.toString())
              : !value.toString().endsWith(rightValue.toString()),
        LessOperator lessOp =>
          !lessOp.isThanEquals ? value < rightValue : value <= rightValue,
        GreaterOperator greaterOp =>
          !greaterOp.isThanEquals ? value > rightValue : value >= rightValue,
        BetweenOperator betweenOp =>
          !betweenOp.isNot
              ? value >= (rightValue as BetweenItem).start &&
                    value <= rightValue.end
              : !(value >= (rightValue as BetweenItem).start &&
                    value <= rightValue.end),
        _ => throw UnsupportedError('Unsupported operator: ${cond.operator}'),
      };
    };
  }

  dynamic _getFieldValue(T item, String fieldName) {
    final map = item as Map<String, dynamic>;
    return map[fieldName];
  }
}
