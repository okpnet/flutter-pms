# manual ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

manual: マニュアル(Wiki)。品質管理文書のページを、Markdown を正本に、閲覧・編集(Markdown / ビジュアル)・履歴・書き出しで育てる。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/manual` |
| Dart ファイル(生成物を除く) | 25 |
| `lib/src` の分け方 | `data(6)`、`graphql(3)`、`i18n(1)`、`model(2)`、`page(11)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `InMemoryManualRepository` | クラス | メモリ上の取得元(サンプル・テスト用)。アプリを閉じると初期データに戻る。 | `lib/src/data/in_memory_manual_repository.dart` |
| `ManualApproval` | クラス | 文書(ルートのページ)の公開・承認の状態。DB のビュー(`v_document_publication`・`v_document_approval_stamp`)の値。 | `lib/src/data/manual_approval.dart` |
| `IManualApprovalSource` | インターフェイス | 文書の承認の状態の取得元。アプリが GraphQL 版に差し替える(Strategy)。 | `lib/src/data/manual_approval.dart` |
| `NoManualApprovalSource` | クラス | 承認を持たない取得元(既定。すべて公開・スタンプなし)。 | `lib/src/data/manual_approval.dart` |
| `InMemoryManualApprovalSource` | クラス | メモリ上の取得元(example・テスト用)。 | `lib/src/data/manual_approval.dart` |
| `manualApprovalSourceProvider` | Riverpod プロバイダ |  | `lib/src/data/manual_approval.dart` |
| `manualApprovalProvider` | Riverpod プロバイダ | ルートのページの承認の状態(ページを開くたびに取り直す)。 | `lib/src/data/manual_approval.dart` |
| `manualAppSettingsProvider` | Riverpod プロバイダ | アプリの設定(`info_app.settings`。承認スタンプの標準・PDF のテーマ・ヘッダ/フッタ)。既定は標準値。アプリが DB の値に差し替える。 | `lib/src/data/manual_approval.dart` |
| `manualPdfFontsProvider` | Riverpod プロバイダ | PDF に埋め込むフォント。既定は同梱の BIZ UDP 明朝。テストでは差し替えられる。 | `lib/src/data/manual_approval.dart` |
| `IManualFileSaver` | インターフェイス | PDF を保存する(Strategy)。取り消しは false。 | `lib/src/data/manual_approval.dart` |
| `PlatformManualFileSaver` | クラス | OS の「名前を付けて保存」ダイアログ(`file_picker`)。 | `lib/src/data/manual_approval.dart` |
| `manualFileSaverProvider` | Riverpod プロバイダ |  | `lib/src/data/manual_approval.dart` |
| `manualPrinterNameProvider` | Riverpod プロバイダ | PDF の「出力した人」。既定は空。アプリがログインユーザーの表示名に差し替える。 | `lib/src/data/manual_approval.dart` |
| `manualClockProvider` | Riverpod プロバイダ | 出力日時の取得元(テストで固定する)。 | `lib/src/data/manual_approval.dart` |
| `ManualPdfService` | クラス | マニュアルを PDF にする。範囲は「このページ」か「文書全体」(ルートの下)。 | `lib/src/data/manual_pdf_service.dart` |
| `manualSeedPages` | 関数 | サンプルのマニュアル(画面案 `tools/open-design/data.extra.js` の `manual.pages`)。 | `lib/src/data/manual_seed.dart` |
| `manualRepositoryProvider` | Riverpod プロバイダ | 取得元。既定はメモリ上のサンプル。アプリが GraphQL 版などに差し替える。 | `lib/src/data/manual_providers.dart` |
| `manualCanEditProvider` | Riverpod プロバイダ | 現在のユーザーが管理者か。既定は閲覧のみ(false)。アプリが認証の結果で差し替える。 | `lib/src/data/manual_providers.dart` |
| `manualEditorNameProvider` | Riverpod プロバイダ | 更新者として記録する名前。既定はログインユーザーの表示名(無ければ空)。 | `lib/src/data/manual_providers.dart` |
| `ManualState` | クラス | ページの一覧の状態。読み込みが終わるまで [loaded] は false。 | `lib/src/data/manual_providers.dart` |
| `manualProvider` | Riverpod プロバイダ |  | `lib/src/data/manual_providers.dart` |
| `ManualError` | 列挙型 | 取得元が返すエラーの種類。画面が表示のときに文字へ変える(文字列では持たない)。 | `lib/src/data/manual_repository.dart` |
| `ManualException` | クラス |  | `lib/src/data/manual_repository.dart` |
| `IManualRepository` | インターフェイス | マニュアルの取得元。メモリ上([InMemoryManualRepository])のほか、GraphQL 版を差し替えられる。 | `lib/src/data/manual_repository.dart` |
| `GraphqlManualApprovalSource` | クラス | 文書(ルートのページ)の公開・承認の状態の GraphQL 版の取得元。 | `lib/src/graphql/graphql_manual_approval_source.dart` |
| `ManualGraphqlClient` | クラス | マニュアルの GraphQL 版の取得元が共有する、通信の下請け(クエリの実行・言語コード・読み取りの小物)。 | `lib/src/graphql/graphql_manual_client.dart` |
| `GraphqlManualRepository` | クラス | マニュアルの GraphQL 版の取得元(DB の文書とつなぐ)。 | `lib/src/graphql/graphql_manual_repository.dart` |
| `ManualStrings` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `manualStringsProvider` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `ManualVersion` | クラス | マニュアルのページの、過去の版(履歴の 1 件)。 | `lib/src/model/manual_page_record.dart` |
| `ManualPageRecord` | クラス | マニュアルの 1 ページ。正本は Markdown([md])で、ページ名([title])は別の項目に持つ。 | `lib/src/model/manual_page_record.dart` |
| `ManualHeadingRef` | クラス | 本文の見出し(このページの目次の 1 項目)。 | `lib/src/model/manual_wiki.dart` |
| `ManualWiki` | クラス | ページの集まり(Wiki)に対する問い合わせ。読み取りだけで、状態を持たない。 | `lib/src/model/manual_wiki.dart` |
| `ManualModule` | クラス | マニュアル(Wiki)をアプリへ組み込むための口。 | `lib/src/page/manual_module.dart` |
| `ManualPaths` | クラス | マニュアルのパス。文字列はこのファイルだけに書く。 | `lib/src/page/manual_paths.dart` |
| `ManualViewPage` | クラス | マニュアル(Wiki)の閲覧・管理の画面。左に目次(番号つきのツリー)と検索、右にページ。 | `lib/src/page/manual_view_page.dart` |
| `ManualDestination` | クラス | マニュアルへ。[pageId] を指定するとそのページを開く(省略は最初のルート)。 | `lib/src/page/manual_destinations.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `IManualRepository` | Strategy(保存先の差し替え) | `lib/src/data/manual_repository.dart` |
| `GraphqlManualApprovalSource` | Adapter(ビューの行 → 画面・PDF の承認の状態) | `lib/src/graphql/graphql_manual_approval_source.dart` |
| `GraphqlManualRepository` | Adapter(生成された読み込みの結果と、画面の [ManualPageRecord] を変換する) | `lib/src/graphql/graphql_manual_repository.dart` |
| `ManualVersion` | Memento(保存の直前の状態を残し、復元できるようにする) | `lib/src/model/manual_page_record.dart` |
| `ManualWiki` | Facade(ツリー・リンク・検索・書き出しの問い合わせを 1 か所にまとめる) | `lib/src/model/manual_wiki.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `feature_shared`、`baton_lib`、`app_shell`、`markdown_pdf`、`markdown_ast`、`markdown_view`、`wysiwyg_editor`、`approval_stamp`、`approval_stamp_view`、`manual_model`、`pms_graphql`
- テスト用: `data_test_harness`、`theme_lib`
- 利用元: `pms_app`(アプリ)、`pms_app_example`(アプリ)
- 外部パッケージ: `graphql`、`gql`、`file_picker`、`flutter_riverpod`、`go_router`、`slang`

## 6. 設計上の決定(`CLAUDE.md` より)

- **文書の台帳(`/manual`。id なし。`ManualLedgerPage`)**: メニュー「運用と改善 → 文書」の 1 項目の入口(ルートごとの項目は台帳に集める。文書階層・レポート・承認スタンプと PDF の設定はメニューに出さない)。ルートの文書の管理番号・名称・版・状態・更新日を並べる。状態の文字・管理番号・版は DB のビューの値(`ManualApproval`。画面で判定しない)。読めない文書(`readable = fal…
- **画面(`/manual?id=…`。`ManualViewPage`)**: パスは `/manual`、ページはクエリ `id`(省略は台帳)、編集の状態で開くときは `edit=1`(`ManualPaths.pageOf`)。アクセスの許可はパスで判定するため、ページごとにパスを分けない。
- **構成**: Markdown の読み取り・閲覧・編集・PDF は `packages/foundation` の Markdown 系のパッケージ(`markdown_ast`・`markdown_view`・`wysiwyg_editor`・`markdown_pdf` ほか)。この機能は組み合わせるだけ(本文の表示 `ManualContent` = `Markdo…
- **実装の指針**: `ManualModule implements FeatureModule, MenuContributor` を `lib/src/page/manual_module.dart` に置き、公開は `lib/manual.dart` のバレルから行う。アプリは `featureModules` に `ManualModule()` を 1 行足して組み込…
- **取得元(DB 版。`GraphqlManualRepository`・`GraphqlManualApprovalSource`)**: `GRAPHQL_URL` を指定したときだけ、アプリ(`pms_app` の `manualOverrides`)が DB 版に差し替える(未指定はメモリ上のサンプル)。モデルは `packages/model_providers/manual_model`。
- **example とテスト**: `example`(Windows 向け。`flutter run -d windows`)。メニューの項目: 最初のルート・品質マニュアル・2 つ目のルート(安全衛生マニュアル)・編集の状態。`ExampleApp(isAdmin: false)` で閲覧のみを確認できる。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/graphql_manual_approval_test.dart`(8)、`test/graphql_manual_server_test.dart`(1)、`test/graphql_manual_test.dart`(12)、`test/manual_approval_test.dart`(7)、`test/manual_ledger_test.dart`(5)、`test/manual_logic_test.dart`(14)、`test/manual_page_test.dart`(15)、`test/manual_request_approval_test.dart`(4)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
