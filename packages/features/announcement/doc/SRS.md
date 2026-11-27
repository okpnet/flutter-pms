# announcement ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

announcement: 通知(自分宛ての通知の一覧・既読・ダッシュボードの未読通知・ログイン時の監査の予定の通知づくり)。

通知(自分宛ての通知の一覧・既読・ダッシュボードの未読通知・ログイン時の監査の予定の通知づくり)の実装(画面・ルート)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 契約(遷移先の型)は `lib/announcement_api.dart`(`AnnouncementListDestination`)に公開する。実装の入口 `lib/announcement.dart` はアプリだけが読み込む。 モデルは `packages/model_providers/announcement_model`(`AnnouncementPage`・`AnnouncementMarkReadPageCall`)。

### 1.2 範囲

- 場所: `packages/features/announcement`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`pms_app_example`(アプリ)

### 2.2 依存先(ワークスペース内)

`feature_shared`、`baton_lib`、`app_shell`、`announcement_model`、`pms_graphql`

テスト用: `theme_lib`、`data_test_harness`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `Announcement` | クラス | 自分宛ての通知 1 件。題名・本文は、登録時に DB へ言語別で直接持った値(アプリで文を組み立てない)。 |
| FR-02 | `IAnnouncementGateway` | インターフェイス | 通知の取得元(Strategy)。既定はメモリ上。アプリが GraphQL 版に差し替える。 |
| FR-03 | `InMemoryAnnouncementGateway` | クラス | メモリ上の取得元(既定・テスト・example 用)。 |
| FR-04 | `announcementGatewayProvider` | Riverpod プロバイダ |  |
| FR-05 | `announcementNotifyProvider` | Riverpod プロバイダ | ログインのたび(ログインユーザーが変わるたび)に、監査の予定の通知を作る。失敗しても通知の一覧は使える(作れなかっただけ)。 |
| FR-06 | `AnnouncementsNotifier` | クラス | 自分宛ての通知。ログイン直後は、先に監査の予定の通知を作ってから読む。 |
| FR-07 | `announcementsProvider` | Riverpod プロバイダ |  |
| FR-08 | `announcementHomePathProvider` | Riverpod プロバイダ | 通知の一覧から戻る先(ダッシュボード)。アプリが違うパスのときは上書きする。 |
| FR-09 | `unreadAnnouncementCountProvider` | Riverpod プロバイダ | 未読の件数。 |
| FR-10 | `GraphqlAnnouncementGateway` | クラス | 通知の GraphQL 版の取得元。モデルは `announcement_model`(`AnnouncementPage`: 表 `trans_announcement`、`AnnouncementMarkReadPageCall`: |
| FR-11 | `announcementStringsProvider` | Riverpod プロバイダ | 通知の文字列。言語は feature_shared の [localeProvider] に従い、対応していない言語のときは基準言語(日本語)にする。 |
| FR-12 | `AnnouncementStrings` | 定数・その他 |  |
| FR-13 | `AnnouncementBanner` | クラス | ダッシュボードの「未読の通知が N 件あります」。「すべて見る」で通知の一覧へ移る。 |
| FR-14 | `AnnouncementListPage` | クラス | 自分宛ての通知の一覧(新しい順)。題名・本文は DB の値のまま出す。未読は強調し、「既読にする」で既読にする。 |
| FR-15 | `AnnouncementModule` | クラス | 通知をアプリへ組み込む口。入口はメニューではなく、ダッシュボードの未読通知(`AnnouncementBanner`)の「すべて見る」。 |
| FR-16 | `AnnouncementPaths` | クラス | 画面のパス。 |
| FR-17 | `AnnouncementListDestination` | クラス | 自分宛ての通知の一覧へ。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **決定**: 通知は、DB の表 `trans_announcement`(宛先 `to_staff_id`・区分 `category`・題名 `titles`・本文 `messages`・既読 `is_read`・期限 `expiration_date`・対象のシンボル `target_symbol`)を、そのまま読む。題名・本文は、通知を登録した時点の言語別の値(DB…
- **構成**: | 場所 | 内容 |
- **アプリへの組み込み(`pms_app`)**: `lib/services/announcement/announcement_overrides.dart` が取得元を差し込む(GraphQL 接続時は DB 版、未接続はメモリ上)。ダッシュボードの通知の領域(`approvalOverrides` の差し込み口)に `AnnouncementBanner` を並べる。アクセスパスは `/announc…

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/announcement.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 15 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 3 件、テストケース 15 件。

- `test/announcement_server_test.dart`
  - 変更する: 通知を登録 → 一覧(題名・本文は言語別の値のまま)→ 既読 → 論理削除。監査の予定の通知づくりは呼べる
- `test/announcement_test.dart`
  - 遷移先は JSON にでき、見本が揃っている
  - ダッシュボード: 未読の件数と「すべて見る」を出し、押すと一覧へ移る。ログインのたびに監査の予定の通知を作る
  - ダッシュボード: 未読が無いとき・ログイン前は何も出さず、ログイン前は通知づくりを呼ばない
  - 一覧: 題名・本文・対象・期限をそのまま出し、既読にすると強調と件数が変わる。未読だけに絞れる
  - 一覧: 既読にできなかったときは、その旨を出す
  - 一覧: 通知が無いときは空の文
  - ダッシュボード: 未読の題名を数件(3 件まで)出し、その場で既読にすると件数が減る。残りは「ほか N 件」
  - ダッシュボード: その場で既読にできなかったときは、その旨を出す
  - 一覧: 「すべて既読にする」で未読がすべて既読になり、ボタンは消える。「ダッシュボードへ戻る」で戻れる
  - 一覧: 一部の既読に失敗したら、成功した分は反映し、失敗した分は未読のまま残して、その旨を出す
- `test/graphql_gateway_test.dart`
  - 一覧: 宛先が自分の通知だけを、DB の題名・本文のまま、新しい順に返す
  - 担当者が分からないとき(取得元なし・ログイン前)は、空の一覧で、通信しない
  - 既読: 通知の ID と担当者を DB の関数へ渡す
  - 監査の予定の通知づくり: 日数と担当者を渡し、作った件数を返す

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
