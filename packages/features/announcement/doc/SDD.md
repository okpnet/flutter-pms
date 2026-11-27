# announcement ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

announcement: 通知(自分宛ての通知の一覧・既読・ダッシュボードの未読通知・ログイン時の監査の予定の通知づくり)。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/announcement` |
| Dart ファイル(生成物を除く) | 10 |
| `lib/src` の分け方 | `data(1)`、`graphql(1)`、`i18n(1)`、`page(5)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `Announcement` | クラス | 自分宛ての通知 1 件。題名・本文は、登録時に DB へ言語別で直接持った値(アプリで文を組み立てない)。 | `lib/src/data/announcement_data.dart` |
| `IAnnouncementGateway` | インターフェイス | 通知の取得元(Strategy)。既定はメモリ上。アプリが GraphQL 版に差し替える。 | `lib/src/data/announcement_data.dart` |
| `InMemoryAnnouncementGateway` | クラス | メモリ上の取得元(既定・テスト・example 用)。 | `lib/src/data/announcement_data.dart` |
| `announcementGatewayProvider` | Riverpod プロバイダ |  | `lib/src/data/announcement_data.dart` |
| `announcementNotifyProvider` | Riverpod プロバイダ | ログインのたび(ログインユーザーが変わるたび)に、監査の予定の通知を作る。失敗しても通知の一覧は使える(作れなかっただけ)。 | `lib/src/data/announcement_data.dart` |
| `AnnouncementsNotifier` | クラス | 自分宛ての通知。ログイン直後は、先に監査の予定の通知を作ってから読む。 | `lib/src/data/announcement_data.dart` |
| `announcementsProvider` | Riverpod プロバイダ |  | `lib/src/data/announcement_data.dart` |
| `announcementHomePathProvider` | Riverpod プロバイダ | 通知の一覧から戻る先(ダッシュボード)。アプリが違うパスのときは上書きする。 | `lib/src/data/announcement_data.dart` |
| `unreadAnnouncementCountProvider` | Riverpod プロバイダ | 未読の件数。 | `lib/src/data/announcement_data.dart` |
| `GraphqlAnnouncementGateway` | クラス | 通知の GraphQL 版の取得元。モデルは `announcement_model`(`AnnouncementPage`: 表 `trans_announcement`、`AnnouncementMarkReadPageCall`: | `lib/src/graphql/graphql_announcement_gateway.dart` |
| `announcementStringsProvider` | Riverpod プロバイダ | 通知の文字列。言語は feature_shared の [localeProvider] に従い、対応していない言語のときは基準言語(日本語)にする。 | `lib/src/i18n/strings_provider.dart` |
| `AnnouncementStrings` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `AnnouncementBanner` | クラス | ダッシュボードの「未読の通知が N 件あります」。「すべて見る」で通知の一覧へ移る。 | `lib/src/page/announcement_banner.dart` |
| `AnnouncementListPage` | クラス | 自分宛ての通知の一覧(新しい順)。題名・本文は DB の値のまま出す。未読は強調し、「既読にする」で既読にする。 | `lib/src/page/announcement_list_page.dart` |
| `AnnouncementModule` | クラス | 通知をアプリへ組み込む口。入口はメニューではなく、ダッシュボードの未読通知(`AnnouncementBanner`)の「すべて見る」。 | `lib/src/page/announcement_module.dart` |
| `AnnouncementPaths` | クラス | 画面のパス。 | `lib/src/page/announcement_paths.dart` |
| `AnnouncementListDestination` | クラス | 自分宛ての通知の一覧へ。 | `lib/src/page/announcement_destinations.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `feature_shared`、`baton_lib`、`app_shell`、`announcement_model`、`pms_graphql`
- テスト用: `theme_lib`、`data_test_harness`
- 利用元: `pms_app`(アプリ)、`pms_app_example`(アプリ)
- 外部パッケージ: `graphql`、`gql`、`flutter_riverpod`、`go_router`、`slang`

## 6. 設計上の決定(`CLAUDE.md` より)

- **決定**: 通知は、DB の表 `trans_announcement`(宛先 `to_staff_id`・区分 `category`・題名 `titles`・本文 `messages`・既読 `is_read`・期限 `expiration_date`・対象のシンボル `target_symbol`)を、そのまま読む。題名・本文は、通知を登録した時点の言語別の値(DB…
- **構成**: | 場所 | 内容 |
- **アプリへの組み込み(`pms_app`)**: `lib/services/announcement/announcement_overrides.dart` が取得元を差し込む(GraphQL 接続時は DB 版、未接続はメモリ上)。ダッシュボードの通知の領域(`approvalOverrides` の差し込み口)に `AnnouncementBanner` を並べる。アクセスパスは `/announc…

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/announcement_server_test.dart`(1)、`test/announcement_test.dart`(10)、`test/graphql_gateway_test.dart`(4)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
