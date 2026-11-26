# 記録した GraphQL の応答(クローズドのテスト用)

GitHub Actions(`.github/workflows/server-tests.yml`)が、使い捨ての DB(`07_dummy.sql` のダミーデータ)に対して
`*_model` のテストを実行したときの、実サーバー(PostGraphile)の応答。`<操作名>.json` に、変数ごとに1件ずつ入っている。

- 使い方: `ReplayLink().loadDirectory(Directory('fixtures/graphql'))`(`data_test_harness`)。
- 更新: Actions の実行の成果物 `recorded-responses` を取り(`gh run download <実行の ID> -n recorded-responses`)、
  このフォルダに上書きする。DB・クエリを変えたあとは更新する。
- 個人情報・秘密を含めない(ダミーデータだけ)。取り込む前に、パスワード・トークン・メールが無いことを確かめる。
