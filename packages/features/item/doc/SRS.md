# item ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

item: 品目 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

品目 機能の実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 デザインは `tools/open-design` の Html のトップメニュー「品目」に従う(`pms_design.md` の該当章を参照)。 契約(遷移先・命令の型)が他の機能から必要になったら、`lib/item_api.dart` に公開する(別パッケージ `item_api` は作らない)。

### 1.2 範囲

- 場所: `packages/features/item`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`cost/example`(example)、`plan_change/example`(example)、`production_plan/example`(example)、`production_process/example`(example)、`purchasing/example`(example)、`resource/example`(example)、`sales/example`(example)、`work_record/example`(example)

### 2.2 依存先(ワークスペース内)

`localized_values`、`feature_shared`、`entity_screens`、`data_strategist`、`pms_graphql`、`item_model`

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
| FR-01 | `itemRepositories` | 関数 | 品目の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、 |
| FR-02 | `ItemModule` | クラス | 品目をアプリへ組み込むための口。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 品目区分 [テーブル構造] / [編集構造]
- **参照するモデル**: `packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `XxxModule implements FeatureModule` を `lib/src/item_module.dart` に置き、公開は `lib/item.dart` のバレルから `ItemModule` だけにする。アプリは `lib/app.dart` の `featureModules` に1行足して組み込む。
- **購入品と品目仕入先**: 品目に「購入品」(`catalog_item`。DB の `mstr_item.catalog_item`、コメント『購入品』)のチェックボックスがある。品目の台帳には はい/いいえ の列。品目に仕入先(品目仕入先`itemsupplier`)が登録されている間は、チェックを外せない(理由を項目の下に表示してエラーにする)。
- **品目の作業単価と在庫**: 品目の作業単価(`itemtaskcost`。DB の `mstr_item_task_cost`)は、品目が所有する子の台帳(品目の編集画面の下)。項目は工程場所(参照。工程の機能の `taskres`)・作業単価(円、0以上)・備考。
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **取得元(GraphQL 版。読み取り専用)**: `lib/src/graphql/item_repositories.dart` の `itemRepositories(GraphQLClient)` が、品目区分(`itemkind`)・品目(`item`)の取得元を作る。アプリ(`pms_app` の `graphql_overrides.dart`)が `entityRepositoryOverri…
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/item.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 10 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 4 件、テストケース 10 件。

- `test/cost_action_test.dart`
  - item の台帳に、行の操作「cost」がある(機能が処理する操作)
  - 行の操作で、標準原価の一覧を、その品目(行の ID)で絞って開く。ほかの操作は処理しない
- `test/item_connection_test.dart`
  - 品目区分と品目を、画面の値(名称は言語コード ja)で取得できる
  - 実体は読み取り専用: 新規・保存・削除を出さず、書き込もうとすると失敗する
- `test/item_entities_test.dart`
  - 台帳を持つ実体のルートがある(子の台帳は編集だけ)
  - すべての実体に、台帳・編集のパスが対応する
  - サンプルが定義に合っている(必須・形式・選択肢・親子)
  - 同じプロジェクト内の参照と親子が、サンプルの id に解決する
- `test/item_kind_test.dart`
  - 品目区分の登録 → 取得 → 更新 → 取り消し(データを変更し、後始末で論理削除する)
  - 名称が無いと、検証エラー(必須)

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
