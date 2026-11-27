# markdown_view ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

markdown_view: Markdown(構文木)をテーマに沿った画面の部品にして出す(閲覧)。

- 層: foundation(画面を持たない汎用部品)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/foundation/markdown_view` |
| Dart ファイル(生成物を除く) | 3 |
| `lib/src` の分け方 | (分けていない、または `lib/src` が無い) |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `WikiLinkTarget` | クラス | ページへのリンク(`[[ページ名]]`)の行き先の状態。画面(アプリ)が、ページ名から決めて返す。 | `lib/src/markdown_view.dart` |
| `WikiLinkResolver` | 型の別名 |  | `lib/src/markdown_view.dart` |
| `MarkdownView` | クラス | Markdown(本文)を、テーマに沿った画面の部品にして出す(閲覧)。HTML は解釈しない(文字として出す)。 | `lib/src/markdown_view.dart` |
| `MarkdownViewTheme` | クラス | Markdown の閲覧の見た目(文字の大きさ・色・余白の元)。 | `lib/src/markdown_view_theme.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `MarkdownView` | Interpreter(構文木 → 部品) | `lib/src/markdown_view.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `markdown_ast`
- 利用元: `manual`(パッケージ)、`quality_document`(パッケージ)、`wysiwyg_editor`(パッケージ)
- 外部パッケージ: なし

## 6. 設計上の決定(`CLAUDE.md` より)

- **Markdown 系のパッケージ(責務の分担)**: | パッケージ | 責務 | 種類 |

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/markdown_view_test.dart`(8)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
