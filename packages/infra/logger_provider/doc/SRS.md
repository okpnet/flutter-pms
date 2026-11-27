# logger_provider ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

logger_provider: This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

### 1.2 範囲

- 場所: `packages/infra/logger_provider`(infra(通信・認証・ログ・テストの道具))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`entry_app`(アプリ)、`pms_app`(アプリ)、`pms_app_example`(アプリ)、`baton_lib`(パッケージ)、`feature_shared`(パッケージ)、`page_mediator_extension`(パッケージ)、`page_mediator_extension/example`(example)、`settings_keeper`(パッケージ)、`access_control/example`(example)、`announcement/example`(example)、`approval/example`(example)、`app_core`(パッケージ)、`app_core/example`(example)、`auth_files`(パッケージ)、`auth_files/example`(example)、`backstage`(パッケージ)、`backstage/example`(example)、`barcode_entry`(パッケージ)、`barcode_entry/example`(example)、`cost/example`(example)、`dashboard_container`(パッケージ)、`dashboard_container/example`(example)、`document_settings/example`(example)、`item/example`(example)、`maintenance`(パッケージ)、`maintenance/example`(example)、`manual/example`(example)、`organization`(パッケージ・テスト用)、`organization/example`(example)、`plan_change/example`(example)、`production_plan`(パッケージ)、`production_plan/example`(example)、`production_process/example`(example)、`purchasing/example`(example)、`quality/example`(example)、`quality_common/example`(example)、`quality_document/example`(example)、`resource/example`(example)、`sales`(パッケージ)、`sales/example`(example)、`shared_master`(パッケージ)、`shared_master/example`(example)、`system/example`(example)、`user_profile`(パッケージ)、`user_profile/example`(example)、`work_record`(パッケージ・テスト用)、`work_record/example`(example)、`jwt_verification_test`(パッケージ・テスト用)、`pbapi`(パッケージ)、`pms_graphql`(パッケージ)、`entity_screens`(パッケージ)、`flgtable_lib`(パッケージ)、`flgtable_lib/example`(example)、`theme_lib`(パッケージ)、`theme_lib/example`(example)

### 2.2 依存先(ワークスペース内)

なし

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

公開している型・関数は無い(生成物・アプリへの組み込みだけ)。

### 3.1 仕様の要点(`CLAUDE.md` より)

- **現在の状態**: 下記の設計に基づき実装済み（初回実装: 2026-09-02、[doc/2026/09/02_001.md](doc/2026/09/02_001.md) 参照）。
- **コマンド**: このパッケージは `c:\git\flutter-pms` リポジトリ内の1つの Flutter パッケージ (`flutter_app_lib/logger_provider`)。コマンドはこのディレクトリで実行する。
- **アーキテクチャ**
- **使用パッケージ**: 使用する外部のパッケージのバージョンは、`../../flutter_app_lib`、`../../flutter_pub_lib`で同じパッケージを使用しているアプリケーション、ライブラリにあわせること。古いパッケージを使用している同ディリクトリのパッケージがある場合は、そのアプリケーションまたはライブラリの名前をログに残す。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | `loggerProvider` を使う |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | 対象外 |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 23 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 3 件、テストケース 23 件。

- `test/logger_provider_edge_test.dart`
  - JSONがオブジェクトでなければFormatException
  - 不正なJSON文字列はFormatException
  - 子キーがオブジェクトでなければFormatException
  - line / custom / size の既定値
  - 未知のtermはdailyへフォールバック
  - ILoggerProvider として利用でき、fatalが記録される
  - 例外メッセージがログに含まれる
  - レベル閾値未満(warn設定でinfo)は出力されない
  - fromAsset はJSONオブジェクトでなければFormatException
- `test/logger_provider_test.dart`
  - デフォルト値を持つ
  - Mapから値を復元できる
  - 未知の値はデフォルトへフォールバックする
  - デフォルト値を持つ
  - Mapから値を復元し、rotation_logの型へ変換できる
  - logger/rotationそれぞれのキーをネストしたMapから復元できる
  - JSON文字列から復元できる
  - キーが欠けている場合はデフォルト設定になる
  - 設定クラスからロガーを生成し、ログレベルに応じてファイルへ書き込む
  - debugレベルはデフォルト設定(info)では出力されない
  - Mapから生成できる
  - アセットのパスから生成できる
- `test/shared_logger_provider_test.dart`
  - 未登録なら何もしないロガーが返り、呼び出しても例外にならない
  - overrideWithValue で登録したロガーが各所から同一インスタンスで取得できる

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
