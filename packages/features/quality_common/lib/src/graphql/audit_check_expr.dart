import 'dart:convert';

import 'package:entity_screens/entity_screens.dart';

/// 監査標準の項目の判定の式(条件 = 演算子 + 値)と、DB の列(`arg_class`・`formula_class`・`type_class`)の対応。
///
/// 設備の点検整備項目の式(`mstr_inspection_formula`。`FieldKind.condition`)と同じ形: 式は条件の JSON(`{"operator":"<=","value":"0.5"}` など。
/// `entity_screens` の [ConditionValue])で、**判定は `arg_class` の JSON だけで行う**(状態・区分をコード値で判定しない)。
/// `formula_class`・`type_class` は DB の NOT NULL の列のため、`arg_class` から導いた値を書く(読み込みには使わない)。
abstract final class AuditCheckExpr {
  /// 式が無いとき(判定は所見だけ)の `formula_class`・`type_class`。
  static const none = 0;

  /// 式の演算子の番号(1 から。[ConditionOperator] の宣言順)。式が無いときは 0。
  static int formulaClassOf(ConditionValue? expr) => expr == null ? none : ConditionOperator.values.indexOf(expr.operator) + 1;

  /// 値の型: 1 = 数(比較の値が数、範囲の両端が数)、2 = 文字、3 = はい/いいえ。式が無いときは 0。
  static int typeClassOf(ConditionValue? expr) {
    if (expr == null) return none;
    final v = expr.value;
    if (v is bool) return 3;
    if (v is List<String>) return v.every((e) => num.tryParse(e) != null) ? 1 : 2;
    return num.tryParse('$v') != null ? 1 : 2;
  }

  /// 画面の式(条件の JSON の文字列。空は式なし)を、DB へ送る値にする。読めない JSON は null(呼び出し側が検証エラーにする)。
  static ({String? argClass, int formulaClass, int typeClass})? toColumns(String expr) {
    final text = expr.trim();
    if (text.isEmpty) return (argClass: null, formulaClass: none, typeClass: none);
    final parsed = ConditionValue.tryParse(text);
    if (parsed == null) return null;
    return (argClass: parsed.toJsonString(), formulaClass: formulaClassOf(parsed), typeClass: typeClassOf(parsed));
  }

  /// DB の `arg_class`(JSON の値。オブジェクトまたは文字列)を、画面の式(条件の JSON の文字列)にする。読めないときは空。
  static String fromArgClass(Object? argClass) {
    if (argClass == null) return '';
    final text = argClass is String ? argClass : jsonEncode(argClass);
    return ConditionValue.tryParse(text)?.toJsonString() ?? '';
  }
}
