import '../condition.dart';

final class OperatorHelper {
  static final List<FieldOperator> _operatorList = [
    EqualOperator(),
    EqualOperator(isNot: true),
    InOperator(),
    InOperator(isNot: true),
    LikeOperator(),
    LikeOperator(isNot: true),
    LessOperator(),
    LessOperator(isThanEquals: true),
    GreaterOperator(),
    GreaterOperator(isThanEquals: true),
    BetweenOperator(),
    BetweenOperator(isNot: true),
  ];

  static List<FieldOperator> operatorsFrom<T>(T value) {
    return switch (value) {
      String _ =>
        OperatorHelper._operatorList
            .where((t) => t is CommonFieldOperator || t is StringFieldOperator)
            .toList(),
      num _ =>
        OperatorHelper._operatorList
            .where((t) => t is CommonFieldOperator || t is INumberFieldOperator)
            .toList(),
      DateTime _ =>
        OperatorHelper._operatorList
            .where((t) => t is CommonFieldOperator || t is INumberFieldOperator)
            .toList(),
      _ =>
        OperatorHelper._operatorList.whereType<CommonFieldOperator>().toList(),
    };
  }
}
