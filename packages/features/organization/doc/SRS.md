# organization ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

organization: `packages/features/CLAUDE.md` の「organization」(単位・会社・事業所・部門部署・作業者・承認)を実装する機能プロジェクト。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 画面の参照元は `tools/gql_yaml2graphql/doc/page.md`、列は `source/views/{system,company}`、モデルは `lib/src/graphql` のクラスとする。

### 1.2 範囲

- 場所: `packages/features/organization`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`access_control/example`(example)、`production_process/example`(example)、`quality/example`(example)、`quality_common/example`(example)、`resource/example`(example)、`work_record/example`(example)

### 2.2 依存先(ワークスペース内)

`localized_values`、`view_responsiveness`、`feature_shared`、`access_control`、`baton_lib`、`dashboard_container`、`data_strategist`、`organization_model`、`pms_graphql`、`entity_screens`、`app_shell`、`loadux_lib`、`flgtable_lib`、`auth_files`

テスト用: `data_test_harness`、`logger_provider`、`theme_lib`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `organizationRepositories` | 関数 | 組織の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、 |
| FR-02 | `staffHistoryLookup` | 定数・その他 |  |
| FR-03 | `OrganizationModule` | クラス | 会社情報をアプリへ組み込むための口。 |
| FR-04 | `UserDisplay` | クラス | ログインユーザーの表示用の情報(氏名・所属の部署名)。 |
| FR-05 | `userDisplayLookup` | 定数・その他 |  |
| FR-06 | `ApprovalPatternChoice` | クラス | 承認パターンの選択肢 1 件(`mstr_approval_pattern`。名称は画面の言語)。 |
| FR-07 | `ApprovalDefaults` | クラス | 対象ごとの標準の承認パターンの ID(null は承認不要)。 |
| FR-08 | `IApprovalDefaultsGateway` | インターフェイス | 標準の承認パターンの取得元。アプリが GraphQL 版(`GraphqlApprovalDefaultsGateway`)に差し替える(Strategy)。 |
| FR-09 | `InMemoryApprovalDefaultsGateway` | クラス | メモリ上の取得元(既定・example・テスト用)。 |
| FR-10 | `approvalDefaultsGatewayProvider` | Riverpod プロバイダ |  |
| FR-11 | `approvalDefaultKinds` | 定数・その他 |  |
| FR-12 | `GraphqlApprovalDefaultsGateway` | クラス | 標準の承認パターンの GraphQL 版の取得元。モデルは `organization_model` の `ApprovalDefaultsPage`・`ApprovalDefaultsPageEdit` |
| FR-13 | `ApprovalStep` | クラス | 承認の段 1 件(承認パターン明細 + 承認。部署・役職・順位)。 |
| FR-14 | `ApprovalStepOption` | クラス | 部署・役職の選択肢 1 件。 |
| FR-15 | `IApprovalStepsGateway` | インターフェイス | 承認の段の取得元。アプリが GraphQL 版(`GraphqlApprovalStepsGateway`)に差し替える(Strategy)。 |
| FR-16 | `renumberSteps` | 関数 | 並びの順に、順位を 1 から振り直した段(変わらない段はそのまま)。 |
| FR-17 | `InMemoryApprovalStepsGateway` | クラス | メモリ上の取得元(既定・example・テスト用)。 |
| FR-18 | `approvalStepsGatewayProvider` | Riverpod プロバイダ |  |
| FR-19 | `GraphqlApprovalStepsGateway` | クラス | 承認の段の GraphQL 版の取得元。モデルは `organization_model` の `ApprovalStepPage`(段 = 承認パターン明細 + 承認)・ |
| FR-20 | `StaffCountMetricSource` | クラス | 従業員数(部署 × 役割のビューを合計)。内訳は配属数。 |
| FR-21 | `staffCountMetricSource` | 関数 | アプリが`metricSourcesProvider`へ差し込む、従業員数の元。 |
| FR-22 | `ApprovalDefaultsDestination` | クラス | 標準の承認パターンの画面へ(会社情報の「承認」から開く。対象ごとに、登録が申請になる承認パターンを選ぶ)。 |
| FR-23 | `ApprovalStepsDestination` | クラス | 承認の段の画面へ(承認パターンの台帳の行の操作「承認の段」から開く)。 |
| FR-24 | `OrganizationPaths` | 抽象クラス |  |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **会社情報の概要の画面**: `/e/company`(メニューの「会社情報」。メニューには、この 1 項目だけを出す)は、表ではなく、概要の画面(`lib/src/page/company_home_page.dart` の `CompanyHomePage`。`OrganizationModule.customListPage`)。会社の情報(DB の列: 名称・読み・略称・代表者名…
- **承認の範囲**: 承認の範囲(`approvalscope`。承認パターンの子の台帳。DB の `mstr_approval_scope_pattern`)は、**承認パターンを、どのアクセスパスの承認に使うか**の対応(アクセスパスの承認 + 備考)。画面案の段階・承認する役職・対象の組織・配下を含むか、は DB に列が無いため持たない(DB を優先)。参照先の「アクセスパ…
- **作業者・アクセス権(Issue 20261123_0001)**: **作業者(`staff`。DB の `info_staff`)は書き込みできる**(`lib/src/graphql/staff_repository.dart` の `StaffRepository`。モデルは `staff.yaml` の `StaffLedgerPageEdit`・`StaffLedgerPageCreate`)。名称・読みは共通関数…
- **承認パターンの台帳と承認の段(GraphQL 版。Issue 20261122_0001)**: 承認パターン(`approvalpattern`。DB の `mstr_approval_pattern`)の台帳は、`ApprovalPatternRepository`(`lib/src/graphql/approval_pattern_repository.dart`。`organizationRepositories` が組み込む)で読み書きする。名…
- **標準の承認パターン**: `/organization/approval-defaults`(`ApprovalDefaultsPage`。契約 `organization_api.dart` の `ApprovalDefaultsDestination`。会社情報の概要の「承認」の「標準の承認パターン」から開く)。登録が申請になる対象(文書・受注・発注・非計上発注・出荷オーダー・異…
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。
- **取得元(GraphQL 版。読み取り専用)**: `lib/src/graphql/organization_repositories.dart` の `organizationRepositories(GraphQLClient)` が、職員(`staff`)・事業所(`site`)・部署(`department`。ツリー)の取得元を作る。アプリ(`pms_app` の `graphql_override…
- **データ・デザイン**: データの取得は`riverpod`をとおして`packages/foundation/data_strategist`を使用する。
- **mock_up との対応**: 配置は `legacy/fultter_main/mock_up/lib/contents` を参考にする(コードの流用はしない)。
- **構成**: レスポンシブは view_responsiveness(モバイル/タブレット/PC)、色・サイズは theme_lib を使う。
- **画面一覧(ルート接頭辞 `/organization`)**: | 区分 | 画面[ページID] | 構造 | ルート |
- **明細の操作**: 追加=既存子の割り当て(新規作成は子の情報へ遷移)、削除=解除または論理削除、順の変更(`sequence`)。削除方式と順は `page.md` の明細タグに従う。順を変更・追加・削除したら同じ親の `sequence` を1からの連番に振り直す。
- **画面イメージ**: `doc/contents/organization_screens.html`(PC/タブレット/モバイルの切り替え付き)。実装はこのHTMLを基に `issue/` へ追加・変更をまとめてから行う。
- **契約の公開**: 他の機能・アプリに公開する遷移先・命令の型は、別パッケージ `organization_api` を作らず、`lib/organization_api.dart`(契約だけのバレル)から公開する。実装の入口 `lib/organization.dart` は `OrganizationModule` だけを公開し、アプリだけが読み込む。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/organization.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 77 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 17 件、テストケース 77 件。

- `test/approval_defaults_server_test.dart`
  - 検証用サーバー(読み取りだけ): 標準の承認パターンと選択肢を取得できる
  - 変更する: 標準の承認パターンを保存して読み直し、元の値に戻す(管理者の資格情報)
- `test/approval_defaults_test.dart`
  - 8 つの対象が並び、選んで保存すると取得元へ入る。文書が未設定のときは案内を出す
  - 「承認不要」を選ぶと null になる。「保存済みに戻す」で戻る
  - 一覧に無い ID が設定されていても、消さずに残す
  - 承認パターンが無い・読み込みの失敗・保存の失敗は案内を出す
  - 遷移先はパスに変換できる
  - GraphQL 版: 読み込み(8 列)・選択肢(言語 ja の名称。名称が無ければ ID)
  - GraphQL 版: 保存は 8 列をすべて送る(null も、キーを残したまま)。更新者つき
- `test/approval_pattern_graphql_test.dart`
  - 段は順位の昇順に並び、部署・役職・名称を持つ
  - 並べ替えは、順位が変わった段の承認だけを更新する(1 から振り直す)
  - 段の追加は、呼称 → 承認 → 承認パターン明細の順に登録し、名称は「部署 役職」
  - 段の削除は、承認パターン明細と承認を論理削除する
  - 台帳の行は、名称・読み・備考(言語 ja)を持つ
  - 名称が空のときは検証エラー(通信しない)
  - 登録は、呼称を作って、その ID を names に渡す
  - 更新は、変えた項目だけ送り、削除は論理削除
  - 標準の承認パターンが指しているものは、削除できない(使用中。削除の通信はしない)
- `test/approval_pattern_server_test.dart`
  - 検証用サーバー(読み取りだけ): 承認パターンの台帳と選択肢を読める
  - 変更する: 承認パターンと段を登録・並べ替え・削除する(最後に論理削除)
- `test/approval_scope_graphql_test.dart`
  - 台帳の行は、名称(言語 ja)・アクセスパスの ID・備考を持つ
  - 名称・アクセスパスが空のときは検証エラー(通信しない)
  - 登録は、呼称を作って、その ID を names に渡す(更新者つき)
  - 削除は論理削除。承認の範囲が使っているときは、止める(使用中。削除の通信はしない)
  - 承認パターンごとに読める(親の ID は parentId)
  - 登録は、承認パターンとアクセスパスの承認で作る(更新者つき)
  - 同じ承認パターンに同じアクセスパスの承認があるときは、重複(登録しない)
  - アクセスパスの承認が空のとき・親が無いときは、エラー
- `test/approval_steps_test.dart`
  - 承認の段が順位の順に並び、承認パターンの名称が出る
  - 段が無いときは案内を出す
  - 読み込みに失敗したときは、その旨を出す
  - 行をドラッグして並べ替えると、順位が付け替わって保存される
  - 並べ替えの保存に失敗したときは、元の並びに戻して知らせる
  - 段を追加すると、最後の順位で足される(役職は必須)
  - 行を開いて、部署・役職を変えられる
  - 段の削除は、確認のあとに行われる
  - 順位の振り直しは、1 から連番にして、変わらない段はそのまま
  - ApprovalStepsDestination は JSON にできる
  - 承認パターンの編集画面の下に、承認の段(子の表)が出る。新規のときは出ない
- `test/company_home_test.dart`
  - 会社の情報(DB の列)・サマリ・事業所のタイル・部署の構成・提供が、1 つの画面に出る
  - 事業所のタイルを押すと、その事業所の編集の画面へ進み、戻るボタンで概要に戻る
  - 会社の編集は、会社の項目だけ。提供・役職は、概要から開く独立したページ
  - 会社の概要の項目は、行ごとに並ぶ(読みと略称 / 代表者 / ホームページ / 所在地 / 電話と FAX)
- `test/organization_connection_test.dart`
  - 職員・事業所・部署を、画面の値(名称は言語コード ja)で取得できる
  - 事業所の住所(国・郵便番号・住所1・住所2・建物・電話番号・FAX)を、画面の値で取得できる
  - 実体は読み取り専用: 新規・保存・削除を出さず、書き込もうとすると失敗する
- `test/organization_entities_test.dart`
  - 台帳を持つ実体のルートがある(子の台帳は編集だけ)
  - すべての実体に、台帳・編集のパスが対応する
  - サンプルが定義に合っている(必須・形式・選択肢・親子)
  - 同じプロジェクト内の参照と親子が、サンプルの id に解決する
- `test/site_test.dart`
  - 事業所の登録(住所つき) → 取得 → 更新 → コードの重複 → 取り消し
  - 名称・コードが無いと、検証エラー(必須)
- `test/staff_count_connection_test.dart`
  - 従業員数を取得して合計できる(読み取り専用)
  - 正常な応答は読める
  - 認証ヘッダーが要求に付く
  - 遅延は、待てば成功し、呼び出し側が制限時間を決めれば TimeoutException
  - 切断・認証エラーは OperationException として伝わる
  - 切断のあと、サーバーが戻れば次の取得は成功する
- `test/staff_count_metric_source_test.dart`
  - 従業員数は全ページの行を合計し、内訳に配属数を持つ
  - 行が無ければ 0
- `test/staff_history_lookup_test.dart`
  - 担当者の履歴を、revision の降順で 1 件だけ読み、その ID を返す
  - 履歴が無い担当者は null(更新者を送らない)
  - 通信の失敗は、そのまま投げる(更新者を欠いたまま保存しない)
- `test/staff_icon_test.dart`
  - 担当者のアイコンの登録 → 一覧 → 更新 → 差し替え → 取り消し(データを変更し、後始末で論理削除する)
- `test/staff_repository_test.dart`
  - 作業者の台帳の行は、コード・名称・読み・性別・電話・備考を持つ
  - コード・名称が空のときは検証エラー(通信しない)
  - 登録は、呼称(名称・読み)を作って、その ID を names に渡す。会社は最初の会社。更新者つき
  - 更新は、変えた項目だけ送る。名称・読みが同じなら、呼称は更新しない
  - コードの重複(部分一意索引の違反)は、コードの項目の重複エラー
  - 削除は論理削除(更新者つき)
- `test/staff_user_action_test.dart`
  - 作業者の台帳に、行の操作「ユーザーを作成」がある(機能が処理する操作。台帳の画面ではなく、管理者のユーザー作成の画面へ進む)
  - 承認パターンの台帳に、行の操作「承認の段」がある(再生成しても消えない。モジュールが足す)
- `test/user_display_lookup_test.dart`
  - 割当が無い担当者は、氏名・所属とも空(表示はユーザーIDなど既定に任せる)
  - 通信の失敗は、そのまま投げる(呼び出し側が既定の表示にする)
  - 割当・部署の行があるときは、氏名(担当者の名称)と所属の部署名を返す
  - 割当は有るが部署の行が無いときは、氏名だけ返し、所属は空
  - 部署の読み込みの失敗は、そのまま投げる(氏名だけを出すかは、呼び出し側が決める)

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
