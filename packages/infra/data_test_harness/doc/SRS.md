# data_test_harness ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

data_test_harness: テスト専用。GraphQLのテスト接続先・取得元の代役を一か所にまとめる。dev_dependenciesにだけ書く。

`data_test_harness`は、テスト専用のライブラリです。データの取得元([IDataRepository](../../foundation/data_strategist/lib/src/data_repository.dart))とGraphQL(`pms_graphql`)をつなぐテストの道具を、一か所にまとめます。

### 1.2 範囲

- 場所: `packages/infra/data_test_harness`(infra(通信・認証・ログ・テストの道具))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`announcement`(パッケージ・テスト用)、`barcode_entry`(パッケージ・テスト用)、`cost`(パッケージ・テスト用)、`dashboard_container`(パッケージ・テスト用)、`document_settings`(パッケージ・テスト用)、`item`(パッケージ・テスト用)、`manual`(パッケージ・テスト用)、`organization`(パッケージ・テスト用)、`plan_change`(パッケージ・テスト用)、`production_plan`(パッケージ・テスト用)、`production_process`(パッケージ・テスト用)、`purchasing`(パッケージ・テスト用)、`quality`(パッケージ・テスト用)、`quality_common`(パッケージ・テスト用)、`quality_document`(パッケージ・テスト用)、`resource`(パッケージ・テスト用)、`sales`(パッケージ・テスト用)、`shared_master`(パッケージ・テスト用)、`system`(パッケージ・テスト用)、`work_record`(パッケージ・テスト用)、`jwt_verification_test`(パッケージ・テスト用)、`access_control_model`(パッケージ・テスト用)、`announcement_model`(パッケージ・テスト用)、`barcode_entry_model`(パッケージ・テスト用)、`cost_model`(パッケージ・テスト用)、`document_approval_model`(パッケージ・テスト用)、`item_model`(パッケージ・テスト用)、`manual_model`(パッケージ・テスト用)、`organization_model`(パッケージ・テスト用)、`plan_change_model`(パッケージ・テスト用)、`production_plan_model`(パッケージ・テスト用)、`purchasing_model`(パッケージ・テスト用)、`quality_document_model`(パッケージ・テスト用)、`quality_model`(パッケージ・テスト用)、`resource_model`(パッケージ・テスト用)、`return_model`(パッケージ・テスト用)、`sales_model`(パッケージ・テスト用)、`shared_master_model`(パッケージ・テスト用)、`supply_model`(パッケージ・テスト用)、`system_model`(パッケージ・テスト用)、`work_record_model`(パッケージ・テスト用)

### 2.2 依存先(ワークスペース内)

`data_strategist`、`pms_graphql`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `RecordedRequest` | クラス | 受け取った要求の記録。 |
| FR-02 | `FaultKind` | 列挙型 | 応答の振る舞い。 |
| FR-03 | `FaultyGraphqlServer` | クラス | 通信の異常を再現する、ローカルのGraphQLサーバーの代役(テスト専用)。 |
| FR-04 | `RecordedFind` | クラス | [RecordingDataRepository]が受け取った`find`1回分の呼び出し。 |
| FR-05 | `RecordingDataRepository` | クラス | 呼び出しを記録し、決めておいた結果を返す取得元(Test Double: Spy + Stub)。 |
| FR-06 | `ReplayLink` | クラス | 記録した(または手で決めた)応答を返す GraphQL の通信の層。サーバーにも DB にも接続しない。 |
| FR-07 | `RecordingLink` | クラス | 実サーバーの応答を JSON として記録する通信の層(別の Link を包む)。 |
| FR-08 | `ReplayGraphql` | クラス | [ReplayLink] を使う [GraphQLClientProvider] を作る。 |
| FR-09 | `serverTest` | 関数 | 検証用GraphQLサーバーを必要とするテストを登録する。 |
| FR-10 | `TestServer` | クラス | 検証用GraphQLサーバー(PostGraphile)への接続。テストの接続先はここだけが持つ。 |
| FR-11 | `TestToken` | クラス | 検証用サーバーを使うテストの、GraphQL 用の JWT(PocketBase が発行する短期のトークン)を用意する。 |
| FR-12 | `TestTokenException` | クラス | JWT を取得できなかった(資格情報の誤り・PocketBase に接続できない、など)。 |
| FR-13 | `endedInTimeout` | 関数 | [run]がタイムアウトで終わったか。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **このライブラリについて**: `data_test_harness`は、テスト専用のライブラリです。データの取得元([IDataRepository](../../foundation/data_strategist/lib/src/data_repository.dart))とGraphQL(`pms_graphql`)をつなぐテストの道具を、一か所にまとめます。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/data_test_harness.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 25 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 6 件、テストケース 25 件。

- `test/data_test_harness_test.dart`
  - 呼び出しを記録し、固定の結果を返す
  - onFindがあれば呼び出しごとに結果を変えられる(resultより優先)
  - 結果の指定が無ければStateError
  - 接続できる候補のうち、先に接続できたものを返す
  - どれにも接続できなければnull
  - 資格情報が渡されていなければ、取得せず null(匿名で実行する)
  - PocketBase の接続先は、末尾の / と /api を除く
- `test/dev_only_dependency_test.dart`
  - data_test_harnessはdev_dependenciesにだけ書かれている
- `test/faulty_graphql_server_test.dart`
  - 通常の応答は Ok で、要求が記録される
  - 認証ヘッダーは要求に付く
  - $status は Err(ServerError) でステータスを持つ(本文: ${body ?? 
  - 遅延が制限時間を超えるとタイムアウトで終わる
  - 遅延が制限時間内なら Ok
  - 応答の途中で切断されると Err
  - 応答の前に切断されると Err
  - 切断のあと、サーバーが戻れば次の問い合わせは Ok
- `test/recorded_fixtures_test.dart`
  - 記録した応答が読み込め、操作名で再生できる
- `test/replay_graphql_test.dart`
  - 登録した応答を返し、要求を記録する(サーバーに接続しない)
  - 空の一覧を返せる(空の表示の確認)
  - delay の間は完了しない(読み込み中の表示の確認)
  - GraphQL のエラー・通信の失敗は Err になる
  - 登録していない操作は、黙って空を返さず、例外になる
  - 変数の条件(when)で応答を分けられる
  - 記録(RecordingLink)した JSON を、サーバー無しで再生できる
- `test/test_token_self_signed_test.dart`
  - 自己署名の JWT は、PostGraphile が検証できる形(HS256・role・aud・staff_id・exp)

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
