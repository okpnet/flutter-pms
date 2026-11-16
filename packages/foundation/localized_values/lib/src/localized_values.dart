/// 言語コード → 値 の言語別の値。値オブジェクト(Value Object)。
///
/// 空文字(空白だけを含む)は「未入力」で、行なしと区別しない。表示は、
/// 指定の言語 → 代替の言語(既定 ja) → 入っている言語の先頭(渡された順) の順で、最初の未入力でない値を使う。
class LocalizedValues {
  /// 言語コードは、小文字にそろえる(DB の言語の検索は大文字小文字を区別しない)。
  LocalizedValues(Map<String, String?> values)
    : _values = Map.unmodifiable({
        for (final e in values.entries) e.key.toLowerCase(): e.value ?? '',
      });

  static final LocalizedValues empty = LocalizedValues(const {});

  final Map<String, String> _values;

  /// 生成モデルの辞書(`value.nodes[].dictionaryValue`)から作る。
  ///
  /// 値の言語は、各ノードの `sharedLanguageCodeBySharedLanguageCodeId.code` が取れるときはそれ、
  /// 取れないとき(問い合わせが言語を 1 つに絞っている)は [queriedLanguage](絞った言語)とみなす。
  /// 同じ言語が複数あるときは、先のものを使う。辞書が無い・値が無いときは空。
  factory LocalizedValues.fromDictionary(
    dynamic dictionary, {
    String queriedLanguage = 'ja',
  }) {
    final nodes = dictionary?.value?.nodes as List?;
    final values = <String, String?>{};
    for (final node in nodes ?? const []) {
      String? code;
      try {
        code = node.sharedLanguageCodeBySharedLanguageCodeId?.code as String?;
      } on NoSuchMethodError {
        code = null; // 言語のコードを取らない問い合わせ
      }
      final key = (code == null || code.isEmpty) ? queriedLanguage : code;
      values.putIfAbsent(key.toLowerCase(), () => node.dictionaryValue as String?);
    }
    return LocalizedValues(values);
  }

  /// 言語コード(小文字) → 値(未入力は空文字)。
  Map<String, String> get values => _values;

  /// 未入力(空・空白だけ)か。
  static bool isBlank(String? value) => value == null || value.trim().isEmpty;

  /// いずれかの言語に未入力でない値があるか(名称の必須の検証)。
  bool get hasAnyValue => _values.values.any((v) => !isBlank(v));

  /// 言語の値(その言語だけ。代替しない)。未入力は null。
  String? exact(String languageCode) {
    final v = _values[languageCode.toLowerCase()];
    return isBlank(v) ? null : v;
  }

  /// 表示用の値。指定の言語 → [fallbackLanguage] → 入っている言語の先頭。
  /// どれも未入力なら空文字。
  String resolve(String languageCode, {String fallbackLanguage = 'ja'}) {
    final requested = exact(languageCode);
    if (requested != null) return requested;
    final fallback = exact(fallbackLanguage);
    if (fallback != null) return fallback;
    for (final v in _values.values) {
      if (!isBlank(v)) return v;
    }
    return '';
  }

  /// エラー追跡用(機能の復元には使わない)。
  Map<String, Object?> toJson() => {'values': _values};

  @override
  String toString() => 'LocalizedValues($_values)';
}
