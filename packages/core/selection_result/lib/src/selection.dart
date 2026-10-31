import 'dart:convert';

/// 選択の結果(Value Object)。
///
/// - [entityKey]: 選んだ対象の種類(実体のキーなど)。
/// - [id]: 対象を一意に決める値(UUID の文字列など)。呼び出し元はこれでモデルを引く。
/// - [label]: 画面に出す表示名。呼び出し元が選択直後に引き直さずに表示できる。
/// - [values]: 呼び出し元が必要とする追加の値(コード・名称など。文字列だけ)。
///
/// 生成されたモデルの型は含めない(機能の外へ出さない規則のため)。
/// データ効率のよい受け渡しには [encode]/[decode](短いキーの JSON)を使う。
class Selection {
  const Selection({
    required this.entityKey,
    required this.id,
    this.label = '',
    this.values = const {},
  });

  final String entityKey;
  final String id;
  final String label;
  final Map<String, String> values;

  /// エラー追跡用の JSON(読みやすいキー)。
  Map<String, Object?> toJson() => {
    'entityKey': entityKey,
    'id': id,
    'label': label,
    'values': values,
  };

  factory Selection.fromJson(Map<String, Object?> json) => Selection(
    entityKey: json['entityKey'] as String,
    id: json['id'] as String,
    label: (json['label'] as String?) ?? '',
    values: {
      for (final e in ((json['values'] as Map?) ?? const {}).entries)
        e.key as String: e.value as String,
    },
  );

  /// 受け渡し用の短い JSON 文字列。空の [label]・[values] は省く。
  String encode() => jsonEncode({
    'k': entityKey,
    'i': id,
    if (label.isNotEmpty) 'l': label,
    if (values.isNotEmpty) 'v': values,
  });

  /// [encode] の逆変換。形式が合わないときは [FormatException]。
  factory Selection.decode(String source) {
    final Object? json = jsonDecode(source);
    if (json is! Map || json['k'] is! String || json['i'] is! String) {
      throw FormatException('選択の結果の形式が違います', source);
    }
    return Selection(
      entityKey: json['k'] as String,
      id: json['i'] as String,
      label: (json['l'] as String?) ?? '',
      values: {
        for (final e in ((json['v'] as Map?) ?? const {}).entries)
          e.key as String: e.value as String,
      },
    );
  }

  @override
  bool operator ==(Object other) =>
      other is Selection &&
      other.entityKey == entityKey &&
      other.id == id &&
      other.label == label &&
      _sameValues(other.values);

  bool _sameValues(Map<String, String> o) =>
      o.length == values.length &&
      values.entries.every((e) => o[e.key] == e.value);

  @override
  int get hashCode => Object.hash(entityKey, id, label, values.length);

  @override
  String toString() => 'Selection($entityKey, $id)';
}
