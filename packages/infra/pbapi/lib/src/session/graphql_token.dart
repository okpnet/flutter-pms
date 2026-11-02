/// GraphQL サーバー(PostGraphile)用の短期の JWT。PocketBase のトークンとは別物。
///
/// [token] は秘密情報。[toJson] には含めない。
class GraphqlToken {
  const GraphqlToken({required this.token, required this.expiresAt});

  final String token;

  /// 有効期限。これを過ぎる前に [SessionService.graphqlToken] で取り直す。
  final DateTime expiresAt;

  Map<String, Object?> toJson() => {'expiresAt': expiresAt.toIso8601String()};

  @override
  String toString() => 'GraphqlToken(${toJson()})';
}
