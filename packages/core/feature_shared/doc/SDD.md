# feature_shared ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

feature_shared: 機能パッケージとアプリの共通の口(CommandBus の Provider、FeatureModule)。

- 層: core(機能とアプリの仲介・コマンドバス・設定の保存など)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/core/feature_shared` |
| Dart ファイル(生成物を除く) | 17 |
| `lib/src` の分け方 | (分けていない、または `lib/src` が無い) |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `BackstageValues` | クラス | アプリケーションの裏設定の値(読む側の窓口)。実体は裏設定の機能(`backstage`)が差し込む。 | `lib/src/backstage.dart` |
| `backstageValuesProvider` | Riverpod プロバイダ | 裏設定の値。既定はすべて未指定。アプリが `backstage` の実体で上書きする。 | `lib/src/backstage.dart` |
| `IBackstageEntryGate` | インターフェイス | 裏設定へ入る条件の判定(ログインページが呼ぶ)。実体は `backstage` が差し込む。 | `lib/src/backstage.dart` |
| `NoBackstageEntryGate` | クラス | 入口を持たない既定(常に一致しない)。 | `lib/src/backstage.dart` |
| `backstageEntryGateProvider` | Riverpod プロバイダ |  | `lib/src/backstage.dart` |
| `appNameProvider` | Riverpod プロバイダ | アプリの名前(画面の見出しに入れる。例: 「{アプリ名}にサインイン」)。 | `lib/src/app_name.dart` |
| `userImageSlotProvider` | Riverpod プロバイダ | 設定画面に置く「ユーザーの画像」の部品(`user_profile` の `MyImagePanel`)の差し込み口。 | `lib/src/user_image_slot.dart` |
| `BusyState` | クラス | 長時間の処理中の状態。処理中は、画面全体の操作と戻る操作を無効にする。 | `lib/src/busy.dart` |
| `busyProvider` | Riverpod プロバイダ | 長時間の処理(例: 資材所要計算)の状態。処理は [BusyNotifier.run] で包む。 | `lib/src/busy.dart` |
| `BusyNotifier` | クラス |  | `lib/src/busy.dart` |
| `BusyScope` | クラス | 処理中([busyProvider])のあいだ、[child] 全体を覆って操作を無効にする。 | `lib/src/busy.dart` |
| `commandBusProvider` | Riverpod プロバイダ | 機能パッケージが命令を渡す窓口。 | `lib/src/command_bus_provider.dart` |
| `dashboardAlertSlotProvider` | Riverpod プロバイダ | ダッシュボードの上に出す通知(承認待ちなど)の差し込み口。 | `lib/src/dashboard_alert_slot.dart` |
| `EntityListDestination` | クラス | 実体の台帳へ。[entityKey] は実体のキー(例: `unit`)。 | `lib/src/entity_feature_module.dart` |
| `EntityPickerDestination` | クラス | 実体の台帳を開いて 1 件を選び、選択の結果([Selection]: 実体のキー・id・表示名)を返す(取り消しは null)。 | `lib/src/entity_feature_module.dart` |
| `PickAlias` | クラス | 選択の別名。別名のキー(例: `supplier`)で選ぶと、[entityKey] の台帳を [filter] で絞って開く。 | `lib/src/entity_feature_module.dart` |
| `EntityEditDestination` | クラス | 実体の編集へ。[id] が null なら新規。子の台帳の新規は [parentId] に所有する親の id。 | `lib/src/entity_feature_module.dart` |
| `entityFileTransferProvider` | Riverpod プロバイダ | ファイルの項目(`FieldKind.file`)の出し入れ。実体はアプリが差し込む(PocketBase のファイル保存・OS のダイアログ)。 | `lib/src/entity_feature_module.dart` |
| `EntityScreenStringsNotifier` | クラス |  | `lib/src/entity_feature_module.dart` |
| `EntityFeatureModule` | 抽象クラス | 実体の定義から台帳・編集の画面を提供する機能の土台。 | `lib/src/entity_feature_module.dart` |
| `entityNewDefaultsProvider` | Riverpod プロバイダ | 実体の新規登録の画面で、項目の初期値にする値(実体のキー → {項目のキー: 値})。既定は何も入れない。 | `lib/src/entity_new_defaults_provider.dart` |
| `FeatureHostEntry` | クラス | 例題(example)の1行。押すと [destination] へ CommandBus 経由で遷移する。 | `lib/src/feature_host.dart` |
| `FeatureHost` | クラス | 機能パッケージを単体で確認するための最小のアプリ(Windows 向けの example 用)。 | `lib/src/feature_host.dart` |
| `FeatureModule` | インターフェイス | 機能パッケージがアプリへ提供する組み込み口。 | `lib/src/feature_module.dart` |
| `GoRouterDestinationNavigator` | クラス | baton_lib の [DestinationNavigator] を GoRouter で実装する(Adapter)。 | `lib/src/go_router_destination_navigator.dart` |
| `localeProvider` | Riverpod プロバイダ | アプリが使う言語。各機能は多言語(slang)の文字列を選ぶために `ref.watch` する。 | `lib/src/locale_provider.dart` |
| `LocaleNotifier` | クラス |  | `lib/src/locale_provider.dart` |
| `LocaleFollowsSystemNotifier` | クラス |  | `lib/src/locale_provider.dart` |
| `SystemLocaleNotifier` | クラス | 初期値を OS(実行環境)の言語にする [LocaleNotifier]。アプリが `localeProvider` へ override する。 | `lib/src/locale_provider.dart` |
| `MenuEntry` | クラス | トップメニューの1項目。機能が提供し、アプリが集めてサイドバー・ハンバーガーメニューにする。 | `lib/src/menu.dart` |
| `TopLevelDestination` | クラス | [inner] を、積み重ねずに枠の中の画面として開く遷移先(メニューの項目用)。 | `lib/src/menu.dart` |
| `MenuContributor` | インターフェイス | トップメニューの項目を提供する機能。[FeatureModule] と合わせて実装する(任意)。 | `lib/src/menu.dart` |
| `UserSummary` | クラス | ログインユーザーの表示用の情報。実体は AppCore(ログイン・設定)が提供し、 | `lib/src/menu.dart` |
| `UserSummaryRequest` | クラス | ログインの直後に、表示用のユーザー情報を作るための入力。 | `lib/src/menu.dart` |
| `UserSummaryResolver` | 型の別名 | 表示用のユーザー情報(名前と所属など)を作る関数。ログインの直後に呼ばれる。 | `lib/src/menu.dart` |
| `userSummaryResolverProvider` | Riverpod プロバイダ |  | `lib/src/menu.dart` |
| `userPhotoProvider` | Riverpod プロバイダ | ログインユーザーの顔写真。設定画面の大きなユーザーパネルが使う。既定は写真なし(名前の頭文字)。 | `lib/src/menu.dart` |
| `userSummaryProvider` | Riverpod プロバイダ | ログインユーザーの表示用の情報。標準値([standard])から始まり、設定画面で変更できる。 | `lib/src/menu.dart` |
| `UserSummaryNotifier` | クラス |  | `lib/src/menu.dart` |
| `operationsMenuGroupLabel` | 関数 | [operationsMenuGroupId] の表示名(言語ごと。基準言語は日本語)。 | `lib/src/menu.dart` |
| `systemMenuGroupLabel` | 関数 | [systemMenuGroupId] の表示名(言語ごと。基準言語は日本語)。 | `lib/src/menu.dart` |
| `moneyFormatProvider` | Riverpod プロバイダ | 金額(`FieldDefinition.money`)の通貨の表示(記号と位置。言語ごと)。既定は日本円(日本語は「1,200 円」、英語は「¥1,200」)。 | `lib/src/money_format_provider.dart` |
| `sidebarIconOnlyProvider` | Riverpod プロバイダ | サイドバーをアイコンだけにする設定(使用ユーザーにだけ影響する設定)。 | `lib/src/ui_settings.dart` |
| `SidebarIconOnlyNotifier` | クラス |  | `lib/src/ui_settings.dart` |
| `CalendarFirstWeekdayNotifier` | クラス |  | `lib/src/ui_settings.dart` |
| `CalendarVisibleWeekdaysNotifier` | クラス |  | `lib/src/ui_settings.dart` |
| `ExtraFieldLabels` | クラス | 生成された表示名([base])に、手書きの行の操作などの項目名([extra])を足す(Decorator)。 | `lib/src/extra_field_labels.dart` |
| `withRowAction` | 関数 | 実体の定義に、行の操作を 1 つ足した定義を返す(生成された定義は直接編集しない)。 | `lib/src/extra_field_labels.dart` |
| `withReverseList` | 関数 | 実体の定義に、関連する実体の一覧を 1 つ足した定義を返す(編集画面の下に出す。[ReverseList.editable] なら追加・編集もできる)。 | `lib/src/extra_field_labels.dart` |
| `withFields` | 関数 | 実体の定義の項目(または関連する実体の一覧)だけを入れ替えた定義を返す(例: 台帳の列から項目を外す)。 | `lib/src/extra_field_labels.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `BusyScope` | Decorator(アプリ全体のウィジェットに、操作の禁止を足す) | `lib/src/busy.dart` |
| `EntityFeatureModule` | Template Method(画面の流れは土台、実体の中身は継承側が差し込む) | `lib/src/entity_feature_module.dart` |
| `FeatureHost` | Facade(アプリの配線を1つの Widget にまとめる) | `lib/src/feature_host.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `app_shell`、`baton_lib`、`selection_result`、`logger_provider`、`settings_keeper`、`entity_screens`
- 利用元: `entry_app`(アプリ)、`pms_app`(アプリ)、`pms_app_example`(アプリ)、`access_control`(パッケージ)、`access_control/example`(example)、`announcement`(パッケージ)、`announcement/example`(example)、`approval`(パッケージ)、`approval/example`(example)、`app_core`(パッケージ)、`app_core/example`(example)、`auth_files`(パッケージ)、`auth_files/example`(example)、`backstage`(パッケージ)、`backstage/example`(example)、`barcode_entry`(パッケージ)、`barcode_entry/example`(example)、`cost`(パッケージ)、`cost/example`(example)、`dashboard_container`(パッケージ)、`document_settings`(パッケージ)、`document_settings/example`(example)、`item`(パッケージ)、`item/example`(example)、`maintenance`(パッケージ)、`maintenance/example`(example)、`manual`(パッケージ)、`manual/example`(example)、`organization`(パッケージ)、`organization/example`(example)、`plan_change`(パッケージ)、`plan_change/example`(example)、`production_plan`(パッケージ)、`production_plan/example`(example)、`production_process`(パッケージ)、`production_process/example`(example)、`purchasing`(パッケージ)、`purchasing/example`(example)、`quality`(パッケージ)、`quality/example`(example)、`quality_common`(パッケージ)、`quality_common/example`(example)、`quality_document`(パッケージ)、`quality_document/example`(example)、`resource`(パッケージ)、`resource/example`(example)、`sales`(パッケージ)、`sales/example`(example)、`shared_master`(パッケージ)、`shared_master/example`(example)、`system`(パッケージ)、`system/example`(example)、`user_profile`(パッケージ)、`user_profile/example`(example)、`work_record`(パッケージ)、`work_record/example`(example)
- 外部パッケージ: `flutter_riverpod`、`go_router`

## 6. 設計上の決定(`CLAUDE.md` より)

パッケージの `CLAUDE.md` に、個別の決定は書かれていない(ルート・層の `CLAUDE.md` に従う)。

## 7. エラー処理・ログ

- ログは `loggerProvider`(Riverpod)から受け、このライブラリが発生元のエラーだけを残す。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/busy_test.dart`(2)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
