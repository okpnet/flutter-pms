# baton_lib ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

baton_lib: このライブラリ`baton_lib`は、パッケージGoRouterと画面ページをもつ機能毎のライブラリをコマンドでつなぎ、責務を分離します。機能が分離された別のページへの遷移や、同ページに実行させる内容、渡すオブジェクトを定義します。 このライブラリを呼び出すアプリケーション、機能毎のライブラリの間でやりとりするインスタンスは全てインターフェイスとして渡します。ただし、インスタンスを文字列化して渡すのではなく、コマンドオブジェクトとして渡します。このコマンドオブジェクトは、例えば`Commandインターフェイス`や継承した`Destinationインターフェイス(ページ遷移)`へキャストすることでアプリケーション側、または各機能毎のライブラリ側で分離します。画面遷移も「親アプリへのコマンド」の一種として扱い、入口を1つにします。

- 層: core(機能とアプリの仲介・コマンドバス・設定の保存など)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/core/baton_lib` |
| Dart ファイル(生成物を除く) | 6 |
| `lib/src` の分け方 | (分けていない、または `lib/src` が無い) |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `ActionCommand` | 抽象クラス | 機能間でやりとりする命令の基底。[R] は実行結果の型。 | `lib/src/action_command.dart` |
| `PageDestination` | 抽象クラス | 画面遷移の命令。[R] は遷移先から戻る値の型。 | `lib/src/action_command.dart` |
| `CommandBus` | インターフェイス | 遷移もデータ操作も同じ入口で実行する。 | `lib/src/command_bus.dart` |
| `CommandMiddleware` | 型の別名 | ログ・権限チェックなど横断処理。[next] を呼ぶと次の処理へ進む。 | `lib/src/command_bus.dart` |
| `DefaultCommandBus` | クラス | [PageDestination] は [DestinationNavigator]、それ以外は | `lib/src/command_bus.dart` |
| `FailureOrigin` | 列挙型 | 例外の発生元。アプリ・機能ライブラリ・本ライブラリを切り分ける。 | `lib/src/command_exception.dart` |
| `CommandExecutionException` | クラス | 命令の実行失敗。[cause] に元の例外を保持する。 | `lib/src/command_exception.dart` |
| `ActionCommandHandler` | インターフェイス | [ActionCommand] を実行する機能側の処理。 | `lib/src/command_handler.dart` |
| `CommandHandlerRegistry` | クラス | 命令の型ごとに [ActionCommandHandler] を登録・解決する。 | `lib/src/command_handler.dart` |
| `DestinationNavigator` | インターフェイス | [PageDestination] を実画面遷移へ変換する。アプリ側がGoRouter等で実装する。 | `lib/src/destination_navigator.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `logger_provider`
- 利用元: `feature_shared`(パッケージ)、`access_control`(パッケージ)、`announcement`(パッケージ)、`approval`(パッケージ)、`app_core`(パッケージ)、`auth_files`(パッケージ)、`backstage`(パッケージ)、`barcode_entry`(パッケージ)、`document_settings`(パッケージ)、`maintenance`(パッケージ)、`manual`(パッケージ)、`organization`(パッケージ)、`production_plan`(パッケージ)、`quality`(パッケージ)、`quality_document`(パッケージ)、`sales`(パッケージ)、`shared_master`(パッケージ)、`user_profile`(パッケージ)
- 外部パッケージ: `flutter_riverpod`

## 6. 設計上の決定(`CLAUDE.md` より)

- **一般**: このライブラリ`baton_lib`は、パッケージGoRouterと画面ページをもつ機能毎のライブラリをコマンドでつなぎ、責務を分離します。機能が分離された別のページへの遷移や、同ページに実行させる内容、渡すオブジェクトを定義します。
- **使用パッケージ**: 使用して良いパッケージ

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/baton_lib_test.dart`(7)、`test/shared_logger_test.dart`(2)、`test/typed_result_test.dart`(8)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
