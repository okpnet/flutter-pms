# baton_lib ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

baton_lib: このライブラリ`baton_lib`は、パッケージGoRouterと画面ページをもつ機能毎のライブラリをコマンドでつなぎ、責務を分離します。機能が分離された別のページへの遷移や、同ページに実行させる内容、渡すオブジェクトを定義します。 このライブラリを呼び出すアプリケーション、機能毎のライブラリの間でやりとりするインスタンスは全てインターフェイスとして渡します。ただし、インスタンスを文字列化して渡すのではなく、コマンドオブジェクトとして渡します。このコマンドオブジェクトは、例えば`Commandインターフェイス`や継承した`Destinationインターフェイス(ページ遷移)`へキャストすることでアプリケーション側、または各機能毎のライブラリ側で分離します。画面遷移も「親アプリへのコマンド」の一種として扱い、入口を1つにします。

### 1.2 範囲

- 場所: `packages/core/baton_lib`(core(機能とアプリの仲介・コマンドバス・設定の保存など))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`feature_shared`(パッケージ)、`access_control`(パッケージ)、`announcement`(パッケージ)、`approval`(パッケージ)、`app_core`(パッケージ)、`auth_files`(パッケージ)、`backstage`(パッケージ)、`barcode_entry`(パッケージ)、`document_settings`(パッケージ)、`maintenance`(パッケージ)、`manual`(パッケージ)、`organization`(パッケージ)、`production_plan`(パッケージ)、`quality`(パッケージ)、`quality_document`(パッケージ)、`sales`(パッケージ)、`shared_master`(パッケージ)、`user_profile`(パッケージ)

### 2.2 依存先(ワークスペース内)

`logger_provider`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `ActionCommand` | 抽象クラス | 機能間でやりとりする命令の基底。[R] は実行結果の型。 |
| FR-02 | `PageDestination` | 抽象クラス | 画面遷移の命令。[R] は遷移先から戻る値の型。 |
| FR-03 | `CommandBus` | インターフェイス | 遷移もデータ操作も同じ入口で実行する。 |
| FR-04 | `CommandMiddleware` | 型の別名 | ログ・権限チェックなど横断処理。[next] を呼ぶと次の処理へ進む。 |
| FR-05 | `DefaultCommandBus` | クラス | [PageDestination] は [DestinationNavigator]、それ以外は |
| FR-06 | `FailureOrigin` | 列挙型 | 例外の発生元。アプリ・機能ライブラリ・本ライブラリを切り分ける。 |
| FR-07 | `CommandExecutionException` | クラス | 命令の実行失敗。[cause] に元の例外を保持する。 |
| FR-08 | `ActionCommandHandler` | インターフェイス | [ActionCommand] を実行する機能側の処理。 |
| FR-09 | `CommandHandlerRegistry` | クラス | 命令の型ごとに [ActionCommandHandler] を登録・解決する。 |
| FR-10 | `DestinationNavigator` | インターフェイス | [PageDestination] を実画面遷移へ変換する。アプリ側がGoRouter等で実装する。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **一般**: このライブラリ`baton_lib`は、パッケージGoRouterと画面ページをもつ機能毎のライブラリをコマンドでつなぎ、責務を分離します。機能が分離された別のページへの遷移や、同ページに実行させる内容、渡すオブジェクトを定義します。
- **使用パッケージ**: 使用して良いパッケージ

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/baton_lib.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 17 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 3 件、テストケース 17 件。

- `test/baton_lib_test.dart`
  - command goes to handler
  - destination goes to navigator
  - missing handler is a library failure
  - middleware wraps in order
  - toJson includes fields
  - ハンドラ未登録は[baton_lib]付きでerrorに残る
  - ハンドラ例外はorigin=handlerで残り、成功時は残らない
- `test/shared_logger_test.dart`
  - RiverpodのloggerProviderで登録したロガーにエラーが残る
  - 未登録(Noop)でもロガーは渡せ、失敗は例外として届く
- `test/typed_result_test.dart`
  - String
  - DateTime
  - ダミー型
  - String
  - DateTime
  - ダミー型
  - nullable(キャンセル時はnull)
  - ハンドラの例外は handler 起因で cause と命令JSONを保持

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
