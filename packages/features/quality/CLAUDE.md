# quality

品質管理 機能の実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。
デザインは `tools/open-design` の Html のトップメニュー「品質管理」に従う(`pms_design.md` の該当章を参照)。
契約(遷移先・命令の型)が他の機能から必要になったら、`lib/quality_api.dart` に公開する(別パッケージ `quality_api` は作らない)。

## 画面(Html のメニュー)
1.  異常報告(すべて/顧客クレーム/工程異常報告/設備異常)
2.  受注・工程リスク(すべて/受注リスク/工程リスク)
3.  監査基準 / 監査チーム / 監査計画

## 参照するモデル
`packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
+  `quality/complaint.yaml`, `quality/risk.yaml`, `quality/audit.yaml`

## 実装の指針
1.  `XxxModule implements FeatureModule` を `lib/src/quality_module.dart` に置き、公開は `lib/quality.dart` のバレルから `QualityModule` だけにする。アプリは `lib/app.dart` の `featureModules` に1行足して組み込む。
2.  データの取得は`riverpod`をとおして`packages/foundation/data_strategist`を使用する(取得元は `IDataRepository` を拡張し、Provider で差し替え可能にする)。`sales` の `lib/src/customer/customer_repository.dart` / `customers_provider.dart` を参考にする。
3.  テーブル構造・ツリー構造は`packages/ui/flgtable_lib`、色・サイズは`theme_lib`、レスポンシブは`view_responsiveness`を使用する。必要になった時点で pubspec に足す。
4.  ログは `logger_provider` の `loggerProvider` を `ref` から直接取得し、この機能が発生元のエラーだけを出す。
5.  ラベルは slang で多言語化し、列名は `schema.graphql` のコメントを使う。推論・仮置きしたラベルは `doc/log` に残す。

<!-- entity_gen:begin -->
## 実体の画面(生成)
台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
生成物は直接編集しない(再生成: リポジトリのルートで `node tools/entity_gen/gen.js`)。画面の作りは `packages/ui/entity_screens`、機能への組み込みは `feature_shared` の `EntityFeatureModule`。
専用の画面が必要な実体は、生成の対象から外して手書きする(`shared_master` の配送区分を参考にする)。

| 実体 | キー | 構造 | 項目数 | 参照先 |
|---|---|---|---|---|
| 異常 | `complaint` | テーブル構造 | 5 | `staff` |
| 異常報告受領 | `compreceive` | 子の台帳(親: 異常) | 4 | `staff` |
| 利害関係者苦情 | `compstake` | 子の台帳(親: 異常) | 2 | `customer` |
| 異常報告ファイル | `compfile` | 子の台帳(親: 異常) | 2 |  |
| 注文苦情 | `corder` | テーブル構造 | 3 | `complaint`, `order` |
| 取込 | `corderimp` | 子の台帳(親: 注文苦情) | 3 |  |
| 工程苦情 | `cproc` | テーブル構造 | 3 | `complaint`, `task` |
| 取込 | `cprocimp` | 子の台帳(親: 工程苦情) | 3 |  |
| 設備苦情 | `cequip` | テーブル構造 | 2 | `complaint` |
| 取込 | `cequipimp` | 子の台帳(親: 設備苦情) | 3 |  |
| 注文リスク | `orderrisk` | テーブル構造 | 3 | `order`, `risk` |
| 受注明細リスク | `orderdetailrisk` | テーブル構造 | 3 | `orderdetail`, `risk` |
| 取込：リスク | `odrimp` | 子の台帳(親: 受注明細リスク) | 1 | `risk` |
| 工程リスク | `taskrisk` | テーブル構造 | 3 | `task`, `risk` |
| 取込：リスク | `trimp` | 子の台帳(親: 工程リスク) | 1 | `risk` |
| 監査標準 | `auditstd` | テーブル構造 | 8 |  |
| 取込：監査標準項目 | `auditstdimp` | 子の台帳(親: 監査標準) | 1 | `auditstdcheck` |
| 監査チーム | `auditteam` | テーブル構造 | 3 | `audit` |
| 監査員 | `auditor` | 子の台帳(親: 監査チーム) | 4 | `auditstd`, `staff` |
| 監査 | `audit` | テーブル構造 | 9 | `auditstd`, `staff`, `department`, `customer` |
| 監査チーム | `auditteamlink` | 子の台帳(親: 監査) | 1 | `auditteam` |
| 監査参加者 | `auditmember` | 子の台帳(親: 監査) | 2 |  |
<!-- entity_gen:end -->






## 監査を実施する側の画面(Issue 20261122_0001)
監査標準・計画の台帳(項目を作る側)とは別に、実際に監査する側の画面を持つ。階層は 監査(`trans_audit`。計画の文書)→ 監査実施詳細(`trans_audit_details`)→ 項目(`trans_audit_detail_check_items`)→ 異常(`trans_audit_complaint`)。
1.  **自分の監査**(`/quality/my-audits`。`MyAuditsPage`。メニューの先頭): 自分のチームの監査員になっている監査実施詳細だけを、検索なしで、実施中 → 予定の近い順 → 完了に並べる。予定日が 3 日以内・過ぎたものは印を付ける(チームの担当者への、予定日をもとにした通知の画面側)。状態の文字・入力の進み具合は、ビューの列。
1.  **監査の実施**(`/quality/audit-run?id=…`。`AuditRunPage`): 下のナビで「項目」と「異常」の 2 画面を行き来する(`IndexedStack` で状態を保つ)。項目: 基準ごとに値・所見(コメント)を入力して保存し、「異常を入力」でその項目を選んだまま異常の画面へ。異常: 対象の項目を選んで題名・内容を登録し、その項目の異常の一覧を見る。「項目へ戻る」で戻る。終了した監査は入力できない。
1.  取得元は `IAuditRunGateway`(`auditRunGatewayProvider`。既定はメモリ上。`pms_app` が `GraphqlAuditRunGateway` に差し替える)。GraphQL 版: 自分の監査は、ビュー `v_audit_assignment`(`staff_id` = 自分。状態の boolean・文字・件数。画面で状態を判定しない)を読み、名称は監査実施詳細(`AuditDetailPage`)から引く。項目の値・所見は `AuditItemPageEdit` + `trans_text_save`。開始・終了・異常の登録は DB の関数(`audit_detail_start`・`audit_detail_finish`・`audit_complaint_register`。1 トランザクション)。終了は未入力の項目を押し切る(`pForce`。画面で未入力が見えている)。失敗(チームの監査員でない・終了した監査など)は例外で、画面は「操作できませんでした」を出す。
1.  **ダッシュボードの通知**: `AuditNoticeBanner`(「監査の予定が N 件あります」。予定超過は赤、各行から監査の実施へ、「自分の監査」へのリンク)。取得元は `IAuditNoticeSource`(`auditNoticeSourceProvider`。`pms_app` が `GraphqlAuditNoticeSource` に差し替え、`dashboardAlertSlotProvider` に承認待ちの通知と並べて差し込む)。DB の関数 `audit_notice`(STABLE。予定日から導く。通知の行は作らない)を呼ぶ。生成器が STABLE の関数(query)に未対応のため、問い合わせは `graphql_audit_notice_source.dart` に手書きしてある(生成器を対応させたら、モデルへ移す)。取得に失敗したときは通知を出さない(ダッシュボードを止めない)。
1.  値は JSON `{"value": "…"}`(式 `formula_class` ごとの入力は、式の種類を決めてから)。
1.  監査の計画(監査・チーム・監査員・監査実施詳細)の登録は、まだアプリから行えない(台帳は読み取り専用)。

## example と多言語
1.  ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。
2.  表示する文字列は`lib/src/i18n`の言語ファイル(Yaml)に置く。画面を作るときに`slang.yaml`と言語ファイルを追加する(`sales`・`shared_master`を参考にする)。idは`String`(UUID)で扱う。

## 取得元(GraphQL 版。読み取り専用)
`lib/src/graphql/quality_repositories.dart` の `qualityRepositories(GraphQLClient)` が、苦情(`complaint`)・監査(`audit`)・監査基準(`auditstd`)の取得元を作る。アプリ(`pms_app` の `graphql_overrides.dart`)が `entityRepositoryOverridesProvider` に渡すと、サンプルの代わりに使われる(`GRAPHQL_URL` を指定したときだけ)。
1.  読み取り専用: 実体を `viewOnly`・各項目 `readOnly` にし、保存・削除は `UnsupportedError`。苦情・監査の題名は多言語のラベル(`trans_label`)、詳細は多言語の文章(`trans_text`。先頭の文)、監査基準の名称・読み・略称は多言語の辞書、詳細は文章(`shared_text`)で、言語コード `ja` の値を読む。ほかの実体は、サンプルのまま: 親の ID を必須にする読み込みの実体(苦情の子の受入・関係者・ファイル・受注・工程・設備、受注リスク・工程リスク、監査チーム・監査員など)、帳票。
1.  **【入れ替え: 呼称の DB 関数】** 書き込みは、ラベル・文章(`trans_label`・`trans_text` と値の表)・辞書を複数の表へ登録する関数を足して適用したら、`~PageCall` で `save` を入れ替え、`viewOnly` を外す(`issue/C_202611.md` の 2-1。`doc/query/20261114_0002` の補助は辞書・文章(`shared_*`)用で、`trans_*` のラベル・文章は別の表のため、同じ方式の補助を足す)。
1.  検証用 DB には苦情が 1 件あり、題名・詳細・日付・報告者の値が取得できることを確認した。監査・監査基準は 0 件で、取得できる(空)ことだけを確認した。

## 規則/仕様
1.  ディリクトリ/ファイル
    1.  生成結果のレポートは`doc/log`ディリクトリにファイル名`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  同じ年月日、同じ番号に対する追加変更は`年月日_4桁ゼロ埋の番号_add_1からの連番.md`として保存する。
    2.  画面イメージ(HTML)や使い方などは`doc/contents`に保存する。
    3.  最終的にこの`CLAUDE.md`へ統合される追加、変更の指示は`issue`ディリクトリに`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  つまり`生成結果のレポート`と連動する。
        2.  `CLAUDE.md`への統合も指示に含める。統合時、削除指示が無い限り`issue`ディリクトリ`doc/log`ディリクトリの中を削除しない。`CLAUDE.md`には変更や追加、削除であることについて記録しない(生成時に`issue`ディリクトリ`doc/log`ディリクトリを参照するため)。
2.  命名規則
    1.  ファイル名、クラス名など名前付けのルールはFlutterの規則、慣例に従う。
    2.  クラス名はデザインパターンがわかる、または意味が通る英語の名詞とする。ただし、`はい/いいえ`のような`isXxxx`などの`is/as/has`の慣例を優先する。
        1.  `Command`などデザインパターンのみの名前だと誤解や衝突を招くため、機能、動きの名詞化したものと組み合わせる。
    3.  プリフィクスにライブラリ名をつけない(BatonLibXXのような)。
3.  バレルファイルを使用する
    1.  バレルファイルにまとめ、このライブラリを使用する側は1行を読み込むだけで解決できるようにする。ただし、相互に関連が無い独立した機能の場合はバレルファイルを分けて、仕様側が機能に応じて選択できるようにする。ただし、ユーザーの使用体験を優先する。ライブラリ全体の機能が少ない(10以下)ときにインポートするファイルを分ける必要はない。
4.  インスタンスのJSON化
    1.  生成するこのライブラリのインターフェイス、クラスのインスタンスをJSONにコンバートできる。ただし、エラー追跡のためであり、現時点で機能を復元する目的では使用しない。
5.  ログを残す
    1.  ライブラリは実行したときのログを残す。ただし、このライブラリ側のエラーログだけを残し、機能毎のライブラリ側なのかを切り分け可能にするために、適切に選別する。
    2.  ロガーはRiverpodから提供され、アプリケーション全体をとおして同じ仕様のログ出力を行う。
6.  GOFデザインパターン
    1.  クラス名やファイル名にデザインパターンを含めない場合は、コメントに該当するパターン名を追加する。
    2.  必ずしもデザインパターンに割り当てる必要はない。

## テスト
1.  共通の規則は`packages/features/CLAUDE.md`の「テスト」に従う。
2.  取得元(GraphQL 版)の通信テストは `test/quality_connection_test.dart`(検証用サーバー。読み取りだけ。一般ユーザーの資格情報を渡して実行する。`packages/infra/data_test_harness/CLAUDE.md`)。`dart_test.yaml` に `server` タグを宣言してある。
3.  サンプル(メモリ上)の取得元の単体テストは`RecordingDataRepository`で差し替える。


## 規則: プロジェクト間をまたぐ指示
指示や実装が、プロジェクト(アプリ・ライブラリ)をまたいで行われるときの`issue`・`doc/log`の扱い。
1.  指示をしたプロジェクト
    1.  `doc/log`に、指示の内容・指示した先のプロジェクト・実施した結果を記録する。
2.  指示を受けたプロジェクト
    1.  指示の内容と、指示をしたプロジェクトを`issue`に追加する。
    2.  実施した結果を`doc/log`に記録する。
