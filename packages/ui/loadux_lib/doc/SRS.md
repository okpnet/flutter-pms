# loadux_lib ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

loadux_lib: 読み込み中の表示(円・バー)の部品。見た目は ThemeExtension(LoadingTheme)で差し替える。theme_lib には依存しない。

読み込み中の表示(円 `LoadingIndicator`・バー `LoadingBar`)の部品。保守で見た目を変えるときは、ここだけを直す。

### 1.2 範囲

- 場所: `packages/ui/loadux_lib`(ui(UI 基盤))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`access_control`(パッケージ)、`app_core`(パッケージ)、`auth_files`(パッケージ)、`organization`(パッケージ)、`quality`(パッケージ)、`shared_master`(パッケージ)、`user_profile`(パッケージ)、`work_record`(パッケージ)、`app_shell`(パッケージ)、`entity_screens`(パッケージ)、`flgtable_lib`(パッケージ)、`theme_lib`(パッケージ)

### 2.2 依存先(ワークスペース内)

なし

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `LoadingIndicator` | クラス | 読み込み中の円。大きさ・線の太さ・色は、引数 → [LoadingTheme] の順に決まる。 |
| FR-02 | `LoadingBar` | クラス | 読み込み中のバー(横に長い)。高さ・色は、引数 → [LoadingTheme] の順に決まる。 |
| FR-03 | `LoadingTheme` | クラス | 読み込み中の表示の見た目。`ThemeData.extensions` に入れて差し替える。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **設計**: 各画面・ライブラリは、`CircularProgressIndicator`・`LinearProgressIndicator` を直接使わず、この部品を使う。
- **使い方**: `doc/contents/usage.md`。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/loadux_lib.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 3 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 1 件、テストケース 3 件。

- `test/loadux_lib_test.dart`
  - 既定の見た目(テーマに LoadingTheme が無いとき)
  - テーマの LoadingTheme で見た目を差し替えられる。引数が優先
  - centered は中央に置き、文言を円の下に出す

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
