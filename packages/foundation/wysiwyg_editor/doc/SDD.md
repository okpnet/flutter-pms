# wysiwyg_editor ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

wysiwyg_editor: WYSIWYG(ビジュアル)と Markdown を切り替えて本文を編集する画面の部品。

- 層: foundation(画面を持たない汎用部品)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/foundation/wysiwyg_editor` |
| Dart ファイル(生成物を除く) | 5 |
| `lib/src` の分け方 | (分けていない、または `lib/src` が無い) |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `MdTextOps` | クラス | 入力欄の Markdown への書式の挿入。選択範囲とカーソルに対して、新しい値を返す純粋な関数の集まり。 | `lib/src/md_text_ops.dart` |
| `LinkPicker` | 型の別名 | リンクを入れる操作。選択している文字([selectedText])を渡し、入れる Markdown(`[[ページ]]` など)を返す(取り消しは null)。 | `lib/src/wysiwyg_editor.dart` |
| `WysiwygEditor` | クラス | 本文の編集。「ビジュアル」と「Markdown」を切り替えて書く。同じ Markdown を正本に、相互に変換する | `lib/src/wysiwyg_editor.dart` |
| `WysiwygEditorController` | クラス | エディタの本文(Markdown)の窓口。親(保存の画面)が、いまの本文と、変更があるかを読む。 | `lib/src/wysiwyg_editor_controller.dart` |
| `WysiwygEditorLabels` | クラス | エディタの文字(切り替え・道具バーの説明・ひな形・プレビューの見出し)。アプリが言語ごとに用意して渡す。 | `lib/src/wysiwyg_editor_labels.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `markdown_ast`、`markdown_to_wysiwyg`、`wysiwyg_to_markdown`、`markdown_view`
- 利用元: `manual`(パッケージ)、`quality_document`(パッケージ)
- 外部パッケージ: なし

## 6. 設計上の決定(`CLAUDE.md` より)

- **Markdown 系のパッケージ(責務の分担)**: | パッケージ | 責務 | 種類 |

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/wysiwyg_editor_test.dart`(16)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
