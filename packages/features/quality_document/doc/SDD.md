# quality_document ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

quality_document: 品質管理文書 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/quality_document` |
| Dart ファイル(生成物を除く) | 14 |
| `lib/src` の分け方 | `body(2)`、`entities(3)`、`graphql(2)`、`i18n(1)`、`page(3)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `DocumentBody` | クラス | 文書コンテンツの本文(言語 `ja` の Markdown)。 | `lib/src/body/document_body_gateway.dart` |
| `DocumentBodyNotFound` | クラス | 本文が見つからない(文書コンテンツが無い)。 | `lib/src/body/document_body_gateway.dart` |
| `IDocumentBodyGateway` | インターフェイス | 本文の取得元。GraphQL 版は `GraphqlDocumentBodyGateway`、既定はメモリ上(サンプル)。 | `lib/src/body/document_body_gateway.dart` |
| `InMemoryDocumentBodyGateway` | クラス |  | `lib/src/body/document_body_gateway.dart` |
| `documentBodyGatewayProvider` | Riverpod プロバイダ |  | `lib/src/body/document_body_gateway.dart` |
| `documentBodyIsAdminProvider` | Riverpod プロバイダ | 現在のユーザーが本文を編集できるか(管理者だけ)。既定は閲覧のみ。アプリが認証の結果で差し込む。 | `lib/src/body/document_body_gateway.dart` |
| `GraphqlDocumentBodyGateway` | クラス | 文書コンテンツの本文の GraphQL 版の取得元。 | `lib/src/graphql/graphql_document_body_gateway.dart` |
| `qualityDocumentRepositories` | 関数 | 品質管理文書の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、 | `lib/src/graphql/quality_document_repositories.dart` |
| `QualityDocumentModule` | クラス | 品質管理文書をアプリへ組み込むための口。 | `lib/src/quality_document_module.dart` |
| `DocumentApproval` | クラス | 文書の公開・承認の状態。DB のビュー(`v_document_publication`・`v_document_approval_stamp`)の値を詰めるだけで、判定は持たない。 | `lib/src/body/document_pdf.dart` |
| `IDocumentApprovalSource` | インターフェイス | 文書の承認の状態の取得元。アプリが GraphQL 版に差し替える(Strategy)。既定は承認なし(公開・スタンプなし)。 | `lib/src/body/document_pdf.dart` |
| `NoDocumentApprovalSource` | クラス |  | `lib/src/body/document_pdf.dart` |
| `documentApprovalSourceProvider` | Riverpod プロバイダ |  | `lib/src/body/document_pdf.dart` |
| `documentAppSettingsProvider` | Riverpod プロバイダ | アプリの設定(`info_app.settings`。用紙・テーマ・ヘッダ/フッタ・スタンプ)。既定は標準値。アプリが DB の値に差し替える。 | `lib/src/body/document_pdf.dart` |
| `documentPdfFontsProvider` | Riverpod プロバイダ | PDF に埋め込むフォント。既定は同梱の BIZ UDP 明朝。 | `lib/src/body/document_pdf.dart` |
| `IDocumentFileSaver` | インターフェイス | PDF を保存する(Strategy)。取り消しは false。 | `lib/src/body/document_pdf.dart` |
| `documentFileSaverProvider` | Riverpod プロバイダ |  | `lib/src/body/document_pdf.dart` |
| `documentPrinterNameProvider` | Riverpod プロバイダ | PDF の「出力した人」。既定は空。アプリがログインユーザーの表示名に差し替える。 | `lib/src/body/document_pdf.dart` |
| `documentClockProvider` | Riverpod プロバイダ | 出力日時の取得元(テストで固定する)。 | `lib/src/body/document_pdf.dart` |
| `DocumentBodyDestination` | クラス | 文書コンテンツの本文(Markdown)の画面へ。[contentId] は文書コンテンツの ID。 | `lib/src/page/document_body_destination.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `IDocumentBodyGateway` | Strategy(取得元の差し替え) | `lib/src/body/document_body_gateway.dart` |
| `GraphqlDocumentBodyGateway` | Adapter(生成された読み込みの結果と、画面の [DocumentBody] を変換する) | `lib/src/graphql/graphql_document_body_gateway.dart` |
|  | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/quality_document_repositories.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `localized_values`、`feature_shared`、`baton_lib`、`app_shell`、`markdown_view`、`markdown_pdf`、`approval_stamp`、`wysiwyg_editor`、`entity_screens`、`data_strategist`、`pms_graphql`、`quality_document_model`
- テスト用: `data_test_harness`
- 利用元: `pms_app`(アプリ)
- 外部パッケージ: `file_picker`、`flutter_riverpod`、`go_router`、`slang`、`gql`、`graphql`

## 6. 設計上の決定(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 文書レベル台帳
- **参照するモデル**: `packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `XxxModule implements FeatureModule` を `lib/src/quality_document_module.dart` に置き、公開は `lib/quality_document.dart` のバレルから `QualityDocumentModule` だけにする。アプリは `lib/app.dart` の `featur…
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **本文の画面(文書コンテンツ)**: 文書コンテンツの本文(Markdown)の閲覧・編集。パスは `/quality-document/body?id=<文書コンテンツの ID>`(編集の状態で開くときは `edit=1`)。遷移先は契約 `quality_document_api.dart` の `DocumentBodyDestination`。機能コード `G`・画面コード `B`。
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。
- **取得元(GraphQL 版。読み取り専用)**: `lib/src/graphql/quality_document_repositories.dart` の `qualityDocumentRepositories(GraphQLClient)` が、文書階層(`doctier`)・文書(`doc`。ツリー)の取得元を作る。アプリ(`pms_app` の `graphql_overrides.dart`)…
- **メニュー(運用と改善)**: 文書(`doc`)と文書コンテンツ(`doccontent`)の閲覧・編集・PDF は、`manual`(文書 = ルート、コンテンツ = ページの木)に統合した。メニュー(グループ「運用と改善」。`operationsMenuGroupId`)には、文書階層(`doctier`)とレポート(`report`)だけを出す。台帳(`/e/doc`・`/e/do…

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/document_body_test.dart`(7)、`test/document_pdf_test.dart`(2)、`test/menu_test.dart`(1)、`test/quality_document_connection_test.dart`(2)、`test/quality_document_entities_test.dart`(4)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
