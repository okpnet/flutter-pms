# approval ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

approval: 承認一覧(承認待ちの一覧・複数選択の一括承認・パスワードの再入力・ダッシュボードの承認待ち通知)。

承認一覧(承認待ちの一覧・複数選択の一括承認・パスワードの再入力・ダッシュボードの承認待ち通知)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 デザインは `tools/open-design` の 6.7「承認一覧と、ダッシュボードの承認待ち通知」。経緯は `issue/202611.md#20261121_0001`(リポジトリのルート)。 契約(遷移先)は `lib/approval_api.dart`(`ApprovalListDestination`)。実装の入口 `lib/approval.dart` はアプリだけが読み込む。

### 1.2 範囲

- 場所: `packages/features/approval`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)

### 2.2 依存先(ワークスペース内)

`feature_shared`、`baton_lib`、`app_shell`、`document_approval_model`

テスト用: `theme_lib`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `PendingApproval` | クラス | 承認待ち 1 件(承認の段 1 つ)。DB のビュー `v_approval_pending` の行(承認者が自分で、承認できる状態のもの)から作る。 |
| FR-02 | `ApprovalOutcome` | クラス | 承認の結果(1 行)。 |
| FR-03 | `ApprovalMenus` | クラス | 承認一覧のメニュー(グループ)と、そのタブ(区分)。 |
| FR-04 | `IApprovalGateway` | インターフェイス | 承認待ちの取得と、承認の登録の取得元。アプリが GraphQL 版(`document_approval_model`)に差し替える(Strategy)。 |
| FR-05 | `InMemoryApprovalGateway` | クラス | メモリ上の取得元(既定・example・テスト用)。承認すると一覧から消える。 |
| FR-06 | `IPasswordVerifier` | インターフェイス | 担当者のパスワードの確認(承認の前の再入力)。アプリが `pbapi` の `SessionService.verifyPassword` につなぐ。 |
| FR-07 | `UnsupportedPasswordVerifier` | クラス | 確認できない環境の既定(承認の操作はできない)。 |
| FR-08 | `approvalGatewayProvider` | Riverpod プロバイダ |  |
| FR-09 | `approvalPasswordVerifierProvider` | Riverpod プロバイダ |  |
| FR-10 | `ApprovalTargetLocator` | 型の別名 | 「参照」で移る先のパス(区分・対象の ID から)。null のときは参照を出さない。アプリが対象の画面のパスに対応づける。 |
| FR-11 | `approvalTargetLocatorProvider` | Riverpod プロバイダ |  |
| FR-12 | `approvalClockProvider` | Riverpod プロバイダ | 承認者の表示用の日時の文字(承認日時)。テストで固定する。 |
| FR-13 | `PendingApprovalsNotifier` | クラス | 承認待ちの一覧。承認したあとは、取得元から読み直す。 |
| FR-14 | `pendingApprovalsProvider` | Riverpod プロバイダ |  |
| FR-15 | `pendingCountsByKindProvider` | Riverpod プロバイダ | 区分ごとの承認待ちの件数。 |
| FR-16 | `GraphqlApprovalGateway` | クラス | 承認待ちの取得と承認の登録の GraphQL 版の取得元。モデルは `document_approval_model` |
| FR-17 | `ApprovalStrings` | 定数・その他 |  |
| FR-18 | `approvalStringsProvider` | 定数・その他 |  |
| FR-19 | `ApprovalAlertBanner` | クラス | ダッシュボードの「承認待ちが N 件あります」の通知。遅延と同じ注意レベルのアラート(読み上げの対象)。 |
| FR-20 | `ApprovalListPage` | クラス | メニューごとの承認一覧。区分ごとのタブ(承認待ちの件数つき)で、ログインユーザーが承認者になっている承認待ちを出す。 |
| FR-21 | `ApprovalModule` | クラス | 承認一覧をアプリへ組み込む口。メニューは、承認が要る機能のグループ(品質管理文書・営業・購買・品質共通)の末尾に |
| FR-22 | `ApprovalPaths` | クラス | 画面のパス。メニュー(グループ ID)ごと。 |
| FR-23 | `ApprovalListDestination` | クラス | 承認一覧へ。[menu] はメニューのグループ ID(`operations`・`sales`・`purchasing`)。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **画面(`/approval/<メニュー>`。`ApprovalListPage`)**: メニューは、承認が要る機能のグループの末尾に「承認一覧」を 1 項目ずつ出す(`ApprovalModule`。`featureModules` の最後に置く)。品質管理文書(文書)・営業(受注・出荷)・購買(発注・非計上発注)・品質共通(異常・異常の処置・再発防止)。対応は `ApprovalMenus.tabs`。
- **取得元と DB**: 取得元は `IApprovalGateway`(`approvalGatewayProvider`。既定はメモリ上)。GraphQL 版は、DB のビュー `v_approval_pending`(`approver` かつ `actionable` の行。区分は `is_document`・`is_order`…の boolean)と関数 `approva…

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/approval.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 15 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 2 件、テストケース 15 件。

- `test/approval_test.dart`
  - 営業の承認一覧: 区分ごとのタブ(件数つき)に、承認待ちの表が出る
  - 検索と並べ替え: 件名・内容・申請者で絞り込む
  - 行を押して選ぶ(複数可)。すべて選択・選択を解除。承認ボタンは選んだ件数つき。選択はタブごと
  - 承認: 内容を確認し、パスワードが違うとその場でエラー(承認は登録されない)。合っていれば登録して結果を出す
  - 一部が失敗(前の段階が未承認など)しても、他の行は承認され、失敗した行の理由が出る
  - パスワードを確認できない(通信の失敗)ときは案内を出し、承認しない。キャンセルで閉じる
  - 参照: 対象の画面へ移る(参照先が無い区分には出ない)
  - 文書の承認一覧: 参照先が無い区分は、参照のボタンを出さない
  - 読み込みに失敗したら案内を出す
  - 承認待ちが N 件あるとき、メニューごとの承認一覧へのリンク(区分ごとの件数つき)を出す。押すとその一覧へ
  - 0 件のときは出さない。承認すると件数が減る
  - モジュール: メニューは 4 グループの末尾の「承認一覧」。遷移先はパスに変換できる
- `test/graphql_gateway_test.dart`
  - 承認待ち: ログイン中の担当者が承認者で、いま承認できる行だけを、区分・対象・申請者・段階つきで返す
  - 承認: 承認前の ID を 1 回の呼び出しで渡し、行ごとの結果を返す
  - 言語コードが無いときと、通信の失敗は、例外のまま投げる(画面が案内にする)

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
