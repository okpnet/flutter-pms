# markdown_ast ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

markdown_ast: Markdown の構文木・読み取り(パーサー)と、WYSIWYG の文書の型(画面を持たない純 Dart)。

- 層: foundation(画面を持たない汎用部品)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/foundation/markdown_ast` |
| Dart ファイル(生成物を除く) | 3 |
| `lib/src` の分け方 | (分けていない、または `lib/src` が無い) |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `MdBlock` | クラス | Markdown の構文木(ブロック)。 | `lib/src/markdown_nodes.dart` |
| `MdHeading` | クラス |  | `lib/src/markdown_nodes.dart` |
| `MdParagraph` | クラス |  | `lib/src/markdown_nodes.dart` |
| `MdList` | クラス |  | `lib/src/markdown_nodes.dart` |
| `MdQuote` | クラス |  | `lib/src/markdown_nodes.dart` |
| `MdCode` | クラス |  | `lib/src/markdown_nodes.dart` |
| `MdTable` | クラス |  | `lib/src/markdown_nodes.dart` |
| `MdRule` | クラス |  | `lib/src/markdown_nodes.dart` |
| `MdInline` | クラス | インライン(段落・項目・セルの中の書式)。 | `lib/src/markdown_nodes.dart` |
| `MdText` | クラス |  | `lib/src/markdown_nodes.dart` |
| `MdBold` | クラス |  | `lib/src/markdown_nodes.dart` |
| `MdItalic` | クラス |  | `lib/src/markdown_nodes.dart` |
| `MdInlineCode` | クラス |  | `lib/src/markdown_nodes.dart` |
| `MdWikiLink` | クラス | ページへのリンク。[target] はページ名、[label] は表示文字(無ければページ名)。 | `lib/src/markdown_nodes.dart` |
| `MdExternalLink` | クラス |  | `lib/src/markdown_nodes.dart` |
| `MarkdownParser` | クラス | Markdown の読み取りと、インラインの分解。依存を持たない純 Dart。 | `lib/src/markdown_nodes.dart` |
| `WysiwygBlockKind` | 列挙型 | WYSIWYG の文書のブロックの種類(見た目の区分)。Markdown からの変換([MarkdownToWysiwyg])が決める。 | `lib/src/wysiwyg_document.dart` |
| `WysiwygBlock` | クラス | WYSIWYG の文書の 1 ブロック(段落・見出し・表・リスト…)。中身は Markdown の文字(そのブロックだけ)。 | `lib/src/wysiwyg_document.dart` |
| `WysiwygDocument` | クラス | WYSIWYG の文書。ブロックの並び(上から下)。変更は新しい文書を返す(不変)。 | `lib/src/wysiwyg_document.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `MarkdownParser` | Interpreter(小さな文法を構文木にする) | `lib/src/markdown_nodes.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): なし
- 利用元: `manual`(パッケージ)、`markdown_pdf`(パッケージ)、`markdown_stream`(パッケージ)、`markdown_to_wysiwyg`(パッケージ)、`markdown_view`(パッケージ)、`wysiwyg_editor`(パッケージ)、`wysiwyg_to_markdown`(パッケージ)
- 外部パッケージ: なし

## 6. 設計上の決定(`CLAUDE.md` より)

- **Markdown 系のパッケージ(責務の分担)**: | パッケージ | 責務 | 種類 |

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/markdown_ast_test.dart`(8)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
