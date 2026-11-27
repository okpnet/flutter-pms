# PMS(生産管理システム)ソフトウェア要求仕様(SRS)

> システム全体の要求。各ライブラリの要求は、ライブラリの `doc/SRS.md`(末尾の索引)。設計は `doc/SDD.md`。
> 正は、ワークスペースの `CLAUDE.md`(規則・決定事項)と DB の DDL(`tools/docker/postgresql/script/06_cteate_test.sql`)。この文書は、それらを要求の形に整理したもので、食い違うときは `CLAUDE.md`・DDL を正とする。
> ライブラリごとの文書は `tools/doc_gen` が生成する。この文書の「ライブラリの索引」も同じ(囲みの中は再生成で置き換わる)。

## 1. はじめに

### 1.1 目的

製造業の生産管理(受注 → 生産計画・資材所要計算(MRP) → 発注・外注 → 生産・実績 → 在庫・出荷 → 品質・原価)を、1 つの業務システムとして提供する。バーコードの読み込みを入口にして、現場の作業者が最少の操作で実績を登録できることを核心とする。

### 1.2 範囲

- 含む: 受注・出荷、購買(発注・受入・外注・支給・返品)、生産計画・MRP、棚在庫(ロット・所有者)、作業実績、バーコード実績登録、品質(異常・是正・監査・リスク・文書・承認)、原価、海外取引(通貨・為替レートの換算)、組織・資源・品目のマスタ、認証・アカウント管理・アクセス権、通知、ダッシュボード、設定。
- 含まない: 決済・請求・入金・差損益・締め日・支払条件などの会計処理(会計側)。為替は、集計で基準通貨に換算するための概算のレートだけを扱う。

### 1.3 用語

| 用語 | 意味 |
|---|---|
| ロット・棚ビジター | 棚に置かれた在庫の 1 行(`trans_visiter`)。数量はこの行だけが持つ(+ が入庫、− が出庫) |
| 計画変更 | キャンセル・停止・打ち切り・納期の変更などの記録(`trans_plan_change`)。追記のみ |
| 基準通貨 | 集計の換算先の通貨(`info_app.mstr_currency_id`。標準は日本円) |
| 検収日 | 相手先ごとの、検収の月内の日(1〜31。無いときは月末)。出荷・受入の金額の換算の基準日を決める |
| 確定日 | この日以前の為替レートの登録・変更・取り消しを止める日(`exchange.lockedUntil`) |
| 実体 | 台帳・編集の画面を、定義から作る単位(`entity_screens`) |
| symbol | DB の対象を一意に表す文字列。バーコードのキー |

### 1.4 参照

`CLAUDE.md`(ルート・層・パッケージ)、`issue/`(指示・決定の経緯。`issue/202611.md` に月ごとのまとめ)、`doc/log`(生成結果のレポート)、`issue/change_request.md`(受注・発注まわりの定義書と決定事項)。

## 2. 全体説明

### 2.1 利用者

| 利用者 | できること |
|---|---|
| 作業者(一般ユーザー) | 付与されたアクセス権のある画面の閲覧・登録、バーコードによる実績の登録、通知の確認 |
| 管理者(`role=admin`。アプリの設定を変更できる人) | 一般ユーザーの操作に加えて、アカウント管理(ユーザーの作成・申請の有効化)、アクセス権の設定、承認スタンプ・PDF の設定、為替レートの登録・自動取得・確定、システムメニュー |
| システム制作者 | 裏設定(接続先・ログのレベルなど。ログインページの特定の入口から)、DB・サーバーの構築 |

### 2.2 動作環境

- クライアント: Flutter。生産管理のアプリ `pms_app`(Windows デスクトップ)。実績登録専用の `entry_app`(Android・Windows)。評価用の `pms_app_example`(仮想のサーバーで実物の動きを確かめる)。
- サーバー: PostgreSQL(業務データ)、PostGraphile(GraphQL)、PocketBase(認証・共有ファイル・アバター)、メンテナンス情報サーバー(nginx)。構築は `tools/docker`。
- 接続先は `https`(ローカルのネットワークだけ `http` 可)。

### 2.3 制約

1. 状態・区分をコード値で持たない・判定しない(boolean とビューの列で判定する)。表示の文字はビューで 1 か所だけ定義する。
1. 記録(計画変更・支給・返品・精算・為替レート)は追記のみ。取り扱いが変わったら 1 件追加し、元の行は書き換えない。
1. 複数の表にまたがり影響が大きい操作(MRP・棚移動・キャンセル・停止・支給・返品・精算)は DB 関数(1 回の呼び出し = 1 トランザクション)で行う。マスタ・Info は極力ミューテーション(自動 CRUD)で行う。
1. 依存は上から下への一方向(`apps → features → core → ui / model_providers / infra → foundation`)。機能どうしは、契約(`xxx_api.dart`)の型だけで連携する。
1. 生成物は手で編集しない(`*.graphql.dart`・画面用 `schema.graphql`・`strings*.g.dart`・`tools/entity_gen` の生成物)。

## 3. 機能要件

### 3.1 受注・出荷(`sales`)

| ID | 要求 |
|---|---|
| FR-SAL-01 | 顧客・受注・受注明細・出荷予定・出荷オーダーを登録・更新できる。顧客は利害関係者のフラグで見分ける |
| FR-SAL-02 | 受注明細・発注明細のキャンセル(一部・全部)・停止/再開・納期数量の変更ができ、計画変更に記録する。数量は書き換えない |
| FR-SAL-03 | 残・キャンセル済み・停止中の判定は、DB のビューの列を使う(画面で計算しない) |
| FR-SAL-04 | 精算・返品・顧客支給を登録できる(DB 関数)。顧客支給は 0 円発注で扱わない |
| FR-SAL-05 | 受注明細の金額は、取引の通貨(顧客の通貨)の記号で表示する。基準通貨の金額(目安)と、仮のレートの行(「(仮)」)を出す |

### 3.2 購買(`purchasing`)・支給

| ID | 要求 |
|---|---|
| FR-PUR-01 | 発注・発注明細・非計上・受入実績を登録・更新できる。外注では、材料の支給(無償・有償)を記録できる |
| FR-PUR-02 | 発注先への返品・発注明細のキャンセル・停止・納期変更ができる |
| FR-PUR-03 | 仕入先ごとの品目の単価(優先順位つき)を管理する |

### 3.3 生産計画・MRP(`production_plan`)

| ID | 要求 |
|---|---|
| FR-MRP-01 | 資材所要計算(MRP)を実行し、提案(発注・生産・顧客への支給依頼)を確認・確定・破棄できる。長時間の処理中は、画面全体の操作を無効にする |
| FR-MRP-02 | 停止中・打ち切りの生産計画・受注は凍結する。顧客支給の品目は発注を提案せず、足りなければ「支給依頼」を出す |
| FR-MRP-03 | 確定したキャンセル・取消は、計画変更に自動で記録する |

### 3.4 在庫・棚(`work_record`)

| ID | 要求 |
|---|---|
| FR-INV-01 | 入庫・払出・移動・隔離・仮止め・廃棄・棚卸しを、ロット単位で行える(DB 関数)。数量は棚ビジターの行だけが持つ |
| FR-INV-02 | ロットの所有者(自社・顧客・発注先)を、DB が決める(アプリは書かない)。社外の所有物は、空き在庫に数えない |
| FR-INV-03 | 取り出せるロットの判定は、DB のビューで行う(保留・異常・取り出し可否) |

### 3.5 作業実績・バーコード(`work_record`・`barcode_entry`)

| ID | 要求 |
|---|---|
| FR-BAR-01 | バーコード(コード + symbol)を読み込むと、メニューの種類に応じた画面まで導く。作業指示書の N 工程目は、該当の生産計画の実績の登録画面へ進む |
| FR-BAR-02 | コンテナのバーコードで、払出・入庫を選び、製品識別ラベルを読んで投入・取り出しができる |
| FR-BAR-03 | 停止中・打ち切り・全部キャンセルの作業指示・発注明細には、実績を登録させない |
| FR-BAR-04 | 実績登録専用アプリ(`entry_app`)は、`barcode_entry` だけを載せる |

### 3.6 品質(`quality`・`quality_common`・`quality_document`)

| ID | 要求 |
|---|---|
| FR-QUA-01 | 異常(苦情・受入異常・作業異常・支給異常)を登録し、ロットにつなぐ。是正・再発防止・報告・リスク・監査を管理する |
| FR-QUA-02 | 監査の計画を台帳から登録でき、予定をログイン時に通知する |
| FR-QUA-03 | 品質管理文書の台帳(文書階層・レポート)を管理する |

### 3.7 文書・承認(`manual`・`approval`・`document_settings`)

| ID | 要求 |
|---|---|
| FR-DOC-01 | マニュアル(Wiki)を、文書(ルート)とコンテンツ(ページの木)として、閲覧・編集(Markdown・ビジュアル)・履歴・書き出しができる。編集は、アクセス権のある人(管理者を含む) |
| FR-DOC-02 | 文書の公開の判定は、DB のビュー 1 か所(`v_document_publication`)。承認待ちの文書は、承認者・管理者だけが読める |
| FR-DOC-03 | 承認を申請し、承認の段の順位どおりに承認する(一括承認・パスワードの再入力)。承認した日時・人を、画面と PDF のスタンプに出す |
| FR-DOC-04 | 承認スタンプ・PDF の設定(`info_app.settings`)を、管理者が編集・プレビューできる |
| FR-DOC-05 | PDF はクライアントで生成する。日本語フォントは OFL のものを同梱する |

### 3.8 原価(`cost`)

| ID | 要求 |
|---|---|
| FR-COS-01 | 標準原価・在庫評価額・ロットの評価額・実績の原価を、DB のビューの値のまま表示する(Dart で計算しない) |
| FR-COS-02 | 社外の所有物は評価しない。譲渡で自社の物になった材料は 0 円。換算するレートが無いときは、標準原価に「レートなし」を出す |

### 3.9 海外取引(通貨・為替。`system`)

| ID | 要求 |
|---|---|
| FR-CUR-01 | 金額は相手先の通貨のまま保存し、基準通貨への換算は DB のビューだけで行う |
| FR-CUR-02 | 通貨・為替レート(適用開始日の年月日。終了日なし。追記のみ)を、管理者が登録できる |
| FR-CUR-03 | 出荷・受入の金額は検収日のレート、受注・発注・標準原価は最新のレートで換算する。仮のレートの行は、「(仮)」と「(一部仮)」で示す |
| FR-CUR-04 | 為替レートの自動取得(ECB・Frankfurter。優先順位つき・通貨ごとの指定つき)をボタンで実行できる(管理者) |
| FR-CUR-05 | 確定日以前のレートの登録・変更・取り消しを DB が止める。確定日は戻せない(管理者が「確定する」) |
| FR-CUR-06 | 利害関係者に、取引の通貨と検収日を持たせる。新規登録の通貨の初期値は基準通貨 |

### 3.10 組織・資源・品目・共有マスタ(`organization`・`resource`・`item`・`production_process`・`shared_master`・`sales`・`purchasing`)

| ID | 要求 |
|---|---|
| FR-MST-01 | 会社・事業所・部署(体系)・作業者・役職・承認パターンを管理する。体系の循環は登録の前と DB で止める |
| FR-MST-02 | 設備・保全・場所・力量・資格を管理する |
| FR-MST-03 | 品目(区分・部品表・仕入先・工程)・工程・作業を管理する |
| FR-MST-04 | 利害関係者(顧客・外部供給者・運送業者)・配送区分・単位を管理する。コードの重複は DB の部分一意索引で止める |
| FR-MST-05 | 台帳・編集の画面は実体の定義から作り、項目の検証・参照の選択・使用中の削除不可・子の台帳(表の中の表)を共通に提供する |

### 3.11 認証・アカウント・アクセス権(`auth_files`・`access_control`・`user_profile`)

| ID | 要求 |
|---|---|
| FR-AUT-01 | ユーザー ID とパスワードでログインする(PocketBase)。ログアウト・セッション切れは専用の画面へ向ける |
| FR-AUT-02 | 作業者の登録は管理者が行う(DB の `info_staff` → PocketBase のユーザーの作成 → 有効化コードの発行)。作業者はコードで有効化する |
| FR-AUT-03 | ページのアクセス権(部署・担当者・実効)を管理者が設定する。メニューと遷移は、許可されたページだけにする(管理者はすべて) |
| FR-AUT-04 | GraphQL へは、PocketBase が発行した短期の JWT を送る。JWT はメモリ上だけに置く |
| FR-AUT-05 | 共有ファイルの出し入れは PocketBase にだけ置き、DB は名前・種類だけを持つ |

### 3.12 通知・ダッシュボード・設定(`announcement`・`app_core`・`dashboard_container`・`backstage`)

| ID | 要求 |
|---|---|
| FR-APP-01 | 自分宛ての通知の一覧・既読・すべて既読・未読のバナーを提供する |
| FR-APP-02 | ダッシュボードの件数のコンテナ(Full・1/2・1/4)の配置を、ユーザーごとに保存する |
| FR-APP-03 | 設定(言語・サイドバー・テーマ・ユーザー)は再起動なしで反映し、ユーザーごとに保存する |
| FR-APP-04 | 裏設定(接続先・ログのレベル)は、ログインページの特定の入口から入る。ID・パスワードはソース・アセットに書かない |
| FR-APP-05 | メンテナンス中は、GraphQL へ通信せず、メンテナンスのページへ遷移する |

## 4. 非機能要件

| ID | 要求 |
|---|---|
| NFR-01 多言語 | 表示する文字列は言語ファイル(slang)に置く(日本語が基準)。使用言語の既定は OS の言語。対応していない言語は日本語にする |
| NFR-02 ログ | ライブラリは、自身が発生元のエラーだけをログに残す。ロガーは Riverpod から受け、アプリ全体で同じ仕様 |
| NFR-03 画面 | 全画面はモバイル・タブレット・PC の幅に対応する(`view_responsiveness`)。色・サイズは `theme_lib`。読み込み中の表示は `loadux_lib` |
| NFR-04 セキュリティ | トークンは秘密情報として OS の保管庫に置く。JWT の鍵を Git に入れない。管理者専用の操作は、画面と DB の両方で止める |
| NFR-05 保守性 | 層の依存は一方向。生成物は手で編集しない。判定は DB のビュー・関数 1 か所に置く |
| NFR-06 性能 | 重い計算(MRP・換算・原価)は DB で行い、クライアントは値を表示する。換算は、列を加工せず索引で引ける形にする |
| NFR-07 可用性 | メンテナンス中・セッション切れは、通信の前に確認して、専用のページへ向ける |
| NFR-08 データの整合 | 履歴を持つマスタは更新のたびに版を残す。記録は追記のみ。主キーは DB のトリガーが採番する |
| NFR-09 テスト | ① 手元の代役(DB なし。`ReplayLink` ほか) ② GitHub Actions の使い捨ての PostgreSQL・PostGraphile(`server-tests`)③ 本番。挙動・見た目の評価は利用者が行う(`issue/app_checks.csv`) |
| NFR-10 運用 | 設定の優先順位は、裏設定の既定 < DB(`info_app.settings`)< 端末のローカル設定(表示の好みだけ) |

## 5. データ要求

1. 業務データは PostgreSQL のスキーマ `tests`。DDL の正は `06_cteate_test.sql`(ER ツール PERO のデータ `pms_test.pero` から出力)。初期化の順は `05_init_test` → `06_cteate_test` → `07_dummy` → `09_grant_test`。
1. trans(トランザクション)からマスタを参照するときは、履歴 ID + ID の組で `history_mstr_*` を参照する(取引時の値が残る)。
1. ビューには `symbol` 列を含める。`symbol` はトリガーが採番し、一覧・検索・バーコードのキーに使う。
1. 呼称・文章・ラベルは、言語別の値を共通の表で持つ(共通関数で作る・変える。渡した言語の値だけ入れ替わる)。
1. 更新者(`update_user_id`・`update_user_history_id`)は、ログイン中の担当者から、アプリが渡す。

## 6. 未決・保留

- 為替レートの「自動取得」を、ログイン時に自動で行うか(今はボタンだけ)。
- 品目仕入先(`itemsupplier`)の GraphQL 版の取得元と、出荷実績・受入実績の金額の画面。
- 実サーバー(DB の再構築のあと)での、通貨・為替レート・確定日・利害関係者の通貨の通信テスト。
- 支給・返品の画面(`supply_model`・`return_model` は用意済みだが、画面が無く使われていない。`issue/20261128_0001.md`)。
- `quality_document` への承認スタンプ・PDF の組み込み。

## 7. ライブラリの索引

<!-- doc_gen:index:begin -->

ライブラリ 75 件(使われていないライブラリ 3 件は、文書を作らず、`issue/20261128_0001.md` に削除の対象として記録した)。

### core

| ライブラリ | 説明 | 利用元 | SRS | SDD |
|---|---|---|---|---|
| `baton_lib` | このライブラリ`baton_lib`は、パッケージGoRouterと画面ページをもつ機能毎のライブラリをコマンドでつなぎ、責務を分離します。機能が分離された別のページへの遷移や、同… | 18 | [SRS](../packages/core/baton_lib/doc/SRS.md) | [SDD](../packages/core/baton_lib/doc/SDD.md) |
| `current_user` | ログイン中のユーザー(担当者)の状態管理。認証(PocketBase)とデータ(GraphQL)の間をつなぐインターフェイスと、一度引いた担当者の履歴・言語を保持する。 | 1 | [SRS](../packages/core/current_user/doc/SRS.md) | [SDD](../packages/core/current_user/doc/SDD.md) |
| `feature_shared` | 機能パッケージとアプリの共通の口(CommandBus の Provider、FeatureModule)。 | 56 | [SRS](../packages/core/feature_shared/doc/SRS.md) | [SDD](../packages/core/feature_shared/doc/SDD.md) |
| `page_mediator_extension` | ページ用の拡張(Mediator)。データ取得(data_strategist)・設定の保存(settings_keeper)・セッション確認を、インターフェイス経由でページへ提供… | 6 | [SRS](../packages/core/page_mediator_extension/doc/SRS.md) | [SDD](../packages/core/page_mediator_extension/doc/SDD.md) |
| `selection_result` | 選択画面が呼び出し元へ返す選択の結果(対象の種類・一意な id・任意の値)。JSON にもできる。 | 2 | [SRS](../packages/core/selection_result/doc/SRS.md) | [SDD](../packages/core/selection_result/doc/SDD.md) |
| `settings_keeper` | ローカル設定の保存と復元(Memento)。保存の手段はアプリ側で差し替えられる(Strategy)。 | 8 | [SRS](../packages/core/settings_keeper/doc/SRS.md) | [SDD](../packages/core/settings_keeper/doc/SDD.md) |

### ui

| ライブラリ | 説明 | 利用元 | SRS | SDD |
|---|---|---|---|---|
| `app_shell` | アプリ全体の枠(タイトルバー・サイドバー・ハンバーガーメニュー・ログインユーザー)の見た目の部品。機能・認証の実体は知らない。 | 23 | [SRS](../packages/ui/app_shell/doc/SRS.md) | [SDD](../packages/ui/app_shell/doc/SDD.md) |
| `approval_stamp_view` | 承認スタンプの画面の部品(スタンプ・用紙のプレビュー)。様式は approval_stamp。 | 2 | [SRS](../packages/ui/approval_stamp_view/doc/SRS.md) | [SDD](../packages/ui/approval_stamp_view/doc/SDD.md) |
| `calendar_lib` | 月のカレンダー表示。日付ごとの値を抽象化した窓口で読み書きし、1 日・範囲の選択、開始曜日・表示する曜日・休日の色をテーマと設定で変えられる。 | 1 | [SRS](../packages/ui/calendar_lib/doc/SRS.md) | [SDD](../packages/ui/calendar_lib/doc/SDD.md) |
| `entity_screens` | 実体の定義(項目・種類・親子)から、台帳(テーブル/ツリー)と編集の画面を作る共通部品。 | 18 | [SRS](../packages/ui/entity_screens/doc/SRS.md) | [SDD](../packages/ui/entity_screens/doc/SDD.md) |
| `flgtable_lib` | `table_lib`ライブラリは、データを列と行のテーブル表示を行うFlutterライブラリです。既存のテーマをそのまま使用でき、多言語、ドラッグドロップに対応しています。ドラッ… | 6 | [SRS](../packages/ui/flgtable_lib/doc/SRS.md) | [SDD](../packages/ui/flgtable_lib/doc/SDD.md) |
| `loadux_lib` | 読み込み中の表示(円・バー)の部品。見た目は ThemeExtension(LoadingTheme)で差し替える。theme_lib には依存しない。 | 13 | [SRS](../packages/ui/loadux_lib/doc/SRS.md) | [SDD](../packages/ui/loadux_lib/doc/SDD.md) |
| `theme_lib` | 機能共通のテーマ管理(システム/ライト/ダーク切替、JSONの取り込み・書き出し)。 | 47 | [SRS](../packages/ui/theme_lib/doc/SRS.md) | [SDD](../packages/ui/theme_lib/doc/SDD.md) |
| `view_responsiveness` | レスポンシブデザインの部品。画面幅の区分(モバイル・タブレット・PC)・グリッド・セルの配置と、区分の通知(ResponsiveScope)。 | 9 | [SRS](../packages/ui/view_responsiveness/doc/SRS.md) | [SDD](../packages/ui/view_responsiveness/doc/SDD.md) |

### infra

| ライブラリ | 説明 | 利用元 | SRS | SDD |
|---|---|---|---|---|
| `data_test_harness` | テスト専用。GraphQLのテスト接続先・取得元の代役を一か所にまとめる。dev_dependenciesにだけ書く。 | 41 | [SRS](../packages/infra/data_test_harness/doc/SRS.md) | [SDD](../packages/infra/data_test_harness/doc/SDD.md) |
| `jwt_verification_test` | テスト専用。PocketBase が発行した JWT を PostGraphile とモデルで検証する結合テスト。 | 0 | [SRS](../packages/infra/jwt_verification_test/doc/SRS.md) | [SDD](../packages/infra/jwt_verification_test/doc/SDD.md) |
| `logger_provider` | This file provides guidance to Claude Code (claude.ai/code) when working with code in this… | 55 | [SRS](../packages/infra/logger_provider/doc/SRS.md) | [SDD](../packages/infra/logger_provider/doc/SDD.md) |
| `pbapi` | PocketBaseのJWT認証・セッション・ファイル共有のクライアント。 | 7 | [SRS](../packages/infra/pbapi/doc/SRS.md) | [SDD](../packages/infra/pbapi/doc/SDD.md) |
| `pms_graphql` | このファイルは、このリポジトリでコードを扱う際に Claude Code (claude.ai/code) へ向けたガイダンスを提供します。 | 42 | [SRS](../packages/infra/pms_graphql/doc/SRS.md) | [SDD](../packages/infra/pms_graphql/doc/SDD.md) |

### foundation

| ライブラリ | 説明 | 利用元 | SRS | SDD |
|---|---|---|---|---|
| `approval_stamp` | 承認スタンプの様式・PDF のテーマ・ヘッダ/フッタの書式(変数の展開)・配置の計算(画面を持たない純 Dart)。 | 6 | [SRS](../packages/foundation/approval_stamp/doc/SRS.md) | [SDD](../packages/foundation/approval_stamp/doc/SDD.md) |
| `data_strategist` | この`data_strategistライブラリ`は、データを要求する側と受け取る側の間を取り持つメディエーターとして振る舞うライブラリです。どちらも手段を気にすること無くデータ交換… | 23 | [SRS](../packages/foundation/data_strategist/doc/SRS.md) | [SDD](../packages/foundation/data_strategist/doc/SDD.md) |
| `localized_values` | 言語別の値(呼称・文章・ラベル)の表示の代替と、保存で送る差分。純 Dart。 | 10 | [SRS](../packages/foundation/localized_values/doc/SRS.md) | [SDD](../packages/foundation/localized_values/doc/SDD.md) |
| `markdown_ast` | Markdown の構文木・読み取り(パーサー)と、WYSIWYG の文書の型(画面を持たない純 Dart)。 | 7 | [SRS](../packages/foundation/markdown_ast/doc/SRS.md) | [SDD](../packages/foundation/markdown_ast/doc/SDD.md) |
| `markdown_pdf` | Markdown(構文木・読み取り)と、PDF の出力(テーマ・ヘッダ/フッタ・承認スタンプ・日本語フォント)。 | 2 | [SRS](../packages/foundation/markdown_pdf/doc/SRS.md) | [SDD](../packages/foundation/markdown_pdf/doc/SDD.md) |
| `markdown_to_wysiwyg` | Markdown を WYSIWYG の文書(ブロックの並び)に変換する(画面を持たない純 Dart)。 | 2 | [SRS](../packages/foundation/markdown_to_wysiwyg/doc/SRS.md) | [SDD](../packages/foundation/markdown_to_wysiwyg/doc/SDD.md) |
| `markdown_view` | Markdown(構文木)をテーマに沿った画面の部品にして出す(閲覧)。 | 3 | [SRS](../packages/foundation/markdown_view/doc/SRS.md) | [SDD](../packages/foundation/markdown_view/doc/SDD.md) |
| `query_builder` | A starting point for Dart libraries or applications. | 3 | [SRS](../packages/foundation/query_builder/doc/SRS.md) | [SDD](../packages/foundation/query_builder/doc/SDD.md) |
| `undo_redo` | 元に戻す・やり直す(Undo/Redo)。コマンドと、コマンド・値・対象を保持するスタック(Command パターン)。 | 1 | [SRS](../packages/foundation/undo_redo/doc/SRS.md) | [SDD](../packages/foundation/undo_redo/doc/SDD.md) |
| `wysiwyg_editor` | WYSIWYG(ビジュアル)と Markdown を切り替えて本文を編集する画面の部品。 | 2 | [SRS](../packages/foundation/wysiwyg_editor/doc/SRS.md) | [SDD](../packages/foundation/wysiwyg_editor/doc/SDD.md) |
| `wysiwyg_to_markdown` | WYSIWYG の文書(ブロックの並び)を Markdown にする(画面を持たない純 Dart)。 | 1 | [SRS](../packages/foundation/wysiwyg_to_markdown/doc/SRS.md) | [SDD](../packages/foundation/wysiwyg_to_markdown/doc/SDD.md) |

### model_providers

| ライブラリ | 説明 | 利用元 | SRS | SDD |
|---|---|---|---|---|
| `access_control_model` | access_control(ページアクセス管理)機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 3 | [SRS](../packages/model_providers/access_control_model/doc/SRS.md) | [SDD](../packages/model_providers/access_control_model/doc/SDD.md) |
| `announcement_model` | 「通知」機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 1 | [SRS](../packages/model_providers/announcement_model/doc/SRS.md) | [SDD](../packages/model_providers/announcement_model/doc/SDD.md) |
| `barcode_entry_model` | barcode_entry 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 3 | [SRS](../packages/model_providers/barcode_entry_model/doc/SRS.md) | [SDD](../packages/model_providers/barcode_entry_model/doc/SDD.md) |
| `cost_model` | 「原価・在庫評価額」機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 1 | [SRS](../packages/model_providers/cost_model/doc/SRS.md) | [SDD](../packages/model_providers/cost_model/doc/SDD.md) |
| `document_approval_model` | 「文書の承認・公開・スタンプの設定」機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 2 | [SRS](../packages/model_providers/document_approval_model/doc/SRS.md) | [SDD](../packages/model_providers/document_approval_model/doc/SDD.md) |
| `item_model` | item 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 3 | [SRS](../packages/model_providers/item_model/doc/SRS.md) | [SDD](../packages/model_providers/item_model/doc/SDD.md) |
| `manual_model` | manual 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 1 | [SRS](../packages/model_providers/manual_model/doc/SRS.md) | [SDD](../packages/model_providers/manual_model/doc/SDD.md) |
| `organization_model` | organization 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 2 | [SRS](../packages/model_providers/organization_model/doc/SRS.md) | [SDD](../packages/model_providers/organization_model/doc/SDD.md) |
| `plan_change_model` | 「計画変更」機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 1 | [SRS](../packages/model_providers/plan_change_model/doc/SRS.md) | [SDD](../packages/model_providers/plan_change_model/doc/SDD.md) |
| `production_plan_model` | production_plan 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 2 | [SRS](../packages/model_providers/production_plan_model/doc/SRS.md) | [SDD](../packages/model_providers/production_plan_model/doc/SDD.md) |
| `purchasing_model` | purchasing 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 3 | [SRS](../packages/model_providers/purchasing_model/doc/SRS.md) | [SDD](../packages/model_providers/purchasing_model/doc/SDD.md) |
| `quality_document_model` | quality_document 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 2 | [SRS](../packages/model_providers/quality_document_model/doc/SRS.md) | [SDD](../packages/model_providers/quality_document_model/doc/SDD.md) |
| `quality_model` | quality 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 4 | [SRS](../packages/model_providers/quality_model/doc/SRS.md) | [SDD](../packages/model_providers/quality_model/doc/SDD.md) |
| `resource_model` | resource 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 3 | [SRS](../packages/model_providers/resource_model/doc/SRS.md) | [SDD](../packages/model_providers/resource_model/doc/SDD.md) |
| `sales_model` | sales 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 2 | [SRS](../packages/model_providers/sales_model/doc/SRS.md) | [SDD](../packages/model_providers/sales_model/doc/SDD.md) |
| `shared_master_model` | shared_master 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 1 | [SRS](../packages/model_providers/shared_master_model/doc/SRS.md) | [SDD](../packages/model_providers/shared_master_model/doc/SDD.md) |
| `system_model` | system 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 2 | [SRS](../packages/model_providers/system_model/doc/SRS.md) | [SDD](../packages/model_providers/system_model/doc/SDD.md) |
| `work_record_model` | work_record 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。 | 3 | [SRS](../packages/model_providers/work_record_model/doc/SRS.md) | [SDD](../packages/model_providers/work_record_model/doc/SDD.md) |

### features

| ライブラリ | 説明 | 利用元 | SRS | SDD |
|---|---|---|---|---|
| `access_control` | アクセス管理(ページのアクセスパス・部署の権限・担当者の許可)の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 3 | [SRS](../packages/features/access_control/doc/SRS.md) | [SDD](../packages/features/access_control/doc/SDD.md) |
| `announcement` | 通知(自分宛ての通知の一覧・既読・ダッシュボードの未読通知・ログイン時の監査の予定の通知づくり)。 | 2 | [SRS](../packages/features/announcement/doc/SRS.md) | [SDD](../packages/features/announcement/doc/SDD.md) |
| `app_core` | アプリの基盤の画面(ブート・エラー・設定)の実装。ログイン・ログアウトは認証(Keycloak)の導入後に追加する。 | 5 | [SRS](../packages/features/app_core/doc/SRS.md) | [SDD](../packages/features/app_core/doc/SDD.md) |
| `approval` | 承認一覧(承認待ちの一覧・複数選択の一括承認・パスワードの再入力・ダッシュボードの承認待ち通知)。 | 1 | [SRS](../packages/features/approval/doc/SRS.md) | [SDD](../packages/features/approval/doc/SDD.md) |
| `auth_files` | 認証(PocketBase のログイン・登録申請・コード入力・管理者操作)と共有ファイルのアップロード/ダウンロードの画面。 | 3 | [SRS](../packages/features/auth_files/doc/SRS.md) | [SDD](../packages/features/auth_files/doc/SDD.md) |
| `backstage` | アプリケーションの裏設定。システム制作者だけが入れる設定のページと、設定の保存・既定値・優先順位の解決を持つ。 | 3 | [SRS](../packages/features/backstage/doc/SRS.md) | [SDD](../packages/features/backstage/doc/SDD.md) |
| `barcode_entry` | バーコード実績登録。バーコードリーダー・スマートフォン・タブレットから symbol を読み込み、作業実績・受入検品・棚移動・設備点検を進める。 | 2 | [SRS](../packages/features/barcode_entry/doc/SRS.md) | [SDD](../packages/features/barcode_entry/doc/SDD.md) |
| `cost` | 原価 機能の実装(標準原価の一覧・在庫評価額の一覧・ロットの評価額。読み取りだけ。画面・ルート)。アプリだけがこのパッケージに依存する。 | 1 | [SRS](../packages/features/cost/doc/SRS.md) | [SDD](../packages/features/cost/doc/SDD.md) |
| `dashboard_container` | ダッシュボードに置く件数のコンテナ。レコード数の合計を、幅(Full・1/2・1/4)に応じた数だけ表示し、配置は設定として保存・復元する。 | 8 | [SRS](../packages/features/dashboard_container/doc/SRS.md) | [SDD](../packages/features/dashboard_container/doc/SDD.md) |
| `document_settings` | 承認スタンプ・PDF の設定(info_app.settings の stamp・pdf)の編集画面(プレビューつき)。 | 1 | [SRS](../packages/features/document_settings/doc/SRS.md) | [SDD](../packages/features/document_settings/doc/SDD.md) |
| `item` | 品目 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 9 | [SRS](../packages/features/item/doc/SRS.md) | [SDD](../packages/features/item/doc/SDD.md) |
| `maintenance` | メンテナンス中のページ。サーバーの応答がメンテナンス中のときに表示し、他のページへはリンクしない。 | 3 | [SRS](../packages/features/maintenance/doc/SRS.md) | [SDD](../packages/features/maintenance/doc/SDD.md) |
| `manual` | マニュアル(Wiki)。品質管理文書のページを、Markdown を正本に、閲覧・編集(Markdown / ビジュアル)・履歴・書き出しで育てる。 | 2 | [SRS](../packages/features/manual/doc/SRS.md) | [SDD](../packages/features/manual/doc/SDD.md) |
| `organization` | `packages/features/CLAUDE.md` の「organization」(単位・会社・事業所・部門部署・作業者・承認)を実装する機能プロジェクト。`package… | 7 | [SRS](../packages/features/organization/doc/SRS.md) | [SDD](../packages/features/organization/doc/SDD.md) |
| `plan_change` | 計画変更 機能の実装(計画変更の履歴・未処置一覧。画面・ルート)。アプリだけがこのパッケージに依存する。 | 1 | [SRS](../packages/features/plan_change/doc/SRS.md) | [SDD](../packages/features/plan_change/doc/SDD.md) |
| `production_plan` | 生産計画 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 5 | [SRS](../packages/features/production_plan/doc/SRS.md) | [SDD](../packages/features/production_plan/doc/SDD.md) |
| `production_process` | 工程 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 4 | [SRS](../packages/features/production_process/doc/SRS.md) | [SDD](../packages/features/production_process/doc/SDD.md) |
| `purchasing` | 購買 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 3 | [SRS](../packages/features/purchasing/doc/SRS.md) | [SDD](../packages/features/purchasing/doc/SDD.md) |
| `quality` | 品質管理 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 5 | [SRS](../packages/features/quality/doc/SRS.md) | [SDD](../packages/features/quality/doc/SDD.md) |
| `quality_common` | 品質共通 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 2 | [SRS](../packages/features/quality_common/doc/SRS.md) | [SDD](../packages/features/quality_common/doc/SDD.md) |
| `quality_document` | 品質管理文書 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 1 | [SRS](../packages/features/quality_document/doc/SRS.md) | [SDD](../packages/features/quality_document/doc/SDD.md) |
| `resource` | 資源 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 6 | [SRS](../packages/features/resource/doc/SRS.md) | [SDD](../packages/features/resource/doc/SDD.md) |
| `sales` | 営業 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 4 | [SRS](../packages/features/sales/doc/SRS.md) | [SDD](../packages/features/sales/doc/SDD.md) |
| `shared_master` | 共有マスタ(配送区分など複数のメニューにまたがるマスタ)の実装。 | 7 | [SRS](../packages/features/shared_master/doc/SRS.md) | [SDD](../packages/features/shared_master/doc/SDD.md) |
| `system` | システム 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 3 | [SRS](../packages/features/system/doc/SRS.md) | [SDD](../packages/features/system/doc/SDD.md) |
| `user_profile` | ログインユーザーの情報(顔写真)の表示と、自分のイメージの変更。画像は PocketBase の user_avatars。 | 1 | [SRS](../packages/features/user_profile/doc/SRS.md) | [SDD](../packages/features/user_profile/doc/SDD.md) |
| `work_record` | 作業実績 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。 | 6 | [SRS](../packages/features/work_record/doc/SRS.md) | [SDD](../packages/features/work_record/doc/SDD.md) |

<!-- doc_gen:index:end -->

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
