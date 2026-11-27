# quality ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

quality: 品質管理 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

品質管理 機能の実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 デザインは `tools/open-design` の Html のトップメニュー「品質管理」に従う(`pms_design.md` の該当章を参照)。 契約(遷移先・命令の型)が他の機能から必要になったら、`lib/quality_api.dart` に公開する(別パッケージ `quality_api` は作らない)。

### 1.2 範囲

- 場所: `packages/features/quality`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`purchasing`(パッケージ)、`quality_common/example`(example)、`sales`(パッケージ)、`shared_master`(パッケージ)

### 2.2 依存先(ワークスペース内)

`localized_values`、`feature_shared`、`entity_screens`、`data_strategist`、`pms_graphql`、`quality_model`、`baton_lib`、`app_shell`、`loadux_lib`

テスト用: `selection_result`、`data_test_harness`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `qualityRepositories` | 関数 | 品質管理の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、 |
| FR-02 | `QualityModule` | クラス | 品質管理をアプリへ組み込むための口。 |
| FR-03 | `AuditAssignment` | クラス | 自分に割り当てられた監査実施詳細 1 件(監査の計画の 1 行。チーム・予定・実績)。 |
| FR-04 | `AuditComplaintRef` | クラス | 項目にひもづく異常 1 件。 |
| FR-05 | `AuditItem` | クラス | 監査実施詳細項目 1 件(基準 = 監査標準項目、事実 = 値・所見)。 |
| FR-06 | `IAuditRunGateway` | インターフェイス | 監査を実施する側の取得元。アプリが GraphQL 版に差し替える(Strategy)。 |
| FR-07 | `InMemoryAuditRunGateway` | クラス | メモリ上の取得元(既定・example・テスト用)。 |
| FR-08 | `auditRunGatewayProvider` | Riverpod プロバイダ | 既定の取得元は、メモリ上のサンプル(アプリは GraphQL 版に差し替える)。サンプルにも、予定・実施中・終了の監査を持たせる |
| FR-09 | `sampleAuditRunGateway` | 関数 | サンプルの監査(予定・実施中・終了)を持つメモリ上の取得元。アプリは、接続先が無いとき、空の取得元ではなくこれを使う。 |
| FR-10 | `GraphqlAuditRunGateway` | クラス | 監査を実施する側の GraphQL 版の取得元(モデルは `quality_model` の `AuditDetailPage`・`AuditItemPage` ほか。Issue 20261122_0001)。 |
| FR-11 | `AuditNotice` | クラス | 監査の通知 1 件(自分のチームの、予定日が近い・過ぎた監査実施詳細)。 |
| FR-12 | `IAuditNoticeSource` | インターフェイス | 監査の通知の取得元。アプリが GraphQL 版(`GraphqlAuditNoticeSource`)に差し替える(Strategy)。 |
| FR-13 | `InMemoryAuditNoticeSource` | クラス | メモリ上の取得元(既定・テスト用)。 |
| FR-14 | `auditNoticeSourceProvider` | Riverpod プロバイダ |  |
| FR-15 | `auditNoticesProvider` | Riverpod プロバイダ | 監査の通知(ダッシュボードを開くたびに取り直す)。失敗は、通知を出さない(ダッシュボードを止めない)。 |
| FR-16 | `GraphqlAuditNoticeSource` | クラス | 監査の通知の GraphQL 版の取得元。DB の関数 `audit_notice(p_days_before)`(STABLE。PostGraphile では query。JWT の担当者がチームの監査員で、 |
| FR-17 | `AuditNoticeBanner` | クラス | ダッシュボードの「監査の予定が N 件あります」の通知。チームの担当者への、予定日をもとにした通知 |
| FR-18 | `AuditPlanOption` | クラス | 選択肢 1 件(監査標準・担当者)。 |
| FR-19 | `AuditPlanLine` | クラス | 監査の計画の 1 行 = チーム 1 つ + 監査員 + 監査実施詳細 1 件(予定)。 |
| FR-20 | `AuditPlanInput` | クラス | 監査の計画の入力。 |
| FR-21 | `AuditPlanError` | 列挙型 | 入力の誤りの種類(画面が表示時に文字へ変換する)。 |
| FR-22 | `validateAuditPlan` | 関数 | 入力を検査する(取得元とは別に、画面の事前検証と、メモリ上の取得元で使う)。誤りが無ければ空。 |
| FR-23 | `AuditPlanException` | クラス | 入力が正しくないときの例外(取得元が投げる。[errors] は検査の結果)。 |
| FR-24 | `IAuditPlanGateway` | インターフェイス | 監査の計画の登録の取得元。アプリが GraphQL 版に差し替える(Strategy)。 |
| FR-25 | `InMemoryAuditPlanGateway` | クラス | メモリ上の取得元(既定・example・テスト用)。 |
| FR-26 | `auditPlanGatewayProvider` | Riverpod プロバイダ | 既定の取得元は、メモリ上のサンプル(アプリは GraphQL 版に差し替える)。サンプルにも選択肢を持たせる |
| FR-27 | `sampleAuditPlanGateway` | 関数 | サンプルの選択肢を持つメモリ上の取得元。アプリは、接続先が無いとき、空の取得元ではなくこれを使う |
| FR-28 | `GraphqlAuditPlanGateway` | クラス | 監査の計画の登録の GraphQL 版の取得元(モデルは `quality_model` の `AuditPlanStdOptionPage`・`AuditPlanStaffOptionPage`。Issue 20261123_0001)。 |
| FR-29 | `ComplaintTarget` | 列挙型 | 異常の対象(画面で選ぶ。DB には持たない)。どれを選ぶかで、DB の関数 `complaint_register` に渡す対象の ID の引数が決まる(コード値では分岐しない)。 |
| FR-30 | `ComplaintRegisterInput` | クラス | 異常の登録の入力。 |
| FR-31 | `ComplaintRegisterError` | 列挙型 | 入力の誤りの種類(画面が表示時に文字へ変換する)。 |
| FR-32 | `validateComplaintRegister` | 関数 | 入力を検査する(画面の事前検証と、メモリ上の取得元で使う)。誤りが無ければ空。DB の関数と同じ規則(数量はロットで必須・0 より大きい)。 |
| FR-33 | `ComplaintRegisterException` | クラス | 入力が正しくないときの例外。 |
| FR-34 | `IComplaintRegisterGateway` | インターフェイス | 異常の登録の取得元。アプリが GraphQL 版に差し替える(Strategy)。 |
| FR-35 | `InMemoryComplaintRegisterGateway` | クラス | メモリ上の取得元(既定・example・テスト用)。 |
| FR-36 | `complaintRegisterGatewayProvider` | Riverpod プロバイダ |  |
| FR-37 | `GraphqlComplaintRegisterGateway` | クラス | 異常の登録の GraphQL 版の取得元(Issue 20261123_0001 C-1)。 |
| FR-38 | `MyAuditsDestination` | クラス | 自分の監査(自分のチームに割り当てられた監査実施詳細の一覧)へ。 |
| FR-39 | `AuditRunDestination` | クラス | 監査の実施(項目と異常の 2 画面)へ。[detailId] は監査実施詳細の ID。 |
| FR-40 | `AuditPlanDestination` | クラス | 監査計画の登録の画面へ。 |
| FR-41 | `ComplaintRegisterDestination` | クラス | 異常の登録の画面へ。受注・受入・顧客などの行の操作から、対象を決めて開ける。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 異常報告(すべて/顧客クレーム/工程異常報告/設備異常)
- **参照するモデル**: `packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `XxxModule implements FeatureModule` を `lib/src/quality_module.dart` に置き、公開は `lib/quality.dart` のバレルから `QualityModule` だけにする。アプリは `lib/app.dart` の `featureModules` に1行足して組み込む。
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **監査を実施する側の画面(Issue 20261122_0001)**: 監査標準・計画の台帳(項目を作る側)とは別に、実際に監査する側の画面を持つ。階層は 監査(`trans_audit`。計画の文書)→ 監査実施詳細(`trans_audit_details`)→ 項目(`trans_audit_detail_check_items`)→ 異常(`trans_audit_complaint`)。
- **異常の登録(Issue 20261123_0001 C-1)**: パスは `/quality/complaint-register`(`ComplaintRegisterPage`。メニュー「異常の登録」)。遷移先は契約 `quality_api.dart` の `ComplaintRegisterDestination`(`target`・`targetId`・`targetLabel` の文字だけ。受注・受入・顧客など…
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。
- **取得元(GraphQL 版。異常報告のファイル・監査標準は書き込みできる。ほかは読み取り専用)**: `lib/src/graphql/quality_repositories.dart` の `qualityRepositories(GraphQLClient)` が、苦情(`complaint`)・監査(`audit`)・監査基準(`auditstd`)の取得元を作る。アプリ(`pms_app` の `graphql_overrides.dart`)が …

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/quality.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 66 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 15 件、テストケース 66 件。

- `test/audit_judgement_test.dart`
  - DB の arg_class は、オブジェクト・文字列・値が数のものを読める。式が無い・読めないときは null
  - 数の比較・範囲・はい/いいえ・文字
  - 判定しない(null): 式なし・値が空・数でない値に大小の比較・はい/いいえでない値
  - 数は数の入力と合否、はい/いいえは選択、式なしは文字のまま。保存する値は文字
- `test/audit_notice_test.dart`
  - 通知があるときだけ出し、件数・名称・日数を出す。行を押すと、その監査の実施へ
  - 「自分の監査」へのリンクがある。多いときは一覧を 3 件に絞る
  - 0 件のとき・取得に失敗したときは、何も出さない
  - audit_notice を日数つきで呼び、名称は監査実施詳細から引く(詳細の名称が無いときは監査の名称)
  - ログインしていないとき(担当者が無い)は、通信せず空
- `test/audit_plan_server_test.dart`
  - 変更する: 監査標準・計画を登録し、実施(開始・終了)まで通して確認し、最後に論理削除する
  - 変更する: 部署・利害関係者を指定して計画を登録すると、監査に入る。指定なしでも登録できる(最後に論理削除する)
- `test/audit_plan_test.dart`
  - 題名・監査標準・行・チーム名・監査員・予定の前後を検査する
  - 題名・監査標準・チーム・監査員を入れて登録できる
  - 対象の部署・利害関係者は任意。選択画面で選ぶと登録に含まれ、消すと外れる
  - 選択画面を取り消すと、何も変わらない。指定しなくても登録できる
  - 入力が足りないときは、誤りを出して登録しない
  - 行を追加・削除できる(削除すると、入力欄が作り直される)
  - 登録に失敗したときは、その旨を出す。選択肢の読み込みの失敗も出す
  - 選択肢(監査標準・担当者)を読める。入力の検査は通信の前
  - 対象の部署・利害関係者は、指定したときだけ引数(pDepartmentId・pStakeholderId)に入る
  - 登録は、DB の関数 audit_plan_register を呼ぶ(題名・詳細・チーム名は言語別の JSON、行は JSON の配列)
- `test/audit_run_graphql_test.dart`
  - 自分の監査は、ビュー(staff_id = 自分)の割り当てを読み、名称は監査実施詳細から引く(検索なし)
  - 割り当てが無い(ビューが空)ときは、名称を読まない
  - ログインしていないとき(担当者が無い)は、空
  - 項目は、基準の名称・値・所見・つないだ異常を持つ
  - 値と所見の保存は、変わった分だけ送る(所見は共通関数で文章を保存し、その ID を渡す)
  - 開始・終了・異常の登録は、DB の関数(1 トランザクション)を呼ぶ
- `test/audit_run_server_test.dart`
  - 検証用サーバー(読み取りだけ): 自分の監査・監査の通知・計画の選択肢を読める
- `test/audit_run_test.dart`
  - 割り当てられた監査だけが、実施中 → 予定の近い順 → 完了で並び、予定超過・間近に印が付く
  - 割り当てが無いときは、その旨。読み込みの失敗も出す
  - 項目に値・所見を入れて保存でき、入力済みの印が付く
  - 「異常を入力」で、その項目を選んだまま異常の画面へ移り、登録して、項目へ戻る(入力は保たれる)
  - ナビで 2 画面を行き来できる。予定の監査は「実施を開始」、実施中は「実施を終了」(結論つき)
  - 終了した監査は、入力できない。失敗は表示する
  - 存在しない監査は、読み込みの失敗を出す
  - 遷移先は JSON にできる
- `test/audit_std_repository_test.dart`
  - 監査標準の行は、コード・名称・読み・区分・詳細(先頭の文)を持つ
  - 名称が空・区分が数でないときは検証エラー(通信しない)
  - 登録は、呼称と詳細の文章を作って、その ID を names・details に渡す(更新者つき)
  - 更新は、変えた項目だけ。詳細を変えていなければ、文章を上書きしない(先頭の文だけを読んでいるため)
  - 削除は論理削除。監査が使っているときは止める(使用中。削除の通信はしない)
- `test/complaint_file_test.dart`
  - 登録 → 一覧 → 差し替え → 取り消しができる。DB の trans_file_id は、保存先へ上げた ID と同じ(データを変更し、後始末で論理削除する)
  - 保存先へ上げるのに失敗したら、DB には何も作らない
  - DB の登録に失敗したら(親が無い)、全部ロールバックされ、trans_file の行は残らない
  - ファイルが無いと、検証エラー(必須)になる
- `test/complaint_ledger_test.dart`
  - 異常の台帳は、ビュー v_complaint から読む(種類の名称・外部か・クレームかは、ビューの値)
  - 異常の台帳は読み取り専用(新規・保存・削除を出さない)
- `test/complaint_register_graphql_test.dart`
  - 対象の ID は、種類の引数 1 つだけに入る。題名・内容は言語別の JSON、担当者は引数
  - 種類ごとに、渡す引数の名前が決まる
  - 作業実績・ロットは、シンボルを ID に解決して渡す(ID の形ならそのまま)。数量は文字のまま
  - シンボルが見つからないときは対象の誤り。入力が正しくないときは通信しない
- `test/complaint_register_test.dart`
  - 題名・対象は必須。数量は、ロットで必須・0 より大きい。ほかは省略できる
  - 対象の種類は、選ぶ台帳のキーを持つ
  - 遷移先はパスに変換でき、JSON にできる
  - 種類を選び、対象を選択画面で選んで登録できる。登録後は入力が空になる
  - 作業実績・ロットは、選択画面と、シンボルまたは ID の入力の両方で指定できる。ロットは数量が必須
  - 必須の入力が無いときは、項目に誤りを出し、登録しない。失敗は表示する
  - 作業実績・ロットを選択画面で選ぶと、その ID で登録する。選んだあとにシンボルを入力すると、入力したシンボルを使う(後から指定した方が優先)
  - 関連する画面からは、種類と対象を決めて開ける(対象は変更できない)。発見日の標準は当日
- `test/menu_test.dart`
  - メニューは「運用と改善」の 1 グループ。異常 → 異常の登録 → 自分の監査 → 監査の計画の順で、監査チームは出さない
- `test/quality_connection_test.dart`
  - 苦情・監査・監査基準を、画面の値(題名・名称は言語コード ja)で取得できる
  - 実体は読み取り専用: 新規・保存・削除を出さず、書き込もうとすると失敗する
- `test/quality_entities_test.dart`
  - 台帳を持つ実体のルートがある(子の台帳は編集だけ)
  - すべての実体に、台帳・編集のパスが対応する
  - サンプルが定義に合っている(必須・形式・選択肢・親子)
  - 同じプロジェクト内の参照と親子が、サンプルの id に解決する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
