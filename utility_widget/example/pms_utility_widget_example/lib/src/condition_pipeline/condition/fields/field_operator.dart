import 'package:utility_widget_example/src/condition_pipeline/condition/fields/condition_value.dart';

import '../../converter/condition_vsitor.dart';

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
abstract class FieldOperator {
  String get typeName;
  R accept<R>(
    FieldOperatorVisitor<R> visitor,
    dynamic left,
    ConditionValue right,
  );
}

abstract class INumberFieldOperator extends FieldOperator {}

///数字、文字列、日付の共通式
abstract class CommonFieldOperator extends FieldOperator {
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

  @override
  R accept<R>(FieldOperatorVisitor<R> visitor, dynamic left, dynamic right) {
    return visitor.visitNull(this, left, right);
  }
}

///=　!=
class EqualOperator extends CommonFieldOperator {
  @override
  String get typeName => !isNot ? EQ : NOT + EQ;
  @override
  bool isNot;

  EqualOperator({this.isNot = false});
  @override
  R accept<R>(FieldOperatorVisitor<R> visitor, dynamic left, dynamic right) {
    return visitor.visitEqual(this, left, right);
  }
}

///in句、NotIn句
class InOperator extends CommonFieldOperator {
  @override
  String get typeName => !isNot ? IN : NOT + IN;
  @override
  bool isNot;

  InOperator({this.isNot = false});
  @override
  R accept<R>(FieldOperatorVisitor<R> visitor, dynamic left, dynamic right) {
    return visitor.visitIn(this, left, right);
  }
}

///Like句、NotLike句
class LikeOperator extends StringFieldOperator {
  @override
  String get typeName => !isNot ? LIKE : NOT + LIKE;
  @override
  bool isNot;

  LikeOperator({this.isNot = false});
  @override
  R accept<R>(FieldOperatorVisitor<R> visitor, dynamic left, dynamic right) {
    return visitor.visitLike(this, left, right);
  }
}

///で始まる句
class StartWithOperator extends StringFieldOperator {
  @override
  String get typeName => !isNot ? START_WITH : NOT + START_WITH;
  @override
  bool isNot;

  StartWithOperator({this.isNot = false});
  @override
  R accept<R>(FieldOperatorVisitor<R> visitor, dynamic left, dynamic right) {
    return visitor.visitStartWith(this, left, right);
  }
}

///で終わる句
class EndWithOperator extends StringFieldOperator {
  @override
  String get typeName => !isNot ? END_WITH : NOT + END_WITH;
  @override
  bool isNot;

  EndWithOperator({this.isNot = false});
  @override
  R accept<R>(FieldOperatorVisitor<R> visitor, dynamic left, dynamic right) {
    return visitor.visitEndWith(this, left, right);
  }
}

///未満句、以下句
class LessOperator extends NumberFieldOperator {
  @override
  String get typeName => !isThanEquals ? LESS : LESS + THAN;
  @override
  bool isThanEquals;

  LessOperator({this.isThanEquals = false});
  @override
  R accept<R>(FieldOperatorVisitor<R> visitor, dynamic left, dynamic right) {
    return visitor.visitLess(this, left, right);
  }
}

///超過句、以上句
class GreaterOperator extends NumberFieldOperator {
  @override
  String get typeName => !isThanEquals ? GREATER : GREATER + THAN;
  @override
  bool isThanEquals;

  GreaterOperator({this.isThanEquals = false});
  @override
  R accept<R>(FieldOperatorVisitor<R> visitor, dynamic left, dynamic right) {
    return visitor.visitGreater(this, left, right);
  }
}

///超過句、以上句
class BetweenOperator extends NumberCommonFieldOperator {
  @override
  String get typeName => !isNot ? BETWEEN : NOT + BETWEEN;
  @override
  bool isNot;

  BetweenOperator({this.isNot = false});
  @override
  R accept<R>(FieldOperatorVisitor<R> visitor, dynamic left, dynamic right) {
    return visitor.visitBetween(this, left, right);
  }
}
