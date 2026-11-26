import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:gql/ast.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart';

/// 記録した(または手で決めた)応答を返す GraphQL の通信の層。サーバーにも DB にも接続しない。
///
/// 生成モデル・クエリ・[GraphQLClientProvider]・取得元は、本番と同じものを使う。
/// 差し替えるのは、通信の層(Link)だけ。画面のテスト(読み込み中・空・エラー・値あり)に使う。
/// DB の関数・トリガーの動きは確かめられない(それは GitHub Actions の接続テストの役目)。
///
/// 使い方:
/// ```dart
/// final link = ReplayLink()
///   ..on('PositionPageRead', data: {'allMstrPositions': {'nodes': []}})   // 空の一覧
///   ..on('CompanyPageRead', delay: const Duration(seconds: 2), data: {...}) // 読み込み中を見せる
///   ..on('SalesPageRead', errors: [const GraphQLError(message: 'permission denied')]);
/// final provider = ReplayGraphql.provider(link);
/// ```
/// 応答は、実サーバーの応答を [RecordingLink] で記録した JSON を [loadDirectory] で読み込んでもよい。
///
/// GoFパターン: Proxy(サーバーの代理として、決めた応答を返す)。
class ReplayLink extends Link {
  final List<_Rule> _rules = [];

  /// 受け取った要求(順番どおり)。テストで「何が問い合わせられたか」を確かめる。
  final List<Request> requests = [];

  /// 操作名([operationName])への応答を登録する。同じ操作名には、先に登録したものから順に、
  /// [when](変数の条件)に合うものを返す。[when] が null なら常に合う。
  ///
  /// - [data]: 成功の応答の `data`。
  /// - [errors]: GraphQL のエラー(HTTP は 200 のまま、`errors` が付く応答)。[data] と併用できる。
  /// - [delay]: 応答までの待ち時間(読み込み中の表示の確認用)。
  /// - [failWith]: 通信の失敗(接続できない・切断など)。指定すると例外として扱う。
  ReplayLink on(
    String operationName, {
    Map<String, dynamic>? data,
    List<GraphQLError>? errors,
    Duration delay = Duration.zero,
    Object? failWith,
    bool Function(Map<String, dynamic> variables)? when,
  }) {
    _rules.add(
      _Rule(
        operationName,
        data: data,
        errors: errors,
        delay: delay,
        failWith: failWith,
        when: when,
      ),
    );
    return this;
  }

  /// [RecordingLink] が記録したフォルダ(`<操作名>.json`)を読み込む。
  /// 変数が一致する応答を返し、一致するものが無ければ、記録の最初の応答を返す。
  ReplayLink loadDirectory(Directory directory) {
    final files =
        directory
            .listSync()
            .whereType<File>()
            .where((f) => f.path.endsWith('.json'))
            .toList()
          ..sort((a, b) => a.path.compareTo(b.path));
    for (final file in files) {
      final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
      final operationName = json['operationName'] as String;
      final entries = (json['entries'] as List).cast<Map<String, dynamic>>();
      for (final entry in entries) {
        final variables = Map<String, dynamic>.from(entry['variables'] as Map);
        on(
          operationName,
          data: Map<String, dynamic>.from(entry['data'] as Map),
          when: (v) => _sameJson(v, variables),
        );
      }
      if (entries.isNotEmpty) {
        // 変数が一致しないときの代わり(記録の最初の応答)。
        on(
          operationName,
          data: Map<String, dynamic>.from(entries.first['data'] as Map),
        );
      }
    }
    return this;
  }

  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    requests.add(request);
    final name = _operationNameOf(request);
    final variables = request.variables;
    for (final rule in _rules) {
      if (rule.operationName != name) continue;
      if (rule.when != null && !rule.when!(variables)) continue;
      if (rule.delay > Duration.zero) await Future<void>.delayed(rule.delay);
      if (rule.failWith != null) throw rule.failWith!;
      yield Response(
        data: rule.data,
        errors: rule.errors,
        response: const <String, dynamic>{},
      );
      return;
    }
    // 登録の漏れは、テストが気づけるように失敗にする(黙って空を返さない)。
    throw StateError('ReplayLink: 操作 "$name"(変数 $variables)に対応する応答が登録されていません');
  }
}

class _Rule {
  _Rule(
    this.operationName, {
    this.data,
    this.errors,
    this.delay = Duration.zero,
    this.failWith,
    this.when,
  });

  final String operationName;
  final Map<String, dynamic>? data;
  final List<GraphQLError>? errors;
  final Duration delay;
  final Object? failWith;
  final bool Function(Map<String, dynamic> variables)? when;
}

bool _sameJson(Object? a, Object? b) => jsonEncode(a) == jsonEncode(b);

/// 実サーバーの応答を JSON として記録する通信の層(別の Link を包む)。
///
/// 成功し、エラーが無い応答だけを、`<フォルダ>/<操作名>.json` に、変数ごとに1件ずつ残す。
/// 記録した JSON を [ReplayLink.loadDirectory] で読み込むと、サーバー無しで同じ応答を返せる。
/// 記録に、個人情報・秘密が含まれないよう注意する(検証用 DB のダミーデータで取る)。
///
/// GoFパターン: Decorator(通信を変えずに、記録の機能を足す)。
class RecordingLink extends Link {
  RecordingLink(this.inner, this.directory);

  /// 実際の通信を行う Link(例: `HttpLink`)。
  final Link inner;

  /// 記録の保存先。
  final Directory directory;

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    return inner.request(request, forward).map((response) {
      final data = response.data;
      if (data != null && (response.errors?.isEmpty ?? true)) {
        _save(
          _operationNameOf(request),
          Map<String, dynamic>.from(request.variables),
          data,
        );
      }
      return response;
    });
  }

  void _save(
    String? operationName,
    Map<String, dynamic> variables,
    Map<String, dynamic> data,
  ) {
    if (operationName == null || operationName.isEmpty) return;
    // ファイル名に使えない文字を除く(操作名は英数字だが、念のため)。
    final safe = operationName.replaceAll(RegExp(r'[^A-Za-z0-9_]'), '_');
    directory.createSync(recursive: true);
    final file = File('${directory.path}${Platform.pathSeparator}$safe.json');
    final entries = <Map<String, dynamic>>[];
    if (file.existsSync()) {
      final old = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
      entries.addAll((old['entries'] as List).cast<Map<String, dynamic>>());
    }
    entries.removeWhere((e) => _sameJson(e['variables'], variables));
    entries.add({'variables': variables, 'data': data});
    file.writeAsStringSync(
      const JsonEncoder.withIndent(
        '  ',
      ).convert({'operationName': operationName, 'entries': entries}),
    );
  }
}

/// [ReplayLink] を使う [GraphQLClientProvider] を作る。
class ReplayGraphql {
  const ReplayGraphql._();

  /// 本番と同じ取得の方針(キャッシュを使わず、エラーも結果に含める)で、[link] につなぐ。
  static GraphQLClientProvider provider(Link link, {int timeLimit = 10}) =>
      GraphQLClientProvider(
        'replay://local',
        timeLimit: timeLimit,
        graphQLClient: client(link, timeLimit: timeLimit),
      );

  /// 本番の [GraphQLClientProvider] と同じ設定の [GraphQLClient]。
  /// [lenient] が真(既定)のとき、応答に `__typename` などの足りない項目があっても受け入れる
  /// (手で書いた応答のため)。実サーバーの応答を記録するとき([TestServer])は、本番と同じ厳しさにする。
  static GraphQLClient client(
    Link link, {
    int timeLimit = 10,
    bool lenient = true,
  }) => GraphQLClient(
    link: link,
    queryRequestTimeout: Duration(seconds: timeLimit),
    cache: GraphQLCache(
      partialDataPolicy: lenient
          ? PartialDataCachePolicy.accept
          : PartialDataCachePolicy.reject,
    ),
    defaultPolicies: DefaultPolicies(
      query: Policies(fetch: FetchPolicy.networkOnly, error: ErrorPolicy.all),
      mutate: Policies(fetch: FetchPolicy.networkOnly, error: ErrorPolicy.all),
    ),
  );
}

/// 要求の操作名。`operationName` が指定されていない要求(`gql()` で作った文書など)は、
/// 文書の中の最初の操作(`query XxxPageRead ...`)の名前を使う。
String? _operationNameOf(Request request) {
  final explicit = request.operation.operationName;
  if (explicit != null && explicit.isNotEmpty) return explicit;
  for (final definition in request.operation.document.definitions) {
    if (definition is OperationDefinitionNode) return definition.name?.value;
  }
  return null;
}
