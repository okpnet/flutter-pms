import '../condition.dart';
import 'package:flgtable_lib/flgtable_lib.dart';

import '../catalog.dart';
import '../definition.dart';
import '../i18n/strings.g.dart';
import '../record.dart';

/// 実体の画面が共通で使うもの(登録簿・表示名・共通の文字列)。
class EntityScope {
  const EntityScope({
    required this.catalog,
    required this.labels,
    required this.strings,
  });

  final EntityCatalog catalog;
  final EntityLabels labels;
  final EntityScreenStrings strings;
}

/// 参照項目の id → 表示名。項目のキーごとに持つ。
typedef ReferenceNames = Map<String, Map<String, String>>;

/// 定義の参照項目について、参照先の選択肢を読み込む。
Future<Map<String, List<EntityOption>>> loadReferenceOptions(
  EntityCatalog catalog,
  EntityDefinition definition,
) async => {
  for (final f in definition.fields)
    if (f.kind == FieldKind.reference)
      f.key: await catalog.options(f.reference!),
};

ReferenceNames namesOf(Map<String, List<EntityOption>> options) => {
  for (final e in options.entries)
    e.key: {for (final o in e.value) o.id: o.label},
};

/// 台帳の列。参照は表示名、それ以外は値のまま。
List<ColumnDefinition<EntityRecord>> columnsOf(
  EntityDefinition definition,
  EntityLabels labels,
  ReferenceNames names, {
  String yes = 'はい',
  String no = 'いいえ',
}) => [
  for (final f in definition.fields)
    ColumnDefinition<EntityRecord>(
      key: f.key,
      label: labels.field(definition.key, f.key),
      readOnly: f.readOnly,
      type: switch (f.kind) {
        FieldKind.number => ColumnType.number,
        FieldKind.date => ColumnType.time,
        _ => ColumnType.string,
      },
      getter: (r) {
        final value = r.valueOf(f.key);
        // 別の真偽(トグル)がオンで無効になっている項目は、定義した文言(f_<キー>__off)を出す
        final off = definition.fields.any(
          (o) =>
              o.kind == FieldKind.flag &&
              o.disables == f.key &&
              r.valueOf(o.key) == flagOn,
        );
        if (off) {
          final text = labels.field(definition.key, '${f.key}__off');
          if (text != '${f.key}__off') return text;
        }
        if (f.kind == FieldKind.reference) {
          return names[f.key]?[value] ?? value;
        }
        if (f.kind == FieldKind.flag) return value == flagOn ? yes : no;
        if (f.kind == FieldKind.condition && value.isNotEmpty) {
          return ConditionValue.displayOf(value);
        }
        return value;
      },
    ),
];
