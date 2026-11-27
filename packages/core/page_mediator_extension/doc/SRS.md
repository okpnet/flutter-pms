# page_mediator_extension ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

page_mediator_extension: ページ用の拡張(Mediator)。データ取得(data_strategist)・設定の保存(settings_keeper)・セッション確認を、インターフェイス経由でページへ提供する。

ページ用の拡張(Mediator)。ページが、データ取得・設定の保存・セッション確認を、具体的な実装(`data_strategist`・`settings_keeper`・認証)を知らずに、インターフェイス経由で使えるようにする。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 プロジェクト名は、ページと複数のライブラリの間に立って責務を分離する(Mediator)ことから `page_mediator_extension` とした。

### 1.2 範囲

- 場所: `packages/core/page_mediator_extension`(core(機能とアプリの仲介・コマンドバス・設定の保存など))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`entry_app`(アプリ)、`pms_app`(アプリ)、`pms_app_example`(アプリ)、`auth_files`(パッケージ)、`dashboard_container`(パッケージ)、`maintenance`(パッケージ)

### 2.2 依存先(ワークスペース内)

`data_strategist`、`settings_keeper`、`logger_provider`、`pms_graphql`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `GraphqlAccessGuard` | クラス | GraphQL にアクセスする前の確認。通信のたびに、サーバーへ送る前に呼ぶ。 |
| FR-02 | `IPageDataMediator` | インターフェイス | ページがデータを取得する窓口。取得の手段(リスト・SQL・GraphQL)は [IQueryState] が隠蔽する。 |
| FR-03 | `PageDataMediator` | クラス | [IPageDataMediator] の標準の実装。取得の失敗は、このライブラリ側のエラーとしてログに残して再送出する。 |
| FR-04 | `PageMediatorMixin` | ミックスイン | `ConsumerStatefulWidget` のページへ、窓口とセッション確認を足す(`with PageMediatorMixin`)。 |
| FR-05 | `pageDataMediatorProvider` | Riverpod プロバイダ | データ取得の窓口。標準の実装は `loggerProvider` を使う。 |
| FR-06 | `pageSettingsMediatorProvider` | Riverpod プロバイダ | 設定の保存の窓口。保存先は `settingsStorageProvider`(settings_keeper)で決まる。 |
| FR-07 | `pageSessionMediatorProvider` | Riverpod プロバイダ | セッション確認の窓口。既定は何もしない実装。アプリが認証・メンテナンスの実装へ差し替える。 |
| FR-08 | `PageSessionStatus` | 列挙型 | ページを表示してよいセッションの状態。 |
| FR-09 | `IPageSessionMediator` | インターフェイス | ページの表示・更新のタイミングで、セッション(認証・メンテナンス)を確認する窓口。 |
| FR-10 | `NoopPageSessionMediator` | クラス | 何も確認せず、常に [PageSessionStatus.valid] を返す。既定の実装で、テストで使う。 |
| FR-11 | `IPageSettingsMediator` | インターフェイス | ページが設定を保存・復元する窓口。保存先は知らない(アプリが `settingsStorageProvider` で選ぶ)。 |
| FR-12 | `PageSettingsMediator` | クラス | [IPageSettingsMediator] の標準の実装。[SettingsKeeper](Memento の管理者)へ委譲する。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **提供する機能**: | 機能 | インターフェイス | 標準の実装 | 差し込み口(Riverpod) |
- **構成**: | 種別 | ファイル | 内容 |
- **example**: `example/`に確認用アプリを置き、実装済みの機能の外観と動作を確認する。機能を追加したら、exampleとそのテスト(`example/test`)にも追加する。
- **GraphQL にアクセスする前の確認**: `GraphqlAccessGuard`(`IPageSessionMediator` で、メンテナンス中・セッション切れを確認する。メンテナンス中は`transient`の`SessionUnavailableException`、切れていれば`transient`でない`SessionUnavailableException`で中断し、アプリが渡した遷移…

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | `loggerProvider` を使う |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/page_mediator_extension.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 12 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 2 件、テストケース 12 件。

- `test/graphql_access_guard_test.dart`
  - 有効なら通す。続けて呼んでも、間隔内はサーバーへ問い合わせない
  - メンテナンス中は中断し、メンテナンスのページへ向ける(やり直せる)
  - セッション切れは中断し、セッション切れのページへ向ける
  - 中断した後は省かず、毎回確認する。回復すれば通る
  - ログアウト中は中断する(ページへは向けない)。不明(通信できない)は止めない
- `test/page_mediator_extension_test.dart`
  - 件数・位置の指定なしは、先頭から取得件数分
  - 条件を渡すと、その件数・位置で取得する(結果の型はジェネリック)
  - 取得の失敗は再送出する
  - 設定: 保存して復元できる。保存が無いときは false
  - 既定は何もしない(常に有効)
  - ページが表示されたとき確認し、使えない状態を受け取る
  - 既定の確認(何もしない)では、そのまま表示する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
