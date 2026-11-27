# pms_graphql ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

pms_graphql: このファイルは、このリポジトリでコードを扱う際に Claude Code (claude.ai/code) へ向けたガイダンスを提供します。

### 1.2 範囲

- 場所: `packages/infra/pms_graphql`(infra(通信・認証・ログ・テストの道具))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`entry_app`(アプリ)、`pms_app`(アプリ)、`page_mediator_extension`(パッケージ)、`announcement`(パッケージ)、`document_settings`(パッケージ)、`item`(パッケージ)、`manual`(パッケージ)、`organization`(パッケージ)、`plan_change`(パッケージ)、`production_plan`(パッケージ)、`production_process`(パッケージ)、`purchasing`(パッケージ)、`quality`(パッケージ)、`quality_common`(パッケージ)、`quality_document`(パッケージ)、`resource`(パッケージ)、`sales`(パッケージ)、`shared_master`(パッケージ)、`system`(パッケージ)、`work_record`(パッケージ)、`data_test_harness`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)、`access_control_model`(パッケージ)、`announcement_model`(パッケージ)、`barcode_entry_model`(パッケージ)、`cost_model`(パッケージ)、`document_approval_model`(パッケージ)、`item_model`(パッケージ)、`manual_model`(パッケージ)、`organization_model`(パッケージ)、`plan_change_model`(パッケージ)、`production_plan_model`(パッケージ)、`purchasing_model`(パッケージ)、`quality_document_model`(パッケージ)、`quality_model`(パッケージ)、`resource_model`(パッケージ)、`return_model`(パッケージ)、`sales_model`(パッケージ)、`shared_master_model`(パッケージ)、`supply_model`(パッケージ)、`system_model`(パッケージ)、`work_record_model`(パッケージ)

### 2.2 依存先(ワークスペース内)

`data_strategist`、`logger_provider`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `AuditUser` | クラス | 更新者(ログイン中の担当者)。登録・更新・論理削除の `update_user_id`・`update_user_history_id` に渡す。 |
| FR-02 | `AuditUserSource` | 型の別名 | 更新者を返す関数。ログインしていない(担当者が分からない)ときは null を返す。 |
| FR-03 | `AuditUserResolver` | クラス | ログイン中の担当者の ID([staffId])から、最新の履歴の ID を引いて [AuditUser] にする。 |
| FR-04 | `FilterStep` | クラス | 検索条件の展開で辿る1つの関連。 |
| FR-05 | `FlatFilterPath` | クラス | 平坦化キー1つの展開先: 関連の経路([steps])と、その先の列([column])。 |
| FR-06 | `FlatFilterSpec` | クラス | 1つの画面の対応表。[filterType]は最上位の`<テーブル>Filter`型名。 |
| FR-07 | `FlatFilterConverter` | クラス | 平坦な検索条件のMapを、入れ子のFilterのMapへ展開する。 |
| FR-08 | `GraphQLTypeKind` | 列挙型 | PostGraphile(GraphQL)スキーマにおける列の型の種類。 |
| FR-09 | `ContentVariable` | クラス | 平坦化キー名([name])とGraphQLの型([kind])のペア。 |
| FR-10 | `GraphqlFetch` | 型の別名 | 問い合わせ変数を受け取り、GraphQLを実行して結果[R]を返す関数。 |
| FR-11 | `GraphqlDataRepository` | クラス | GraphQL(PostGraphile)の取得元(Adapter: `IDataRepository`をGraphQLの問い合わせ変数へ適合させる)。 |
| FR-12 | `SharedFileLink` | クラス | 共有ファイル(`trans_file`)と、それを持つ行(例: つなぎの表 `trans_complaint_file`・担当者のアイコン `info_staff_icon`)を、 |
| FR-13 | `fromJsonDatetime` | 関数 | `Datetime`(ISO 8601 の文字列)を [DateTime] にする。 |
| FR-14 | `toJsonDatetime` | 関数 | [DateTime] を `Datetime` の文字列にする。 |
| FR-15 | `fromJsonBigInt` | 関数 | `BigInt`(PostGraphile は文字列で返す)を [BigInt] にする。数値で届いた場合も受け付ける。 |
| FR-16 | `toJsonBigInt` | 関数 | [BigInt] を `BigInt` の文字列にする。 |
| FR-17 | `fromJsonJson` | 関数 | `JSON`(DB の jsonb)を値にする。PostGraphile v4 は JSON を、JSON の文字列として返す(文字列でなく値で届いた場合も受け付ける)。 |
| FR-18 | `toJsonJson` | 関数 | 値を `JSON` として送る。PostGraphile v4 は、JSON の文字列を受け取る(`jsonEncode` できる値: 配列・オブジェクト・文字列・数値)。 |
| FR-19 | `ModelRoundTrip` | 型の別名 | モデルのfromJson→toJsonを行う関数(画面ごとに生成クラスが異なるため呼び出し側が渡す)。 |
| FR-20 | `SchemaIndex` | クラス |  |
| FR-21 | `namedTypeOf` | 関数 |  |
| FR-22 | `typeToString` | 関数 |  |
| FR-23 | `DataPath` | 型の別名 | Map上の位置。String=キー、int=リスト添字(`nodes[0]`)。 |
| FR-24 | `pathToString` | 関数 |  |
| FR-25 | `readPath` | 関数 |  |
| FR-26 | `LeafInfo` | クラス | 選択セット上のリーフ(スカラー)1件の情報。 |
| FR-27 | `RfeEditPair` | クラス | 1画面分のRFE/Editペア。 |
| FR-28 | `Finding` | クラス | 検証結果の1項目。 |
| FR-29 | `VariableResolution` | クラス | 引数1件の解決結果。 |
| FR-30 | `ConversionReport` | クラス |  |
| FR-31 | `RfeEditConversionAnalyzer` | クラス |  |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **このパッケージについて**: `gqlib` は `graphql` をラップし、型付き・Result方式のクライアントとして
- **コマンド**: このディレクトリ (`flutter_pub_lib/gqlib`) から実行します。
- **アーキテクチャ**: 公開APIの全体は `lib/gqlib.dart` で定義されており、5つのサブライブラリを re-export しています。
- **コメント**: 日本語でまとめる

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/pms_graphql.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 97 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 15 件、テストケース 97 件。

- `test/audit_user_test.dart`
  - ログイン中の担当者の ID から、最新の履歴の ID を引く
  - 同じ担当者は、履歴の ID を取り直さない。担当者が変わったときだけ引く
  - ログインしていない(担当者が分からない)ときは、通信せず null
  - 担当者の履歴が無いときは null
- `test/exceptions/graphql_provider_exception_test.dart`
  - toString includes the type and message
  - toString includes the type and message
  - toString includes the type and message
  - exposes the status code and toString includes it
  - internalExeption defaults to null
  - toString includes the wrapped internal exception
- `test/exceptions/graphql_timeout_exception_test.dart`
  - is an Exception
  - exposes the message it was created with
  - message defaults to null when not provided
  - toString includes the message
- `test/extends/dupricate_test.dart`
  - returns the same list untouched when there are no duplicates
  - keeps the first occurrence by default (preferLast: false)
  - preferLast only flips which occurrence the logs call "the duplicate"
  - preferLast keeps the first-seen instance's data, not the last, for value-equal-but-distinct items
  - logs record the item and both the original and duplicate-of index
  - an empty list produces an empty result
  - a list with all-unique items produces no logs regardless of preferLast
- `test/flat_filter_converter_test.dart`
  - 自テーブルの列は演算子のMapをそのまま渡す
  - 1対1の関連は前方の関連フィールドで辿り、同じ経路の条件は1つにまとまる
  - 1対多はsomeで辿り、変数による条件を同じsomeの中へ加える
  - nullまたは空の条件は無視し、条件が無ければ{and: []}を返す(空のMapはサーバーが拒否する)
  - 展開できないキーはArgumentError
  - 演算子のMapでない値はArgumentError
  - 1対多の条件に必要な変数が無ければArgumentError
  - 変換結果は呼び出し側のMapを書き換えない
  - 葉を展開し、and / or / not の入れ子を保つ
  - 単独の葉はそのまま展開し、条件が無ければ {and: []}
  - 展開できないキーは ArgumentError
- `test/flat_map_test.dart`
  - Connection形状でなければ空リストを返す
  - 各レコードのプレーンな列をリストとして取り出せる
  - 要件: DepartmentPage.kinds[].valueのようにネストしたtoManyの各レコードから
  - collapseSingleRecordPathsを指定しない場合、Connectionのまま(未解決)で止まる
- `test/graphql_converters/graphql_converter_collection_test.dart`
  - CollectionItem exposes the model Type and its string form
  - hasConverterFromInstance is true for a registered model type
  - hasConverterFromInstance is false for an unregistered model type
  - getConverterFromInstance returns the matching converter
  - getConverterFromInstance returns null for an unregistered model type
  - addConverter registers a converter that can then be found
  - removeConverter<T> unregisters a converter by type
  - removeAtConverter unregisters by converter instance
  - removeAllConverters empties the registry
  - hasConverter<T> は、登録した型だけ true
  - getConverter<T> は、登録した型のコンバーターを返し、無ければ null
- `test/graphql_data_repository_test.dart`
  - 条件が無ければ first と固定の変数だけを渡す(nullは含めない)
  - take 0 は「件数だけ」として first: 0 を渡す
  - skip は offset、predicate は入れ子の filter、orders は orderBy になる
  - 不正な引数・対応表の無い条件はエラー
  - QueryFacade 経由でも同じ変数になる
- `test/pms_graphql_test.dart`
  - IEditModel is exported and implementable
  - GraphqlProverResult (Ok/Err) is exported
  - the GraphqlProviderException hierarchy is exported
  - GraphqlTimeoutException is exported
  - GraphQLConverterCollection is exported and starts empty when given no items
  - removeDuplicates is exported
  - GraphQLClientProvider is exported and constructible
- `test/providers/client_provider_offline_test.dart`
  - returns Ok with the response data on success
  - returns Err(DeveloperError) for a graphql error with no linkException
  - returns Err(NetworkError) when the link fails with a SocketException
  - rethrows when the failure type has no GraphqlProviderException mapping
  - throws GraphqlTimeoutException when the call exceeds timeLimit
  - throws ArgumentError when no converter collection is configured
  - throws ArgumentError when a model has no registered converter
  - executes each mutation independently when isHasura is false
  - batches same-document inserts into a single mutation in hasura mode
  - removes duplicate models (keeping the last) and logs it
- `test/providers/client_provider_public_api_test.dart`
  - a valid query returns Ok with real country data
  - a query with an unknown field returns Err(DeveloperError)
  - an unreachable host returns Err(NetworkError)
  - a near-zero timeLimit surfaces as a timeout against the real network
- `test/providers/client_provider_session_test.dart`
  - 401 は期限切れ(SessionExpiredError.expired)。ServerError でもあり、ステータスを持つ
  - JWT の不正と分かる 403 は invalid
  - JWT の失敗と分からない 403(権限の拒否など)は、これまでどおり ServerError
  - 分類は sessionExpiredReasonOf でも使える
  - HTTP 200 の GraphQL エラー(匿名)は PermissionDeniedError。データは null
  - HTTP 500 の permission denied to set role も PermissionDeniedError
  - 権限の拒否ではない GraphQL エラーは、これまでどおり DeveloperError
- `test/results/graphql_prover_result_test.dart`
- `test/scalars_test.dart`
- `test/shared_file_link_test.dart`

(ほか 17 件は、各テストファイルを参照)

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
