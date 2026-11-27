# app_core ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

app_core: アプリの基盤の画面(ブート・エラー・設定)の実装。ログイン・ログアウトは認証(Keycloak)の導入後に追加する。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/app_core` |
| Dart ファイル(生成物を除く) | 11 |
| `lib/src` の分け方 | `i18n(1)`、`pages(2)`、`settings(2)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `AppCoreModule` | クラス | アプリの基盤(ブート・ダッシュボード・エラー・設定)をアプリへ組み込むための口。 | `lib/src/app_core_module.dart` |
| `AppCoreStrings` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `appCoreStringsProvider` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `UserSettingsOriginator` | クラス | 使用ユーザーにだけ影響する設定(使用言語・サイドバーをアイコンだけ・テーマ・ユーザー名と役割)を、 | `lib/src/settings/user_settings.dart` |
| `userSettingsOriginatorProvider` | Riverpod プロバイダ |  | `lib/src/settings/user_settings.dart` |
| `userSettingsAutoSaveProvider` | Riverpod プロバイダ | 設定が変わるたびに保存する。アプリが起動時に一度読む(復元の後に読むこと)。 | `lib/src/settings/user_settings.dart` |
| `UserSettingsModel` | クラス | 使用ユーザーにだけ影響する設定の保存形式(JSON)。 | `lib/src/settings/user_settings_model.dart` |
| `BootDestination` | クラス | ブート画面へ(読み込み中の表示)。 | `lib/src/app_core_destinations.dart` |
| `DashboardDestination` | クラス | ダッシュボードへ。件数のコンテナ(`dashboard_container`)を置く。 | `lib/src/app_core_destinations.dart` |
| `SettingsDestination` | クラス | 設定へ。 | `lib/src/app_core_destinations.dart` |
| `AccessDeniedDestination` | クラス | 権限の無いページを開こうとしたときの画面へ(アクセス拒否の画像と、トップへ戻るボタンだけを持つ)。 | `lib/src/app_core_destinations.dart` |
| `ErrorDestination` | クラス | エラー画面へ。[message] はアプリケーションエラーの内容(省略可)。 | `lib/src/app_core_destinations.dart` |
| `signInDestinationProvider` | Riverpod プロバイダ | ログイン画面の遷移先。他の機能が「ログイン画面へ戻る」ときに使う(例: 裏設定を終えるとき)。 | `lib/src/sign_in.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `UserSettingsOriginator` | Memento の Originator(settings_keeper) | `lib/src/settings/user_settings.dart` |
| `UserSettingsModel` | Value Object | `lib/src/settings/user_settings_model.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `loadux_lib`、`view_responsiveness`、`app_shell`、`feature_shared`、`baton_lib`、`dashboard_container`、`settings_keeper`、`theme_lib`、`logger_provider`
- 利用元: `pms_app`(アプリ)、`pms_app_example`(アプリ)、`auth_files`(パッケージ)、`auth_files/example`(example)、`backstage`(パッケージ)
- 外部パッケージ: `flutter_riverpod`、`go_router`、`slang`

## 6. 設計上の決定(`CLAUDE.md` より)

- **画面(Html のメニュー・features/CLAUDE.md の AppCore)**: ブート画面(シングルメインフレーム): 読み込み中の表示。`BootDestination` → `/boot`。画面案(`tools/open-design` の `#/boot`)の構成で、中央のカードに、進行中の表示・見出し(「{アプリ名}を起動しています…」。アプリ名は自分の文字列の`app.title`を slang の引数にする)・説明・進行バー…
- **構成**: | 種別 | ファイル | 内容 |
- **実装の指針**: 設定の変更は `feature_shared` の Provider(`localeProvider`・`sidebarIconOnlyProvider`)と `theme_lib` の `themeManagerProvider`(テーマ・表示モード)へ反映する。保存と復元は`app_core`の`UserSettingsOriginator`(`sett…
- **example と多言語**: ビジュアルテスト用の `example`(Windows、`flutter run -d windows`)で、すべての画面の状態を目視で確認できる。一覧はブート・ダッシュボード・エラー(内容なし/あり)・設定・状態の切り替え。状態の切り替え(ダッシュボードの件数の元の有無)は example だけのモジュールが持つ。画面を増やしたら一覧に足し、`examp…

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/app_core_test.dart`(4)、`test/calendar_settings_test.dart`(3)、`test/dashboard_page_test.dart`(4)、`test/error_page_theme_test.dart`(2)、`test/settings_theme_test.dart`(8)、`test/user_settings_test.dart`(4)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
