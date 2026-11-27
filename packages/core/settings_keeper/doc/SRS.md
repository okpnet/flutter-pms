# settings_keeper ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

settings_keeper: ローカル設定の保存と復元(Memento)。保存の手段はアプリ側で差し替えられる(Strategy)。

このライブラリ`settings_keeper`は、アプリのローカル設定(テーマ、ウィンドウの位置、最後に開いた画面など)の保存と復元を担います。保存の手段はアプリ側の方針で差し替えられます。

### 1.2 範囲

- 場所: `packages/core/settings_keeper`(core(機能とアプリの仲介・コマンドバス・設定の保存など))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`feature_shared`(パッケージ)、`page_mediator_extension`(パッケージ)、`page_mediator_extension/example`(example)、`app_core`(パッケージ)、`app_core/example`(example)、`dashboard_container`(パッケージ)、`dashboard_container/example`(example)

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
| FR-01 | `FileSettingsStorage` | クラス | 設定1件を [directory] の `<key>.json` に保存する [SettingsStorage]。 |
| FR-02 | `InMemorySettingsStorage` | クラス | メモリにだけ保存する [SettingsStorage]。アプリを閉じると消える。テストや未設定時の既定。 |
| FR-03 | `SettingsKeeper` | クラス | 設定の保存と復元を行う。 |
| FR-04 | `SettingsMemento` | クラス | 設定1件分の状態の写し。 |
| FR-05 | `SettingsOriginator` | インターフェイス | 保存したい設定の持ち主。 |
| FR-06 | `settingsStorageProvider` | Riverpod プロバイダ | 設定の保存手段。既定はメモリだけ(アプリを閉じると消える)。 |
| FR-07 | `settingsKeeperProvider` | Riverpod プロバイダ | [settingsStorageProvider] と [loggerProvider] で組み立てた [SettingsKeeper]。 |
| FR-08 | `SettingsStorage` | インターフェイス | 設定の保存手段。アプリの方針に合わせて実装を差し替える。 |
| FR-09 | `SettingsStorageException` | クラス | 保存手段の失敗。[cause] に元の例外を持つ。 |
| FR-10 | `validateSettingsKey` | 関数 | [key] が保存先の名前として使えることを確かめる。使えなければ [SettingsStorageException]。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **一般**: このライブラリ`settings_keeper`は、アプリのローカル設定(テーマ、ウィンドウの位置、最後に開いた画面など)の保存と復元を担います。保存の手段はアプリ側の方針で差し替えられます。
- **使用パッケージ**: 使用して良いパッケージ

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | `loggerProvider` を使う |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/settings_keeper.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 13 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 1 件、テストケース 13 件。

- `test/settings_keeper_test.dart`
  - JSONへ変換して戻せる
  - 値は外から書き換えられない
  - 形式が不正ならFormatException
  - 保存した状態を別のインスタンスへ復元できる
  - 保存が無ければfalseで、持ち主は変わらずエラーログも出ない
  - clearで消える
  - 保存手段の失敗は例外にせず、接頭辞付きでログに残す
  - 使えない識別子は保存されない
  - <key>.jsonへ保存して読み戻せる(フォルダは自動で作る)
  - 無ければnull、delete後もnull
  - 壊れたファイルはSettingsStorageException、Keeperはfalseとログ
  - フォルダの外へ出る識別子は拒否する
  - 既定はメモリ、アプリが保存手段を上書きできる

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
