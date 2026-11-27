# document_settings ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

document_settings: 承認スタンプ・PDF の設定(info_app.settings の stamp・pdf)の編集画面(プレビューつき)。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/document_settings` |
| Dart ファイル(生成物を除く) | 15 |
| `lib/src` の分け方 | `data(3)`、`graphql(2)`、`i18n(1)`、`page(7)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `IAppSettingsGateway` | インターフェイス | アプリの設定(`info_app.settings`)の取得元。アプリが GraphQL 版(`document_approval_model` の | `lib/src/data/settings_draft.dart` |
| `InMemoryAppSettingsGateway` | クラス | メモリ上の取得元(既定・example・テスト用)。 | `lib/src/data/settings_draft.dart` |
| `documentSettingsGatewayProvider` | Riverpod プロバイダ |  | `lib/src/data/settings_draft.dart` |
| `savedAppSettingsProvider` | Riverpod プロバイダ | 保存されている設定(標準を含む)。ほかの機能(`manual` の PDF など)が使う。保存すると読み直す。 | `lib/src/data/settings_draft.dart` |
| `documentSettingsIsAdminProvider` | Riverpod プロバイダ | 変更できるのは管理者だけ。既定は閲覧のみ(false)。アプリが認証の結果で差し替える。 | `lib/src/data/settings_draft.dart` |
| `ApprovalPatternOption` | クラス | 承認パターン(`mstr_approval_pattern`)の選択肢 1 件。 | `lib/src/data/approval_pattern_source.dart` |
| `IApprovalPatternSource` | インターフェイス | 承認パターンの取得元(一覧・スタンプの様式の保存)。アプリが GraphQL 版(`GraphqlApprovalPatternSource`)に差し替える(Strategy)。 | `lib/src/data/approval_pattern_source.dart` |
| `InMemoryApprovalPatternSource` | クラス | メモリ上の取得元(既定・example・テスト用)。 | `lib/src/data/approval_pattern_source.dart` |
| `documentSettingsPatternSourceProvider` | Riverpod プロバイダ |  | `lib/src/data/approval_pattern_source.dart` |
| `PickedSettingsFile` | クラス | 選んだ設定のファイル(名前と中身)。 | `lib/src/data/settings_file_picker.dart` |
| `ISettingsFilePicker` | インターフェイス | 設定の JSON ファイルを選ぶ窓口。既定は OS のダイアログ([PlatformSettingsFilePicker])。テストは差し替える。取り消しは null。 | `lib/src/data/settings_file_picker.dart` |
| `PlatformSettingsFilePicker` | クラス | OS の「ファイルを開く」ダイアログ(`file_picker`。拡張子 json)。 | `lib/src/data/settings_file_picker.dart` |
| `documentSettingsFilePickerProvider` | Riverpod プロバイダ |  | `lib/src/data/settings_file_picker.dart` |
| `GraphqlAppSettingsGateway` | クラス | アプリの設定(`info_app.settings`)の GraphQL 版の取得元。モデルは `document_approval_model` | `lib/src/graphql/graphql_app_settings_gateway.dart` |
| `GraphqlApprovalPatternSource` | クラス | 承認パターンの GraphQL 版の取得元。モデルは `document_approval_model` の `ApprovalPatternStylePage`(読み取り。 | `lib/src/graphql/graphql_approval_pattern_source.dart` |
| `DocumentSettingsStrings` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `documentSettingsStringsProvider` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `DocumentSettingsModule` | クラス | 承認スタンプ・PDF の設定をアプリへ組み込む口。メニューは、システムメニュー(管理者のユーザーメニュー)に 1 項目。 | `lib/src/page/document_settings_module.dart` |
| `DocumentSettingsPage` | クラス | 承認スタンプ・PDF の設定(`info_app.settings`)の編集画面。左にフォーム(承認スタンプ・PDF・JSON)、右に用紙のプレビュー。 | `lib/src/page/document_settings_page.dart` |
| `DocumentSettingsPaths` | クラス | 画面のパス。`/auth/admin/…` は、アプリが管理者だけが開ける画面として扱う(`pms_app` の `isAdminOnlyPath`)。 | `lib/src/page/document_settings_paths.dart` |
| `DocumentSettingsDestination` | クラス | 承認スタンプ・PDF の設定(`info_app.settings`)の画面へ。変えられるのは管理者だけ(それ以外は閲覧のみ)。 | `lib/src/page/document_settings_destinations.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `ISettingsFilePicker` | Strategy(ファイルの選び方の差し替え) | `lib/src/data/settings_file_picker.dart` |
| `GraphqlApprovalPatternSource` | Adapter(生成された読み込みの結果と、画面の [ApprovalPatternOption] を変換する) | `lib/src/graphql/graphql_approval_pattern_source.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `feature_shared`、`baton_lib`、`app_shell`、`approval_stamp`、`approval_stamp_view`、`document_approval_model`、`pms_graphql`
- テスト用: `data_test_harness`、`theme_lib`
- 利用元: `pms_app`(アプリ)
- 外部パッケージ: `graphql`、`file_picker`、`gql`、`flutter_riverpod`、`go_router`、`slang`

## 6. 設計上の決定(`CLAUDE.md` より)

- **画面(`/auth/admin/document-settings`。`DocumentSettingsPage`)**: パスが `/auth/admin/…` のため、アプリは管理者だけが開ける画面として扱う(`pms_app` の `isAdminOnlyPath`)。画面の中でも、変更できるのは管理者だけ(`documentSettingsIsAdminProvider`。それ以外は入力を受け付けず、「管理者だけが変更できます。」を表示)。
- **構成**: | 場所 | 内容 |
- **実装の指針**: アプリが差し込むもの: `documentSettingsGatewayProvider`(GraphQL に接続するときは `GraphqlAppSettingsGateway`)、`documentSettingsPatternSourceProvider`(パターン別のスタンプの承認パターンの一覧・様式の保存。GraphQL に接続するときは `Gra…

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/document_settings_test.dart`(12)、`test/graphql_gateway_test.dart`(5)、`test/graphql_pattern_source_test.dart`(5)、`test/pattern_style_test.dart`(7)、`test/settings_import_test.dart`(5)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
