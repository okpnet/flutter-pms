# document_approval_model ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

document_approval_model: 「文書の承認・公開・スタンプの設定」機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

### 1.2 範囲

- 場所: `packages/model_providers/document_approval_model`(model_providers(機能ごとの GraphQL モデル))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`approval`(パッケージ)、`document_settings`(パッケージ)

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
| FR-01 | `DocumentPublicationPage` | 読み込み | `v_document_publication` | 文書の公開の判定(v_document_publication。1 行 = 文書) |
| FR-02 | `DocumentApprovalStampPage` | 読み込み | `v_document_approval_stamp` | 承認の段ごとの状態(v_document_approval_stamp。1 行 = 承認の段)。スタンプの表示項目の元 |
| FR-03 | `DocumentApprovalContentPage` | 読み込み | `v_document_content` | 文書コンテンツの閲覧用(v_document_content)。読めない人(readable = false)には contents・trans_file_id が NULL で返る |
| FR-04 | `DocumentApprovePageCall` | DB 関数の呼び出し | `documentApprove` | 承認(または却下)の登録(DB 関数 document_approve。追記のみ・1 回の呼び出し = 1 トランザクション) |
| FR-05 | `AppSettingsPage` | 読み込み | `info_app` | info_app は固定の 1 件(名前で引く)。設定は JSON(version と機能ごとのキー)。 |
| FR-06 | `AppSettingsPageEdit` | 更新 | `info_app` | 設定の更新(settings だけ。渡した列だけが変わる)。更新者は引数 |
| FR-07 | `ApprovalPatternStylePage` | 読み込み | `mstr_approval_pattern` | 承認パターンごとのスタンプの様式(mstr_approval_pattern.stamp_style。NULL は info_app.settings の標準を使う) |
| FR-08 | `ApprovalPatternStylePageEdit` | 更新 | `mstr_approval_pattern` |  |
| FR-09 | `ApprovalPendingPage` | 読み込み | `v_approval_pending` | 承認一覧は approver(ログイン中の担当者が該当者)かつ actionable(前の段がすべて承認済み)の行を読む(filter で絞る)。 |
| FR-10 | `ApprovalApproveManyPageCall` | DB 関数の呼び出し | `approvalApproveMany` | 一括承認(DB 関数 approval_approve_many。1 回の呼び出し。行ごとの成否) |
| FR-11 | `DocumentRequestApprovalPageCall` | DB 関数の呼び出し | `documentRequestApproval` | errcode: OPR01 文書が無い / OPR03 承認の段が無い(承認不要)・すでに公開済み。 |

手書きの公開面は次のとおり。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FA-01 | `AppSettingsPageFilterSpec` | 抽象クラス |  |
| FA-02 | `ApprovalPatternStylePageFilterSpec` | 抽象クラス |  |
| FA-03 | `ApprovalPendingPageFilterSpec` | 抽象クラス |  |
| FA-04 | `DocumentApprovalContentPageFilterSpec` | 抽象クラス |  |
| FA-05 | `DocumentApprovalStampPageFilterSpec` | 抽象クラス |  |
| FA-06 | `DocumentPublicationPageFilterSpec` | 抽象クラス |  |

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/document_approval_model.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 14 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 2 件、テストケース 14 件。

- `test/document_approval_call_test.dart`
  - 存在しない承認前の承認は OPR01(承認前が見つかりません)
  - info_app.settings の標準値に version・stamp・pdf(用紙・テーマ・ヘッダ・フッタ)が入っている
  - 存在しない文書の承認の申請は OPR01(文書が見つかりません)。通知は作られない
- `test/server_read_test.dart`
  - AppSettingsPageRead
  - ApprovalPatternStylePageRead
  - ApprovalPendingPageRead
  - DocumentApprovalContentPageRead
  - DocumentApprovalStampPageRead
  - DocumentPublicationPageRead
  - 遅延が制限時間を超えるとタイムアウトで終わる
  - 応答の途中・前の切断は Err(NetworkError)
  - 認証エラー(401/403)は Err(ServerError) でステータスを持つ
  - 認証ヘッダーが要求に付く
  - 切断のあと、サーバーが戻れば次の問い合わせは成功する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
