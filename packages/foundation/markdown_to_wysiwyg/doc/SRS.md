# markdown_to_wysiwyg ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

markdown_to_wysiwyg: Markdown を WYSIWYG の文書(ブロックの並び)に変換する(画面を持たない純 Dart)。

Markdown → WYSIWYG の文書(`WysiwygDocument`)。画面を持たない純 Dart(`dart test`)。

### 1.2 範囲

- 場所: `packages/foundation/markdown_to_wysiwyg`(foundation(画面を持たない汎用部品))
- 種類: 純 Dart パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`wysiwyg_editor`(パッケージ)、`wysiwyg_to_markdown`(パッケージ・テスト用)

### 2.2 依存先(ワークスペース内)

`markdown_ast`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `MarkdownToWysiwyg` | クラス | Markdown → WYSIWYG の文書。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **Markdown 系のパッケージ(責務の分担)**: | パッケージ | 責務 | 種類 |

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/markdown_to_wysiwyg.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 7 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 1 件、テストケース 7 件。

- `test/markdown_to_wysiwyg_test.dart`
  - 空行で区切ったブロックに分け、ブロックごとの区分を付ける
  - コードの囲みの中の空行では分けない(コードは 1 ブロック)
  - 改行コード CRLF は LF にそろえる。連続する空行・前後の空白行は無視する
  - 空・空白だけの入力は、空の文書
  - 閉じていないコードの囲みは、最後まで 1 ブロック
  - ページへのリンク・書式を含む段落も、段落
  - split は、区切りの文字だけを返す(区分は付けない)

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
