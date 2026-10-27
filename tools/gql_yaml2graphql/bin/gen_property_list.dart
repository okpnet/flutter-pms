// 生成モデルのプロパティ一覧(CSV)の生成ツール(issue/20261021_001・20261021_002)。
//
// view生成の連携インターフェイスファイルとして、テーブルWidgetの列や編集用ラベルの設計に使う
// プロパティの一覧を doc/contens/property_list.csv に出力する。
//
// 列(ヘッダー行の値):
//   category       lib/src/graphql以下の画面フォルダ名(カテゴリ名)
//   db_table_name  プロパティを持つクラスのDBテーブル名(gql/*.yamlの`from`。無ければスキーマの型名から求める)
//   db_column      DB列名(gql/*.yamlの列。無ければスキーマのフィールド名から求める。関連は結合に使うFK列)
//   class_name     生成モデルのクラス名(lib/src/graphql/<画面>/<画面>_{read,edit,rfe}.graphql.dart(build_runner の後に実行))
//   proerty_name   クラスのプロパティ名(エイリアスがあればエイリアス。ヘッダーの綴りは指示どおり)
//   key_name       lib/src/contents/<画面>_keyname.dart に定義された平坦化キー名(定数のname)
//   type           プロパティの型文字列(生成モデルの宣言のとおり)
//   label          プロパティの日本語名(全量スキーマのDBコメント。無ければ関連先の型のコメント)
//   note           結合先・実フィールド名など、日本語名から推測できない情報
//
// 対象は操作の結果モデル(Query$/Mutation$の入れ子のクラス)。Variables・copyWith・Options等は除く。
// 平坦化キーは、nodes要素を起点にエイリアスを`||`で結んだもの(1対多のnodesは飛ばす)。
// 葉のプロパティのうち、keynameファイルに同名のキーがあるものだけ記載する。
//
// 使い方(リポジトリのルートで実行):
//   dart run tools/gql_yaml2graphql/bin/gen_property_list.dart [--root packages/model_providers] [--schema .schema/schema.graphql] [--out doc/contents/property_list.csv]

import 'dart:io';

import 'package:gql/ast.dart';
import 'package:gql/language.dart';

import 'package:gql_yaml2graphql/src/names.dart';
import 'package:gql_yaml2graphql/src/root_runner.dart';
import 'package:gql_yaml2graphql/src/view_sources.dart';

String _named(TypeNode t) =>
    t is NamedTypeNode ? t.name.value : _named((t as ListTypeNode).type);

String _oneLine(String? s) =>
    (s ?? '').replaceAll(RegExp(r'\s*[\r\n]+\s*'), ' ').trim();

final _boilerplate = RegExp(
  r'^(Reads |A list of |The count of |Information to aid|Reads and enables|Fetches )',
);

String _csv(String s) =>
    (s.contains(',') || s.contains('"') || s.contains('\n'))
    ? '"${s.replaceAll('"', '""')}"'
    : s;

class _Schema {
  _Schema(DocumentNode doc) {
    for (final d in doc.definitions) {
      if (d is ObjectTypeDefinitionNode) objects[d.name.value] = d;
    }
  }

  final objects = <String, ObjectTypeDefinitionNode>{};

  FieldDefinitionNode? field(String type, String name) {
    for (final f in objects[type]?.fields ?? const <FieldDefinitionNode>[]) {
      if (f.name.value == name) return f;
    }
    return null;
  }

  String desc(String type) => _oneLine(objects[type]?.description?.value);
}

/// 生成Dartの結果モデルクラス名 -> (プロパティ名 -> 型文字列)。
Map<String, Map<String, String>> _parseDartClasses(File file) {
  final result = <String, Map<String, String>>{};
  if (!file.existsSync()) return result;
  final classRe = RegExp(r'^class ([A-Za-z0-9_$]+)(?: .*)? \{$');
  final fieldRe = RegExp(r'^final (.+?)\s+([A-Za-z0-9_$]+);$');
  Map<String, String>? current;
  String? pending;
  for (final line in file.readAsLinesSync()) {
    final c = classRe.firstMatch(line);
    if (c != null) {
      final name = c.group(1)!;
      current = (name.startsWith('Query\$') || name.startsWith('Mutation\$'))
          ? (result[name] = {})
          : null;
      pending = null;
      continue;
    }
    if (line == '}') {
      current = null;
      pending = null;
      continue;
    }
    if (current == null) continue;
    // 長い宣言は複数行に折り返されるため、`;`まで連結してから解釈する。
    if (pending != null) {
      pending = '$pending ${line.trim()}';
    } else if (line.startsWith('  final ')) {
      pending = line.trim();
    } else {
      continue;
    }
    if (pending.endsWith(';')) {
      final m = fieldRe.firstMatch(pending);
      if (m != null) current[m.group(2)!] = m.group(1)!;
      pending = null;
    }
  }
  return result;
}

List<FieldNode> _fields(
  SelectionSetNode sel,
  Map<String, FragmentDefinitionNode> fragments,
) => [
  for (final s in sel.selections)
    if (s is FieldNode)
      s
    else if (s is InlineFragmentNode)
      ..._fields(s.selectionSet, fragments)
    else if (s is FragmentSpreadNode)
      ..._fields(fragments[s.name.value]!.selectionSet, fragments),
];

class _Row {
  _Row(
    this.category,
    this.table,
    this.column,
    this.cls,
    this.prop,
    this.key,
    this.type,
    this.nameJa,
    this.comment,
  );
  final String category, table, column, cls, prop, key, type, nameJa, comment;
}

/// gql/*.yamlのトップノード(read: `~Page`、edit・rfe: `~PageEdit`)を画面フォルダ名で探す。
Map<String, dynamic>? _topNode(Map<String, dynamic> yaml, String dir, String kind) {
  final suffix = kind == 'read' ? 'Page' : 'PageEdit';
  for (final e in yaml.entries) {
    if (e.value is! Map) continue;
    if (!isGenerationTarget(e.key) || !e.key.endsWith(suffix)) continue;
    if (kind != 'read' && !e.key.endsWith('PageEdit')) continue;
    if (directoryOf(e.key) == dir) return e.value as Map<String, dynamic>;
  }
  return null;
}

/// 列の定義の名前(文字列なら列名、Mapならname)。
String? _yamlName(dynamic c) =>
    c is String ? c : (c is Map ? c['name']?.toString() : null);

/// 出力名(Mapのas、無ければname)。
String? _yamlAs(dynamic c) =>
    c is Map ? (c['as'] ?? c['name'])?.toString() : (c is String ? c : null);

/// 生成物のエイリアスに対応する列の定義を探す。
dynamic _matchColumn(List? columns, String alias) {
  for (final c in columns ?? const []) {
    final out = _yamlAs(c);
    final name = _yamlName(c);
    if (out == alias || (out != null && camel(out) == alias) || (name != null && camel(name) == alias)) {
      return c;
    }
  }
  return null;
}

/// 関連フィールド名の`By`以降から結合に使うFK列を求める(例: infoAddressByInfoAddressId -> info_address_id)。
String _fkFromFieldName(String field) {
  final i = field.lastIndexOf('By');
  if (i < 0) return '';
  return field
      .substring(i + 2)
      .split('And')
      .map((p) => snake(lowerFirst(p)))
      .join(';');
}

class _Collector {
  _Collector(
    this.schema,
    this.category,
    this.dart,
    this.keys,
    this.rows,
    this.warnings,
    this.topColumns,
    this.topFrom,
  );
  final _Schema schema;
  final String category;
  final Map<String, Map<String, String>> dart;
  final Set<String> keys;
  final List<_Row> rows;
  final List<String> warnings;

  /// gql/*.yamlのトップノードの`columns`と`from`(見つからなければnull)。
  final List? topColumns;
  final String? topFrom;

  /// スキーマの型名からDBテーブル名を求める。テーブルでない型(Query・Mutation・Payload)は空。
  String _tableOf(String type) {
    if (type == 'Query' || type == 'Mutation' || type.endsWith('Payload')) return '';
    if (type.endsWith('Connection')) {
      final nodes = schema.field(type, 'nodes');
      return nodes == null ? '' : _tableOf(_named(nodes.type));
    }
    return snake(type);
  }

  /// [keyPrefix]: nodes要素を起点にしたエイリアスの経路(nodesより上は null)。
  /// [yamlColumns]: このクラスに対応するgql/*.yamlの`columns`、[table]: そのDBテーブル名。
  void walk(
    String cls,
    String parentType,
    List<FieldNode> fields,
    Map<String, FragmentDefinitionNode> fragments,
    List<String>? keyPrefix,
    List? yamlColumns,
    String table,
  ) {
    final props = dart[cls];
    if (props == null) {
      warnings.add('$category: 生成モデルに$clsが無い');
    }
    final isRootLike =
        parentType == 'Query' || parentType == 'Mutation' || parentType.endsWith('Payload');
    for (final f in fields) {
      final real = f.name.value;
      if (real == '__typename') continue;
      final alias = f.alias?.value ?? real;
      final def = schema.field(parentType, real);
      if (def == null) {
        warnings.add('$category: $parentType.$real がスキーマに無い');
        continue;
      }
      final childType = _named(def.type);
      final isObject = f.selectionSet != null;
      final type = (props?[alias] ?? '').replaceAll(RegExp(r'\s+'), '');
      if (props != null && type.isEmpty) {
        warnings.add('$category: $cls.$alias の型が生成モデルに無い');
      }

      // 平坦化キー(葉だけ)。
      var key = '';
      if (!isObject && keyPrefix != null) {
        final candidate = [...keyPrefix, alias].join('||');
        if (keys.contains(candidate)) key = candidate;
      }

      // PostGraphileが自動付与する英語の定型文は日本語名として使わない。
      var nameJa = _oneLine(def.description?.value);
      if (_boilerplate.hasMatch(nameJa)) nameJa = '';
      if (nameJa.isEmpty && isObject) {
        nameJa = schema.desc(
          childType.endsWith('Connection')
              ? _named(schema.field(childType, 'nodes')!.type)
              : childType,
        );
      }

      final notes = <String>[];
      if (alias != real) notes.add('実フィールド: $real');
      if (isObject && childType != 'PageInfo') {
        final many = childType.endsWith('Connection');
        final target = many
            ? _named(schema.field(childType, 'nodes')!.type)
            : childType;
        final td = schema.desc(target);
        notes.add(
          '${many ? '1対多' : '結合'}: $target${td.isEmpty ? '' : '($td)'}',
        );
        final args = f.arguments.map((a) => a.name.value).toList();
        if (args.isNotEmpty) notes.add('引数: ${args.join(',')}');
      }

      // gql/*.yamlの列(Query・Mutation・Payload直下はトップノード、nodesは親のまま)。
      final isNodes = real == 'nodes' && parentType.endsWith('Connection');
      final entry = (isRootLike || isNodes) ? null : _matchColumn(yamlColumns, alias);

      // DB列名: 関連はFK列、葉は列名。Connection・Payload・Queryの直接のプロパティは対象外。
      var column = '';
      if (table.isNotEmpty && !parentType.endsWith('Connection') && !isRootLike) {
        if (entry != null) {
          final using = entry is Map ? entry['using'] : null;
          column = isObject
              ? (using is List ? using.join(';') : (using?.toString() ?? _yamlName(entry) ?? ''))
              : (_yamlName(entry) ?? '');
        } else {
          column = isObject ? _fkFromFieldName(real) : snake(real);
        }
      }
      rows.add(_Row(category, table, column, cls, alias, key, type, nameJa, notes.join(' / ')));

      if (isObject) {
        if (childType == 'PageInfo') continue;
        // nodes要素から平坦化キーが始まる。nodesより下の1対多のnodesは経路に含めない。
        List<String>? next;
        if (keyPrefix == null) {
          next = isNodes ? <String>[] : null;
        } else {
          next = isNodes ? keyPrefix : [...keyPrefix, alias];
        }
        final nextType = isNodes ? _named(def.type) : childType;
        List? nextColumns;
        var nextTable = _tableOf(nextType);
        if (isRootLike) {
          // Query・Mutation・Payload直下の子は、トップノードの列とfromに対応する。
          nextColumns = topColumns;
          if (topFrom != null && nextTable.isNotEmpty) nextTable = topFrom!;
        } else if (isNodes) {
          nextColumns = yamlColumns;
          nextTable = table;
        } else {
          nextColumns = entry is Map ? entry['columns'] as List? : null;
          final from = entry is Map ? entry['from']?.toString() : null;
          if (from != null && nextTable.isNotEmpty) nextTable = from;
        }
        walk(
          '$cls\$$alias',
          nextType,
          _fields(f.selectionSet!, fragments),
          fragments,
          next,
          nextColumns,
          nextTable,
        );
      }
    }
  }
}

void main(List<String> args) {
  String? opt(String name) {
    final i = args.indexOf(name);
    return i >= 0 && i + 1 < args.length ? args[i + 1] : null;
  }

  final schemaPath = opt('--schema') ?? '.schema/schema.graphql';
  final root = opt('--root') ?? 'packages/model_providers';
  final outPath = opt('--out') ?? 'doc/contents/property_list.csv';

  stdout.writeln('gql/*.yaml解析中: $root');
  final yaml = combineViewSources(readRootYaml(root)).load();
  stdout.writeln('スキーマ解析中: $schemaPath');
  final schema = _Schema(parseString(File(schemaPath).readAsStringSync()));

  final rows = <_Row>[];
  final warnings = <String>[];
  final packages = Directory(root)
      .listSync()
      .whereType<Directory>()
      .where((d) => Directory('${d.path}/lib/src/graphql').existsSync())
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));
  for (final pkg in packages) {
    final graphqlDir = '${pkg.path}/lib/src/graphql';
    final dirs = Directory(graphqlDir)
        .listSync()
        .whereType<Directory>()
        .map((d) => d.uri.pathSegments.where((s) => s.isNotEmpty).last)
        .toList()
      ..sort();
    for (final dir in dirs) {
      final keynameFile = File('${pkg.path}/lib/src/contents/${dir}_keyname.dart');
      final keys = keynameFile.existsSync()
          ? RegExp(r"'([A-Za-z0-9_|]+)',\s*GraphQLTypeKind")
              .allMatches(keynameFile.readAsStringSync())
              .map((m) => m.group(1)!)
              .toSet()
          : <String>{};
      for (final kind in const ['read', 'edit', 'rfe']) {
        final gql = File('$graphqlDir/$dir/${dir}_$kind.graphql');
        if (!gql.existsSync()) continue;
        final dartFile = File('$graphqlDir/$dir/${dir}_$kind.graphql.dart');
        if (!dartFile.existsSync()) {
          warnings.add('$dir: ${dir}_$kind.graphql.dart が無い(melos run gql:build:runner を先に実行)');
          continue;
        }
        final dart = _parseDartClasses(dartFile);
        final doc = parseString(gql.readAsStringSync(), url: gql.path);
        final fragments = {
          for (final f in doc.definitions.whereType<FragmentDefinitionNode>())
            f.name.value: f,
        };
        final top = _topNode(yaml, dir, kind);
        if (top == null) warnings.add('$dir: gql/*.yamlに$kindのトップノードが無い');
        final collector = _Collector(
          schema,
          dir,
          dart,
          keys,
          rows,
          warnings,
          top?['columns'] as List?,
          top?['from']?.toString(),
        );
        for (final op in doc.definitions.whereType<OperationDefinitionNode>()) {
          final isQuery = op.type == OperationType.query;
          final root = isQuery ? 'Query' : 'Mutation';
          collector.walk(
            '$root\$${op.name!.value}',
            root,
            _fields(op.selectionSet, fragments),
            fragments,
            null,
            null,
            '',
          );
        }
      }
    }
  }

  final b = StringBuffer('﻿')
    ..write(
      'category,db_table_name,db_column,class_name,proerty_name,key_name,type,label,note\r\n',
    );
  for (final r in rows) {
    b.write(
      [r.category, r.table, r.column, r.cls, r.prop, r.key, r.type, r.nameJa, r.comment]
          .map(_csv)
          .join(','),
    );
    b.write('\r\n');
  }
  File(outPath)
    ..parent.createSync(recursive: true)
    ..writeAsStringSync(b.toString());
  stdout.writeln('${rows.length} rows -> $outPath');
  if (warnings.isNotEmpty) {
    stdout.writeln('警告 ${warnings.length}件:');
    for (final w in warnings.take(40)) {
      stdout.writeln('  $w');
    }
  }
}
