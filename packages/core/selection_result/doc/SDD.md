# selection_result ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

selection_result: 選択画面が呼び出し元へ返す選択の結果(対象の種類・一意な id・任意の値)。JSON にもできる。

- 層: core(機能とアプリの仲介・コマンドバス・設定の保存など)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/core/selection_result` |
| Dart ファイル(生成物を除く) | 2 |
| `lib/src` の分け方 | (分けていない、または `lib/src` が無い) |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `Selection` | クラス | 選択の結果(Value Object)。 | `lib/src/selection.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): なし
- 利用元: `feature_shared`(パッケージ)、`quality`(パッケージ・テスト用)
- 外部パッケージ: なし

## 6. 設計上の決定(`CLAUDE.md` より)

- **一般**: このライブラリ`selection_result`は、選択画面(別の画面で1件を選んで戻る遷移)が呼び出し元へ返す**選択の結果**の共通の型`Selection`を持ちます。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/selection_test.dart`(5)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
