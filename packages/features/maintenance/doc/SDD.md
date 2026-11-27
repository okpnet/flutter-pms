# maintenance ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

maintenance: メンテナンス中のページ。サーバーの応答がメンテナンス中のときに表示し、他のページへはリンクしない。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/maintenance` |
| Dart ファイル(生成物を除く) | 12 |
| `lib/src` の分け方 | `i18n(1)`、`page(4)`、`status(5)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `MaintenanceStrings` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `maintenanceStringsProvider` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `MaintenanceModule` | クラス | メンテナンスページをアプリへ組み込むための口。 | `lib/src/page/maintenance_module.dart` |
| `MaintenancePage` | クラス | メンテナンス中のページ。サイドバー・タイトルバー・戻る操作・リンクを一切持たない。 | `lib/src/page/maintenance_page.dart` |
| `MaintenancePaths` | クラス | メンテナンスのパス。文字列はこのファイルだけに書く。 | `lib/src/page/maintenance_paths.dart` |
| `IMaintenanceChecker` | インターフェイス | サーバーのメンテナンスの状態を確認する窓口。実体(HTTP・GraphQL の応答)はアプリが差し込む。 | `lib/src/status/maintenance_checker.dart` |
| `AlwaysAvailableMaintenanceChecker` | クラス | 常に利用できると答える。既定の実装で、テストで使う。 | `lib/src/status/maintenance_checker.dart` |
| `maintenanceServerRoot` | 関数 | 設定された URL から、メンテナンス情報サーバーのルートを求める。 | `lib/src/status/maintenance_checker.dart` |
| `HttpMaintenanceChecker` | クラス | HTTP の応答で確認する。HTTP 503 をメンテナンス中として扱う(サーバーの推奨は | `lib/src/status/maintenance_checker.dart` |
| `maintenanceCheckerProvider` | Riverpod プロバイダ | メンテナンスの確認の実体。既定は常に利用可能。アプリが HTTP・GraphQL の実装へ差し替える。 | `lib/src/status/maintenance_providers.dart` |
| `MaintenanceStatusNotifier` | クラス |  | `lib/src/status/maintenance_providers.dart` |
| `maintenanceRedirect` | 関数 | ルーターの `redirect` に使う判定。 | `lib/src/status/maintenance_redirect.dart` |
| `MaintenanceAwarePageSession` | クラス | メンテナンスの確認を先に行い、使えるときだけ内側(認証の確認など)へ任せるセッション確認。 | `lib/src/status/maintenance_session.dart` |
| `MaintenanceStatus` | クラス | サーバーのメンテナンスの状態。 | `lib/src/status/maintenance_status.dart` |
| `MaintenanceDestination` | クラス | メンテナンスページへ。ほかのページへは、このページからリンクしない。 | `lib/src/page/maintenance_destinations.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `AlwaysAvailableMaintenanceChecker` | Null Object | `lib/src/status/maintenance_checker.dart` |
| `MaintenanceAwarePageSession` | Decorator(内側の [IPageSessionMediator] にメンテナンスの確認を足す) | `lib/src/status/maintenance_session.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `feature_shared`、`baton_lib`、`page_mediator_extension`、`logger_provider`
- テスト用: `theme_lib`
- 利用元: `entry_app`(アプリ)、`pms_app`(アプリ)、`pms_app_example`(アプリ)
- 外部パッケージ: `flutter_riverpod`、`go_router`、`slang`、`http`

## 6. 設計上の決定(`CLAUDE.md` より)

- **画面**: メンテナンスページ(`MaintenanceDestination` → `/maintenance`): 文面・実施時間(開始・終了)・「再確認」だけを持つ。タイトルバー・サイドバー・メニュー・戻る操作・リンクを持たない。メンテナンス中は戻る操作(`PopScope`)も無効。
- **仕組み**: | 部品 | 内容 |
- **構成**: | 種別 | ファイル | 内容 |
- **example**: `example/`に確認用アプリを置き、実装済みの機能の外観と動作を確認する。機能を追加したら、exampleとそのテスト(`example/test`)にも追加する。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/maintenance_test.dart`(16)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
