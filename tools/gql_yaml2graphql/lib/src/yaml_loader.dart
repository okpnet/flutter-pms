// view.yamlの読み込み。YAMLのマージキー(`<<`)を解決して、プレーンなMap/Listにする。
//
// package:yamlは`<<`を展開しないため、ここで展開する。マージはキー単位で、ローカルに書いた
// キーがマージ元を丸ごと置き換える(27章6-4節・要件0050 5-2)。

import 'package:yaml/yaml.dart';

Map<String, dynamic> loadViewYaml(String text) {
  final doc = loadYaml(text);
  return _plain(doc) as Map<String, dynamic>;
}

dynamic _plain(dynamic node) {
  if (node is YamlMap || node is Map) {
    final src = node as Map;
    final out = <String, dynamic>{};
    final merge = src['<<'];
    if (merge != null) {
      final bases = merge is List ? merge : [merge];
      for (final b in bases) {
        final plain = _plain(b);
        if (plain is Map<String, dynamic>) out.addAll(plain);
      }
    }
    for (final e in src.entries) {
      if (e.key == '<<') continue;
      out[e.key.toString()] = _plain(e.value);
    }
    return out;
  }
  if (node is YamlList || node is List) {
    return [for (final x in node as List) _plain(x)];
  }
  return node;
}
