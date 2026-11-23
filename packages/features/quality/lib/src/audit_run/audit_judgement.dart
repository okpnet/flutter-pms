import 'dart:convert';

import 'package:entity_screens/entity_screens.dart';

/// 監査の項目の判定の式(条件の JSON。`ConditionValue`)と、入力した値からの合否の判定。
///
/// 判定は式(DB の `arg_class`)の演算子と値だけで行う(コード値の `formula_class`・`type_class` では分岐しない)。
/// 値は、文字で持つ(`{"value": "…"}`): 数・範囲は数の文字、はい/いいえは `true`・`false`、文字は入力のまま。
abstract final class AuditJudgement {
  /// DB の `arg_class`(オブジェクトまたは JSON の文字列。値が数のこともある)から、画面の式にする。式が無い・読めないときは null。
  static ConditionValue? parseExpr(Object? argClass) {
    Object? decoded = argClass;
    if (decoded is String) {
      try {
        decoded = jsonDecode(decoded);
      } on FormatException {
        return null;
      }
    }
    if (decoded is! Map) return null;
    final raw = decoded['value'];
    final value = switch (raw) {
      final bool b => b,
      final List l => [for (final v in l) '$v'],
      null => null,
      _ => '$raw',
    };
    return ConditionValue.tryParse(jsonEncode({'operator': decoded['operator'], 'value': value}));
  }

  /// 値が式を満たすか。式が無い・値が空・比べられない(数でない値に大小の比較など)ときは null(判定しない)。
  static bool? judge(ConditionValue? expr, String value) {
    final v = value.trim();
    if (expr == null || v.isEmpty) return null;
    switch (expr.operator) {
      case ConditionOperator.yesNo:
        if (v != 'true' && v != 'false') return null;
        return (v == 'true') == (expr.value as bool);
      case ConditionOperator.between:
        final range = expr.value as List<String>;
        final x = double.tryParse(v);
        final lo = double.tryParse(range[0]);
        final hi = double.tryParse(range[1]);
        if (x == null || lo == null || hi == null) return null;
        return x >= lo && x <= hi;
      case ConditionOperator.equal || ConditionOperator.notEqual:
        final target = '${expr.value}'.trim();
        final x = double.tryParse(v);
        final t = double.tryParse(target);
        final same = (x != null && t != null) ? x == t : v == target;
        return expr.operator == ConditionOperator.equal ? same : !same;
      default:
        final x = double.tryParse(v);
        final t = double.tryParse('${expr.value}'.trim());
        if (x == null || t == null) return null;
        return switch (expr.operator) {
          ConditionOperator.greater => x > t,
          ConditionOperator.less => x < t,
          ConditionOperator.greaterOrEqual => x >= t,
          _ => x <= t,
        };
    }
  }

  /// 数の入力欄にするか(比較・範囲で、値が数)。
  static bool isNumeric(ConditionValue? expr) {
    if (expr == null) return false;
    return switch (expr.operator) {
      ConditionOperator.yesNo => false,
      ConditionOperator.between => (expr.value as List<String>).every((v) => double.tryParse(v) != null),
      ConditionOperator.equal || ConditionOperator.notEqual => false,
      _ => double.tryParse('${expr.value}'.trim()) != null,
    };
  }
}
