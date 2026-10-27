# data_test_harness の使い方

詳細は[CLAUDE.md](../../CLAUDE.md)。

1. 使う側の`pubspec.yaml`の**`dev_dependencies`**に`data_test_harness`(path: `../../infra/data_test_harness`)を足す。
2. サーバーを使うテストは`serverTest`で書く。使うパッケージの`dart_test.yaml`に`server`タグを宣言する。
   ```yaml
   tags:
     server:
       description: Requires the test GraphQL server.
   ```
3. サーバーが無い環境では`flutter test --exclude-tags server`、またはそのままでも接続できなければ中止(skip)になる。
4. 別のサーバーを使うときは`flutter test --dart-define=PMS_TEST_GRAPHQL_URL=http://host:5000/graphql`。
5. サーバーを使わない単体テストは`RecordingDataRepository`を、`IDataRepository`を受け取る箇所へ差し込む。
