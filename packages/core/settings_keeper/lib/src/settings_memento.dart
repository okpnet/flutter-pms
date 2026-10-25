/// 設定1件分の状態の写し。
///
/// GoFパターン: Memento。持ち主([SettingsOriginator])の内部表現を、
/// JSONにできる値だけに落として持ち運ぶ。中身の意味は持ち主だけが知る。
class SettingsMemento {
  SettingsMemento({
    required this.key,
    required Map<String, Object?> values,
    this.version = 1,
    DateTime? savedAt,
  }) : values = Map.unmodifiable(values),
       savedAt = savedAt ?? DateTime.now();

  /// 設定の識別子(保存先の名前になる)。
  final String key;

  /// 持ち主が保存した値。JSONにできる型(null・bool・num・String・List・Map)だけを入れる。
  final Map<String, Object?> values;

  /// 値の形式の版。持ち主が古い形式を読み替えるために使う。
  final int version;

  final DateTime savedAt;

  factory SettingsMemento.fromJson(Map<String, Object?> json) {
    final values = json['values'];
    if (json['key'] is! String || values is! Map) {
      throw FormatException('設定の形式が不正です', json);
    }
    return SettingsMemento(
      key: json['key'] as String,
      values: Map<String, Object?>.from(values),
      version: (json['version'] as num?)?.toInt() ?? 1,
      savedAt: DateTime.tryParse('${json['savedAt']}'),
    );
  }

  Map<String, Object?> toJson() => {
    'key': key,
    'version': version,
    'savedAt': savedAt.toUtc().toIso8601String(),
    'values': values,
  };

  @override
  String toString() => 'SettingsMemento(${toJson()})';
}
