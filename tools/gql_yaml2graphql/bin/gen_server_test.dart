// 各モデルパッケージの通信テスト(test/server_read_test.dart)を、readクエリから生成する。
//
// 使い方(リポジトリのルートで実行):
//   dart run tools/gql_yaml2graphql/bin/gen_server_test.dart --root packages/model_providers
//
// 生成するテスト:
//   1) 検証用サーバー: 全readクエリを first: 1 で実行し、成功(Ok)と、生成モデルでの読み取りを確認する。読み取り専用。
//      接続先と中止(skip)は data_test_harness の serverTest が持つ。
//   2) 通信の異常(ローカルの代役サーバー): 遅延(制限時間超過)、応答の途中・前の切断、認証エラー(401/403)、
//      認証ヘッダーの送信、切断からの復帰。パッケージの先頭のreadクエリで確認する。
// 必須の変数は、型ごとの値(Int=1、UUID=ゼロのUUID、Boolean=false、String='')で埋める。

import 'dart:io';

import 'package:gql/ast.dart';
import 'package:gql/language.dart';

String _named(TypeNode t) =>
    t is NamedTypeNode ? t.name.value : _named((t as ListTypeNode).type);


/// 必須の変数(既定値なし・非null)に渡す値。作れない型は null。
String? _valueOf(TypeNode t) {
  if (t is ListTypeNode) return '[]';
  return switch (_named(t)) {
    'Int' => '1',
    'Float' => '1.0',
    'Boolean' => 'false',
    'String' => "''",
    'UUID' => '_zeroId',
    'ID' => "''",
    _ => null,
  };
}

class _Read {
  _Read(this.dir, this.operation, this.args);
  final String dir;
  final String operation;
  final String args;
}

void main(List<String> args) {
  final i = args.indexOf('--root');
  if (i < 0 || i + 1 >= args.length) {
    stderr.writeln('使い方: gen_server_test --root <モデルパッケージの親>');
    exit(64);
  }
  var count = 0;
  final packages = Directory(args[i + 1]).listSync().whereType<Directory>().toList()
    ..sort((a, b) => a.path.compareTo(b.path));
  for (final pkg in packages) {
    final name = pkg.path.replaceAll(r'\', '/').split('/').last;
    final graphql = Directory('${pkg.path}/lib/src/graphql');
    if (!graphql.existsSync()) continue;
    final reads = <_Read>[];
    final files = graphql
        .listSync(recursive: true)
        .whereType<File>()
        .where((f) => f.path.endsWith('_read.graphql'))
        .toList()
      ..sort((a, b) => a.path.compareTo(b.path));
    for (final f in files) {
      final dir = f.uri.pathSegments.last.replaceFirst('_read.graphql', '');
      final doc = parseString(f.readAsStringSync());
      final op = doc.definitions.whereType<OperationDefinitionNode>().first;
      final named = <String>[];
      var ok = true;
      for (final v in op.variableDefinitions) {
        final required = v.type.isNonNull && v.defaultValue?.value == null;
        if (!required) continue;
        final value = _valueOf(v.type);
        if (value == null) {
          ok = false;
          break;
        }
        named.add(v.variable.name.value == 'first' ? 'first: 1' : '${v.variable.name.value}: $value');
      }
      if (!ok) {
        stderr.writeln('省略 $name/$dir: 必須の変数の値を作れない型がある');
        continue;
      }
      reads.add(_Read(dir, op.name!.value, named.join(', ')));
    }
    if (reads.isEmpty) continue;

    final b = StringBuffer()
      ..writeln('// このファイルは gen_server_test が生成した通信テストです。直接編集しないでください。')
      ..writeln('// 再生成: dart run tools/gql_yaml2graphql/bin/gen_server_test.dart --root packages/model_providers')
      ..writeln('//')
      ..writeln('// 1) 検証用サーバーに対し、全readクエリを first: 1 で実行する(読み取り専用)。')
      ..writeln('// 2) 通信の異常(遅延・切断・認証エラー)は、ローカルの代役サーバーで再現する。')
      ..writeln("import 'package:data_test_harness/data_test_harness.dart';")
      ..writeln("import 'package:flutter_test/flutter_test.dart';")
      ..writeln("import 'package:graphql/client.dart';")
      ..writeln("import 'package:$name/$name.dart';")
      ..writeln("import 'package:pms_graphql/pms_graphql.dart';")
      ..writeln()
      ..writeln("const _zeroId = '00000000-0000-0000-0000-000000000000';")
      ..writeln()
      ..writeln('void main() {')
      ..writeln("  group('検証用サーバー: 全readクエリ', () {");
    for (final r in reads) {
      final op = r.operation;
      b
        ..writeln("    serverTest('$op', (server) async {")
        ..writeln('      final result = await server.provider.query(')
        ..writeln('        QueryOptions(')
        ..writeln('          document: documentNodeQuery$op,')
        ..writeln('          variables: Variables\$Query\$$op(${r.args}).toJson(),')
        ..writeln('        ),')
        ..writeln('      );')
        ..writeln("      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '\$result');")
        ..writeln('      Query\$$op.fromJson(')
        ..writeln('        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),')
        ..writeln('      );')
        ..writeln('    });');
    }
    final first = reads.first;
    b
      ..writeln('  });')
      ..writeln()
      ..writeln("  group('通信の異常(代役サーバー)', () {")
      ..writeln('    late FaultyGraphqlServer server;')
      ..writeln('    setUp(() async => server = await FaultyGraphqlServer.start());')
      ..writeln('    tearDown(() => server.close());')
      ..writeln()
      ..writeln('    QueryOptions options() => QueryOptions(')
      ..writeln('      document: documentNodeQuery${first.operation},')
      ..writeln('      variables: Variables\$Query\$${first.operation}(${first.args}).toJson(),')
      ..writeln('    );')
      ..writeln()
      ..writeln('    // 代役サーバーの既定の応答に合う、中身の無い問い合わせ(応答の読み取りを確認しないテスト用)。')
      ..writeln("    QueryOptions plain() => QueryOptions(document: gql('{ __typename }'));")
      ..writeln()
      ..writeln('    GraphQLClientProvider provider({int timeLimit = 10, Map<String, String> headers = const {}}) =>')
      ..writeln('        GraphQLClientProvider(server.url, timeLimit: timeLimit, headers: headers);')
      ..writeln()
      ..writeln("    test('遅延が制限時間を超えるとタイムアウトで終わる', () async {")
      ..writeln('      server.kind = FaultKind.delay;')
      ..writeln('      server.delay = const Duration(seconds: 3);')
      ..writeln('      expect(await endedInTimeout(() => provider(timeLimit: 1).query(options())), isTrue);')
      ..writeln('    });')
      ..writeln()
      ..writeln("    test('応答の途中・前の切断は Err(NetworkError)', () async {")
      ..writeln('      for (final kind in [FaultKind.dropMidResponse, FaultKind.dropBeforeResponse]) {')
      ..writeln('        server.kind = kind;')
      ..writeln('        final result = await provider().query(options());')
      ..writeln("        expect((result as Err).error, isA<NetworkError>(), reason: '\$kind');")
      ..writeln('      }')
      ..writeln('    });')
      ..writeln()
      ..writeln("    test('認証エラー(401/403)は Err(ServerError) でステータスを持つ', () async {")
      ..writeln('      for (final status in [401, 403]) {')
      ..writeln('        server.kind = FaultKind.status;')
      ..writeln('        server.status = status;')
      ..writeln('        final result = await provider().query(options());')
      ..writeln('        final error = (result as Err).error;')
      ..writeln('        expect(error, isA<ServerError>());')
      ..writeln('        expect((error as ServerError).status, status);')
      ..writeln('      }')
      ..writeln('    });')
      ..writeln()
      ..writeln("    test('認証ヘッダーが要求に付く', () async {")
      ..writeln("      await provider(headers: {'Authorization': 'Bearer test-token'}).query(plain());")
      ..writeln("      expect(server.requests.single.authorization, 'Bearer test-token');")
      ..writeln('    });')
      ..writeln()
      ..writeln("    test('切断のあと、サーバーが戻れば次の問い合わせは成功する', () async {")
      ..writeln('      server.kind = FaultKind.dropMidResponse;')
      ..writeln('      await provider().query(plain());')
      ..writeln('      server.kind = FaultKind.none;')
      ..writeln('      final result = await provider().query(plain());')
      ..writeln("      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '\$result');")
      ..writeln('    });')
      ..writeln('  });')
      ..writeln('}');
    final out = File('${pkg.path}/test/server_read_test.dart')..parent.createSync(recursive: true);
    out.writeAsStringSync(b.toString());

    // dart_test.yaml(serverタグ)と dev_dependencies(data_test_harness)
    final yaml = File('${pkg.path}/dart_test.yaml');
    if (!yaml.existsSync()) {
      yaml.writeAsStringSync(
        'tags:\n  server:\n    description: >-\n      Requires the test GraphQL server (see data_test_harness TestServer.candidateUrls).\n',
      );
    }
    final pub = File('${pkg.path}/pubspec.yaml');
    var text = pub.readAsStringSync();
    if (!text.contains('data_test_harness')) {
      text = text.replaceFirst(
        RegExp(r'dev_dependencies:\r?\n'),
        'dev_dependencies:\n  data_test_harness:\n    path: ../../infra/data_test_harness\n',
      );
      pub.writeAsStringSync(text);
    }
    count++;
    stdout.writeln('$name: ${reads.length}クエリ');
  }
  stdout.writeln('$count files');
}
