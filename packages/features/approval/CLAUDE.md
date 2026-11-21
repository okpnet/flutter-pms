# approval

承認一覧(承認待ちの一覧・複数選択の一括承認・パスワードの再入力・ダッシュボードの承認待ち通知)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。
デザインは `tools/open-design` の 6.7「承認一覧と、ダッシュボードの承認待ち通知」。経緯は `issue/20261121_0001.md`(リポジトリのルート)。
契約(遷移先)は `lib/approval_api.dart`(`ApprovalListDestination`)。実装の入口 `lib/approval.dart` はアプリだけが読み込む。

## 画面(`/approval/<メニュー>`。`ApprovalListPage`)
1.  メニューは、承認が要る機能のグループの末尾に「承認一覧」を 1 項目ずつ出す(`ApprovalModule`。`featureModules` の最後に置く)。品質管理文書(文書)・営業(受注・出荷)・購買(発注・非計上発注)・品質共通(異常・異常の処置・再発防止)。対応は `ApprovalMenus.tabs`。
1.  区分ごとのタブ(承認待ちの件数つき)に、承認待ち(ログインユーザーが承認者で、いま承認できるもの)の表。検索(件名・内容・申請者)・並べ替え(列の見出し)。列は 選択・件名・内容・申請者・申請日・承認の段階・参照。
1.  行を押して選ぶ(複数可。チェックボックスでも可)。「すべて選択」「選択を解除」「承認する(N 件)」。選択はタブごと。参照は、対象の画面へ移る(`approvalTargetLocatorProvider`。アプリが対象の画面のパスに対応づける。無い区分は出さない)。
1.  承認のダイアログ: 何についての承認かを一覧で確認し、**担当者のパスワードを入力**する(`IPasswordVerifier`。アプリが `pbapi` の `SessionService.verifyPassword` につなぐ。今のセッションは変えない)。違うときはその場でエラー(承認は登録されない)。合っていれば `IApprovalGateway.approve`(DB の `approval_approve_many`。1 回の呼び出し。行ごとの成否)で登録し、結果(承認 N 件・承認者・承認日時・失敗の理由)を出す。承認した行は一覧から消え、タブ・通知の件数も減る。一部が失敗しても、ほかの行は承認される。
1.  ダッシュボードの通知(`ApprovalAlertBanner`): 承認待ちが 1 件以上あるとき「承認待ちが N 件あります」とメニューごとの承認一覧へのリンク(区分ごとの件数)を、遅延と同じ注意レベルのアラートで出す。0 件のときは出さない。アプリが `feature_shared` の `dashboardAlertSlotProvider` に差し込む。

## 取得元と DB
1.  取得元は `IApprovalGateway`(`approvalGatewayProvider`。既定はメモリ上)。GraphQL 版は、DB のビュー `v_approval_pending`(`approver` かつ `actionable` の行。区分は `is_document`・`is_order`…の boolean)と関数 `approval_approve_many`(`document_approval_model`)で実装する(DB の再構築・スキーマの更新のあと)。
1.  承認の判定・順序(順位が小さい段がすべて承認済みのときだけ承認できる)・次の段への通知(`trans_announcement`。通知区分 `approval`、対象は承認前)は DB(`document_approve`・`approval_start`・`approval_notify`)。登録が申請: `info_app.settings` の `approval.patterns.<種類>` に承認パターンがあると、その種類の登録(`trg_05_approval_request`)が承認の実行を始める。申請者は対象の登録者(更新者)、申請日は対象の登録の日時。
1.  判定・文字は DB のビューの値を使い、画面で組み立てない。

## テスト
`test/approval_test.dart`(画面・ダイアログ・通知・モジュール。サーバー不要)、`example/test/widget_test.dart`。`example`(Windows 向け。`flutter run -d windows`。見本のパスワードは `demo-password`)。

## 規則/仕様
`packages/features/CLAUDE.md` の規則に従う(ディレクトリ/ファイル・命名・バレルファイル・JSON 化・ログ・GoF)。
