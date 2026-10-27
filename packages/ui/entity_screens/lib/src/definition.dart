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

  /// JSON にできる条件(演算子 + 値。値は文字列の JSON)。入力は演算子をリストから選び、値は手で入力する。
  condition,
}

/// 項目の定義。表示名は含めず([EntityLabels]が言語ごとに返す)、キーと種類だけを持つ。
///
/// キーは model_providers の各モデルパッケージ のビュー(DB の列)に合わせる。
class FieldDefinition {
  const FieldDefinition({
    required this.key,
    this.kind = FieldKind.text,
    this.required = true,
    this.options = const [],
    this.reference,
    this.picker = false,
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

  /// [FieldKind.reference] を、参照先の台帳の画面で選んで戻る方式にする(リストの代わりに選択ボタン)。
  /// 参照先が多い・検索して選びたいときに使う。選択は呼び出し側([EntityEditPage.onPick])が行う。
  final bool picker;

  Map<String, Object?> toJson() => {
    'key': key,
    'kind': kind.name,
    'required': required,
    'options': options,
    'reference': reference,
    'picker': picker,
  };
}

/// 他の実体から、この実体の1件を参照している一覧(例: 力量を持つ作業者)。
/// 読み取り専用で、編集画面の下に出す。
class ReverseList {
  const ReverseList({required this.entity, required this.field});

  /// 参照している側の実体のキー。
  final String entity;

  /// [entity] の中で、この実体を参照している項目のキー。
  final String field;

  Map<String, Object?> toJson() => {'entity': entity, 'field': field};
}

/// 実体(台帳の1種類)の定義。
class EntityDefinition {
  const EntityDefinition({
    required this.key,
    required this.fields,
    this.owner,
    this.isTree = false,
    this.uniqueKeys = const [],
    this.reverseLists = const [],
  }) : assert(!(isTree && owner != null), 'ツリーと所有は同時に持てない');

  /// 実体のキー(全体で一意。画面のパスにも使う)。
  final String key;
  final List<FieldDefinition> fields;

  /// 所有する親の実体キー。あれば、親の編集画面の下に表示する子の台帳になる。
  final String? owner;

  /// 同じ実体の中で親子(ツリー)を持つか。
  final bool isTree;

  /// 重複を認めない項目の組(DB の一意制約・画面案の「重複不可」)。
  /// 範囲は、所有される実体なら同じ親の中、それ以外は全体。空の値は対象にしない。
  final List<List<String>> uniqueKeys;

  /// この実体を参照している一覧(編集画面の下に読み取り専用で出す)。
  final List<ReverseList> reverseLists;

  /// 親の編集画面の下に表示する子の台帳か。
  bool get isChild => owner != null;

  FieldDefinition? field(String key) {
    for (final f in fields) {
      if (f.key == key) return f;
    }
    return null;
  }

  /// 名称(`name`)を持たず、選択方式の参照([FieldDefinition.picker])で名称を借りている項目
  /// (例: 設備の名称は、品目の名称)。無ければ null。
  FieldDefinition? get nameReference {
    if (field('name') != null) return null;
    for (final f in fields) {
      if (f.kind == FieldKind.reference && f.picker) return f;
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
    'uniqueKeys': uniqueKeys,
    'reverseLists': [for (final r in reverseLists) r.toJson()],
    'fields': [for (final f in fields) f.toJson()],
  };
}

/// 表示名を言語ごとに返す。多言語(slang)で作った文字列を橋渡しする。
abstract interface class EntityLabels {
  /// 実体の名称。
  String entity(String entityKey);

  /// 項目の名称。
  String field(String entityKey, String fieldKey);

  /// 参照している一覧([ReverseList])の見出し(例: 力量の「保持者」)。
  String reverse(String entityKey, String reverseEntityKey);
}
