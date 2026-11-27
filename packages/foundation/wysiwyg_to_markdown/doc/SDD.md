# wysiwyg_to_markdown ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

wysiwyg_to_markdown: WYSIWYG の文書(ブロックの並び)を Markdown にする(画面を持たない純 Dart)。

- 層: foundation(画面を持たない汎用部品)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/foundation/wysiwyg_to_markdown` |
| Dart ファイル(生成物を除く) | 2 |
| `lib/src` の分け方 | (分けていない、または `lib/src` が無い) |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `WysiwygToMarkdown` | クラス | WYSIWYG の文書 → Markdown。 | `lib/src/wysiwyg_to_markdown.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `WysiwygToMarkdown` | Adapter(編集の画面のブロックの並びを、保存する Markdown の文字に合わせる) | `lib/src/wysiwyg_to_markdown.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `markdown_ast`
- テスト用: `markdown_to_wysiwyg`
- 利用元: `wysiwyg_editor`(パッケージ)
- 外部パッケージ: なし

## 6. 設計上の決定(`CLAUDE.md` より)

- **Markdown 系のパッケージ(責務の分担)**: | パッケージ | 責務 | 種類 |

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/wysiwyg_to_markdown_test.dart`(8)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
