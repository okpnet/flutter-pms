# announcement

通知(自分宛ての通知の一覧・既読・ダッシュボードの未読通知・ログイン時の監査の予定の通知づくり)の実装(画面・ルート)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。
契約(遷移先の型)は `lib/announcement_api.dart`(`AnnouncementListDestination`)に公開する。実装の入口 `lib/announcement.dart` はアプリだけが読み込む。
モデルは `packages/model_providers/announcement_model`(`AnnouncementPage`・`AnnouncementMarkReadPageCall`)。

## 決定
1.  通知は、DB の表 `trans_announcement`(宛先 `to_staff_id`・区分 `category`・題名 `titles`・本文 `messages`・既読 `is_read`・期限 `expiration_date`・対象のシンボル `target_symbol`)を、そのまま読む。題名・本文は、通知を登録した時点の言語別の値(DB の `trans_label`・`trans_text`)を出し、アプリで文を組み立てない(登録時点の事実が残る)。区分で画面を分岐しない(R1)。
1.  一覧の入口は、ダッシュボードの未読通知(`AnnouncementBanner`: 「未読の通知が N 件あります」+「すべて見る」)。メニューには出さない。パスは `/announcements`。
1.  **ログインのたびに** `audit_notify_due`(監査の予定の通知づくり。冪等)を呼ぶ。ログインユーザー(`feature_shared` の `userSummaryProvider`)が変わるたびに 1 回(`announcementNotifyProvider`)。失敗しても一覧は使える(次のログインでもう一度作る)。ユーザーがいないとき(ログイン前)は呼ばない。外部のスケジューラは使わない。
1.  既読にするのは DB 関数 `announcement_mark_read`(自分宛てだけ。他の人の通知・削除済みは `ANN01`)。通知の削除・編集の操作は出さない。
1.  対象の画面へ進む操作は、`symbol` のショートカット(`packages/features/CLAUDE.md` の Issue)ができるまで、対象のシンボルを文字で出すだけ。
1.  メールは送らない(認証コードと同じく、アプリの中で完結する。`issue/20261124_0001.md` の 9)。

## 構成
| 場所 | 内容 |
|---|---|
| `lib/src/data/announcement_data.dart` | 通知(`Announcement`)・取得元(`IAnnouncementGateway`・メモリ上の `InMemoryAnnouncementGateway`)・状態(`announcementsProvider`・`announcementNotifyProvider`・`unreadAnnouncementCountProvider`) |
| `lib/src/graphql/graphql_announcement_gateway.dart` | GraphQL 版の取得元(言語は `ja`。宛先は `auditUser` の担当者で絞る。`audit_notify_due` は整数の戻り値のため、GraphQL の文で直接呼ぶ) |
| `lib/src/page/` | 一覧(`AnnouncementListPage`)・ダッシュボードの通知(`AnnouncementBanner`)・`AnnouncementModule`・遷移先・パス |

## アプリへの組み込み(`pms_app`)
`lib/services/announcement/announcement_overrides.dart` が取得元を差し込む(GraphQL 接続時は DB 版、未接続はメモリ上)。ダッシュボードの通知の領域(`approvalOverrides` の差し込み口)に `AnnouncementBanner` を並べる。アクセスパスは `/announcements`(`access_paths.csv`)。機能コードは `J`・画面コード `L`。

## テスト
`test/announcement_test.dart`(一覧・バナー・既読・ログインのたびの通知づくり)・`test/graphql_gateway_test.dart`(仮の通路。引数・並び・自分宛ての絞り込み)・`test/announcement_server_test.dart`(検証用サーバー。**書き込みあり**: 通知を登録 → 一覧 → 既読 → 論理削除。管理者の資格情報で実行)・`example/test/widget_test.dart`。

## 規則/仕様
`packages/features/CLAUDE.md` の[規則/仕様]を適用する(ディレクトリ・命名・バレル・JSON 化・ログ・デザインパターン・プロジェクト間をまたぐ指示)。多言語は slang(`lib/src/i18n`。`dart run slang`。クラス `AnnouncementStrings`、`announcementStringsProvider`)。
