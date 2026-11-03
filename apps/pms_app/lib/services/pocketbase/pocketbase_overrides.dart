import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:auth_files/auth_files.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:pbapi/pbapi.dart';

/// PocketBase の接続先。`--dart-define=POCKETBASE_URL=http://192.168.1.103:8090` のように指定する
/// (末尾の `/api` は付けても付けなくてもよい)。未指定のときは PocketBase に接続しない。
const pocketbaseUrl = String.fromEnvironment('POCKETBASE_URL');

/// [pocketbaseUrl] が指定されているとき、PocketBase への接続を開いて `pbConnectionProvider` を上書きする。
/// 未指定は空(認証・ファイル共有・GraphQL 用 JWT の取得は使えない)。
///
/// トークンの保存先は、既定で OS の安全な保管庫([SecureTokenStore]。ログイン情報は次の起動でも続く)。
/// [tokenStore] を渡すと、それを使う(テスト・別の保管庫)。同じものを `tokenStoreProvider` にも差し込み、
/// ログアウトで確実に消す。
Future<List<Override>> pocketbaseOverrides(
  ILoggerProvider logger, {
  ITokenStore? tokenStore,
}) async {
  if (pocketbaseUrl.isEmpty) return const [];
  final store = tokenStore ?? SecureTokenStore(logger: logger);
  final connection = await PbConnection.open(
    url: pocketbaseUrl,
    logger: logger,
    tokenStore: store,
  );
  return [
    pbConnectionProvider.overrideWithValue(connection),
    tokenStoreProvider.overrideWithValue(store),
  ];
}
