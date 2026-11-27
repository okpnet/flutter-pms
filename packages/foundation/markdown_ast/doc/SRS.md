# markdown_ast ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

markdown_ast: Markdown の構文木・読み取り(パーサー)と、WYSIWYG の文書の型(画面を持たない純 Dart)。

Markdown の構文木と読み取り(パーサー)、WYSIWYG の文書の型。画面を持たない純 Dart(`dart test`)。

### 1.2 範囲

- 場所: `packages/foundation/markdown_ast`(foundation(画面を持たない汎用部品))
- 種類: 純 Dart パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`manual`(パッケージ)、`markdown_pdf`(パッケージ)、`markdown_stream`(パッケージ)、`markdown_to_wysiwyg`(パッケージ)、`markdown_view`(パッケージ)、`wysiwyg_editor`(パッケージ)、`wysiwyg_to_markdown`(パッケージ)

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
| FR-01 | `MdBlock` | クラス | Markdown の構文木(ブロック)。 |
| FR-02 | `MdHeading` | クラス |  |
| FR-03 | `MdParagraph` | クラス |  |
| FR-04 | `MdList` | クラス |  |
| FR-05 | `MdQuote` | クラス |  |
| FR-06 | `MdCode` | クラス |  |
| FR-07 | `MdTable` | クラス |  |
| FR-08 | `MdRule` | クラス |  |
| FR-09 | `MdInline` | クラス | インライン(段落・項目・セルの中の書式)。 |
| FR-10 | `MdText` | クラス |  |
| FR-11 | `MdBold` | クラス |  |
| FR-12 | `MdItalic` | クラス |  |
| FR-13 | `MdInlineCode` | クラス |  |
| FR-14 | `MdWikiLink` | クラス | ページへのリンク。[target] はページ名、[label] は表示文字(無ければページ名)。 |
| FR-15 | `MdExternalLink` | クラス |  |
| FR-16 | `MarkdownParser` | クラス | Markdown の読み取りと、インラインの分解。依存を持たない純 Dart。 |
| FR-17 | `WysiwygBlockKind` | 列挙型 | WYSIWYG の文書のブロックの種類(見た目の区分)。Markdown からの変換([MarkdownToWysiwyg])が決める。 |
| FR-18 | `WysiwygBlock` | クラス | WYSIWYG の文書の 1 ブロック(段落・見出し・表・リスト…)。中身は Markdown の文字(そのブロックだけ)。 |
| FR-19 | `WysiwygDocument` | クラス | WYSIWYG の文書。ブロックの並び(上から下)。変更は新しい文書を返す(不変)。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **Markdown 系のパッケージ(責務の分担)**: | パッケージ | 責務 | 種類 |

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/markdown_ast.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 8 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 1 件、テストケース 8 件。

- `test/markdown_ast_test.dart`
  - ブロック: 見出し・段落・箇条書き・番号付き・引用・コード・表・区切り線
  - インライン: 太字・斜体・コード・ページへのリンク・外部リンク
  - HTML は解釈しない(文字のまま)
  - wikiLinks は重複を除いて出現順、renameLink は表示文字を残す
  - 空の入力はブロックなし
  - 追加・挿入・置換・削除は、新しい文書を返し、元は変わらない
  - move は上下に動かす。範囲外は動かさない
  - 等しさは中身で決まる

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
