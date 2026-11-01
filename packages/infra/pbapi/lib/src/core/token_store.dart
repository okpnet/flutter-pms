/// ログイン情報(トークンとユーザー)の保存先。
///
/// GoFパターン: Strategy。トークンは秘密情報のため、本番のアプリは OS の安全な保管庫
/// (`flutter_secure_storage` など)で実装して差し込む。`shared_preferences` のような平文の保存は避ける。
abstract interface class ITokenStore {
  /// 保存済みの値。無ければ null。
  Future<String?> read();

  Future<void> write(String data);

  Future<void> delete();
}

/// メモリにだけ保存する。アプリを閉じるとログアウトになる。テストと既定。
class InMemoryTokenStore implements ITokenStore {
  String? _data;

  @override
  Future<String?> read() async => _data;

  @override
  Future<void> write(String data) async => _data = data;

  @override
  Future<void> delete() async => _data = null;
}
