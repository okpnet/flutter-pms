# jwt_verification_test の実行

概要は [CLAUDE.md](../../CLAUDE.md)。

## 前提
- PocketBase `http://192.168.1.103:8090/api/` と PostGraphile `http://192.168.1.100:5000/graphql` が動いていること(PostGraphile は `data_test_harness` の候補から先に接続できたものを使う)。
- PostGraphile が `--jwt-secret` つきで起動し、PocketBase の `PB_GRAPHQL_JWT_SECRET` と同じ値であること。
- 検証用 DB に次の権限が必要(適用済み。無いと「有効なセッションでデータを取得できる」ケースが失敗する):
  ```sql
  GRANT pms_user, pms_admin TO authenticator;
  GRANT USAGE ON SCHEMA tests TO pms_user;
  ```
- 書き込みのテスト(`mutation_session_test`)のうち「一般(pms_user)が登録できる」と「pms_user が論理削除できる」には、`pms_user` の `INSERT` 権限が要る(更新時に `history_*` テーブルへ書くため、履歴テーブルも含む):
  ```sql
  GRANT INSERT ON ALL TABLES IN SCHEMA tests TO pms_user;
  GRANT USAGE ON ALL SEQUENCES IN SCHEMA tests TO pms_user;
  ```

## 実行
```bash
cd packages/infra/jwt_verification_test
flutter test --no-test-assets \
  --dart-define=PMS_TEST_POCKETBASE_ADMIN_EMAIL=<PocketBase の superuser のメール> \
  --dart-define=PMS_TEST_POCKETBASE_ADMIN_PASSWORD=<そのパスワード> \
  --dart-define=PMS_TEST_JWT_SECRET=<PB_GRAPHQL_JWT_SECRET と同じ値>
```
- 値は `tools/docker/pocketbase/.env`(Git 管理外)にある。シェルでは `set -a; . tools/docker/pocketbase/.env; set +a` で読み込める(`PB_SUPERUSER_*`、`PB_GRAPHQL_JWT_SECRET`)。
- 渡さなかったものは、それを要するテストだけが中止(skip)になる。
  - `PMS_TEST_JWT_SECRET` が無い: 期限切れなどの JWT を作るテストが中止。
  - 管理者の資格情報が無い: 利用者を作るテストが中止。
- ファイルごとに実行できる(`test/pocketbase_jwt_test.dart`、`test/postgraphile_jwt_test.dart`、`test/model_session_test.dart`、`test/mutation_session_test.dart`)。
- 別の接続先は `--dart-define=PMS_TEST_POCKETBASE_URL=http://host:8090/api`(PostGraphile は `data_test_harness` の `PMS_TEST_GRAPHQL_URL`)。
- ログインは 1 分 10 回までの制限がある。続けて実行するときは 1 分以上あける(超えると `rateLimited`)。
- `flutter test` がこの環境で落ちるときは `--no-test-assets` を付ける。

## 後始末
テストは `jwt.test.<時刻>.<番号>` の利用者を作り、各ファイルの最後に管理者が削除する。実行が途中で止まって残ったときは、PocketBase の管理画面(`/_/`)で `users` から `jwt.test.` で始まるものを削除する。
