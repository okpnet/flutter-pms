# localized_values ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

localized_values: 言語別の値(呼称・文章・ラベル)の表示の代替と、保存で送る差分。純 Dart。

- 層: foundation(画面を持たない汎用部品)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/foundation/localized_values` |
| Dart ファイル(生成物を除く) | 3 |
| `lib/src` の分け方 | (分けていない、または `lib/src` が無い) |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `LocalizedValues` | クラス | 言語コード → 値 の言語別の値。値オブジェクト(Value Object)。 | `lib/src/localized_values.dart` |
| `LocalizedValuesChange` | クラス | 保存で送る、変わった言語だけの値。 | `lib/src/localized_values_change.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): なし
- 利用元: `cost`(パッケージ)、`item`(パッケージ)、`organization`(パッケージ)、`plan_change`(パッケージ)、`production_process`(パッケージ)、`quality`(パッケージ)、`quality_document`(パッケージ)、`resource`(パッケージ)、`shared_master`(パッケージ)、`system`(パッケージ)
- 外部パッケージ: なし

## 6. 設計上の決定(`CLAUDE.md` より)

パッケージの `CLAUDE.md` に、個別の決定は書かれていない(ルート・層の `CLAUDE.md` に従う)。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/localized_values_test.dart`(25)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
