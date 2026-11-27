# quality_common ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

quality_common: 品質共通 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

品質共通 機能の実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 デザインは `tools/open-design` の Html のトップメニュー「品質共通」に従う(`pms_design.md` の該当章を参照)。 契約(遷移先・命令の型)が他の機能から必要になったら、`lib/quality_common_api.dart` に公開する(別パッケージ `quality_common_api` は作らない)。

### 1.2 範囲

- 場所: `packages/features/quality_common`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`quality/example`(example)

### 2.2 依存先(ワークスペース内)

`feature_shared`、`entity_screens`、`data_strategist`、`pms_graphql`、`quality_model`

テスト用: `data_test_harness`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `qualityCommonRepositories` | 関数 | 品質共通の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、 |
| FR-02 | `QualityCommonModule` | クラス | 品質共通をアプリへ組み込むための口。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 修正処置(修正処置明細) / 再発防止(再発防止明細) / 処置再発防止監視
- **参照するモデル**: `packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `XxxModule implements FeatureModule` を `lib/src/quality_common_module.dart` に置き、公開は `lib/quality_common.dart` のバレルから `QualityCommonModule` だけにする。アプリは `lib/app.dart` の `featureModul…
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。
- **取得元(GraphQL 版。読み取り専用)**: `lib/src/graphql/quality_common_repositories.dart` の `qualityCommonRepositories(GraphQLClient)` が、リスク(`risk`)の取得元を作る。アプリ(`pms_app` の `graphql_overrides.dart`)が `entityRepositoryOve…
- **監査標準の項目(Issue 20261123_0001)**: 監査標準の項目(`auditstdcheck`。DB の `mstr_audit_std_checkitem`)は、**設備の点検整備項目と同じ構造**: 項目(コード・管理コード・名称・読み・略称・詳細・監査標準)+ 判定の式 `expr`(`FieldKind.condition`。条件 = 演算子 + 値の JSON。`entity_screens` …

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/quality_common.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 14 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 3 件、テストケース 14 件。

- `test/audit_checkitem_test.dart`
  - 式は arg_class の JSON。formula_class は演算子の番号、type_class は値の型(数 = 1・文字 = 2・はい/いいえ = 3)。式が無いときは 0
  - DB の arg_class(オブジェクトまたは文字列。値が数でもよい)を、画面の式にする。読めないときは空
  - 項目は、コード・名称・監査標準の ID・判定の式を持つ
  - 名称・監査標準が空、式が読めないときは検証エラー(通信しない)
  - 登録は、呼称を作り、式を arg_class・formula_class・type_class に分けて送る(更新者つき)
  - 名称を変えるときは、新しい呼称を作る(既存の呼称へ書かない。履歴に過去の名称が残る)
  - 式を変えなければ、式の列は送らない。式を空にすると、式なし(0・null)にする。削除は論理削除
  - 品質共通の定義の auditstdcheck は、判定の式(条件)の項目を持つ
- `test/quality_common_connection_test.dart`
  - リスクを、画面の値(題名は言語コード ja)で取得できる
  - リスクは読み取り専用: 新規・保存・削除を出さず、書き込もうとすると失敗する(監査標準の項目は書き込める。audit_checkitem_test.dart)
- `test/quality_common_entities_test.dart`
  - 台帳を持つ実体のルートがある(子の台帳は編集だけ)
  - すべての実体に、台帳・編集のパスが対応する
  - サンプルが定義に合っている(必須・形式・選択肢・親子)
  - 同じプロジェクト内の参照と親子が、サンプルの id に解決する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
