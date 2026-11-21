/// 設定の JSON を、寛容に読む部品(欠けた・型の違う値は既定に戻し、[Problems] に残す)。
/// 設定の不備でアプリ・PDF の出力を止めない(呼び出し側がログに残す)。
class Problems {
  final List<String> messages = [];
  void add(String message) => messages.add(message);
  bool get isEmpty => messages.isEmpty;
}

Map<String, dynamic> asJsonMap(Object? value) {
  if (value is Map) return value.map((k, v) => MapEntry(k.toString(), v));
  return <String, dynamic>{};
}

double readDouble(
  Map<String, dynamic> m,
  String key,
  double fallback,
  Problems? p,
  String path,
) {
  final v = m[key];
  if (v == null) return fallback;
  if (v is num) return v.toDouble();
  p?.add('$path.$key は数値ではありません: $v');
  return fallback;
}

int readInt(
  Map<String, dynamic> m,
  String key,
  int fallback,
  Problems? p,
  String path,
) {
  final v = m[key];
  if (v == null) return fallback;
  if (v is num) return v.toInt();
  p?.add('$path.$key は整数ではありません: $v');
  return fallback;
}

bool readBool(
  Map<String, dynamic> m,
  String key,
  bool fallback,
  Problems? p,
  String path,
) {
  final v = m[key];
  if (v == null) return fallback;
  if (v is bool) return v;
  p?.add('$path.$key は真偽値ではありません: $v');
  return fallback;
}

String readString(
  Map<String, dynamic> m,
  String key,
  String fallback,
  Problems? p,
  String path,
) {
  final v = m[key];
  if (v == null) return fallback;
  if (v is String) return v;
  p?.add('$path.$key は文字列ではありません: $v');
  return fallback;
}

String? readNullableString(
  Map<String, dynamic> m,
  String key,
  Problems? p,
  String path,
) {
  final v = m[key];
  if (v == null) return null;
  if (v is String) return v;
  p?.add('$path.$key は文字列ではありません: $v');
  return null;
}

T readEnum<T extends Enum>(
  Map<String, dynamic> m,
  String key,
  List<T> values,
  T fallback,
  Problems? p,
  String path,
) {
  final v = m[key];
  if (v == null) return fallback;
  for (final e in values) {
    if (e.name == v) return e;
  }
  p?.add('$path.$key の値が不正です: $v(${values.map((e) => e.name).join(' / ')})');
  return fallback;
}

/// [base] に [override] を重ねる(Map は再帰。リスト・値は [override] が置き換える。null は無視)。
Map<String, dynamic> deepMerge(
  Map<String, dynamic> base,
  Map<String, dynamic> override,
) {
  final out = Map<String, dynamic>.from(base);
  override.forEach((k, v) {
    if (v == null) return;
    final b = out[k];
    if (b is Map && v is Map) {
      out[k] = deepMerge(asJsonMap(b), asJsonMap(v));
    } else {
      out[k] = v;
    }
  });
  return out;
}
