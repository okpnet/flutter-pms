# app_core ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

app_core: アプリの基盤の画面(ブート・エラー・設定)の実装。ログイン・ログアウトは認証(Keycloak)の導入後に追加する。

アプリの基盤(ブート・ダッシュボード・エラー・設定)の実装。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 画面の枠(タイトルバー・サイドバー・ハンバーガー・ログインユーザー)の見た目は `packages/ui/app_shell` が持ち、このプロジェクトはその文字列(アプリ名・メニューの説明・設定)と、基盤の画面を持つ。

### 1.2 範囲

- 場所: `packages/features/app_core`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`pms_app_example`(アプリ)、`auth_files`(パッケージ)、`auth_files/example`(example)、`backstage`(パッケージ)

### 2.2 依存先(ワークスペース内)

`loadux_lib`、`view_responsiveness`、`app_shell`、`feature_shared`、`baton_lib`、`dashboard_container`、`settings_keeper`、`theme_lib`、`logger_provider`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `AppCoreModule` | クラス | アプリの基盤(ブート・ダッシュボード・エラー・設定)をアプリへ組み込むための口。 |
| FR-02 | `AppCoreStrings` | 定数・その他 |  |
| FR-03 | `appCoreStringsProvider` | 定数・その他 |  |
| FR-04 | `UserSettingsOriginator` | クラス | 使用ユーザーにだけ影響する設定(使用言語・サイドバーをアイコンだけ・テーマ・ユーザー名と役割)を、 |
| FR-05 | `userSettingsOriginatorProvider` | Riverpod プロバイダ |  |
| FR-06 | `userSettingsAutoSaveProvider` | Riverpod プロバイダ | 設定が変わるたびに保存する。アプリが起動時に一度読む(復元の後に読むこと)。 |
| FR-07 | `UserSettingsModel` | クラス | 使用ユーザーにだけ影響する設定の保存形式(JSON)。 |
| FR-08 | `BootDestination` | クラス | ブート画面へ(読み込み中の表示)。 |
| FR-09 | `DashboardDestination` | クラス | ダッシュボードへ。件数のコンテナ(`dashboard_container`)を置く。 |
| FR-10 | `SettingsDestination` | クラス | 設定へ。 |
| FR-11 | `AccessDeniedDestination` | クラス | 権限の無いページを開こうとしたときの画面へ(アクセス拒否の画像と、トップへ戻るボタンだけを持つ)。 |
| FR-12 | `ErrorDestination` | クラス | エラー画面へ。[message] はアプリケーションエラーの内容(省略可)。 |
| FR-13 | `signInDestinationProvider` | Riverpod プロバイダ | ログイン画面の遷移先。他の機能が「ログイン画面へ戻る」ときに使う(例: 裏設定を終えるとき)。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **画面(Html のメニュー・features/CLAUDE.md の AppCore)**: ブート画面(シングルメインフレーム): 読み込み中の表示。`BootDestination` → `/boot`。画面案(`tools/open-design` の `#/boot`)の構成で、中央のカードに、進行中の表示・見出し(「{アプリ名}を起動しています…」。アプリ名は自分の文字列の`app.title`を slang の引数にする)・説明・進行バー…
- **構成**: | 種別 | ファイル | 内容 |
- **実装の指針**: 設定の変更は `feature_shared` の Provider(`localeProvider`・`sidebarIconOnlyProvider`)と `theme_lib` の `themeManagerProvider`(テーマ・表示モード)へ反映する。保存と復元は`app_core`の`UserSettingsOriginator`(`sett…
- **example と多言語**: ビジュアルテスト用の `example`(Windows、`flutter run -d windows`)で、すべての画面の状態を目視で確認できる。一覧はブート・ダッシュボード・エラー(内容なし/あり)・設定・状態の切り替え。状態の切り替え(ダッシュボードの件数の元の有無)は example だけのモジュールが持つ。画面を増やしたら一覧に足し、`examp…

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/app_core.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 25 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 6 件、テストケース 25 件。

- `test/app_core_test.dart`
  - 見本の遷移先はすべてパスに変換できる(登録漏れ検出)
  - 設定: 使用言語を切り替えると localeProvider が変わる
  - 設定: サイドバーをアイコンだけにする設定を切り替えられる
  - エラー画面: 内容を表示する
- `test/calendar_settings_test.dart`
  - 開始曜日と表示する曜日を書き、読み戻せる
  - 壊れた値・空は標準(日曜始まり・すべての曜日)
  - 開始曜日は 1〜7 だけ。表示する曜日は空にできない
- `test/dashboard_page_test.dart`
  - ダッシュボードの遷移先は /dashboard
  - 保存された配置を表示し、編集に切り替えられる
  - 通知の差し込み口: アプリが部品を差し込むと、ダッシュボードの上に出る(編集中は出さない)。無ければ何も出さない
  - 通知の差し込み口が無いときは、何も出さない
- `test/error_page_theme_test.dart`
  - エラー画面: 丸いアイコンは danger-soft の地、背景は画面案の bg(ライト)
  - エラー画面: ダークでは、独立に調整したダークの配色
- `test/settings_theme_test.dart`
  - テーマの識別子と表示モードを書き、読み戻せる。壊れた値は標準
  - 変更したテーマと表示モードは保存され、次の起動で復元される
  - 保存したテーマが登録されていなければ、既定のまま(表示モードだけ復元)
  - ユーザーの画像の部品を差し込むと、設定のユーザー欄に出る(差し込まなければ出ない)
  - 差し込んだユーザーの画像の部品が、設定に出る
  - 登録されているテーマが並び、選ぶと即時に切り替わる
  - 表示モード(システム・ライト・ダーク)を切り替えられる
  - ブート画面は画面案の構成(進行中・見出し・説明・進行バー)
- `test/user_settings_test.dart`
  - 変更した設定は保存され、次の起動で復元される
  - 保存が無いときは標準のまま
  - ログアウトではユーザーを保存しない
  - JSONモデルは往復でき、壊れた値は標準値になる

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
