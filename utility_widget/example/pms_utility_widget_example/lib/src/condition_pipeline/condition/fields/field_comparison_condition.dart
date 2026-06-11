import 'package:utility_widget_example/src/condition_pipeline/condition/fields/field_operator.dart';

import '../search_condition.dart';

class FieldReferenceCondition extends SearchCondition
    implements IFieldReferenceCondition {
  @override
  final String field;

  @override
  final FieldOperator operator;

  @override
  final String toField;
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

class FieldRightReferenceCondition extends SearchCondition
    implements IFieldCondition {
  @override
  // TODO: implement field
  final String field;

  @override
  // TODO: implement operator
  final FieldOperator operator;

  FieldRightReferenceCondition({required this.field, required this.operator});
}
