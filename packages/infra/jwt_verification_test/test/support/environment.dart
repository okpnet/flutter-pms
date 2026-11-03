// 実行時に渡す設定。資格情報・鍵はコードにも Git にも書かない。
//
//   flutter test --no-test-assets \
//     --dart-define=PMS_TEST_POCKETBASE_ADMIN_EMAIL=... \
//     --dart-define=PMS_TEST_POCKETBASE_ADMIN_PASSWORD=... \
//     --dart-define=PMS_TEST_JWT_SECRET=...        # PB_GRAPHQL_JWT_SECRET と同じ値
//
// 無いものは、それを要するテストだけを中止(skip)にする。

import 'package:data_test_harness/data_test_harness.dart';

/// PocketBase(`http://192.168.1.103:8090/api`)。
const pocketBaseUrl = String.fromEnvironment(
  'PMS_TEST_POCKETBASE_URL',
  defaultValue: 'http://192.168.1.103:8090/api',
);

/// PocketBase の superuser(テスト用の利用者の作成・後始末に使う)。
const adminEmail = String.fromEnvironment('PMS_TEST_POCKETBASE_ADMIN_EMAIL');
const adminPassword = String.fromEnvironment(
  'PMS_TEST_POCKETBASE_ADMIN_PASSWORD',
);

/// PostGraphile の `--jwt-secret`(PocketBase の `PB_GRAPHQL_JWT_SECRET`)。期限切れなどのトークンを作るのに使う。
const jwtSecret = String.fromEnvironment('PMS_TEST_JWT_SECRET');

/// テストで使う GraphQL の接続先(PostGraphile、`data_test_harness` の候補から先に接続できたもの)。
/// 接続できなければ null。
Future<String?> findGraphqlUrl() async => (await TestServer.connect())?.url;

/// テストを実行できない理由。実行できるなら null。
Future<String?> unavailableReason({
  bool needsAdmin = true,
  bool needsSecret = false,
  bool needsGraphql = true,
}) async {
  if (needsAdmin && (adminEmail.isEmpty || adminPassword.isEmpty)) {
    return 'PocketBase の管理者の資格情報(PMS_TEST_POCKETBASE_ADMIN_*)が渡されていない';
  }
  if (needsSecret && jwtSecret.isEmpty) {
    return 'JWT の鍵(PMS_TEST_JWT_SECRET)が渡されていない';
  }
  if (needsGraphql && await findGraphqlUrl() == null) {
    return 'PostGraphile(${TestServer.candidateUrls.where((u) => u.isNotEmpty).join(" / ")})に接続できない';
  }
  return null;
}
