# page_mediator_extension ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

page_mediator_extension: ページ用の拡張(Mediator)。データ取得(data_strategist)・設定の保存(settings_keeper)・セッション確認を、インターフェイス経由でページへ提供する。

- 層: core(機能とアプリの仲介・コマンドバス・設定の保存など)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/core/page_mediator_extension` |
| Dart ファイル(生成物を除く) | 7 |
| `lib/src` の分け方 | (分けていない、または `lib/src` が無い) |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `GraphqlAccessGuard` | クラス | GraphQL にアクセスする前の確認。通信のたびに、サーバーへ送る前に呼ぶ。 | `lib/src/graphql_access_guard.dart` |
| `IPageDataMediator` | インターフェイス | ページがデータを取得する窓口。取得の手段(リスト・SQL・GraphQL)は [IQueryState] が隠蔽する。 | `lib/src/page_data_mediator.dart` |
| `PageDataMediator` | クラス | [IPageDataMediator] の標準の実装。取得の失敗は、このライブラリ側のエラーとしてログに残して再送出する。 | `lib/src/page_data_mediator.dart` |
| `PageMediatorMixin` | ミックスイン | `ConsumerStatefulWidget` のページへ、窓口とセッション確認を足す(`with PageMediatorMixin`)。 | `lib/src/page_mediator_ref_extension.dart` |
| `pageDataMediatorProvider` | Riverpod プロバイダ | データ取得の窓口。標準の実装は `loggerProvider` を使う。 | `lib/src/page_mediator_providers.dart` |
| `pageSettingsMediatorProvider` | Riverpod プロバイダ | 設定の保存の窓口。保存先は `settingsStorageProvider`(settings_keeper)で決まる。 | `lib/src/page_mediator_providers.dart` |
| `pageSessionMediatorProvider` | Riverpod プロバイダ | セッション確認の窓口。既定は何もしない実装。アプリが認証・メンテナンスの実装へ差し替える。 | `lib/src/page_mediator_providers.dart` |
| `PageSessionStatus` | 列挙型 | ページを表示してよいセッションの状態。 | `lib/src/page_session_mediator.dart` |
| `IPageSessionMediator` | インターフェイス | ページの表示・更新のタイミングで、セッション(認証・メンテナンス)を確認する窓口。 | `lib/src/page_session_mediator.dart` |
| `NoopPageSessionMediator` | クラス | 何も確認せず、常に [PageSessionStatus.valid] を返す。既定の実装で、テストで使う。 | `lib/src/page_session_mediator.dart` |
| `IPageSettingsMediator` | インターフェイス | ページが設定を保存・復元する窓口。保存先は知らない(アプリが `settingsStorageProvider` で選ぶ)。 | `lib/src/page_settings_mediator.dart` |
| `PageSettingsMediator` | クラス | [IPageSettingsMediator] の標準の実装。[SettingsKeeper](Memento の管理者)へ委譲する。 | `lib/src/page_settings_mediator.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `GraphqlAccessGuard` | Guard(Chain of Responsibility の前段。確認 → 通信) | `lib/src/graphql_access_guard.dart` |
| `NoopPageSessionMediator` | Null Object | `lib/src/page_session_mediator.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `data_strategist`、`settings_keeper`、`logger_provider`、`pms_graphql`
- 利用元: `entry_app`(アプリ)、`pms_app`(アプリ)、`pms_app_example`(アプリ)、`auth_files`(パッケージ)、`dashboard_container`(パッケージ)、`maintenance`(パッケージ)
- 外部パッケージ: `flutter_riverpod`

## 6. 設計上の決定(`CLAUDE.md` より)

- **提供する機能**: | 機能 | インターフェイス | 標準の実装 | 差し込み口(Riverpod) |
- **構成**: | 種別 | ファイル | 内容 |
- **example**: `example/`に確認用アプリを置き、実装済みの機能の外観と動作を確認する。機能を追加したら、exampleとそのテスト(`example/test`)にも追加する。
- **GraphQL にアクセスする前の確認**: `GraphqlAccessGuard`(`IPageSessionMediator` で、メンテナンス中・セッション切れを確認する。メンテナンス中は`transient`の`SessionUnavailableException`、切れていれば`transient`でない`SessionUnavailableException`で中断し、アプリが渡した遷移…

## 7. エラー処理・ログ

- ログは `loggerProvider`(Riverpod)から受け、このライブラリが発生元のエラーだけを残す。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/graphql_access_guard_test.dart`(5)、`test/page_mediator_extension_test.dart`(7)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
