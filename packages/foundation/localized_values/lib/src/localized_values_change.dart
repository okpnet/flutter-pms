import 'dart:convert';

import 'localized_values.dart';

/// 保存で送る、変わった言語だけの値。
///
/// DB の保存関数(`shared_appellation_save` など)は、渡した言語だけを入れ替える。
/// 渡さない言語は残るため、画面は、読み込んだ値から変わった言語だけを送る。
/// 変更の求め(Command)にあたる値オブジェクト。
class LocalizedValuesChange {
  LocalizedValuesChange._(this.values);

  /// 読み込んだ値 [original] と編集後の値 [edited] を比べる。
  ///
  /// 1. 値が変わった言語を送る。
  /// 1. 元が未入力で、編集後も未入力の言語は送らない(空文字と行なしは同じ)。
  /// 1. 元に値があり、編集後が未入力なら、空文字を送る(DB が値を空にする)。
  factory LocalizedValuesChange.diff(
    LocalizedValues original,
    LocalizedValues edited,
  ) {
    final changed = <String, String>{};
    final languages = {...original.values.keys, ...edited.values.keys};
    for (final language in languages) {
      final before = original.exact(language);
      final after = edited.exact(language);
      if (before == after) continue;
      changed[language] = after ?? '';
    }
    return LocalizedValuesChange._(Map.unmodifiable(changed));
  }

  /// 言語コード(小文字) → 送る値。
  final Map<String, String> values;

  /// 送る言語が無い(関数を呼ばない)。
  bool get isEmpty => values.isEmpty;

  /// 保存の関数の引数(`jsonb`)にする JSON の文字列。無ければ null(引数を渡さない)。
  String? toArgument() => isEmpty ? null : jsonEncode(values);

  /// 保存後に、いずれかの言語に値が残るか([original] に変更を重ねて判定)。名称の必須の検証。
  bool leavesAnyValue(LocalizedValues original) {
    final merged = {...original.values, ...values};
    return LocalizedValues(merged).hasAnyValue;
  }

  /// エラー追跡用(機能の復元には使わない)。
  Map<String, Object?> toJson() => {'values': values};

  @override
  String toString() => 'LocalizedValuesChange($values)';
}
