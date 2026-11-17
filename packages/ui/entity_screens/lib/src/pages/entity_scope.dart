import 'package:flutter/material.dart';
import '../condition.dart';
import 'package:flgtable_lib/flgtable_lib.dart';

import '../catalog.dart';
import '../definition.dart';
import '../file_transfer.dart';
import '../i18n/strings.g.dart';
import '../record.dart';

/// 実体の画面が共通で使うもの(登録簿・表示名・共通の文字列)。
class EntityScope {
  const EntityScope({
    required this.catalog,
    required this.labels,
    required this.strings,
    this.fileTransfer = const UnsupportedEntityFileTransfer(),
  });

  final EntityCatalog catalog;
  final EntityLabels labels;
  final EntityScreenStrings strings;

  /// ファイルの項目([FieldKind.file])の出し入れ。
  final IEntityFileTransfer fileTransfer;

  /// [file] をダウンロードして保存する。成功・失敗は画面下の通知で知らせる(例外は外へ出さない)。
  Future<void> downloadFile(BuildContext context, EntityFile file) async {
    final messenger = ScaffoldMessenger.maybeOf(context);
    try {
      final saved = await fileTransfer.download(file);
      if (saved) {
        messenger?.showSnackBar(
          SnackBar(content: Text(strings.file.downloaded)),
        );
      }
    } catch (_) {
      messenger?.showSnackBar(
        SnackBar(content: Text(strings.file.downloadFailed)),
      );
    }
  }
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
  Future<void> Function(EntityFile file)? onDownload,
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
      // ファイルの列は、ファイル名を押すとダウンロードする(並べ替え・絞り込みはファイル名)
      renderer: f.kind == FieldKind.file && onDownload != null
          ? BuilderCellRenderer<EntityRecord>((context, cell) {
              final file = EntityFile.tryParse(cell.item.valueOf(f.key));
              if (file == null) return const SizedBox.shrink();
              return TextButton(
                key: ValueKey('file:${f.key}:${cell.item.id}'),
                onPressed: () => onDownload(file),
                child: Text(file.label, overflow: TextOverflow.ellipsis),
              );
            })
          : null,
      getter: (r) {
        final value = r.valueOf(f.key);
        if (f.kind == FieldKind.file) {
          return EntityFile.tryParse(value)?.label ?? '';
        }
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
