# jwt_verification_test ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

jwt_verification_test: テスト専用。PocketBase が発行した JWT を PostGraphile とモデルで検証する結合テスト。

- 層: infra(通信・認証・ログ・テストの道具)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/infra/jwt_verification_test` |
| Dart ファイル(生成物を除く) | 0 |
| `lib/src` の分け方 | (分けていない、または `lib/src` が無い) |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

公開している型・関数は無い。
## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): なし
- テスト用: `logger_provider`、`data_test_harness`、`pbapi`、`pms_graphql`、`access_control_model`、`barcode_entry_model`、`item_model`、`organization_model`、`production_plan_model`、`purchasing_model`、`quality_document_model`、`quality_model`、`resource_model`、`sales_model`、`system_model`、`work_record_model`
- 利用元: なし
- 外部パッケージ: なし

## 6. 設計上の決定(`CLAUDE.md` より)

- **このプロジェクトについて**: `jwt_verification_test` は、**テスト専用**のプロジェクトです。PocketBase(`http://192.168.1.103:8090`)が発行した JWT を、PostGraphile(`http://192.168.1.100:5000/graphql`)とモデルパッケージ(`packages/model_providers…
- **保証すること(Issue 20261103_0001)**: | 保証 | テスト |
- **実行**: 資格情報・鍵は実行時に `--dart-define` で渡す(コード・Git には書かない)。詳細は [doc/contents/usage.md](doc/contents/usage.md)。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/model_session_test.dart`(12)、`test/mutation_session_test.dart`(7)、`test/pocketbase_jwt_test.dart`(9)、`test/postgraphile_jwt_test.dart`(9)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
