# query_builder ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

query_builder: A starting point for Dart libraries or applications.

- 層: foundation(画面を持たない汎用部品)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/foundation/query_builder` |
| Dart ファイル(生成物を除く) | 63 |
| `lib/src` の分け方 | `constants(3)`、`debugs(5)`、`predicates(36)`、`sorts(18)` |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

公開している型・関数は無い。
## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): なし
- 利用元: `pms_app`(アプリ)、`data_strategist`(パッケージ)、`flgtable_lib`(パッケージ)
- 外部パッケージ: なし

## 6. 設計上の決定(`CLAUDE.md` より)

- **概要**: 検索条件(`Expression`)と並び順(`SortExpression`)を組み立て、実行手段ごとの形に変換するライブラリです(Visitor / Builder)。変換先は、リスト(Dartの関数)・SQL・GraphQL(Hasura形式)・PostGraphile(connection-filter形式)です。データの取得元は`data_stra…
- **構成(`lib/src`)**: `predicates/expressions`: 式(`Expression`)。比較(equal・greater・like・startWith・endWith・in・null)、論理(and・or)、定数(`FieldExpression`・`NameFieldExpression`・`ValueExpression`)、`builders/`(変換先ご…
- **PostGraphile への変換**: `PostgraphileExpressionBuilder`は`{'filter': {...}}`を、`SortPostgraphileExpressionBuilder`は`{'orderBy': ['NAME_ASC', ...]}`を作る。
- **既知の課題**: `GraphqlVisitor`(Hasura形式)は`PostgraphileVisitor`の基底として使っているため残す。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/expression_and_sort_test.dart`(38)、`test/postgraphile_test.dart`(8)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
