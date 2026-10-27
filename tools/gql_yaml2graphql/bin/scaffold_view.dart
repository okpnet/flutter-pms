// 本家スキーマのテーブルから、view.yamlの雛形(~Pageと~PageEdit)を出力するツール(要件0055)。
//
// 既存のviews(packages/model_providers/*/gql/)の慣習に沿って、列・呼称(labels)・共有テキスト・参照(他の画面の
// ReadFields/Pageを`<<`で取り込む)を組み立てる。出力は雛形であり、列の過不足・参照先は、
// 出力後にレビューして直す。生成後は`dart run tools/gql_yaml2graphql/bin/gql_yaml2graphql.dart --root packages/model_providers`でスキーマとの整合を確認する。
//
// 使い方(リポジトリのルートで実行):
//   dart run tools/gql_yaml2graphql/bin/scaffold_view.dart <テーブル>:<名前>[:<親を指す列>][:tree] ...
//     <名前>      PascalCase(出力は<名前>Pageと<名前>PageEdit)
//     <親を指す列> 明細の一覧(requiredWhereに親の列を加える)。例: trans_order_detail:OrderDetail:trans_order_id
//   --root <DIR>      既定 packages/model_providers(参照先の探索に使う。各パッケージの gql/*.yaml)
//   --schema <FILE>   既定 .schema/schema.graphql
//   --no-anchor       ~Pageにアンカー(&<名前>Page)を付けない

import 'dart:io';

import 'package:gql_yaml2graphql/src/names.dart';
import 'package:gql_yaml2graphql/src/schema_index.dart';
import 'package:gql_yaml2graphql/src/root_runner.dart';
import 'package:gql_yaml2graphql/src/view_sources.dart';
import 'package:gql_yaml2graphql/src/yaml_loader.dart';

const _audit = {
  'nodeId',
  'revision',
  'symbol',
  'remarks',
  'updateAt',
  'updateUserId',
  'updateUserHistoryId',
  'remove',
};

void main(List<String> args) {
  String? opt(String name) {
    final i = args.indexOf(name);
    return i >= 0 && i + 1 < args.length ? args[i + 1] : null;
  }

  final rootDir = opt('--root') ?? 'packages/model_providers';
  final schemaPath = opt('--schema') ?? '.schema/schema.graphql';
  final anchorOnPage = !args.contains('--no-anchor');
  final specs = [
    for (var i = 0; i < args.length; i++)
      if (!args[i].startsWith('--') && (i == 0 || !const {'--root', '--schema'}.contains(args[i - 1]))) args[i],
  ];
  if (specs.isEmpty) {
    stderr.writeln('使い方: dart run tools/gql_yaml2graphql/bin/scaffold_view.dart <テーブル>:<名前>[:<親を指す列>] ...');
    exit(64);
  }

  final schema = SchemaIndex.load(schemaPath);
  final anchors = _anchorsByTable(rootDir);
  final out = StringBuffer();
  for (final spec in specs) {
    final p = spec.split(':');
    final table = p[0];
    final name = p[1];
    final parent = p.length > 2 && p[2].isNotEmpty && p[2] != 'tree' ? p[2] : null;
    final tree = p.contains('tree');
    out.write(_Scaffold(schema, anchors, table, name, parent, tree, anchorOnPage).build());
  }
  stdout.write(out);
}

/// テーブル -> 参照に使えるアンカー名(ReadFieldsを優先し、無ければアンカー付きの~Page)。
Map<String, String> _anchorsByTable(String rootDir) {
  final combined = combineViewSources(readRootYaml(rootDir));
  final views = loadViewYaml(combined.text);
  final anchored = <String>{
    for (final m in RegExp(r'^(\w+):\s*&(\w+)', multiLine: true).allMatches(combined.text)) m[2]!,
  };
  final byTable = <String, String>{};
  for (final e in views.entries) {
    final node = e.value;
    if (node is! Map || node['kind'] != 'read' || !anchored.contains(e.key)) continue;
    final from = node['from'] as String?;
    if (from == null) continue;
    final cur = byTable[from];
    final isFields = e.key.endsWith('ReadFields');
    if (cur == null || (isFields && !cur.endsWith('ReadFields'))) byTable[from] = e.key;
  }
  return byTable;
}

class _Scaffold {
  _Scaffold(this.schema, this.anchors, this.table, this.name, this.parent, this.tree, this.anchorOnPage)
      : type = schema.typeOfTable(table);

  final SchemaIndex schema;
  final Map<String, String> anchors;
  final String table;
  final String name;
  final String? parent;
  final bool tree;
  final bool anchorOnPage;
  final String type;

  late final Map<String, FieldInfo> fields = schema.objects[type] ?? {};

  bool _isEntity(String typeName) => schema.objects[typeName]?.containsKey('nodeId') ?? false;

  /// 子のレコード数(DBのビュー`v_<親>_<子>_count`、要件0056)の列。親が1行ずつ持つ集計(単数の関連)を、
  /// 全件・有効(removeでない)・無効の件数として取得する。
  List<String> _countColumns() {
    final out = <String>[];
    final parentShort = table.replaceFirst(RegExp(r'^(info|mstr|trans|shared)_'), '');
    for (final f in fields.values) {
      if (f.isList || !RegExp(r'^V\w+Count$').hasMatch(f.typeName)) continue;
      final view = snake(f.typeName);
      final key = RegExp(r'By(\w+)$').firstMatch(f.name)?.group(1);
      if (key == null) continue;
      var child = view.replaceFirst(RegExp(r'^v_'), '').replaceFirst(RegExp(r'_count$'), '');
      if (child.startsWith('${parentShort}_')) child = child.substring(parentShort.length + 1);
      out.addAll([
        '    - name: ${child}_count',
        '      arrayType: toFirstOne',
        '      as: ${child}_count',
        '      using: ${snake(key)}',
        '      from: $view',
        '      pick:',
        '        - all_count',
        '        - enable_count',
        '        - disable_count',
      ]);
    }
    return out;
  }

  /// 列(snake_case) -> その列を参照する単数のリレーション(型名, フィールド名)
  (String, String)? _relationOf(String column) {
    final suffix = 'By${pascal(column)}';
    for (final f in fields.values) {
      if (!f.isList && _isEntity(f.typeName) && f.name.endsWith(suffix) && !f.name.startsWith('history')) {
        return (f.typeName, f.name);
      }
    }
    return null;
  }

  String _tableOfType(String t) => snake(t);

  String _base(String column) {
    var b = column.replaceAll(RegExp(r'_id$'), '');
    b = b.replaceAll(RegExp(r'^(mstr|info|shared|trans)_'), '');
    return b;
  }

  /// 呼称・ラベルの出力名: names/titles は`labels`、その他は`<単数形>Labels`(例: participant_names -> participantNameLabels)。
  String _label(String col) =>
      (col == 'names' || col == 'titles') ? 'labels' : '${camel(_singular(col))}Labels';

  /// テキストの出力名: details は`detailTexts`、その他は`<単数形>Texts`(例: contents -> contentTexts)。
  String _text_(String col) => '${camel(_singular(col))}Texts';

  String _singular(String col) => col.endsWith('s') ? col.substring(0, col.length - 1) : col;

  // 列の一覧を、読み込み用・書き込み用に組み立てる。
  String build() {
    if (!schema.hasObject(type)) {
      return '# $table: 型$typeがスキーマにありません\n\n';
    }
    if (parent != null && !fields.containsKey(camel(parent!))) {
      stderr.writeln('エラー: $tableに親を指す列$parentがありません');
    }
    final pk = snake(schema.primaryKeyField(type)!);
    final keys = _updateKeys(pk);
    final read = <String>['- $pk'];
    final edit = <String>['- $pk'];
    final cols = <(String, bool)>[]; // (列snake, 履歴IDか)
    for (final f in fields.values) {
      if (_audit.contains(f.name)) continue;
      if (f.name == schema.primaryKeyField(type)) continue;
      if (_isEntity(f.typeName) || f.isList || f.typeName.endsWith('Connection')) continue;
      if (schema.hasObject(f.typeName) && f.typeName != 'Interval') continue; // ビューの関連(v_*_descendant)など
      cols.add((snake(f.name), f.name.endsWith('HistoryId')));
    }
    final labelsUsed = <String>{};
    for (final (col, _) in cols) {
      final rel = _relationOf(col);
      final targetTable = rel == null ? null : _tableOfType(rel.$1);
      final isTreeParent = tree && col.startsWith('parent_');
      if (rel != null && !isTreeParent && targetTable == 'shared_appellation') {
        final nm = _label(col);
        read.addAll(_labels(nm, col, edit: false));
        edit.addAll(_labels(nm, col, edit: true));
        labelsUsed.add(col);
      } else if (rel != null && !isTreeParent && targetTable == 'shared_text') {
        final nm = _text_(col);
        read.addAll(_text(nm, col, edit: false));
        edit.addAll(_text(nm, col, edit: true));
        labelsUsed.add(col);
      } else if (rel != null && !isTreeParent && targetTable == 'trans_label') {
        final nm = _label(col);
        read.addAll(_flex(nm, col, 'FlexibleLabelReadFields'));
        edit.addAll(_flex(nm, col, 'FlexibleLabelEditFields', edit: true));
        labelsUsed.add(col);
      } else if (rel != null && !isTreeParent && targetTable == 'trans_text') {
        final nm = _text_(col);
        read.addAll(_flex(nm, col, 'FlexibleTextReadFields'));
        edit.addAll(_flex(nm, col, 'FlexibleTextEditFields', edit: true));
        labelsUsed.add(col);
      } else if (rel != null &&
          !isTreeParent &&
          col != parent &&
          anchors.containsKey(targetTable) &&
          (targetTable!.startsWith('mstr_') ||
              targetTable.startsWith('info_') ||
              targetTable == 'shared_unit' ||
              targetTable == 'trans_approval_pattern')) {
        final anchor = anchors[targetTable]!;
        read.add('- $col');
        read.addAll(_ref(_base(col), col, anchor));
        edit.add('- $col');
        edit.addAll(_ref(_base(col), col, anchor, edit: true));
      } else {
        read.add('- $col');
        edit.add('- $col');
      }
    }
    final b = StringBuffer();
    b.writeln('# $tableの読み込み(scaffold_viewが出力した雛形、要件0055)');
    b.writeln('${name}Page:${anchorOnPage ? ' &${name}Page' : ''}');
    b.writeln('  kind: read');
    b.writeln('  from: $table');
    b.writeln('  filter: true');
    b.writeln('  requiredWhere:');
    b.writeln('    - languageCode');
    if (parent != null) b.writeln('    - $parent');
    b.writeln('  defaultWhere:');
    b.writeln('    - column: remove');
    b.writeln('      operator: =');
    b.writeln('      value: false');
    b.writeln('  columns:');
    for (final l in read) {
      b.writeln('    $l');
    }
    b.writeln('    - symbol');
    b.writeln('    - remarks');
    for (final l in _countColumns()) {
      b.writeln(l);
    }
    b.writeln('    - update_at');
    b.writeln('    - name: update_user');
    b.writeln('      as: update_user');
    b.writeln('      using: [update_user_history_id,update_user_id]');
    b.writeln('      arrayType: toFirstOne');
    b.writeln('      <<: *UpdateStaffReadFields');
    b.writeln();
    b.writeln('# $tableの書き込み');
    b.writeln('${name}PageEdit:');
    b.writeln('  kind: edit');
    b.writeln('  from: $table');
    b.writeln('  requiredWhere:');
    for (final k in keys) {
      b.writeln('    - $k');
    }
    b.writeln('  generateRfe: true');
    b.writeln('  columns:');
    for (final l in edit) {
      b.writeln('    $l');
    }
    b.writeln('    - remarks');
    b.writeln('    - update_user_id');
    b.writeln('    - update_user_history_id');
    b.writeln('    - remove');
    b.writeln();
    return b.toString();
  }

  /// 更新ミューテーションのキー。主キー単独の`update<型>By<主キー>`が無い場合(パーティション等)は、複合のものを使う。
  List<String> _updateKeys(String pk) {
    final single = 'update${type}By${pascal(pk)}';
    if (schema.mutation.containsKey(single)) return [pk];
    for (final name in schema.mutation.keys) {
      if (name.startsWith('${single}And')) {
        return [pk, ...name.substring(single.length + 3).split('And').map(snake)];
      }
    }
    return [pk];
  }

  List<String> _labels(String nm, String col, {required bool edit}) {
    return [
      '- name: $nm',
      if (!edit) '  as: $nm',
      '  arrayType: toFirstOne',
      '  using: $col',
      if (!edit) ...[
        '  pick:',
        '    - name',
        '    - pronunciation',
        '    - nickname',
      ],
      '  <<: *AppellationLabels${edit ? 'Edit' : 'Read'}Fields',
    ].toList();
  }

  List<String> _text(String nm, String col, {required bool edit}) => [
        '- name: $nm',
        if (!edit) '  as: $nm',
        '  arrayType: toFirstOne',
        '  using: $col',
        '  <<: *FixText${edit ? 'Edit' : 'Read'}Fields',
      ].toList();

  List<String> _flex(String nm, String col, String anchor, {bool edit = false}) => [
        '- name: $nm',
        if (!edit) '  as: $nm',
        '  arrayType: toFirstOne',
        '  using: $col',
        '  <<: *$anchor',
      ].toList();

  List<String> _ref(String nm, String col, String anchor, {bool edit = false}) => [
        '- name: ${camel(nm)}',
        '  as: ${camel(nm)}',
        '  arrayType: toFirstOne',
        '  using: $col',
        if (edit) '  editable: false',
        '  <<: *$anchor',
      ].toList();
}
