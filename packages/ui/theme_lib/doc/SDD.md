# theme_lib ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

theme_lib: 機能共通のテーマ管理(システム/ライト/ダーク切替、JSONの取り込み・書き出し)。

- 層: ui(UI 基盤)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/ui/theme_lib` |
| Dart ファイル(生成物を除く) | 18 |
| `lib/src` の分け方 | (分けていない、または `lib/src` が無い) |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | 2 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `ThemeBuilder` | クラス | [ThemeDefinition] から [ThemeData] を組み立てる。 | `lib/builder/theme_builder.dart` |
| `TextColorStyleMode` | 列挙型 | テキストの色・状態パターン | `lib/extensions/text_extensions.dart` |
| `ThemeVariant` | 列挙型 | ボタンやチェックボックスの見た目の種類。 | `lib/extensions/theme_variant.dart` |
| `filledButtonStyle` | 関数 | [theme] のボタンテーマを土台に、[variant] の見た目を重ねる。 | `lib/extensions/theme_variant.dart` |
| `iconButtonStyle` | 関数 | [filledButtonStyle]のIconButton版。 | `lib/extensions/theme_variant.dart` |
| `checkboxVariantTheme` | 関数 |  | `lib/extensions/theme_variant.dart` |
| `ThemeAssets` | クラス | このライブラリに入っている、追加のテーマのJSONファイル(アセット)。 | `lib/manager/theme_assets.dart` |
| `ThemeAssetFailure` | クラス | アセットから取り込めなかったテーマ。 | `lib/manager/theme_assets.dart` |
| `importBundledThemes` | 関数 | 追加のテーマ([ThemeAssets.all])を取り込む。アプリの起動時に1回呼ぶ。 | `lib/manager/theme_assets.dart` |
| `themeLoggerProvider` | Riverpod プロバイダ | アプリ全体で共通のロガー。アプリ側が`overrideWithValue`で実体を差し込む。 | `lib/manager/theme_manager.dart` |
| `themeManagerProvider` | Riverpod プロバイダ | テーマの管理インスタンス。切り替え・取り込み・書き出しはすべてオンザフライ。 | `lib/manager/theme_manager.dart` |
| `themeModeProvider` | Riverpod プロバイダ | システム/ライト/ダークの選択。`MaterialApp.themeMode`へ渡す。 | `lib/manager/theme_manager.dart` |
| `activeThemeProvider` | Riverpod プロバイダ | 適用中のテーマ定義。内容が変わったときだけ通知される。 | `lib/manager/theme_manager.dart` |
| `lightThemeProvider` | Riverpod プロバイダ | `MaterialApp.theme`へ渡す。 | `lib/manager/theme_manager.dart` |
| `darkThemeProvider` | Riverpod プロバイダ | `MaterialApp.darkTheme`へ渡す。 | `lib/manager/theme_manager.dart` |
| `ThemeManager` | クラス | テーマの登録・切り替え・取り込み・書き出しを行う。 | `lib/manager/theme_manager.dart` |
| `ThemePalette` | クラス | 1つのブライトネス（ライト/ダーク）の配色。 | `lib/model/theme_definition.dart` |
| `ThemeMetrics` | クラス | 余白・角丸・線幅・ボタン寸法などの数値（論理ピクセル）。 | `lib/model/theme_definition.dart` |
| `ThemeDefinition` | クラス | 1つのテーマの定義。JSONへ書き出し・JSONから取り込みができる。 | `lib/model/theme_definition.dart` |
| `colorToHex` | 関数 | `#RRGGBB`（不透明）または `#AARRGGBB` の大文字表記へ変換する。 | `lib/model/theme_definition.dart` |
| `ThemeLibException` | クラス | theme_lib が投げる例外の基底。 | `lib/model/theme_exceptions.dart` |
| `ThemeFormatException` | クラス | テーマJSONの構造・値が不正。[path] は不正箇所（例: `light.seedColor`）。 | `lib/model/theme_exceptions.dart` |
| `ThemeNotFoundException` | クラス | 指定した id のテーマが登録されていない。 | `lib/model/theme_exceptions.dart` |
| `ThemeProtectedException` | クラス | 組み込みテーマなど、削除できないテーマへの操作。 | `lib/model/theme_exceptions.dart` |
| `ThemeState` | クラス | テーマ管理の状態。不変。 | `lib/model/theme_state.dart` |
| `AppColors` | クラス | `ColorScheme` に収まらない、画面案(`tools/open-design`)の独自の色。 | `lib/tokens/app_colors.dart` |
| `BorderField` | クラス | 角丸と線幅の標準値を [ThemeData] に載せる拡張。 | `lib/tokens/border_field.dart` |
| `SpaceField` | クラス | 余白の標準値を [ThemeData] に載せる拡張。 | `lib/tokens/space_field.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `loadux_lib`、`logger_provider`
- 利用元: `entry_app`(アプリ)、`pms_app`(アプリ)、`pms_app_example`(アプリ)、`access_control/example`(example)、`announcement`(パッケージ・テスト用)、`announcement/example`(example)、`approval`(パッケージ・テスト用)、`approval/example`(example)、`app_core`(パッケージ)、`app_core/example`(example)、`auth_files`(パッケージ・テスト用)、`auth_files/example`(example)、`backstage`(パッケージ・テスト用)、`backstage/example`(example)、`barcode_entry/example`(example)、`cost/example`(example)、`dashboard_container`(パッケージ・テスト用)、`dashboard_container/example`(example)、`document_settings`(パッケージ・テスト用)、`document_settings/example`(example)、`item/example`(example)、`maintenance`(パッケージ・テスト用)、`maintenance/example`(example)、`manual`(パッケージ・テスト用)、`manual/example`(example)、`organization`(パッケージ・テスト用)、`organization/example`(example)、`plan_change/example`(example)、`production_plan`(パッケージ・テスト用)、`production_plan/example`(example)、`production_process/example`(example)、`purchasing/example`(example)、`quality/example`(example)、`quality_common/example`(example)、`quality_document/example`(example)、`resource/example`(example)、`sales`(パッケージ・テスト用)、`sales/example`(example)、`shared_master`(パッケージ・テスト用)、`shared_master/example`(example)、`system/example`(example)、`user_profile/example`(example)、`work_record`(パッケージ・テスト用)、`work_record/example`(example)、`entity_screens`(パッケージ・テスト用)、`flgtable_lib`(パッケージ)、`flgtable_lib/example`(example)
- 外部パッケージ: `flutter_riverpod`

## 6. 設計上の決定(`CLAUDE.md` より)

- **一般**: この`theme_lib`ライブラリは、機能毎のページデザインを統一するためにテーマを提供し、システム、ダーク、ライトの切り替え、有効な構造をもつJSONファイルからテーマを追加できる機能を提供します。
- **既定のテーマ(画面案のデザイン)**: 組み込みの先頭(`id: default`、`openDesignTheme`)は、画面案(`flutter-pms/tools/open-design`)のデザイントークンと同じ値にする。正本は `design/theme.md`・`flutter/app_theme.dart`・`styles.css`。画面案の値を変えたら、ここも同じ値に直す。ライトと…
- **追加のテーマ(外部のJSONファイル)**: `ocean`・`forest`・`rose` は組み込みではなく、このライブラリの外部のJSONファイル(`themes/ocean.json`・`themes/forest.json`・`themes/rose.json`、アセット)として持つ。組み込みは既定の1つだけ(削除できない)。
- **実際の実装状態**: `example`以下にthemeの機能を使用した状態として、全ての機能を適用した状態のサンプルアプリケーションを作成する。
- **使用方法**: この`theme_lib`の使用方法を`doc/contents`に`usage.md`として、絵文字を使用し、楽しさ30%と真面目さ70%の割合てCALUDEのボキャブラリーの範囲で作成する。理解しやすさの観点から、適用した状態のイメージを[実際の実装状態](#実際の実装状態)から取得し、themeの機能を使用した状態として外観の変化がある1項目につき1つ…
- **使用パッケージ**: 使用して良いパッケージ

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/external_themes_test.dart`(11)、`test/open_design_theme_test.dart`(8)、`test/theme_definition_test.dart`(5)、`test/theme_manager_test.dart`(15)、`test/theme_widgets_test.dart`(7)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
