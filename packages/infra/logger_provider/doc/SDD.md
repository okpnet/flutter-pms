# logger_provider ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

logger_provider: This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

- 層: infra(通信・認証・ログ・テストの道具)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/infra/logger_provider` |
| Dart ファイル(生成物を除く) | 14 |
| `lib/src` の分け方 | `logger_object(3)`、`rotation_object(3)` |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

公開している型・関数は無い。
## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): なし
- 利用元: `entry_app`(アプリ)、`pms_app`(アプリ)、`pms_app_example`(アプリ)、`baton_lib`(パッケージ)、`feature_shared`(パッケージ)、`page_mediator_extension`(パッケージ)、`page_mediator_extension/example`(example)、`settings_keeper`(パッケージ)、`access_control/example`(example)、`announcement/example`(example)、`approval/example`(example)、`app_core`(パッケージ)、`app_core/example`(example)、`auth_files`(パッケージ)、`auth_files/example`(example)、`backstage`(パッケージ)、`backstage/example`(example)、`barcode_entry`(パッケージ)、`barcode_entry/example`(example)、`cost/example`(example)、`dashboard_container`(パッケージ)、`dashboard_container/example`(example)、`document_settings/example`(example)、`item/example`(example)、`maintenance`(パッケージ)、`maintenance/example`(example)、`manual/example`(example)、`organization`(パッケージ・テスト用)、`organization/example`(example)、`plan_change/example`(example)、`production_plan`(パッケージ)、`production_plan/example`(example)、`production_process/example`(example)、`purchasing/example`(example)、`quality/example`(example)、`quality_common/example`(example)、`quality_document/example`(example)、`resource/example`(example)、`sales`(パッケージ)、`sales/example`(example)、`shared_master`(パッケージ)、`shared_master/example`(example)、`system/example`(example)、`user_profile`(パッケージ)、`user_profile/example`(example)、`work_record`(パッケージ・テスト用)、`work_record/example`(example)、`jwt_verification_test`(パッケージ・テスト用)、`pbapi`(パッケージ)、`pms_graphql`(パッケージ)、`entity_screens`(パッケージ)、`flgtable_lib`(パッケージ)、`flgtable_lib/example`(example)、`theme_lib`(パッケージ)、`theme_lib/example`(example)
- 外部パッケージ: `logger`、`flutter_riverpod`、`rotation_log`

## 6. 設計上の決定(`CLAUDE.md` より)

- **現在の状態**: 下記の設計に基づき実装済み（初回実装: 2026-09-02、[doc/2026/09/02_001.md](doc/2026/09/02_001.md) 参照）。
- **コマンド**: このパッケージは `c:\git\flutter-pms` リポジトリ内の1つの Flutter パッケージ (`flutter_app_lib/logger_provider`)。コマンドはこのディレクトリで実行する。
- **アーキテクチャ**
- **使用パッケージ**: 使用する外部のパッケージのバージョンは、`../../flutter_app_lib`、`../../flutter_pub_lib`で同じパッケージを使用しているアプリケーション、ライブラリにあわせること。古いパッケージを使用している同ディリクトリのパッケージがある場合は、そのアプリケーションまたはライブラリの名前をログに残す。

## 7. エラー処理・ログ

- ログは `loggerProvider`(Riverpod)から受け、このライブラリが発生元のエラーだけを残す。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/logger_provider_edge_test.dart`(9)、`test/logger_provider_test.dart`(12)、`test/shared_logger_provider_test.dart`(2)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
