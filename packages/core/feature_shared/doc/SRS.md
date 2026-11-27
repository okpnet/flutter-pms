# feature_shared ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

feature_shared: 機能パッケージとアプリの共通の口(CommandBus の Provider、FeatureModule)。

### 1.2 範囲

- 場所: `packages/core/feature_shared`(core(機能とアプリの仲介・コマンドバス・設定の保存など))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`entry_app`(アプリ)、`pms_app`(アプリ)、`pms_app_example`(アプリ)、`access_control`(パッケージ)、`access_control/example`(example)、`announcement`(パッケージ)、`announcement/example`(example)、`approval`(パッケージ)、`approval/example`(example)、`app_core`(パッケージ)、`app_core/example`(example)、`auth_files`(パッケージ)、`auth_files/example`(example)、`backstage`(パッケージ)、`backstage/example`(example)、`barcode_entry`(パッケージ)、`barcode_entry/example`(example)、`cost`(パッケージ)、`cost/example`(example)、`dashboard_container`(パッケージ)、`document_settings`(パッケージ)、`document_settings/example`(example)、`item`(パッケージ)、`item/example`(example)、`maintenance`(パッケージ)、`maintenance/example`(example)、`manual`(パッケージ)、`manual/example`(example)、`organization`(パッケージ)、`organization/example`(example)、`plan_change`(パッケージ)、`plan_change/example`(example)、`production_plan`(パッケージ)、`production_plan/example`(example)、`production_process`(パッケージ)、`production_process/example`(example)、`purchasing`(パッケージ)、`purchasing/example`(example)、`quality`(パッケージ)、`quality/example`(example)、`quality_common`(パッケージ)、`quality_common/example`(example)、`quality_document`(パッケージ)、`quality_document/example`(example)、`resource`(パッケージ)、`resource/example`(example)、`sales`(パッケージ)、`sales/example`(example)、`shared_master`(パッケージ)、`shared_master/example`(example)、`system`(パッケージ)、`system/example`(example)、`user_profile`(パッケージ)、`user_profile/example`(example)、`work_record`(パッケージ)、`work_record/example`(example)

### 2.2 依存先(ワークスペース内)

`app_shell`、`baton_lib`、`selection_result`、`logger_provider`、`settings_keeper`、`entity_screens`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `BackstageValues` | クラス | アプリケーションの裏設定の値(読む側の窓口)。実体は裏設定の機能(`backstage`)が差し込む。 |
| FR-02 | `backstageValuesProvider` | Riverpod プロバイダ | 裏設定の値。既定はすべて未指定。アプリが `backstage` の実体で上書きする。 |
| FR-03 | `IBackstageEntryGate` | インターフェイス | 裏設定へ入る条件の判定(ログインページが呼ぶ)。実体は `backstage` が差し込む。 |
| FR-04 | `NoBackstageEntryGate` | クラス | 入口を持たない既定(常に一致しない)。 |
| FR-05 | `backstageEntryGateProvider` | Riverpod プロバイダ |  |
| FR-06 | `appNameProvider` | Riverpod プロバイダ | アプリの名前(画面の見出しに入れる。例: 「{アプリ名}にサインイン」)。 |
| FR-07 | `userImageSlotProvider` | Riverpod プロバイダ | 設定画面に置く「ユーザーの画像」の部品(`user_profile` の `MyImagePanel`)の差し込み口。 |
| FR-08 | `BusyState` | クラス | 長時間の処理中の状態。処理中は、画面全体の操作と戻る操作を無効にする。 |
| FR-09 | `busyProvider` | Riverpod プロバイダ | 長時間の処理(例: 資材所要計算)の状態。処理は [BusyNotifier.run] で包む。 |
| FR-10 | `BusyNotifier` | クラス |  |
| FR-11 | `BusyScope` | クラス | 処理中([busyProvider])のあいだ、[child] 全体を覆って操作を無効にする。 |
| FR-12 | `commandBusProvider` | Riverpod プロバイダ | 機能パッケージが命令を渡す窓口。 |
| FR-13 | `dashboardAlertSlotProvider` | Riverpod プロバイダ | ダッシュボードの上に出す通知(承認待ちなど)の差し込み口。 |
| FR-14 | `EntityListDestination` | クラス | 実体の台帳へ。[entityKey] は実体のキー(例: `unit`)。 |
| FR-15 | `EntityPickerDestination` | クラス | 実体の台帳を開いて 1 件を選び、選択の結果([Selection]: 実体のキー・id・表示名)を返す(取り消しは null)。 |
| FR-16 | `PickAlias` | クラス | 選択の別名。別名のキー(例: `supplier`)で選ぶと、[entityKey] の台帳を [filter] で絞って開く。 |
| FR-17 | `EntityEditDestination` | クラス | 実体の編集へ。[id] が null なら新規。子の台帳の新規は [parentId] に所有する親の id。 |
| FR-18 | `entityFileTransferProvider` | Riverpod プロバイダ | ファイルの項目(`FieldKind.file`)の出し入れ。実体はアプリが差し込む(PocketBase のファイル保存・OS のダイアログ)。 |
| FR-19 | `EntityScreenStringsNotifier` | クラス |  |
| FR-20 | `EntityFeatureModule` | 抽象クラス | 実体の定義から台帳・編集の画面を提供する機能の土台。 |
| FR-21 | `entityNewDefaultsProvider` | Riverpod プロバイダ | 実体の新規登録の画面で、項目の初期値にする値(実体のキー → {項目のキー: 値})。既定は何も入れない。 |
| FR-22 | `FeatureHostEntry` | クラス | 例題(example)の1行。押すと [destination] へ CommandBus 経由で遷移する。 |
| FR-23 | `FeatureHost` | クラス | 機能パッケージを単体で確認するための最小のアプリ(Windows 向けの example 用)。 |
| FR-24 | `FeatureModule` | インターフェイス | 機能パッケージがアプリへ提供する組み込み口。 |
| FR-25 | `GoRouterDestinationNavigator` | クラス | baton_lib の [DestinationNavigator] を GoRouter で実装する(Adapter)。 |
| FR-26 | `localeProvider` | Riverpod プロバイダ | アプリが使う言語。各機能は多言語(slang)の文字列を選ぶために `ref.watch` する。 |
| FR-27 | `LocaleNotifier` | クラス |  |
| FR-28 | `LocaleFollowsSystemNotifier` | クラス |  |
| FR-29 | `SystemLocaleNotifier` | クラス | 初期値を OS(実行環境)の言語にする [LocaleNotifier]。アプリが `localeProvider` へ override する。 |
| FR-30 | `MenuEntry` | クラス | トップメニューの1項目。機能が提供し、アプリが集めてサイドバー・ハンバーガーメニューにする。 |
| FR-31 | `TopLevelDestination` | クラス | [inner] を、積み重ねずに枠の中の画面として開く遷移先(メニューの項目用)。 |
| FR-32 | `MenuContributor` | インターフェイス | トップメニューの項目を提供する機能。[FeatureModule] と合わせて実装する(任意)。 |
| FR-33 | `UserSummary` | クラス | ログインユーザーの表示用の情報。実体は AppCore(ログイン・設定)が提供し、 |
| FR-34 | `UserSummaryRequest` | クラス | ログインの直後に、表示用のユーザー情報を作るための入力。 |
| FR-35 | `UserSummaryResolver` | 型の別名 | 表示用のユーザー情報(名前と所属など)を作る関数。ログインの直後に呼ばれる。 |
| FR-36 | `userSummaryResolverProvider` | Riverpod プロバイダ |  |
| FR-37 | `userPhotoProvider` | Riverpod プロバイダ | ログインユーザーの顔写真。設定画面の大きなユーザーパネルが使う。既定は写真なし(名前の頭文字)。 |
| FR-38 | `userSummaryProvider` | Riverpod プロバイダ | ログインユーザーの表示用の情報。標準値([standard])から始まり、設定画面で変更できる。 |
| FR-39 | `UserSummaryNotifier` | クラス |  |
| FR-40 | `operationsMenuGroupLabel` | 関数 | [operationsMenuGroupId] の表示名(言語ごと。基準言語は日本語)。 |
| FR-41 | `systemMenuGroupLabel` | 関数 | [systemMenuGroupId] の表示名(言語ごと。基準言語は日本語)。 |
| FR-42 | `moneyFormatProvider` | Riverpod プロバイダ | 金額(`FieldDefinition.money`)の通貨の表示(記号と位置。言語ごと)。既定は日本円(日本語は「1,200 円」、英語は「¥1,200」)。 |
| FR-43 | `sidebarIconOnlyProvider` | Riverpod プロバイダ | サイドバーをアイコンだけにする設定(使用ユーザーにだけ影響する設定)。 |
| FR-44 | `SidebarIconOnlyNotifier` | クラス |  |
| FR-45 | `CalendarFirstWeekdayNotifier` | クラス |  |
| FR-46 | `CalendarVisibleWeekdaysNotifier` | クラス |  |
| FR-47 | `ExtraFieldLabels` | クラス | 生成された表示名([base])に、手書きの行の操作などの項目名([extra])を足す(Decorator)。 |
| FR-48 | `withRowAction` | 関数 | 実体の定義に、行の操作を 1 つ足した定義を返す(生成された定義は直接編集しない)。 |
| FR-49 | `withReverseList` | 関数 | 実体の定義に、関連する実体の一覧を 1 つ足した定義を返す(編集画面の下に出す。[ReverseList.editable] なら追加・編集もできる)。 |
| FR-50 | `withFields` | 関数 | 実体の定義の項目(または関連する実体の一覧)だけを入れ替えた定義を返す(例: 台帳の列から項目を外す)。 |

ほかのパッケージの公開面を再公開する: `baton_lib`、`selection_result`。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | `loggerProvider` を使う |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/feature_shared.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 2 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 1 件、テストケース 2 件。

- `test/busy_test.dart`
  - run: 実行中だけ処理中になり、終わると(失敗しても)戻る。二重には実行しない
  - 処理中は、画面全体の操作と戻る操作が無効になり、経過時間が進む

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
