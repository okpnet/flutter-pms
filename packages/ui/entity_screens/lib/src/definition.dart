/// 項目の種類。入力の部品と検証が決まる。
enum FieldKind {
  /// 1行の文字。
  text,

  /// 複数行の文字。
  multiline,

  /// 数値(整数・小数)。
  number,

  /// 日付(yyyy-MM-dd)。
  date,

  /// 決められた選択肢から1つ(値は選択肢の文字列)。
  choice,

  /// ほかの実体の1件(値はその実体の id)。
  reference,
}

/// 項目の定義。表示名は含めず([EntityLabels]が言語ごとに返す)、キーと種類だけを持つ。
///
/// キーは graphql_provider_lib のビュー(DB の列)に合わせる。
class FieldDefinition {
  const FieldDefinition({
    required this.key,
    this.kind = FieldKind.text,
    this.required = true,
    this.options = const [],
    this.reference,
  }) : assert(
         kind != FieldKind.reference || reference != null,
         'reference には参照先の実体キーが必要',
       );

  final String key;
  final FieldKind kind;
  final bool required;

  /// [FieldKind.choice] の選択肢。
  final List<String> options;

  /// [FieldKind.reference] の参照先の実体キー。
  final String? reference;

  Map<String, Object?> toJson() => {
    'key': key,
    'kind': kind.name,
    'required': required,
    'options': options,
    'reference': reference,
  };
}

/// 実体(台帳の1種類)の定義。
class EntityDefinition {
  const EntityDefinition({
    required this.key,
    required this.fields,
    this.owner,
    this.isTree = false,
  }) : assert(!(isTree && owner != null), 'ツリーと所有は同時に持てない');

  /// 実体のキー(全体で一意。画面のパスにも使う)。
  final String key;
  final List<FieldDefinition> fields;

  /// 所有する親の実体キー。あれば、親の編集画面の下に表示する子の台帳になる。
  final String? owner;

  /// 同じ実体の中で親子(ツリー)を持つか。
  final bool isTree;

  /// 親の編集画面の下に表示する子の台帳か。
  bool get isChild => owner != null;

  FieldDefinition? field(String key) {
    for (final f in fields) {
      if (f.key == key) return f;
    }
    return null;
  }

  /// 他の実体から選ぶときの表示に使う項目。
  /// 「コード(code・no)+ 名称(name)」があればそれ、なければ先頭から文字・数値の最大2つ。
  List<FieldDefinition> get displayFields {
    final texts = [
      for (final f in fields)
        if (f.kind == FieldKind.text || f.kind == FieldKind.number) f,
    ];
    final name = texts.where((f) => f.key == 'name').firstOrNull;
    if (name != null) {
      final code = texts
          .where((f) => f.key == 'code' || f.key == 'no')
          .firstOrNull;
      return [?code, name];
    }
    return texts.take(2).toList();
  }

  Map<String, Object?> toJson() => {
    'key': key,
    'owner': owner,
    'isTree': isTree,
    'fields': [for (final f in fields) f.toJson()],
  };
}

/// 表示名を言語ごとに返す。多言語(slang)で作った文字列を橋渡しする。
abstract interface class EntityLabels {
  /// 実体の名称。
  String entity(String entityKey);

  /// 項目の名称。
  String field(String entityKey, String fieldKey);
}
