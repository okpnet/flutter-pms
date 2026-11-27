# query_builder ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

query_builder: A starting point for Dart libraries or applications.

検索条件(`Expression`)と並び順(`SortExpression`)を組み立て、実行手段ごとの形に変換するライブラリです(Visitor / Builder)。変換先は、リスト(Dartの関数)・SQL・GraphQL(Hasura形式)・PostGraphile(connection-filter形式)です。データの取得元は`data_strategist`の`IDataRepository.find`に`Expression`を渡し、取得手段の違いは実装側が隠蔽します。

### 1.2 範囲

- 場所: `packages/foundation/query_builder`(foundation(画面を持たない汎用部品))
- 種類: 純 Dart パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`data_strategist`(パッケージ)、`flgtable_lib`(パッケージ)

### 2.2 依存先(ワークスペース内)

なし

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

公開している型・関数は無い(生成物・アプリへの組み込みだけ)。

### 3.1 仕様の要点(`CLAUDE.md` より)

- **概要**: 検索条件(`Expression`)と並び順(`SortExpression`)を組み立て、実行手段ごとの形に変換するライブラリです(Visitor / Builder)。変換先は、リスト(Dartの関数)・SQL・GraphQL(Hasura形式)・PostGraphile(connection-filter形式)です。データの取得元は`data_stra…
- **構成(`lib/src`)**: `predicates/expressions`: 式(`Expression`)。比較(equal・greater・like・startWith・endWith・in・null)、論理(and・or)、定数(`FieldExpression`・`NameFieldExpression`・`ValueExpression`)、`builders/`(変換先ご…
- **PostGraphile への変換**: `PostgraphileExpressionBuilder`は`{'filter': {...}}`を、`SortPostgraphileExpressionBuilder`は`{'orderBy': ['NAME_ASC', ...]}`を作る。
- **既知の課題**: `GraphqlVisitor`(Hasura形式)は`PostgraphileVisitor`の基底として使っているため残す。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | 対象外 |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 46 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 2 件、テストケース 46 件。

- `test/expression_and_sort_test.dart`
  - age equal 20
  - age equal 40
  - name equal ry
  - name equal E
  - age field expression test
  - name field expression test
  - equal test
  - greater test
  - startwith test
  - endwith test
  - like test
  - in tests
  - and tests
  - or test
  - equal test
  - greater test
  - startwith test
  - endwith test
  - like test
  - in tests
  - and tests
  - or test
  - equal test
  - greater test
  - startwith test
  - endwith test
  - like test
  - in tests
  - and tests
  - or test
  - asc name
  - desc age
  - asc age
  - desc name
  - sql list expression
  - asc age
  - desc name
  - sql list expression
- `test/postgraphile_test.dart`
  - equal / not equal
  - greater / greater or equal
  - like / startWith / endWith は % を付けず、専用の演算子にする
  - in / not in / is null
  - 日時はISO 8601の文字列にする
  - and / or は入れ子にでき、列名は平坦化キーのまま出す
  - camelCase の列は列挙値(SCREAMING_SNAKE_CASE)になり、指定順を保つ
  - PostGraphile / Hasura / SQL / list

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
