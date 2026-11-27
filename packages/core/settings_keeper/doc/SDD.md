# settings_keeper ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

settings_keeper: ローカル設定の保存と復元(Memento)。保存の手段はアプリ側で差し替えられる(Strategy)。

- 層: core(機能とアプリの仲介・コマンドバス・設定の保存など)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/core/settings_keeper` |
| Dart ファイル(生成物を除く) | 8 |
| `lib/src` の分け方 | (分けていない、または `lib/src` が無い) |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `FileSettingsStorage` | クラス | 設定1件を [directory] の `<key>.json` に保存する [SettingsStorage]。 | `lib/src/file_settings_storage.dart` |
| `InMemorySettingsStorage` | クラス | メモリにだけ保存する [SettingsStorage]。アプリを閉じると消える。テストや未設定時の既定。 | `lib/src/in_memory_settings_storage.dart` |
| `SettingsKeeper` | クラス | 設定の保存と復元を行う。 | `lib/src/settings_keeper.dart` |
| `SettingsMemento` | クラス | 設定1件分の状態の写し。 | `lib/src/settings_memento.dart` |
| `SettingsOriginator` | インターフェイス | 保存したい設定の持ち主。 | `lib/src/settings_originator.dart` |
| `settingsStorageProvider` | Riverpod プロバイダ | 設定の保存手段。既定はメモリだけ(アプリを閉じると消える)。 | `lib/src/settings_providers.dart` |
| `settingsKeeperProvider` | Riverpod プロバイダ | [settingsStorageProvider] と [loggerProvider] で組み立てた [SettingsKeeper]。 | `lib/src/settings_providers.dart` |
| `SettingsStorage` | インターフェイス | 設定の保存手段。アプリの方針に合わせて実装を差し替える。 | `lib/src/settings_storage.dart` |
| `SettingsStorageException` | クラス | 保存手段の失敗。[cause] に元の例外を持つ。 | `lib/src/settings_storage.dart` |
| `validateSettingsKey` | 関数 | [key] が保存先の名前として使えることを確かめる。使えなければ [SettingsStorageException]。 | `lib/src/settings_storage.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `SettingsKeeper` | Memento の Caretaker。メメントの中身は見ず、[SettingsStorage] に預けて返すだけ。 | `lib/src/settings_keeper.dart` |
| `SettingsMemento` | Memento。持ち主([SettingsOriginator])の内部表現を、 | `lib/src/settings_memento.dart` |
| `SettingsOriginator` | Memento の Originator。 | `lib/src/settings_originator.dart` |
| `SettingsStorage` | Strategy。標準で [FileSettingsStorage](JSONファイル)と | `lib/src/settings_storage.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `logger_provider`
- 利用元: `pms_app`(アプリ)、`feature_shared`(パッケージ)、`page_mediator_extension`(パッケージ)、`page_mediator_extension/example`(example)、`app_core`(パッケージ)、`app_core/example`(example)、`dashboard_container`(パッケージ)、`dashboard_container/example`(example)
- 外部パッケージ: `flutter_riverpod`

## 6. 設計上の決定(`CLAUDE.md` より)

- **一般**: このライブラリ`settings_keeper`は、アプリのローカル設定(テーマ、ウィンドウの位置、最後に開いた画面など)の保存と復元を担います。保存の手段はアプリ側の方針で差し替えられます。
- **使用パッケージ**: 使用して良いパッケージ

## 7. エラー処理・ログ

- ログは `loggerProvider`(Riverpod)から受け、このライブラリが発生元のエラーだけを残す。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/settings_keeper_test.dart`(13)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
