import '../condition/condition.dart';
import 'converter.dart';

abstract class FieldOperatorVisitor<R> {
  R visitEqual(EqualOperator op, dynamic left, ConditionValue right);
  R visitIn(InOperator op, dynamic left, ConditionValue right);
  R visitLike(LikeOperator op, dynamic left, ConditionValue right);
  R visitStartWith(StartWithOperator op, dynamic left, ConditionValue right);
  R visitEndWith(EndWithOperator op, dynamic left, ConditionValue right);
  R visitLess(LessOperator op, dynamic left, ConditionValue right);
  R visitGreater(GreaterOperator op, dynamic left, ConditionValue right);
  R visitBetween(BetweenOperator op, dynamic left, ConditionValue right);
  R visitNull(NullOperator op, dynamic left, ConditionValue right);
}

class GenericConditionVisitor<T, R> {
  final FieldConditionConverter<T, R> converter;
  final R Function(List<R>, GruleRule) combine;

  GenericConditionVisitor({required this.converter, required this.combine});

  /// 条件式から「T → R」の関数を構築して返す
  R Function(T) build(SearchCondition condition) {
    return (T item) => _visit(condition, item);
  }

  R _visit(SearchCondition condition, T item) {
    if (condition case IParentCondition parent) {
      return _visitParent(parent, item);
    }
    if (condition case ValueFieldCondition valueField) {
      return _visitValueField(valueField, item);
    }
    if (condition case FieldReferenceCondition refField) {
      return _visitFieldReference(refField, item);
    }
    if (condition case ISortCondition sortCond) {
      return converter.evaluateSort(sortCond);
    }
    throw UnsupportedError('Unknown condition type');
  }

  R _visitParent(IParentCondition cond, T item) {
    final children = cond.children.map((c) => _visit(c, item)).toList();
    return combine(children, cond.siblingsRule);
  }

  R _visitValueField(ValueFieldCondition cond, T item) {
    final right = cond.value;
    return converter.evaluateValueField(cond, item, right);
  }

  R _visitFieldReference(FieldReferenceCondition cond, T item) {
    return converter.evaluateFieldReference(cond, item, null);
  }
}

// abstract class ConditionVisitor<T> {
//   bool Function(T) visit(SearchCondition condition);
// }

// class WherePredicateVisitor<T> {
//   bool Function(T) visit(SearchCondition condition) {
//     // 親ノードか？
//     if (condition case IParentCondition parent) {
//       return _visitParent(parent);
//     }

//     // 葉ノード（FieldCondition）
//     if (condition case IFieldCondition fieldCondition) {
//       return _visitField(fieldCondition);
//     }

//     throw UnsupportedError('Unknown condition type: $condition');
//   }

//   bool Function(T) _visitParent(IParentCondition cond) {
//     final childPredicates = cond.children.map((c) => visit(c)).toList();

//     final rule = cond.siblingsRule; // AND / OR

//     if (rule == .and) {
//       return (T item) => childPredicates.every((p) => p(item));
//     } else {
//       return (T item) => childPredicates.any((p) => p(item));
//     }
//   }

//   bool Function(T) _visitField(IFieldCondition cond) {
//     return (T item) {
//       final value = _getFieldValue(item, cond.field);
//       final rightValue = switch (cond) {
//         IValueFieldCondition v => v.value,
//         IFieldReferenceCondition r => _getFieldValue(item, r.toField),
//         _ => throw AssertionError(
//           'the condition must be IValueFieldCondition or IFieldReferenceCondition',
//         ),
//       };
//       return switch (cond.operator) {
//         EqualOperator eq =>
//           !eq.isNot ? value == rightValue : value != rightValue,
//         InOperator inOp =>
//           !inOp.isNot
//               ? (rightValue as List).contains(value)
//               : !(rightValue as List).contains(value),
//         NullOperator nullOp => !nullOp.isNot,
//         LikeOperator likeOp =>
//           !likeOp.isNot
//               ? value.toString().contains(rightValue.toString())
//               : !value.toString().contains(rightValue.toString()),
//         StartWithOperator startWithOp =>
//           !startWithOp.isNot
//               ? value.toString().startsWith(rightValue.toString())
//               : !value.toString().startsWith(rightValue.toString()),
//         EndWithOperator endWithOp =>
//           !endWithOp.isNot
//               ? value.toString().endsWith(rightValue.toString())
//               : !value.toString().endsWith(rightValue.toString()),
//         LessOperator lessOp =>
//           !lessOp.isThanEquals ? value < rightValue : value <= rightValue,
//         GreaterOperator greaterOp =>
//           !greaterOp.isThanEquals ? value > rightValue : value >= rightValue,
//         BetweenOperator betweenOp =>
//           !betweenOp.isNot
//               ? value >= (rightValue as BetweenItem).start &&
//                     value <= rightValue.end
//               : !(value >= (rightValue as BetweenItem).start &&
//                     value <= rightValue.end),
//         _ => throw UnsupportedError('Unsupported operator: ${cond.operator}'),
//       };
//     };
//   }

//   dynamic _getFieldValue(T item, String fieldName) {
//     final map = item as Map<String, dynamic>;
//     return map[fieldName];
//   }
// }
