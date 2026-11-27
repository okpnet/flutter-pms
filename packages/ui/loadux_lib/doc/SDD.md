# loadux_lib ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

loadux_lib: 読み込み中の表示(円・バー)の部品。見た目は ThemeExtension(LoadingTheme)で差し替える。theme_lib には依存しない。

- 層: ui(UI 基盤)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/ui/loadux_lib` |
| Dart ファイル(生成物を除く) | 3 |
| `lib/src` の分け方 | (分けていない、または `lib/src` が無い) |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `LoadingIndicator` | クラス | 読み込み中の円。大きさ・線の太さ・色は、引数 → [LoadingTheme] の順に決まる。 | `lib/src/loading_indicator.dart` |
| `LoadingBar` | クラス | 読み込み中のバー(横に長い)。高さ・色は、引数 → [LoadingTheme] の順に決まる。 | `lib/src/loading_indicator.dart` |
| `LoadingTheme` | クラス | 読み込み中の表示の見た目。`ThemeData.extensions` に入れて差し替える。 | `lib/src/loading_theme.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `LoadingTheme` | Strategy(見た目の決め方を、テーマの側が差し替える) | `lib/src/loading_theme.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): なし
- 利用元: `pms_app`(アプリ)、`access_control`(パッケージ)、`app_core`(パッケージ)、`auth_files`(パッケージ)、`organization`(パッケージ)、`quality`(パッケージ)、`shared_master`(パッケージ)、`user_profile`(パッケージ)、`work_record`(パッケージ)、`app_shell`(パッケージ)、`entity_screens`(パッケージ)、`flgtable_lib`(パッケージ)、`theme_lib`(パッケージ)
- 外部パッケージ: なし

## 6. 設計上の決定(`CLAUDE.md` より)

- **設計**: 各画面・ライブラリは、`CircularProgressIndicator`・`LinearProgressIndicator` を直接使わず、この部品を使う。
- **使い方**: `doc/contents/usage.md`。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/loadux_lib_test.dart`(3)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
