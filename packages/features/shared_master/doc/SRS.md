# shared_master ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

shared_master: 共有マスタ(配送区分など複数のメニューにまたがるマスタ)の実装。

複数のメニューにまたがる共有マスタの実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 デザインは `tools/open-design` の Html のトップメニュー「営業」「購買」(両方にある「配送区分」)に従う。

### 1.2 範囲

- 場所: `packages/features/shared_master`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`item/example`(example)、`production_plan/example`(example)、`production_process/example`(example)、`purchasing/example`(example)、`quality/example`(example)、`sales/example`(example)

### 2.2 依存先(ワークスペース内)

`quality`、`loadux_lib`、`localized_values`、`app_shell`、`feature_shared`、`entity_screens`、`baton_lib`、`data_strategist`、`flgtable_lib`、`logger_provider`、`pms_graphql`、`shared_master_model`

テスト用: `data_test_harness`、`theme_lib`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `sharedMasterRepositories` | 関数 | 共有マスタの実体の取得元(GraphQL 版)。アプリが [GraphQLClient] を渡して組み立て、 |
| FR-02 | `SharedMasterModule` | クラス | 共有マスタをアプリへ組み込むための口。区分(配送区分・利害関係者など)のモジュールを束ねる。 |
| FR-03 | `FindShippingKindNameCommand` | クラス | 配送区分の名称を id から取得する。見つからなければ null。 |
| FR-04 | `ShippingKindListDestination` | クラス | 配送区分台帳へ。 |
| FR-05 | `ShippingKindEditDestination` | クラス | 配送区分の編集へ。[id] が null のときは新規登録。 |
| FR-06 | `ShippingKindPickerDestination` | クラス | 配送区分を1件選んで、その id を返す(キャンセル時は null)。 |
| FR-07 | `stakeholderEditDestination` | 関数 | 利害関係者の編集へ。[id] が null なら新規。[role] の台帳から開くときは、その役割の |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 配送区分 [テーブル構造] / [編集構造]。営業と購買の両方のメニューから開く(同じ画面を共有し、重複実装しない)。`lib/src/shipping_kind/` に実装済み
- **構成**: | 種別 | ファイル | 内容 |
- **参照するモデル**: `packages/model_providers/*_model/gql/` の `sales/shipping_kind.yaml` を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `SharedMasterModule implements FeatureModule` を `lib/src/shared_master_module.dart` に置き、実装の入口 `lib/shared_master.dart`(アプリだけが読み込む)から `SharedMasterModule` だけを公開する。
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、配送区分台帳・登録・顧客台帳・外部供給者台帳を開く(`example`の遷移は CommandBus を通さなくてよい)。画面を足したら`example/lib/main.dart`の`entries`に1行足す。
- **取得元(GraphQL 版)**: `lib/src/graphql/shared_master_repositories.dart` の `sharedMasterRepositories(GraphQLClient, {AuditUserSource? auditUser})` が、利害関係者(`stakeholder`)の取得元を作る。アプリ(`pms_app` の `graphql_o…

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | `loggerProvider` を使う |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/shared_master.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 32 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 7 件、テストケース 32 件。

- `test/complaint_action_test.dart`
  - stakeholder の台帳に、行の操作「complaint」がある(生成物ではなく、モジュールが足す)
  - 行の操作で、異常の登録の画面へ、種類(stakeholder)と対象の ID・表示名を渡して進む。ほかの操作は処理しない
- `test/shared_master_connection_test.dart`
  - 利害関係者の一覧を、画面の値(名称は言語コード ja、役割は はい/いいえ)で取得できる
  - 定義: 利害関係者は書き込める。配送区分は読み取り専用。必須の検証は通信しない
  - 利害関係者を登録・更新・削除(論理削除)できる。更新は渡した項目だけ変わる。コード重複は検証エラー
- `test/shared_master_entities_test.dart`
  - 台帳を持つ実体のルートがある(子の台帳は編集だけ)
  - すべての実体に、台帳・編集のパスが対応する
  - サンプルが定義に合っている(必須・形式・選択肢・親子)
  - 同じプロジェクト内の参照と親子が、サンプルの id に解決する
- `test/shipping_kind_test.dart`
  - 見本の遷移先はすべてパスに変換できる(登録漏れ検出)
  - パスの対応(id は UUID の文字列)
  - 取得・skip/take
  - 新規登録で UUID が採番される
  - 更新できる
  - 必須とコード重複は検証エラー
  - 削除できる
  - 使用中は削除できない
  - provider 経由(data_strategist)で一覧を取得できる
  - 台帳に列と行が表示される
  - 言語を英語にすると見出しと列が英語になる
  - 編集画面は既存値を表示し、必須未入力はエラーを出す
  - 使用中の配送区分は削除確認のあとエラーを表示する
  - 存在しない id は見つからない表示
- `test/stakeholder_new_defaults_test.dart`
  - 新規は、アプリが決めた標準の通貨を初期値にする
  - 遷移先が渡した値と合わせる。同じ項目は遷移先が優先される
  - 標準の通貨が取り出せない(空)ときは、初期値を入れない
- `test/stakeholder_picker_test.dart`
  - サプライヤー・顧客の選択は、利害関係者の台帳を役割で絞った選択画面になる
  - サプライヤーの選択: 見出しは「サプライヤーの選択」、外部供給者だけが並び、選ぶと選択の結果が返る
- `test/stakeholder_test.dart`
  - 顧客台帳・外部供給者台帳は、同じ実体を役割で絞って開く
  - 新規は、台帳の役割のフラグを初期値にする
  - 顧客・外部供給者の選択肢は、役割で絞った利害関係者
  - 顧客コードの重複は保存できない

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
