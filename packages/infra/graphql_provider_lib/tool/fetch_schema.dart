// 全量スキーマの取得・比較ツール(CLAUDE.md 4-1節、要件0026・0049)。
//
// PostGraphileへ標準のイントロスペクションクエリを送り、結果をSDLへ変換して
// source/schema.full.graphqlと型単位で比較する(説明文を除き、フィールド・引数・型を正規化)。
// 差分があれば置き換える。Node.js(get-graphql-schema)が無い環境でも動く。
// 置き換えた後は tool/prune_schema.dart → build_runner の順で実行する(CLAUDE.md 4-2・4-3節)。
//
// 使い方(パッケージのルートで実行):
//   dart run tool/fetch_schema.dart [出力先]
//   既定の出力先: source/schema.full.graphql
//   接続先は_endpointsの順に試し、すべて接続できなければ終了コード1で中止する。

import 'dart:convert';
import 'dart:io';

import 'package:gql/ast.dart';
import 'package:gql/language.dart';

const _endpoints = [
  'http://192.168.1.100:5000/graphql',
  'http://192.168.9.245:5000/graphql', // 要件0049: 上記に接続できない場合
];

const _typeRef =
    'kind name ofType { kind name ofType { kind name ofType { kind name ofType { '
    'kind name ofType { kind name ofType { kind name ofType { kind name } } } } } } }';
const _inputValue = 'name description type { $_typeRef } defaultValue';
const _introspection =
    'query IntrospectionQuery { __schema { queryType { name } mutationType { name } '
    'subscriptionType { name } types { kind name description '
    'fields(includeDeprecated: true) { name description args { $_inputValue } '
    'type { $_typeRef } isDeprecated deprecationReason } inputFields { $_inputValue } '
    'interfaces { $_typeRef } enumValues(includeDeprecated: true) { name description '
    'isDeprecated deprecationReason } possibleTypes { $_typeRef } } } }';

Future<Map?> _fetch(String url) async {
  final client = HttpClient()..connectionTimeout = const Duration(seconds: 10);
  try {
    final req = await client.postUrl(Uri.parse(url));
    req.headers.contentType = ContentType.json;
    req.write(jsonEncode({'query': _introspection}));
    final res = await req.close().timeout(const Duration(minutes: 5));
    final body = await res.transform(utf8.decoder).join();
    if (res.statusCode != 200) {
      stderr.writeln('$url: HTTP ${res.statusCode}');
      return null;
    }
    return jsonDecode(body) as Map;
  } catch (e) {
    stderr.writeln('$url: 接続できません ($e)');
    return null;
  } finally {
    client.close(force: true);
  }
}


String typeRef(Map t) {
  switch (t['kind']) {
    case 'NON_NULL':
      return '${typeRef(t['ofType'])}!';
    case 'LIST':
      return '[${typeRef(t['ofType'])}]';
    default:
      return t['name'] as String;
  }
}

String desc(String? d, String indent) {
  if (d == null || d.isEmpty) return '';
  final body = d.replaceAll('"""', r'\"""');
  return '$indent"""\n${body.split('\n').map((l) => '$indent$l').join('\n')}\n$indent"""\n';
}

String deprecated(Map f) {
  if (f['isDeprecated'] != true) return '';
  final r = f['deprecationReason'];
  return r == null ? ' @deprecated' : ' @deprecated(reason: ${jsonEncode(r)})';
}

String args(List a) {
  if (a.isEmpty) return '';
  final parts = a.map((x) {
    final dv = x['defaultValue'];
    return '${desc(x['description'], '    ')}    ${x['name']}: ${typeRef(x['type'])}${dv == null ? '' : ' = $dv'}';
  });
  return '(\n${parts.join('\n')}\n  )';
}

String toSdl(Map schema) {
  final b = StringBuffer();
  final q = schema['queryType']?['name'];
  final m = schema['mutationType']?['name'];
  final s = schema['subscriptionType']?['name'];
  b.writeln('schema {');
  if (q != null) b.writeln('  query: $q');
  if (m != null) b.writeln('  mutation: $m');
  if (s != null) b.writeln('  subscription: $s');
  b.writeln('}\n');
  const builtin = {'String', 'Int', 'Float', 'Boolean', 'ID'};
  for (final t in (schema['types'] as List).cast<Map>()) {
    final name = t['name'] as String;
    if (name.startsWith('__') || builtin.contains(name)) continue;
    b.write(desc(t['description'], ''));
    switch (t['kind']) {
      case 'SCALAR':
        b.writeln('scalar $name\n');
      case 'ENUM':
        b.writeln('enum $name {');
        for (final v in (t['enumValues'] as List).cast<Map>()) {
          b.write(desc(v['description'], '  '));
          b.writeln('  ${v['name']}${deprecated(v)}');
        }
        b.writeln('}\n');
      case 'UNION':
        b.writeln('union $name = ${(t['possibleTypes'] as List).map((p) => p['name']).join(' | ')}\n');
      case 'INPUT_OBJECT':
        b.writeln('input $name {');
        for (final f in (t['inputFields'] as List).cast<Map>()) {
          b.write(desc(f['description'], '  '));
          final dv = f['defaultValue'];
          b.writeln('  ${f['name']}: ${typeRef(f['type'])}${dv == null ? '' : ' = $dv'}');
        }
        b.writeln('}\n');
      case 'OBJECT':
      case 'INTERFACE':
        final kw = t['kind'] == 'OBJECT' ? 'type' : 'interface';
        final ifs = (t['interfaces'] as List? ?? const []).map((i) => i['name']).toList();
        b.writeln('$kw $name${ifs.isEmpty ? '' : ' implements ${ifs.join(' & ')}'} {');
        for (final f in (t['fields'] as List).cast<Map>()) {
          b.write(desc(f['description'], '  '));
          b.writeln('  ${f['name']}${args((f['args'] as List))}: ${typeRef(f['type'])}${deprecated(f)}');
        }
        b.writeln('}\n');
    }
  }
  return b.toString();
}

/// 説明文を除いた、型定義ごとの正規化表現(フィールド・引数は名前順)。
Map<String, String> normalize(DocumentNode doc) {
  String tn(TypeNode t) => t is NamedTypeNode
      ? '${t.name.value}${t.isNonNull ? '!' : ''}'
      : '[${tn((t as ListTypeNode).type)}]${t.isNonNull ? '!' : ''}';
  String iv(InputValueDefinitionNode a) =>
      '${a.name.value}:${tn(a.type)}${a.defaultValue == null ? '' : '=${printNode(a.defaultValue!)}'}';
  final out = <String, String>{};
  for (final d in doc.definitions) {
    if (d is ObjectTypeDefinitionNode) {
      final fs = d.fields.map((f) => '${f.name.value}(${(f.args.map(iv).toList()..sort()).join(',')}):${tn(f.type)}').toList()..sort();
      out[d.name.value] = 'type<${(d.interfaces.map((i) => i.name.value).toList()..sort()).join('&')}>{${fs.join(';')}}';
    } else if (d is InterfaceTypeDefinitionNode) {
      final fs = d.fields.map((f) => '${f.name.value}(${(f.args.map(iv).toList()..sort()).join(',')}):${tn(f.type)}').toList()..sort();
      out[d.name.value] = 'interface{${fs.join(';')}}';
    } else if (d is InputObjectTypeDefinitionNode) {
      out[d.name.value] = 'input{${(d.fields.map(iv).toList()..sort()).join(';')}}';
    } else if (d is EnumTypeDefinitionNode) {
      out[d.name.value] = 'enum{${(d.values.map((v) => v.name.value).toList()..sort()).join(',')}}';
    } else if (d is ScalarTypeDefinitionNode) {
      out[d.name.value] = 'scalar';
    } else if (d is UnionTypeDefinitionNode) {
      out[d.name.value] = 'union{${(d.types.map((t) => t.name.value).toList()..sort()).join('|')}}';
    }
  }
  return out;
}

Future<void> main(List<String> argv) async {
  final outPath = argv.isNotEmpty ? argv[0] : 'source/schema.full.graphql';
  Map? json;
  String? used;
  for (final url in _endpoints) {
    json = await _fetch(url);
    if (json != null) {
      used = url;
      break;
    }
  }
  if (json == null) {
    stderr.writeln('どの接続先にも接続できないため中止します(要件0026)。');
    exit(1);
  }
  if (json['errors'] != null) {
    stderr.writeln('イントロスペクションのエラー: ${json['errors']}');
    exit(2);
  }
  final sdl = toSdl(json['data']['__schema'] as Map);
  final fetched = normalize(parseString(sdl));
  final file = File(outPath);
  final current = file.existsSync()
      ? normalize(parseString(file.readAsStringSync()))
      : <String, String>{};
  final added = fetched.keys.where((k) => !current.containsKey(k)).toList()..sort();
  final removed = current.keys.where((k) => !fetched.containsKey(k)).toList()..sort();
  final changed = fetched.keys
      .where((k) => current.containsKey(k) && current[k] != fetched[k])
      .toList()
    ..sort();
  stdout.writeln('接続先: $used');
  stdout.writeln('型: 取得${fetched.length} / 現行${current.length}  '
      '追加${added.length} 削除${removed.length} 変更${changed.length}');
  if (added.isNotEmpty) stdout.writeln('追加: ${added.join(', ')}');
  if (removed.isNotEmpty) stdout.writeln('削除: ${removed.join(', ')}');
  if (changed.isNotEmpty) stdout.writeln('変更: ${changed.join(', ')}');
  if (added.isEmpty && removed.isEmpty && changed.isEmpty) {
    stdout.writeln('差分なし。置き換えません。');
    return;
  }
  file.writeAsStringSync(sdl);
  stdout.writeln('$outPath を置き換えました。続けて tool/prune_schema.dart を実行してください。');
}
