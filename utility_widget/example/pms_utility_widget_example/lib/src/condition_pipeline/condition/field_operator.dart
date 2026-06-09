const String NOT = 'not ';
const String THAN = ' than';
const String EQ = 'eq';
const String IN = 'in';
const String LIKE = 'like';
const String START_WITH = 'like _%';
const String END_WITH = 'like %_';
const String LESS = 'less';
const String GREATER = 'greater';
const String BETWEEN = 'between';
const String NULL = 'null';

///オペレーター
abstract class IFieldOperator {
  String get typeName;
}

abstract class INumberFieldOperator extends IFieldOperator {}

///数字、文字列、日付の共通式
abstract class CommonFieldOperator extends IFieldOperator {
  bool get isNot;
}

///数字、日付の比較式
abstract class NumberCommonFieldOperator extends INumberFieldOperator {
  bool get isNot;
}

abstract class NumberFieldOperator extends INumberFieldOperator {
  bool get isThanEquals;
}

///文字列の比較式
abstract class StringFieldOperator extends CommonFieldOperator {}

//NULL
class NullOperator extends CommonFieldOperator {
  @override
  String get typeName => !isNot ? NULL : NOT + NULL;
  @override
  bool isNot;

  NullOperator({this.isNot = false});
}

///=　!=
class EqualOperator extends CommonFieldOperator {
  @override
  String get typeName => !isNot ? EQ : NOT + EQ;
  @override
  bool isNot;

  EqualOperator({this.isNot = false});
}

///in句、NotIn句
class InOperator extends CommonFieldOperator {
  @override
  String get typeName => !isNot ? IN : NOT + IN;
  @override
  bool isNot;

  InOperator({this.isNot = false});
}

///Like句、NotLike句
class LikeOperator extends StringFieldOperator {
  @override
  String get typeName => !isNot ? LIKE : NOT + LIKE;
  @override
  bool isNot;

  LikeOperator({this.isNot = false});
}

///で始まる句
class StartWithOperator extends StringFieldOperator {
  @override
  String get typeName => !isNot ? START_WITH : NOT + START_WITH;
  @override
  bool isNot;

  StartWithOperator({this.isNot = false});
}

///で終わる句
class EndWithOperator extends StringFieldOperator {
  @override
  String get typeName => !isNot ? END_WITH : NOT + END_WITH;
  @override
  bool isNot;

  EndWithOperator({this.isNot = false});
}

///未満句、以下句
class LessOperator extends NumberFieldOperator {
  @override
  String get typeName => !isThanEquals ? LESS : LESS + THAN;
  @override
  bool isThanEquals;

  LessOperator({this.isThanEquals = false});
}

///超過句、以上句
class GreaterOperator extends NumberFieldOperator {
  @override
  String get typeName => !isThanEquals ? GREATER : GREATER + THAN;
  @override
  bool isThanEquals;

  GreaterOperator({this.isThanEquals = false});
}

///超過句、以上句
class BetweenOperator extends NumberCommonFieldOperator {
  @override
  String get typeName => !isNot ? BETWEEN : NOT + BETWEEN;
  @override
  bool isNot;

  BetweenOperator({this.isNot = false});
}

final class OperatorHelper {
  static final List<IFieldOperator> _operatorList = [
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

  static List<IFieldOperator> operatorsFrom<T>(T value) {
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
