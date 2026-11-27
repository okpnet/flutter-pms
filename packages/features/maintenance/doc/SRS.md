# maintenance ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

maintenance: メンテナンス中のページ。サーバーの応答がメンテナンス中のときに表示し、他のページへはリンクしない。

メンテナンス中のページ。サーバーからの応答がメンテナンス中のときに表示し、他のページへは一切リンクしない。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 プロジェクト名は、ページの役割(メンテナンス)から `maintenance` とした。

### 1.2 範囲

- 場所: `packages/features/maintenance`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`entry_app`(アプリ)、`pms_app`(アプリ)、`pms_app_example`(アプリ)

### 2.2 依存先(ワークスペース内)

`feature_shared`、`baton_lib`、`page_mediator_extension`、`logger_provider`

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
| FR-01 | `MaintenanceStrings` | 定数・その他 |  |
| FR-02 | `maintenanceStringsProvider` | 定数・その他 |  |
| FR-03 | `MaintenanceModule` | クラス | メンテナンスページをアプリへ組み込むための口。 |
| FR-04 | `MaintenancePage` | クラス | メンテナンス中のページ。サイドバー・タイトルバー・戻る操作・リンクを一切持たない。 |
| FR-05 | `MaintenancePaths` | クラス | メンテナンスのパス。文字列はこのファイルだけに書く。 |
| FR-06 | `IMaintenanceChecker` | インターフェイス | サーバーのメンテナンスの状態を確認する窓口。実体(HTTP・GraphQL の応答)はアプリが差し込む。 |
| FR-07 | `AlwaysAvailableMaintenanceChecker` | クラス | 常に利用できると答える。既定の実装で、テストで使う。 |
| FR-08 | `maintenanceServerRoot` | 関数 | 設定された URL から、メンテナンス情報サーバーのルートを求める。 |
| FR-09 | `HttpMaintenanceChecker` | クラス | HTTP の応答で確認する。HTTP 503 をメンテナンス中として扱う(サーバーの推奨は |
| FR-10 | `maintenanceCheckerProvider` | Riverpod プロバイダ | メンテナンスの確認の実体。既定は常に利用可能。アプリが HTTP・GraphQL の実装へ差し替える。 |
| FR-11 | `MaintenanceStatusNotifier` | クラス |  |
| FR-12 | `maintenanceRedirect` | 関数 | ルーターの `redirect` に使う判定。 |
| FR-13 | `MaintenanceAwarePageSession` | クラス | メンテナンスの確認を先に行い、使えるときだけ内側(認証の確認など)へ任せるセッション確認。 |
| FR-14 | `MaintenanceStatus` | クラス | サーバーのメンテナンスの状態。 |
| FR-15 | `MaintenanceDestination` | クラス | メンテナンスページへ。ほかのページへは、このページからリンクしない。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **画面**: メンテナンスページ(`MaintenanceDestination` → `/maintenance`): 文面・実施時間(開始・終了)・「再確認」だけを持つ。タイトルバー・サイドバー・メニュー・戻る操作・リンクを持たない。メンテナンス中は戻る操作(`PopScope`)も無効。
- **仕組み**: | 部品 | 内容 |
- **構成**: | 種別 | ファイル | 内容 |
- **example**: `example/`に確認用アプリを置き、実装済みの機能の外観と動作を確認する。機能を追加したら、exampleとそのテスト(`example/test`)にも追加する。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/maintenance.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 16 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 1 件、テストケース 16 件。

- `test/maintenance_test.dart`
  - メンテナンス中は、どのページもメンテナンスページへ向ける
  - メンテナンスが終わったら、メンテナンスページから戻す。それ以外はそのまま
  - 同じ状態は通知しない(ルーターの再評価が続かない)
  - refresh は確認の結果を状態にする。report は応答からの通知
  - HTTP 503 はメンテナンス中。本文の文面・時間と Retry-After を読む
  - 503 のとき、同じサーバーの /info(ファイル名なし)から文面・時間を読む
  - サーバーのルートだけを設定すると、/health と /info を組み立てる
  - 以前の設定(末尾が /health)・末尾の / も同じサーバーのルートになる
  - 情報ファイルが無い(404)・読めなくても、503 ならメンテナンス中(既定の文面)
  - 本文が JSON でなくても、503 ならメンテナンス中(既定の文面)
  - 200 は利用可能。通信の失敗もメンテナンスとはしない
  - メンテナンス中は、認証の確認をせずにメンテナンスを返す
  - メンテナンスでなければ、内側(認証)の結果を返す
  - 遷移先をパスに変換できる(登録漏れ検出)。メニューの項目は持たない
  - 文面・実施時間を表示し、ほかのページへのリンクを持たない
  - 再確認: まだメンテナンス中なら知らせ、ページに残る

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
