// 本家スキーマ(.schema/schema.graphql)の索引。関連の向き・フィールド名・型を求める。

import 'dart:io';

import 'package:gql/ast.dart';
import 'package:gql/language.dart';

import 'names.dart';



String namedType(TypeNode t) =>
    t is NamedTypeNode ? t.name.value : namedType((t as ListTypeNode).type);

class FieldInfo {
  FieldInfo(this.name, this.typeName, this.isList, this.args, this.typeSource, this.deprecated);
  final String name;
  final String typeName;
  final bool isList;
  final Map<String, String> args; // 引数名 -> 型(文字列)
  final String typeSource;
  final bool deprecated;
}

class RootConnection {
  RootConnection(this.field, this.connectionType, this.filterType, this.orderByType);
  final String field;
  final String connectionType;
  final String? filterType;
  final String orderByType;
}

class SchemaIndex {
  SchemaIndex._(this.objects, this.inputs, this.connectionNodeType, this.query, this.enumValues, this.mutation);

  final Map<String, Set<String>> enumValues;
  final Map<String, FieldInfo> mutation;

  final Map<String, Map<String, FieldInfo>> objects;
  final Map<String, Map<String, FieldInfo>> inputs;
  final Map<String, String> connectionNodeType; // XxxConnection -> Xxx
  final Map<String, FieldInfo> query;

  static SchemaIndex load(String path) =>
      parse(File(path).readAsStringSync());

  static SchemaIndex parse(String sdl) {
    final doc = parseString(sdl);
    final objects = <String, Map<String, FieldInfo>>{};
    final inputs = <String, Map<String, FieldInfo>>{};
    final enums = <String, Set<String>>{};
    for (final d in doc.definitions) {
      if (d is EnumTypeDefinitionNode) {
        enums[d.name.value] = {for (final v in d.values) v.name.value};
      }
      if (d is ObjectTypeDefinitionNode) {
        objects[d.name.value] = {for (final f in d.fields) f.name.value: _info(f)};
      } else if (d is InputObjectTypeDefinitionNode) {
        inputs[d.name.value] = {
          for (final f in d.fields)
            f.name.value: FieldInfo(f.name.value, namedType(f.type), f.type is ListTypeNode,
                const {}, _typeSrc(f.type), false),
        };
      }
    }
    final conn = <String, String>{};
    for (final e in objects.entries) {
      final nodes = e.value['nodes'];
      if (e.key.endsWith('Connection') && nodes != null) conn[e.key] = nodes.typeName;
    }
    return SchemaIndex._(objects, inputs, conn, objects['Query'] ?? {}, enums, objects['Mutation'] ?? {});
  }

  static FieldInfo _info(FieldDefinitionNode f) => FieldInfo(
        f.name.value,
        namedType(f.type),
        f.type is ListTypeNode,
        {for (final a in f.args) a.name.value: _typeSrc(a.type)},
        _typeSrc(f.type),
        f.directives.any((d) => d.name.value == 'deprecated'),
      );

  static String _typeSrc(TypeNode t) {
    if (t is NamedTypeNode) return t.name.value + (t.isNonNull ? '!' : '');
    final l = t as ListTypeNode;
    return '[${_typeSrc(l.type)}]${l.isNonNull ? '!' : ''}';
  }

  /// テーブル名 -> オブジェクト型名。PostGraphileは単数形にする(shared_appellations -> SharedAppellation)。
  String typeOfTable(String table) {
    final p = table.split('_').map((w) => w.isEmpty ? w : w[0].toUpperCase() + w.substring(1)).join();
    final cands = <String>[
      p,
      if (p.endsWith('ies')) p.substring(0, p.length - 3) + 'y',
      if (p.endsWith('ses') || p.endsWith('xes')) p.substring(0, p.length - 2),
      if (p.endsWith('s')) p.substring(0, p.length - 1),
    ];
    for (final c in cands) {
      if (objects.containsKey(c)) return c;
    }
    return p;
  }

  /// 主キー(の先頭列)のフィールド名。nodeIdの次のスカラー列とみなす。
  String? primaryKeyField(String type) {
    final fs = objects[type];
    if (fs == null) return null;
    for (final f in fs.values) {
      if (f.name == 'nodeId') continue;
      return f.name;
    }
    return null;
  }

  /// オブジェクト型の列(Interval等)を、スカラーの構成値すべてを選択する形に展開する。
  List<String> expandObjectColumn(String column, String type) => [
        '$column {',
        for (final f in objects[type]!.values)
          if (f.name != 'nodeId' && !objects.containsKey(f.typeName)) '  ${f.name}',
        '}',
      ];

  /// 型`type`が、言語コード(shared_language_code)へのFKを持つ場合、その列のフィールド名。
  String? languageForeignKey(String type) {
    final cand = singleFields(type, 'SharedLanguageCode');
    if (cand.length != 1) return null;
    return lowerFirst(cand.single.name.split('By').last);
  }

  /// 型`type`のコネクションが、並び順`value`(例: SEQUENCE_ASC)を持つか。
  bool hasOrderBy(String type, String value) {
    final conn = rootConnection(type);
    if (conn == null) return false;
    return enumValues[conn.orderByType]?.contains(value) ?? false;
  }

  bool hasObject(String type) => objects.containsKey(type);

  FieldInfo? field(String type, String name) => objects[type]?[name];

  /// 型`type`のレコード一覧を返すQueryのルート(`allXxxs`)。
  RootConnection? rootConnection(String type) {
    for (final f in query.values) {
      if (!f.name.startsWith('all')) continue;
      if (connectionNodeType[f.typeName] == type) {
        final filter = f.args['filter'];
        final orderBy = f.args['orderBy'] ?? '';
        return RootConnection(
          f.name,
          f.typeName,
          filter?.replaceAll('!', ''),
          orderBy.replaceAll(RegExp(r'[\[\]!]'), ''),
        );
      }
    }
    return null;
  }

  /// 親の型`parent`から、型`child`へ辿るフィールド(単数)。
  List<FieldInfo> singleFields(String parent, String child) => [
        for (final f in objects[parent]?.values ?? const <FieldInfo>[])
          if (f.typeName == child && !f.isList) f,
      ];

  /// 親の型`parent`から、型`child`のコネクションへ辿るフィールド。
  List<FieldInfo> connectionFields(String parent, String child) => [
        for (final f in objects[parent]?.values ?? const <FieldInfo>[])
          if (connectionNodeType[f.typeName] == child) f,
      ];
}
