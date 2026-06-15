import '../condition.dart';

///右辺
class FieldReferenceCondition<T> extends SearchCondition
    implements IFieldReferenceCondition<T> {
  @override
  final FieldCallBack<T> field;

  @override
  final FieldOperator operator;

  @override
  final FieldCallBack<T> toField;
  FieldReferenceCondition({
    required this.field,
    required FieldOperator operator,
    required this.toField,
    super.parent,
  }) : operator =
           operator is NumberFieldOperator || operator is CommonFieldOperator
           ? operator
           : throw AssertionError(
               'Depending on the field has value, the operator must be either NumberFieldOperator or CommonFieldOperator.',
             );
}
