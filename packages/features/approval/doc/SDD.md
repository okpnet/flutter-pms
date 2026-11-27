# approval ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

approval: 承認一覧(承認待ちの一覧・複数選択の一括承認・パスワードの再入力・ダッシュボードの承認待ち通知)。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/approval` |
| Dart ファイル(生成物を除く) | 12 |
| `lib/src` の分け方 | `data(1)`、`graphql(1)`、`i18n(2)`、`page(6)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `PendingApproval` | クラス | 承認待ち 1 件(承認の段 1 つ)。DB のビュー `v_approval_pending` の行(承認者が自分で、承認できる状態のもの)から作る。 | `lib/src/data/approval_data.dart` |
| `ApprovalOutcome` | クラス | 承認の結果(1 行)。 | `lib/src/data/approval_data.dart` |
| `ApprovalMenus` | クラス | 承認一覧のメニュー(グループ)と、そのタブ(区分)。 | `lib/src/data/approval_data.dart` |
| `IApprovalGateway` | インターフェイス | 承認待ちの取得と、承認の登録の取得元。アプリが GraphQL 版(`document_approval_model`)に差し替える(Strategy)。 | `lib/src/data/approval_data.dart` |
| `InMemoryApprovalGateway` | クラス | メモリ上の取得元(既定・example・テスト用)。承認すると一覧から消える。 | `lib/src/data/approval_data.dart` |
| `IPasswordVerifier` | インターフェイス | 担当者のパスワードの確認(承認の前の再入力)。アプリが `pbapi` の `SessionService.verifyPassword` につなぐ。 | `lib/src/data/approval_data.dart` |
| `UnsupportedPasswordVerifier` | クラス | 確認できない環境の既定(承認の操作はできない)。 | `lib/src/data/approval_data.dart` |
| `approvalGatewayProvider` | Riverpod プロバイダ |  | `lib/src/data/approval_data.dart` |
| `approvalPasswordVerifierProvider` | Riverpod プロバイダ |  | `lib/src/data/approval_data.dart` |
| `ApprovalTargetLocator` | 型の別名 | 「参照」で移る先のパス(区分・対象の ID から)。null のときは参照を出さない。アプリが対象の画面のパスに対応づける。 | `lib/src/data/approval_data.dart` |
| `approvalTargetLocatorProvider` | Riverpod プロバイダ |  | `lib/src/data/approval_data.dart` |
| `approvalClockProvider` | Riverpod プロバイダ | 承認者の表示用の日時の文字(承認日時)。テストで固定する。 | `lib/src/data/approval_data.dart` |
| `PendingApprovalsNotifier` | クラス | 承認待ちの一覧。承認したあとは、取得元から読み直す。 | `lib/src/data/approval_data.dart` |
| `pendingApprovalsProvider` | Riverpod プロバイダ |  | `lib/src/data/approval_data.dart` |
| `pendingCountsByKindProvider` | Riverpod プロバイダ | 区分ごとの承認待ちの件数。 | `lib/src/data/approval_data.dart` |
| `GraphqlApprovalGateway` | クラス | 承認待ちの取得と承認の登録の GraphQL 版の取得元。モデルは `document_approval_model` | `lib/src/graphql/graphql_approval_gateway.dart` |
| `ApprovalStrings` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `approvalStringsProvider` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `ApprovalAlertBanner` | クラス | ダッシュボードの「承認待ちが N 件あります」の通知。遅延と同じ注意レベルのアラート(読み上げの対象)。 | `lib/src/page/approval_alert_banner.dart` |
| `ApprovalListPage` | クラス | メニューごとの承認一覧。区分ごとのタブ(承認待ちの件数つき)で、ログインユーザーが承認者になっている承認待ちを出す。 | `lib/src/page/approval_list_page.dart` |
| `ApprovalModule` | クラス | 承認一覧をアプリへ組み込む口。メニューは、承認が要る機能のグループ(品質管理文書・営業・購買・品質共通)の末尾に | `lib/src/page/approval_module.dart` |
| `ApprovalPaths` | クラス | 画面のパス。メニュー(グループ ID)ごと。 | `lib/src/page/approval_paths.dart` |
| `ApprovalListDestination` | クラス | 承認一覧へ。[menu] はメニューのグループ ID(`operations`・`sales`・`purchasing`)。 | `lib/src/page/approval_destinations.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `feature_shared`、`baton_lib`、`app_shell`、`document_approval_model`
- テスト用: `theme_lib`
- 利用元: `pms_app`(アプリ)
- 外部パッケージ: `graphql`、`gql`、`flutter_riverpod`、`go_router`、`slang`

## 6. 設計上の決定(`CLAUDE.md` より)

- **画面(`/approval/<メニュー>`。`ApprovalListPage`)**: メニューは、承認が要る機能のグループの末尾に「承認一覧」を 1 項目ずつ出す(`ApprovalModule`。`featureModules` の最後に置く)。品質管理文書(文書)・営業(受注・出荷)・購買(発注・非計上発注)・品質共通(異常・異常の処置・再発防止)。対応は `ApprovalMenus.tabs`。
- **取得元と DB**: 取得元は `IApprovalGateway`(`approvalGatewayProvider`。既定はメモリ上)。GraphQL 版は、DB のビュー `v_approval_pending`(`approver` かつ `actionable` の行。区分は `is_document`・`is_order`…の boolean)と関数 `approva…

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/approval_test.dart`(12)、`test/graphql_gateway_test.dart`(3)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
