# barcode_entry ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

barcode_entry: バーコード実績登録。バーコードリーダー・スマートフォン・タブレットから symbol を読み込み、作業実績・受入検品・棚移動・設備点検を進める。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/barcode_entry` |
| Dart ファイル(生成物を除く) | 16 |
| `lib/src` の分け方 | `i18n(1)`、`logic(6)`、`page(6)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `BarcodeEntryStrings` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `barcodeEntryStringsProvider` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `GraphqlScanGateway` | クラス | 照会と登録の窓口の実体(GraphQL)。 | `lib/src/logic/graphql_scan_gateway.dart` |
| `InMemoryScanGateway` | クラス | メモリ上のサンプルを持つ取得元(暫定)。プロトタイプ(`tools/open-design`の barcode)と同じ値。 | `lib/src/logic/in_memory_scan_gateway.dart` |
| `ScanStep` | 列挙型 | 読み込みの流れの段階(画面の見出しと入力の受け付けが決まる)。 | `lib/src/logic/scan_flow.dart` |
| `NoticeKind` | 列挙型 | 利用者へ出す通知の種類。文字列は画面が表示時に変換する(多言語)。 | `lib/src/logic/scan_flow.dart` |
| `ScanNotice` | クラス | 通知。[isError] はやり直しを求める通知、[args] は文面に差し込む値。 | `lib/src/logic/scan_flow.dart` |
| `LogKind` | 列挙型 | 履歴の種類。 | `lib/src/logic/scan_flow.dart` |
| `ScanLogEntry` | クラス | 履歴の1件。 | `lib/src/logic/scan_flow.dart` |
| `QueuedEntry` | クラス | 処理待ち(キュー)の 1 件: まとめて登録するまで取得元へ送らないもの(入庫・出庫)。 | `lib/src/logic/scan_flow.dart` |
| `QueuedIssue` | クラス | 処理待ちの出庫: 作業の開始で、[shelf] から材料を出庫する(棚出庫処理)。 | `lib/src/logic/scan_flow.dart` |
| `QueuedResult` | クラス | 処理待ちの完了(作業の終了・受入検品): 合格・不合格・差を 1 件にまとめた、1 回の登録。 | `lib/src/logic/scan_flow.dart` |
| `QueuedPut` | クラス | 処理待ちの入庫。 | `lib/src/logic/scan_flow.dart` |
| `ScanContext` | クラス | 読み込み中の対象(段階をまたいで持ち回る値)。 | `lib/src/logic/scan_flow.dart` |
| `ScanState` | クラス | 読み込みの状態。 | `lib/src/logic/scan_flow.dart` |
| `ScanFlow` | クラス | 読み込みの流れ(State)。symbol の読み込み・入力を段階に応じて判定し、取得元([IScanGateway])へ登録する。 | `lib/src/logic/scan_flow.dart` |
| `IScanGateway` | インターフェイス | 読み込んだ symbol の照会と、実績の登録の窓口(Strategy)。 | `lib/src/logic/scan_gateway.dart` |
| `SymbolKind` | 列挙型 | 読み込んだ symbol の種類。 | `lib/src/logic/scan_models.dart` |
| `ScanMode` | 列挙型 | 読み込みの入口で選ぶ種類(モード)。選ぶとその種類の symbol だけを受け付ける。 | `lib/src/logic/scan_models.dart` |
| `ScanTarget` | クラス | symbol から引いた対象。 | `lib/src/logic/scan_models.dart` |
| `WorkState` | 列挙型 | 作業指示の状態。 | `lib/src/logic/scan_models.dart` |
| `WorkOrderTarget` | クラス | 製造/委託品の作業指示(工程)。 | `lib/src/logic/scan_models.dart` |
| `OperatorTarget` | クラス | 担当者(読み取り対象。作業の担当として記録する人。画面案 6.4)。 | `lib/src/logic/scan_models.dart` |
| `ShelfTarget` | クラス | 棚。 | `lib/src/logic/scan_models.dart` |
| `HeldItem` | クラス | 棚が持っているアイテム 1 件(品目・数量)。 | `lib/src/logic/scan_models.dart` |
| `ShelfRecommendation` | クラス | 入庫先のおすすめ 1 件と、その根拠。根拠は状態の enum ではなく、値で持つ | `lib/src/logic/scan_models.dart` |
| `ShelfContents` | クラス | 棚(コンテナ)の中身。持っているアイテムと、入れ子の子の棚(再帰)。 | `lib/src/logic/scan_models.dart` |
| `PurchaseTarget` | クラス | 購入品(発注明細)。 | `lib/src/logic/scan_models.dart` |
| `ItemTarget` | クラス | 製品/購入品(棚移動で棚へ入れるもの)。 | `lib/src/logic/scan_models.dart` |
| `EquipmentTarget` | クラス | 設備。点検項目ごとに結果を記録する。 | `lib/src/logic/scan_models.dart` |
| `SupplyTarget` | クラス | 支給(顧客支給の受け入れ・検品の対象)。支給明細の symbol。 | `lib/src/logic/scan_models.dart` |
| `InspectionResult` | 列挙型 | 点検の結果。 | `lib/src/logic/scan_models.dart` |
| `RejectReason` | 列挙型 | 不合格の理由。 | `lib/src/logic/scan_models.dart` |
| `ReturnReason` | 列挙型 | 作業の終了で、完了が取り出しより少ない差(コンテナへ返す)の理由。選ぶ値(DB の状態ではない)。 | `lib/src/logic/scan_models.dart` |
| `StockSource` | クラス | 数量を入れる元(入庫の元)。 | `lib/src/logic/scan_models.dart` |
| `WorkSource` | クラス | 作業指示の完了数量。 | `lib/src/logic/scan_models.dart` |
| `PurchaseSource` | クラス | 購入品の受入数量。 | `lib/src/logic/scan_models.dart` |
| `ItemSource` | クラス | 棚へ入れる製品/購入品。 | `lib/src/logic/scan_models.dart` |
| `scanGatewayProvider` | Riverpod プロバイダ | 読み込んだ symbol の照会と登録の取得元。既定はメモリ上のサンプル(暫定)。 | `lib/src/logic/scan_providers.dart` |
| `scanFlowProvider` | Riverpod プロバイダ | 読み込みの流れ(状態と操作)。 | `lib/src/logic/scan_providers.dart` |
| `openWorkRegisterLinkProvider` | Riverpod プロバイダ | 作業指示から、実績登録の画面(作業実績 › 実績登録)を開くリンクを出すか。既定は出す。 | `lib/src/logic/scan_providers.dart` |
| `batchQueueProvider` | Riverpod プロバイダ | 入出庫をその場で登録せず、処理待ち(キュー)にためて「まとめて登録」するか(画面案 6.4)。既定はその場で登録する(false)。 | `lib/src/logic/scan_providers.dart` |
| `requireOperatorProvider` | Riverpod プロバイダ | 最初に担当者のバーコードを読み取らせるか(画面案 6.4)。既定は不要。 | `lib/src/logic/scan_providers.dart` |
| `idleTimeoutProvider` | Riverpod プロバイダ | 操作なしが続いたとき、処理待ちを消してリーディングトップへ戻るまでの時間(画面案 6.4。既定 30 秒)。 | `lib/src/logic/scan_providers.dart` |
| `idleWarningProvider` | Riverpod プロバイダ | 操作なしで戻る前に、残りの秒数を案内し始める時間(既定 10 秒前)。 | `lib/src/logic/scan_providers.dart` |
| `BarcodeEntryModule` | クラス | バーコード実績登録をアプリへ組み込むための口。 | `lib/src/page/barcode_entry_module.dart` |
| `BarcodeEntryPage` | クラス |  | `lib/src/page/barcode_entry_page.dart` |
| `BarcodeEntryPaths` | クラス | バーコード実績登録のパス。文字列はこのファイルだけに書く。 | `lib/src/page/barcode_entry_paths.dart` |
| `BarcodeCode` | 列挙型 | バーコードのコード(メニューの種類を表す接頭辞 2 文字)。 | `lib/src/barcode_code.dart` |
| `ParsedBarcode` | クラス | [BarcodeCode.parse] の結果。 | `lib/src/barcode_code.dart` |
| `BarcodeEntryDestination` | クラス | バーコード実績登録のリーディングトップへ。 | `lib/src/page/barcode_entry_destinations.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `BarcodeCode` | Value Object(コードと symbol の組) | `lib/src/barcode_code.dart` |
| `GraphqlScanGateway` | Adapter([ScanClient] を窓口 [IScanGateway] へ適合させる) | `lib/src/logic/graphql_scan_gateway.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `baton_lib`、`feature_shared`、`app_shell`、`view_responsiveness`、`work_record`、`barcode_entry_model`、`logger_provider`
- テスト用: `data_test_harness`
- 利用元: `entry_app`(アプリ)、`pms_app`(アプリ)
- 外部パッケージ: `flutter_riverpod`、`go_router`、`slang`、`mobile_scanner`

## 6. 設計上の決定(`CLAUDE.md` より)

- **画面**: リーディングトップ(`BarcodeEntryDestination` → `/barcode`、メニュー「作業実績 › バーコード」): バーコード読込 / テキスト入力(Enter・リーダーの確定で決定)。種類のモード(作業実績・受入検品・棚移動・設備点検・支給)を選ぶとその種類だけ受け付け、選ばなければ種類を自動で判定する。
- **コード体系(バーコードの文字列)**: バーコードの文字列は `<コード 2 文字><symbol>`。コード = メニューの種類、symbol = DB の対象(`リニアシンボル`。0-9 と A-Z の 33進数で、O・L・I は含まない。`tools/database/仕様/バーコードNo仕様.md`)。ルートの `CLAUDE.md` の「バーコードの体系」の実装。
- **構成(画面とビジネスロジックの分離)**: ビジネスロジックは新しいパッケージにせず、このプロジェクトの `lib/src/logic` に分ける(画面は `lib/src/page`)。登録・照会の実体は取得元の窓口に閉じるので、別のプロジェクトへ切り出すときはここをそのまま移せる。
- **支給の受け入れ・検品(`SP`)**: 1つの画面(`supplyChoice`)で、ラジオボタンから「受け入れ(仮止めにする)」「検品に合格(仮止めを外す)」「検品で不合格(異常を登録。仮止めのまま)」を選び、数量を入れて登録する。選択肢は画面だけの値で、`ScanFlow.registerSupply` へは boolean(`receive`・`hold`)で渡す(受け入れ = `recei…
- **実績登録の画面へのリンク**: 作業指示を読み込むと、概要の下に「実績登録の画面を開く」(キー `openWorkRegister`)を出す。押すと、その生産計画を先頭にして実績登録(`work_record` の `WorkRegisterDestination(planId:)`。契約 `work_record_api.dart` だけに依存)を CommandBus で開く。生産計画…
- **処理待ち(キュー)**: 入出庫(作業の開始の棚出庫・入庫。`QueuedIssue`・`QueuedPut`)をその場で登録せず、処理待ちにためて「まとめて登録(N件)」できる(画面案 6.4)。`batchQueueProvider`(既定 false)が true のときだけ。目的は、ハンディ端末で 1 件ごとに通信せず連続して読み取ること。有効にするのは、担当者を引ける取得元…
- **開始と終了・受入(1 回の登録)**: **開始**: 作業指示を読み、「はい」→ 材料を出す棚を読む → 開始数量を入れる(`issueQty`。上限は計画の残り)→ `startWork(order, shelf, quantity)`。取得元(GraphQL 版)は、DB 関数 `work_record_start` を、**コンテナを渡して** 1 回呼ぶ(実績の登録と払出は 1 つの処理…
- **example**: 実績登録専用のアプリは `apps/entry_app`(Android・Windows)。このプロジェクトだけを載せる。
- **GraphQL 版の制限**: 単位・設備点検・支給の登録は、DB の構成から決められず未対応(`issue/20261031_0003.md`)。作業の開始・終了と受入検品は、DB 関数(`work_record_start`・`inspection_register`。`issue/202611.md#20261120_0001`)の 1 回の呼び出しで登録する(上の「開始と終了・受入…

## 7. エラー処理・ログ

- ログは `loggerProvider`(Riverpod)から受け、このライブラリが発生元のエラーだけを残す。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/barcode_entry_test.dart`(22)、`test/blocked_target_test.dart`(4)、`test/graphql_scan_gateway_connection_test.dart`(3)、`test/graphql_scan_gateway_test.dart`(5)、`test/open_register_link_test.dart`(3)、`test/queue_extras_test.dart`(18)、`test/queue_test.dart`(7)、`test/register_flow_page_test.dart`(3)、`test/supply_flow_test.dart`(4)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
