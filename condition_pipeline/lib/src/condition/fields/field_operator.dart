// ignore_for_file: constant_identifier_names

import '../../visitor/visit.dart';
import '../condition.dart';

// 定数: 各演算子やキーワードを表す内部識別子。
// これらはライブラリ内部での表示や組み立てに使う文字列で、
// 実際のデータベース固有のキーワードや最終出力は変換処理側で調整します。
const String NOT = 'not '; // 否定プレフィックス（例: 'not '）
const String THAN = ' than'; // ' than' サフィックス（'less than' 等で使用）
const String EQ = 'eq'; // 等価比較を示す識別子
const String IN = 'in'; // in句を示す識別子
const String LIKE = 'like'; // 部分一致（LIKE）を示す識別子
const String START_WITH = 'like _%'; // 先頭一致用 LIKE パターン（内部表現）
const String END_WITH = 'like %_'; // 末尾一致用 LIKE パターン（内部表現）
const String LESS = 'less'; // 未満を示す識別子
const String GREATER = 'greater'; // より大きい（超過）を示す識別子
const String BETWEEN = 'between'; // 範囲比較（between）を示す識別子
const String NULL = 'null'; // null 比較を示す識別子
const String ASC = 'asc'; // 昇順（ascending）を示す識別子
const String DESC = 'desc'; // 降順（descending）を示す識別子

/// 演算子の抽象インターフェース。
/// - [typeName]: 演算子を識別する文字列（外部表示やデバッグ用）。
/// - [accept]: ビジターパターンのために自身を渡し、訪問者が処理結果を返す。
abstract class FieldOperator {
  String get typeName;
  R accept<T, R extends Function>(
    FieldOperatorVisitor<T, R> visitor,
    ConditionValue right,
  );
}

/// ソート演算子の抽象インターフェース。
/// - [isDesc]: 降順かどうかを示すフラグ。
/// - [typeName]: ソートの識別子（通常は 'asc'/'desc'）。
/// - [accept]: ソート向けビジターを受け取り、処理結果を返す。
abstract class SortOperator {
  bool get isDesc;
  String get typeName;
  R accept<T, R extends Function>(
    SortOperatorVisitor<T, R> visitor,
    ConditionValue right,
  );
}

/// 数値系の演算子（マーカーインターフェース）。
abstract class INumberFieldOperator extends FieldOperator {}

/// 共通演算子インターフェース（文字列・数値・日時などに共通するプロパティを定義）。
/// - [isNot]: 否定（NOT）表現を持つかどうか。
abstract class CommonFieldOperator extends FieldOperator {
  bool get isNot;
}

/// 数値・日時系の共通比較演算子（NOT を持つもの）。
abstract class NumberCommonFieldOperator extends INumberFieldOperator {
  bool get isNot;
}

/// 数値比較専用の演算子インターフェース。
/// - [isThanEquals]: 'less than or equal' などの等号を含む表現かを示す。
abstract class NumberFieldOperator extends INumberFieldOperator {
  bool get isThanEquals;
}

/// 文字列比較専用の演算子インターフェース。
abstract class StringFieldOperator extends CommonFieldOperator {}

/// NULL 比較演算子。
/// - [isNot]: `null` の否定（`NOT NULL`）を表現するフラグ。
/// - [typeName]: 内部識別子（通常は 'null' または 'not null'）。
/// - [accept]: ビジターに自身を渡して処理を委譲する。
class NullOperator extends CommonFieldOperator {
  @override
  String get typeName => !isNot ? NULL : NOT + NULL;
  @override
  bool isNot;

  NullOperator({this.isNot = false});

  @override
  R accept<T, R extends Function>(
    FieldOperatorVisitor<T, R> visitor,
    ConditionValue right,
  ) {
    if (right case NullValue nullValue) {
      return visitor.visitNull(this, nullValue);
    }
    throw AssertionError('$right shall NullValue type.');
  }
}

/// 等価比較演算子。
/// - [isNot]: 否定（`!=` 相当）を示すフラグ。
/// - [typeName]: 内部識別子（'eq' または 'not eq'）。
/// - [accept]: ビジターへ渡して具体的な出力を生成する。
class EqualOperator extends CommonFieldOperator {
  @override
  String get typeName => !isNot ? EQ : NOT + EQ;
  @override
  bool isNot;

  EqualOperator({this.isNot = false});
  @override
  R accept<T, R extends Function>(
    FieldOperatorVisitor<T, R> visitor,
    ConditionValue right,
  ) {
    return visitor.visitEqual(this, right);
  }
}

/// IN 演算子（リスト内検索）。
/// - [isNot]: 否定の IN（NOT IN）を示すフラグ。
/// - [typeName]: 内部識別子（'in' または 'not in'）。
/// - [accept]: ビジターによる処理を行う。
class InOperator extends CommonFieldOperator {
  @override
  String get typeName => !isNot ? IN : NOT + IN;
  @override
  bool isNot;

  InOperator({this.isNot = false});
  @override
  R accept<T, R extends Function>(
    FieldOperatorVisitor<T, R> visitor,
    ConditionValue right,
  ) {
    return visitor.visitIn(this, right);
  }
}

/// LIKE（部分一致）演算子。
/// - [isNot]: 否定の LIKE（NOT LIKE）を示すフラグ。
/// - [typeName]: 内部識別子（'like' または 'not like'）。
/// - [accept]: 受け取った [ConditionValue] が [StringleValue] であることを期待する。
class LikeOperator extends StringFieldOperator {
  @override
  String get typeName => !isNot ? LIKE : NOT + LIKE;
  @override
  bool isNot;

  LikeOperator({this.isNot = false});
  @override
  R accept<T, R extends Function>(
    FieldOperatorVisitor<T, R> visitor,
    ConditionValue right,
  ) {
    if (right case StringleValue strValue) {
      return visitor.visitLike(this, strValue);
    }
    throw AssertionError('$right shall StringleValue type.');
  }
}

/// 先頭一致（starts with）演算子。
/// - [isNot]: 否定を示すフラグ。
/// - [typeName]: 内部識別子（先頭一致用パターンを含む）。
/// - [accept]: 受け取った [ConditionValue] が [StringleValue] であることを期待する。
class StartWithOperator extends StringFieldOperator {
  @override
  String get typeName => !isNot ? START_WITH : NOT + START_WITH;
  @override
  bool isNot;

  StartWithOperator({this.isNot = false});
  @override
  R accept<T, R extends Function>(
    FieldOperatorVisitor<T, R> visitor,
    ConditionValue right,
  ) {
    if (right case StringleValue strValue) {
      return visitor.visitStartWith(this, strValue);
    }
    throw AssertionError('$right shall StringleValue type.');
  }
}

/// 末尾一致（ends with）演算子。
/// - [isNot]: 否定を示すフラグ。
/// - [typeName]: 内部識別子（末尾一致用パターンを含む）。
/// - [accept]: ビジターへ処理を委譲する。
class EndWithOperator extends StringFieldOperator {
  @override
  String get typeName => !isNot ? END_WITH : NOT + END_WITH;
  @override
  bool isNot;

  EndWithOperator({this.isNot = false});
  @override
  R accept<T, R extends Function>(
    FieldOperatorVisitor<T, R> visitor,
    ConditionValue right,
  ) {
    return visitor.visitEndWith(this, right);
  }
}

/// 小なり / 以下（less / less than or equal）演算子。
/// - [isThanEquals]: 含む比較（<=）かどうかを示すフラグ。
/// - [typeName]: 内部識別子（'less' または 'less than'）。
/// - [accept]: 数値系の [ConditionValue] を受け取ってビジターに渡す。
class LessOperator extends NumberFieldOperator {
  @override
  String get typeName => !isThanEquals ? LESS : LESS + THAN;
  @override
  bool isThanEquals;

  LessOperator({this.isThanEquals = false});
  @override
  R accept<T, R extends Function>(
    FieldOperatorVisitor<T, R> visitor,
    ConditionValue right,
  ) {
    return visitor.visitLess(this, right);
  }
}

/// 大なり / 以上（greater / greater than or equal）演算子。
/// - [isThanEquals]: 含む比較（>=）かどうかを示すフラグ。
/// - [typeName]: 内部識別子（'greater' または 'greater than'）。
/// - [accept]: ビジターに処理を委譲する。
class GreaterOperator extends NumberFieldOperator {
  @override
  String get typeName => !isThanEquals ? GREATER : GREATER + THAN;
  @override
  bool isThanEquals;

  GreaterOperator({this.isThanEquals = false});
  @override
  R accept<T, R extends Function>(
    FieldOperatorVisitor<T, R> visitor,
    ConditionValue right,
  ) {
    return visitor.visitGreater(this, right);
  }
}

/// 範囲比較（between）演算子。
/// - [isNot]: 否定（NOT BETWEEN）を示すフラグ。
/// - [typeName]: 内部識別子（'between' または 'not between'）。
/// - [accept]: 受け取った [ConditionValue] が [BetweenValue] であることを期待する。
class BetweenOperator extends NumberCommonFieldOperator {
  @override
  String get typeName => !isNot ? BETWEEN : NOT + BETWEEN;
  @override
  bool isNot;

  BetweenOperator({this.isNot = false});
  @override
  R accept<T, R extends Function>(
    FieldOperatorVisitor<T, R> visitor,
    ConditionValue right,
  ) {
    if (right case BetweenValue betweenValue) {
      return visitor.visitBetween(this, betweenValue);
    }
    throw AssertionError('$right shall BetweenValue type.');
  }
}

/// ソート演算子（昇順/降順）。
/// - [isDesc]: 降順なら true。
/// - [typeName]: 内部識別子（'asc'/'desc'）。
/// - [accept]: 受け取った [ConditionValue] が `ConditionValue<SortValueItem<T>>` であることを期待する。
class SortFieldOperator extends SortOperator {
  @override
  final bool isDesc;

  @override
  String get typeName => !isDesc ? ASC : DESC;

  SortFieldOperator({this.isDesc = false});
  @override
  R accept<T, R extends Function>(
    SortOperatorVisitor<T, R> visitor,
    ConditionValue right,
  ) {
    if (right case ConditionValue<SortValueItem<T>> condition) {
      return visitor.visitSort(this, condition);
    }
    throw AssertionError('$right shall ConditionValue<SortValueItem<T>> type.');
  }
}
