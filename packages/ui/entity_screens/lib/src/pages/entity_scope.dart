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
  ReferenceNames names,
) => [
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
        if (f.kind == FieldKind.reference) {
          return names[f.key]?[value] ?? value;
        }
        if (f.kind == FieldKind.condition && value.isNotEmpty) {
          return ConditionValue.displayOf(value);
        }
        return value;
      },
    ),
];
