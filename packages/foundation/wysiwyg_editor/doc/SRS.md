# wysiwyg_editor ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

wysiwyg_editor: WYSIWYG(ビジュアル)と Markdown を切り替えて本文を編集する画面の部品。

本文の編集の画面の部品。「ビジュアル」と「Markdown」を切り替えて書く。Flutter(`flutter test`)。

### 1.2 範囲

- 場所: `packages/foundation/wysiwyg_editor`(foundation(画面を持たない汎用部品))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`manual`(パッケージ)、`quality_document`(パッケージ)

### 2.2 依存先(ワークスペース内)

`markdown_ast`、`markdown_to_wysiwyg`、`wysiwyg_to_markdown`、`markdown_view`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `MdTextOps` | クラス | 入力欄の Markdown への書式の挿入。選択範囲とカーソルに対して、新しい値を返す純粋な関数の集まり。 |
| FR-02 | `LinkPicker` | 型の別名 | リンクを入れる操作。選択している文字([selectedText])を渡し、入れる Markdown(`[[ページ]]` など)を返す(取り消しは null)。 |
| FR-03 | `WysiwygEditor` | クラス | 本文の編集。「ビジュアル」と「Markdown」を切り替えて書く。同じ Markdown を正本に、相互に変換する |
| FR-04 | `WysiwygEditorController` | クラス | エディタの本文(Markdown)の窓口。親(保存の画面)が、いまの本文と、変更があるかを読む。 |
| FR-05 | `WysiwygEditorLabels` | クラス | エディタの文字(切り替え・道具バーの説明・ひな形・プレビューの見出し)。アプリが言語ごとに用意して渡す。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **Markdown 系のパッケージ(責務の分担)**: | パッケージ | 責務 | 種類 |

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/wysiwyg_editor.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 16 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 1 件、テストケース 16 件。

- `test/wysiwyg_editor_test.dart`
  - wrap: 選択を囲む / 選択なしはひな形
  - prefixLines: 行頭の記号・番号付き
  - insertBlock は前後を空行で区切る。insertText は選択を置き換える
  - selectedText: 選択した文字(選択が無いときは空)
  - エディタにつなぐまでは初期の本文。つなぐと編集中の本文。外すと初期へ戻る
  - isDirty: 整えただけの差(空行・CRLF)は変更としない
  - 既定はビジュアル。本文をブロックで出し、Markdown に切り替えても内容は変わらない
  - Markdown で書くと、controller の本文が変わり、onChanged が呼ばれる
  - ビジュアル: ブロックを選んで直し、完了で反映。上へ・下へ・削除
  - 編集中のブロックも、controller の本文に含まれる(完了を押さなくても)
  - 道具バー: どのブロックも選んでいないとき、ひな形のブロックを末尾に足して編集する
  - 道具バー: Markdown の入力欄で、見出し・太字を入れる
  - リンク: pickLink が返した Markdown を、選択の位置へ入れる。取り消し(null)は何もしない。pickLink が無ければ道具を出さない
  - ページへのリンクの行き先は resolver で決まる(ビジュアルの表示にも使う)
  - Key の接頭辞を変えられる
  - 空の本文では、空のときの文字を出す。英語の文字も選べる

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
