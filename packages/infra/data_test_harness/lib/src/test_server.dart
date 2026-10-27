import 'dart:io';

import 'package:pms_graphql/pms_graphql.dart';

/// 検証用GraphQLサーバー(PostGraphile)への接続。テストの接続先はここだけが持つ。
///
/// GoFパターン: Factory Method([connect])。既定の候補での接続の確認は1回だけ行い、
/// 結果(接続できなかった場合を含む)をプロセス内で使い回す。
class TestServer {
  TestServer._(this.url) : provider = GraphQLClientProvider(url, timeLimit: 20);

  /// 先に接続できた方を使う候補。`--dart-define=PMS_TEST_GRAPHQL_URL=...`があればそれを先頭に加える。
  static const candidateUrls = <String>[
    String.fromEnvironment('PMS_TEST_GRAPHQL_URL'),
    'http://192.168.1.100:5000/graphql',
    'http://192.168.9.245:5000/graphql',
  ];

  /// 接続できたエンドポイント。
  final String url;

  /// 実接続の[GraphQLClientProvider]。モデルパッケージの生成クエリ文書を実行する。
  final GraphQLClientProvider provider;

  static Future<TestServer?>? _cached;

  /// 候補のうち最初に接続できたサーバーを返す。どれも接続できなければ null。
  /// 2回目以降は最初の結果を返す(テストごとの待ち時間を避けるため)。
  static Future<TestServer?> connect({
    List<String>? candidates,
    Duration timeout = const Duration(seconds: 3),
  }) {
    if (candidates != null) return _find(candidates, timeout);
    return _cached ??= _find(candidateUrls, timeout);
  }

  static Future<TestServer?> _find(
    List<String> candidates,
    Duration timeout,
  ) async {
    for (final url in candidates.where((u) => u.isNotEmpty)) {
      if (await _canConnect(url, timeout)) return TestServer._(url);
    }
    return null;
  }

  static Future<bool> _canConnect(String url, Duration timeout) async {
    final uri = Uri.tryParse(url);
    if (uri == null || uri.host.isEmpty) return false;
    try {
      final socket = await Socket.connect(uri.host, uri.port, timeout: timeout);
      socket.destroy();
      return true;
    } catch (_) {
      return false;
    }
  }

  Map<String, Object?> toJson() => {'url': url};

  @override
  String toString() => 'TestServer($url)';
}
