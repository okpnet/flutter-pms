# approval_stamp_view ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

approval_stamp_view: 承認スタンプの画面の部品(スタンプ・用紙のプレビュー)。様式は approval_stamp。

承認スタンプの画面の部品。様式・内容・配置の計算は `packages/foundation/approval_stamp`(純 Dart)、PDF の描画は `markdown_pdf`。この部品は画面(Flutter)の描画だけを持つ。

### 1.2 範囲

- 場所: `packages/ui/approval_stamp_view`(ui(UI 基盤))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`document_settings`(パッケージ)、`manual`(パッケージ)

### 2.2 依存先(ワークスペース内)

`approval_stamp`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `ApprovalStampView` | クラス | 承認スタンプ 1 つ(枠・文字・すかし・回転)。PDF のスタンプ(`markdown_pdf`)と同じ様式で描く。 |
| FR-02 | `StampPagePreview` | クラス | 用紙の上のスタンプの位置のプレビュー(設定の画面・文書の表示)。 |

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/approval_stamp_view.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 6 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 1 件、テストケース 6 件。

- `test/approval_stamp_view_test.dart`
  - スタンプは、承認の文字・日付・承認者を出し、様式の大きさ(mm × 倍率)になる
  - 承認待ちのスタンプも出せる(破線・灰色の様式)
  - 円・二重枠・日付印の形でも描ける
  - 用紙のプレビュー: 用紙の縦横比・スタンプの位置(右上)・ヘッダ/フッタの文字
  - 重ね方: 透かし(既定)は本文の線より後ろ、前面は本文の線より前に描く
  - pages = first のとき、2 ページ目のプレビューにはスタンプが出ない

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
