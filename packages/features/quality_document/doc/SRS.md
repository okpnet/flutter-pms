# quality_document ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

quality_document: 品質管理文書 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

品質管理文書 機能の実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 デザインは `tools/open-design` の Html のトップメニュー「品質管理文書」に従う(`pms_design.md` の該当章を参照)。 契約(遷移先・命令の型)が他の機能から必要になったら、`lib/quality_document_api.dart` に公開する(別パッケージ `quality_document_api` は作らない)。

### 1.2 範囲

- 場所: `packages/features/quality_document`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)

### 2.2 依存先(ワークスペース内)

`localized_values`、`feature_shared`、`baton_lib`、`app_shell`、`markdown_view`、`markdown_pdf`、`approval_stamp`、`wysiwyg_editor`、`entity_screens`、`data_strategist`、`pms_graphql`、`quality_document_model`

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
| FR-01 | `DocumentBody` | クラス | 文書コンテンツの本文(言語 `ja` の Markdown)。 |
| FR-02 | `DocumentBodyNotFound` | クラス | 本文が見つからない(文書コンテンツが無い)。 |
| FR-03 | `IDocumentBodyGateway` | インターフェイス | 本文の取得元。GraphQL 版は `GraphqlDocumentBodyGateway`、既定はメモリ上(サンプル)。 |
| FR-04 | `InMemoryDocumentBodyGateway` | クラス |  |
| FR-05 | `documentBodyGatewayProvider` | Riverpod プロバイダ |  |
| FR-06 | `documentBodyIsAdminProvider` | Riverpod プロバイダ | 現在のユーザーが本文を編集できるか(管理者だけ)。既定は閲覧のみ。アプリが認証の結果で差し込む。 |
| FR-07 | `GraphqlDocumentBodyGateway` | クラス | 文書コンテンツの本文の GraphQL 版の取得元。 |
| FR-08 | `qualityDocumentRepositories` | 関数 | 品質管理文書の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、 |
| FR-09 | `QualityDocumentModule` | クラス | 品質管理文書をアプリへ組み込むための口。 |
| FR-10 | `DocumentApproval` | クラス | 文書の公開・承認の状態。DB のビュー(`v_document_publication`・`v_document_approval_stamp`)の値を詰めるだけで、判定は持たない。 |
| FR-11 | `IDocumentApprovalSource` | インターフェイス | 文書の承認の状態の取得元。アプリが GraphQL 版に差し替える(Strategy)。既定は承認なし(公開・スタンプなし)。 |
| FR-12 | `NoDocumentApprovalSource` | クラス |  |
| FR-13 | `documentApprovalSourceProvider` | Riverpod プロバイダ |  |
| FR-14 | `documentAppSettingsProvider` | Riverpod プロバイダ | アプリの設定(`info_app.settings`。用紙・テーマ・ヘッダ/フッタ・スタンプ)。既定は標準値。アプリが DB の値に差し替える。 |
| FR-15 | `documentPdfFontsProvider` | Riverpod プロバイダ | PDF に埋め込むフォント。既定は同梱の BIZ UDP 明朝。 |
| FR-16 | `IDocumentFileSaver` | インターフェイス | PDF を保存する(Strategy)。取り消しは false。 |
| FR-17 | `documentFileSaverProvider` | Riverpod プロバイダ |  |
| FR-18 | `documentPrinterNameProvider` | Riverpod プロバイダ | PDF の「出力した人」。既定は空。アプリがログインユーザーの表示名に差し替える。 |
| FR-19 | `documentClockProvider` | Riverpod プロバイダ | 出力日時の取得元(テストで固定する)。 |
| FR-20 | `DocumentBodyDestination` | クラス | 文書コンテンツの本文(Markdown)の画面へ。[contentId] は文書コンテンツの ID。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 文書レベル台帳
- **参照するモデル**: `packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `XxxModule implements FeatureModule` を `lib/src/quality_document_module.dart` に置き、公開は `lib/quality_document.dart` のバレルから `QualityDocumentModule` だけにする。アプリは `lib/app.dart` の `featur…
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **本文の画面(文書コンテンツ)**: 文書コンテンツの本文(Markdown)の閲覧・編集。パスは `/quality-document/body?id=<文書コンテンツの ID>`(編集の状態で開くときは `edit=1`)。遷移先は契約 `quality_document_api.dart` の `DocumentBodyDestination`。機能コード `G`・画面コード `B`。
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。
- **取得元(GraphQL 版。読み取り専用)**: `lib/src/graphql/quality_document_repositories.dart` の `qualityDocumentRepositories(GraphQLClient)` が、文書階層(`doctier`)・文書(`doc`。ツリー)の取得元を作る。アプリ(`pms_app` の `graphql_overrides.dart`)…
- **メニュー(運用と改善)**: 文書(`doc`)と文書コンテンツ(`doccontent`)の閲覧・編集・PDF は、`manual`(文書 = ルート、コンテンツ = ページの木)に統合した。メニュー(グループ「運用と改善」。`operationsMenuGroupId`)には、文書階層(`doctier`)とレポート(`report`)だけを出す。台帳(`/e/doc`・`/e/do…

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/quality_document.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 16 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 5 件、テストケース 16 件。

- `test/document_body_test.dart`
  - 遷移先はパスに変換できる
  - 閲覧のみ: 本文が出て、編集の操作は出ない
  - 管理者: 編集して保存すると、取得元の本文が変わる
  - 管理者: 変更が無いまま保存しても取得元は変わらない
  - 見つからない本文は案内を出す
  - GraphQL 版: 本文を読み、保存は ja の値だけを JSON の文字列で渡す
  - GraphQL 版: 文書コンテンツが無ければ DocumentBodyNotFound
- `test/document_pdf_test.dart`
  - PDF ボタンで、本文を PDF にして保存する(ファイル名は題名)
  - 承認待ちの文書は帯を出し、読めないときは本文の代わりに案内を出す
- `test/menu_test.dart`
  - 文書・文書コンテンツはマニュアルに統合したため出さない。文書階層・レポートはシステムメニューへ
- `test/quality_document_connection_test.dart`
  - 文書階層・文書を、画面の値(名称は言語コード ja)で取得できる
  - 実体は読み取り専用: 新規・保存・削除を出さず、書き込もうとすると失敗する
- `test/quality_document_entities_test.dart`
  - 台帳を持つ実体のルートがある(子の台帳は編集だけ)
  - すべての実体に、台帳・編集のパスが対応する
  - サンプルが定義に合っている(必須・形式・選択肢・親子)
  - 同じプロジェクト内の参照と親子が、サンプルの id に解決する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
