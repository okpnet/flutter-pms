# manual_model ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

manual_model: manual 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

### 1.2 範囲

- 場所: `packages/model_providers/manual_model`(model_providers(機能ごとの GraphQL モデル))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`manual`(パッケージ)

### 2.2 依存先(ワークスペース内)

`pms_graphql`

テスト用: `data_test_harness`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、画面ごとの GraphQL の読み込み・登録・更新・関数の呼び出しを、次のとおり提供する(`gql/*.yaml` が定義。型は生成する)。

| ID | 名前 | 種類 | 対象 | 要求 |
|---|---|---|---|---|
| FR-01 | `ManualTierPage` | 読み込み | `mstr_document_tier` | 文書階層(ルートの文書の階層 = tier_number が最小のもの) |
| FR-02 | `ManualDocumentPage` | 読み込み | `mstr_document` | ルートの文書(親は文書ツリーの親。親が無い、または親が NULL のものがルート) |
| FR-03 | `ManualContentPage` | 読み込み | `mstr_document_content` | ページ(文書コンテンツ) |
| FR-04 | `ManualTextValuePage` | 読み込み | `shared_text_value` | 本文(共有テキストの値。言語ごと)。filter で共有テキストの ID の集まりと言語を絞る |
| FR-05 | `ManualTextHistoryPage` | 読み込み | `history_shared_text_value` | 本文の履歴(DB の履歴の表。新しい版が先) |
| FR-06 | `ManualLanguagePage` | 読み込み | `shared_language_code` | 言語コード(ja の ID を引く) |
| FR-07 | `ManualAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | 呼称(ページ名)・文章(本文)は共通関数。渡した言語の値だけが入れ替わる(他の言語は残る)。担当者は引数、省略時は JWT の staff_id |
| FR-08 | `ManualTextSavePageCall` | DB 関数の呼び出し | `sharedTextSave` |  |
| FR-09 | `ManualDocumentPageCreate` | 登録 | `mstr_document` | ルートの文書の登録。承認パターンは、DB のトリガーが info_app.document_approval_pattern_id から入れる(登録が申請)。管理番号は利用者が決める |
| FR-10 | `ManualDocumentTreePageCreate` | 登録 | `mstr_document_tree` |  |
| FR-11 | `ManualContentPageCreate` | 登録 | `mstr_document_content` |  |
| FR-12 | `ManualContentTreePageCreate` | 登録 | `mstr_document_content_tree` |  |
| FR-13 | `ManualPublicationPage` | 読み込み | `v_document_publication` | ---- 公開・承認(ルートの文書の状態。判定・文字は DB のビューが 1 か所で持つ) ---- |
| FR-14 | `ManualApprovalStampPage` | 読み込み | `v_document_approval_stamp` |  |
| FR-15 | `ManualApprovalStylePage` | 読み込み | `trans_approval_pattern` | 元の承認パターン(mstr_approval_pattern)の stamp_style(JSON。NULL は info_app.settings の標準)を引く |
| FR-16 | `ManualRequestApprovalPageCall` | DB 関数の呼び出し | `documentRequestApproval` | 戻り値は作った通知の件数。errcode: OPR01 文書が無い / OPR03 承認の段が無い(承認不要)・すでに公開済み。 |

手書きの公開面は次のとおり。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FA-01 | `ManualApprovalStampPageFilterSpec` | 抽象クラス |  |
| FA-02 | `ManualApprovalStylePageFilterSpec` | 抽象クラス |  |
| FA-03 | `ManualContentPageFilterSpec` | 抽象クラス |  |
| FA-04 | `ManualDocumentPageFilterSpec` | 抽象クラス |  |
| FA-05 | `ManualLanguagePageFilterSpec` | 抽象クラス |  |
| FA-06 | `ManualPublicationPageFilterSpec` | 抽象クラス |  |
| FA-07 | `ManualTextHistoryPageFilterSpec` | 抽象クラス |  |
| FA-08 | `ManualTextValuePageFilterSpec` | 抽象クラス |  |
| FA-09 | `ManualTierPageFilterSpec` | 抽象クラス |  |

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/manual_model.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 14 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 1 件、テストケース 14 件。

- `test/server_read_test.dart`
  - ManualApprovalStampPageRead
  - ManualApprovalStylePageRead
  - ManualContentPageRead
  - ManualDocumentPageRead
  - ManualLanguagePageRead
  - ManualPublicationPageRead
  - ManualTextHistoryPageRead
  - ManualTextValuePageRead
  - ManualTierPageRead
  - 遅延が制限時間を超えるとタイムアウトで終わる
  - 応答の途中・前の切断は Err(NetworkError)
  - 認証エラー(401/403)は Err(ServerError) でステータスを持つ
  - 認証ヘッダーが要求に付く
  - 切断のあと、サーバーが戻れば次の問い合わせは成功する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
