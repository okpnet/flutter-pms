import 'dart:convert';

/// 条件の演算子。JSON の `operator` に書く文字列を [code] に持つ。
enum ConditionOperator {
  equal('='),
  notEqual('≠'),
  greater('>'),
  less('<'),
  greaterOrEqual('>='),
  lessOrEqual('<='),

  /// 範囲(下限〜上限)。値は2つ。
  between('between'),

  /// 二値(Yes / No)。値は真偽。
  yesNo('yesno');

  const ConditionOperator(this.code);

  final String code;

  static ConditionOperator? ofCode(Object? code) {
    for (final o in values) {
      if (o.code == code) return o;
    }
    return null;
  }
}

/// JSON にできる条件(演算子 + 値)。項目の種類 `FieldKind.condition` の値で、文字列(JSON)で持つ。
///
/// ```json
/// {"operator":"=","value":"10"}
/// {"operator":"between","value":["1","5"]}
/// {"operator":"yesno","value":true}
/// ```
class ConditionValue {
  const ConditionValue(this.operator, this.value);

  final ConditionOperator operator;

  /// 比較は文字列、[ConditionOperator.between] は2つの文字列のリスト、[ConditionOperator.yesNo] は真偽。
  final Object value;

  /// JSON の文字列から読む。形式が合わないとき(演算子と値が合わない・空の値を含む)は null。
  static ConditionValue? tryParse(String json) {
    try {
      final decoded = jsonDecode(json);
      if (decoded is! Map) return null;
      final op = ConditionOperator.ofCode(decoded['operator']);
      final raw = decoded['value'];
      if (op == null) return null;
      switch (op) {
        case ConditionOperator.yesNo:
          return raw is bool ? ConditionValue(op, raw) : null;
        case ConditionOperator.between:
          if (raw is! List || raw.length != 2) return null;
          final range = [for (final v in raw) '$v'.trim()];
          return range.any((v) => v.isEmpty) ? null : ConditionValue(op, range);
        default:
          if (raw == null || raw is List || raw is Map || raw is bool) {
            return null;
          }
          final text = '$raw'.trim();
          return text.isEmpty ? null : ConditionValue(op, text);
      }
    } on FormatException {
      return null;
    }
  }

  String toJsonString() =>
      jsonEncode({'operator': operator.code, 'value': value});

  /// 台帳に表示する短い文字列(例: `>= 10`、`1 〜 5`、`Yes`)。
  String get display => switch (operator) {
    ConditionOperator.yesNo => (value as bool) ? 'Yes' : 'No',
    ConditionOperator.between =>
      '${(value as List<String>)[0]} 〜 ${(value as List<String>)[1]}',
    _ => '${operator.code} $value',
  };

  Map<String, Object?> toJson() => {'operator': operator.code, 'value': value};

  /// 台帳に表示する文字列。JSON として読めないときは入力のまま。
  static String displayOf(String json) => tryParse(json)?.display ?? json;
}
