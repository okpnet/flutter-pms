# theme_lib ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

theme_lib: 機能共通のテーマ管理(システム/ライト/ダーク切替、JSONの取り込み・書き出し)。

この`theme_lib`ライブラリは、機能毎のページデザインを統一するためにテーマを提供し、システム、ダーク、ライトの切り替え、有効な構造をもつJSONファイルからテーマを追加できる機能を提供します。 `Riverpod`へ管理インスタンスを登録し、管理インスタンスを取得後に切り替え、取り込みなどの管理テーマの切り替えはオンザフライが可能です。 アプリケーションを使用するユーザーが、任意の方法（画面から、またはJSONを直接）でカラーやフォントなどテーマを変更できるようにするため、テーマのエクスポート、インポート、インスタンスの変更を可能にします。変更されたテーマは直ちに反映されます。

### 1.2 範囲

- 場所: `packages/ui/theme_lib`(ui(UI 基盤))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`entry_app`(アプリ)、`pms_app`(アプリ)、`pms_app_example`(アプリ)、`access_control/example`(example)、`announcement`(パッケージ・テスト用)、`announcement/example`(example)、`approval`(パッケージ・テスト用)、`approval/example`(example)、`app_core`(パッケージ)、`app_core/example`(example)、`auth_files`(パッケージ・テスト用)、`auth_files/example`(example)、`backstage`(パッケージ・テスト用)、`backstage/example`(example)、`barcode_entry/example`(example)、`cost/example`(example)、`dashboard_container`(パッケージ・テスト用)、`dashboard_container/example`(example)、`document_settings`(パッケージ・テスト用)、`document_settings/example`(example)、`item/example`(example)、`maintenance`(パッケージ・テスト用)、`maintenance/example`(example)、`manual`(パッケージ・テスト用)、`manual/example`(example)、`organization`(パッケージ・テスト用)、`organization/example`(example)、`plan_change/example`(example)、`production_plan`(パッケージ・テスト用)、`production_plan/example`(example)、`production_process/example`(example)、`purchasing/example`(example)、`quality/example`(example)、`quality_common/example`(example)、`quality_document/example`(example)、`resource/example`(example)、`sales`(パッケージ・テスト用)、`sales/example`(example)、`shared_master`(パッケージ・テスト用)、`shared_master/example`(example)、`system/example`(example)、`user_profile/example`(example)、`work_record`(パッケージ・テスト用)、`work_record/example`(example)、`entity_screens`(パッケージ・テスト用)、`flgtable_lib`(パッケージ)、`flgtable_lib/example`(example)

### 2.2 依存先(ワークスペース内)

`loadux_lib`、`logger_provider`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `ThemeBuilder` | クラス | [ThemeDefinition] から [ThemeData] を組み立てる。 |
| FR-02 | `TextColorStyleMode` | 列挙型 | テキストの色・状態パターン |
| FR-03 | `ThemeVariant` | 列挙型 | ボタンやチェックボックスの見た目の種類。 |
| FR-04 | `filledButtonStyle` | 関数 | [theme] のボタンテーマを土台に、[variant] の見た目を重ねる。 |
| FR-05 | `iconButtonStyle` | 関数 | [filledButtonStyle]のIconButton版。 |
| FR-06 | `checkboxVariantTheme` | 関数 |  |
| FR-07 | `ThemeAssets` | クラス | このライブラリに入っている、追加のテーマのJSONファイル(アセット)。 |
| FR-08 | `ThemeAssetFailure` | クラス | アセットから取り込めなかったテーマ。 |
| FR-09 | `importBundledThemes` | 関数 | 追加のテーマ([ThemeAssets.all])を取り込む。アプリの起動時に1回呼ぶ。 |
| FR-10 | `themeLoggerProvider` | Riverpod プロバイダ | アプリ全体で共通のロガー。アプリ側が`overrideWithValue`で実体を差し込む。 |
| FR-11 | `themeManagerProvider` | Riverpod プロバイダ | テーマの管理インスタンス。切り替え・取り込み・書き出しはすべてオンザフライ。 |
| FR-12 | `themeModeProvider` | Riverpod プロバイダ | システム/ライト/ダークの選択。`MaterialApp.themeMode`へ渡す。 |
| FR-13 | `activeThemeProvider` | Riverpod プロバイダ | 適用中のテーマ定義。内容が変わったときだけ通知される。 |
| FR-14 | `lightThemeProvider` | Riverpod プロバイダ | `MaterialApp.theme`へ渡す。 |
| FR-15 | `darkThemeProvider` | Riverpod プロバイダ | `MaterialApp.darkTheme`へ渡す。 |
| FR-16 | `ThemeManager` | クラス | テーマの登録・切り替え・取り込み・書き出しを行う。 |
| FR-17 | `ThemePalette` | クラス | 1つのブライトネス（ライト/ダーク）の配色。 |
| FR-18 | `ThemeMetrics` | クラス | 余白・角丸・線幅・ボタン寸法などの数値（論理ピクセル）。 |
| FR-19 | `ThemeDefinition` | クラス | 1つのテーマの定義。JSONへ書き出し・JSONから取り込みができる。 |
| FR-20 | `colorToHex` | 関数 | `#RRGGBB`（不透明）または `#AARRGGBB` の大文字表記へ変換する。 |
| FR-21 | `ThemeLibException` | クラス | theme_lib が投げる例外の基底。 |
| FR-22 | `ThemeFormatException` | クラス | テーマJSONの構造・値が不正。[path] は不正箇所（例: `light.seedColor`）。 |
| FR-23 | `ThemeNotFoundException` | クラス | 指定した id のテーマが登録されていない。 |
| FR-24 | `ThemeProtectedException` | クラス | 組み込みテーマなど、削除できないテーマへの操作。 |
| FR-25 | `ThemeState` | クラス | テーマ管理の状態。不変。 |
| FR-26 | `AppColors` | クラス | `ColorScheme` に収まらない、画面案(`tools/open-design`)の独自の色。 |
| FR-27 | `BorderField` | クラス | 角丸と線幅の標準値を [ThemeData] に載せる拡張。 |
| FR-28 | `SpaceField` | クラス | 余白の標準値を [ThemeData] に載せる拡張。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **一般**: この`theme_lib`ライブラリは、機能毎のページデザインを統一するためにテーマを提供し、システム、ダーク、ライトの切り替え、有効な構造をもつJSONファイルからテーマを追加できる機能を提供します。
- **既定のテーマ(画面案のデザイン)**: 組み込みの先頭(`id: default`、`openDesignTheme`)は、画面案(`flutter-pms/tools/open-design`)のデザイントークンと同じ値にする。正本は `design/theme.md`・`flutter/app_theme.dart`・`styles.css`。画面案の値を変えたら、ここも同じ値に直す。ライトと…
- **追加のテーマ(外部のJSONファイル)**: `ocean`・`forest`・`rose` は組み込みではなく、このライブラリの外部のJSONファイル(`themes/ocean.json`・`themes/forest.json`・`themes/rose.json`、アセット)として持つ。組み込みは既定の1つだけ(削除できない)。
- **実際の実装状態**: `example`以下にthemeの機能を使用した状態として、全ての機能を適用した状態のサンプルアプリケーションを作成する。
- **使用方法**: この`theme_lib`の使用方法を`doc/contents`に`usage.md`として、絵文字を使用し、楽しさ30%と真面目さ70%の割合てCALUDEのボキャブラリーの範囲で作成する。理解しやすさの観点から、適用した状態のイメージを[実際の実装状態](#実際の実装状態)から取得し、themeの機能を使用した状態として外観の変化がある1項目につき1つ…
- **使用パッケージ**: 使用して良いパッケージ

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/theme_lib.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 46 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 5 件、テストケース 46 件。

- `test/external_themes_test.dart`
  - $id: 取り込め、ライトとダークの両方が揃い、全項目が指定されている
  - $id: 文字は 4.5:1 以上、枠は背景に対して 3:1 以上(ライト・ダーク)
  - AppColors: ColorScheme の色から作り、フォーカスだけ個別に指定できる
  - AppColors: 指定が無いとフォーカスは主色。lerp と copyWith
  - ThemeExtension が無いテーマでは分かりやすいエラー
  - 文字の大きさは画面案の 28 / 20 / 16 / 14 / 12
  - フォントは OS のフォントだけ(同梱しない。Noto Sans JP は使わない)
  - ThemeAssets の全ファイルを登録する。適用中のテーマは変えない
  - 読めないファイル・不正なJSONがあっても残りを取り込み、失敗を返す
  - 同じテーマを何度取り込んでも1つ(置き換え)
  - 組み込みテーマは既定の1つ。削除できない
- `test/open_design_theme_test.dart`
  - 既定のテーマは画面案の配色(ライト)
  - 既定のテーマは画面案の配色(ダーク。ライトの自動変換ではなく独立した値)
  - 角丸・タップ領域・線幅・フォントは画面案の値
  - エラー表示の色: 丸いアイコンは danger-soft の地に danger、ダークでも読める
  - 文字のコントラストは 4.5:1 以上、枠は背景に対して 3:1 以上
  - 既定のテーマはJSONに書き出して読み直すと同じ(新しい色名・cardRadiusを含む)
  - cardRadius を省略したテーマは、カードの角丸が radius と同じ(従来どおり)
  - 取り込むJSONで、背景などの新しい色も指定できる。未知の色名は拒否
- `test/theme_definition_test.dart`
  - 最小構成を読み、省略値は既定値になる
  - 書き出して読み直すと同じ(全項目)
  - 不透明色は#RRGGBB、半透明は#AARRGGBBで書き出す
  - toJson は schemaVersion を含みJSONエンコードできる
  - 不正: $title
- `test/theme_manager_test.dart`
  - 初期状態はシステム設定+組み込みの先頭テーマ
  - ロガー未設定なら分かりやすいエラー
  - モード切り替えが themeModeProvider に反映される
  - select でオンザフライに切り替わり、テーマの見た目が変わる
  - ライトとダークで明るさが異なる
  - モード変更では ThemeData を再生成しない
  - JSON取り込みで登録され、既定では適用される
  - activate:false なら登録のみ
  - 書き出したJSONを取り込み直すと同じ定義
  - 同じ id の取り込みは置き換え(インスタンスの変更)
  - 不正なJSONは例外+エラーログ、状態は変わらない
  - 未登録 id の select/export は ThemeNotFoundException
  - 組み込みテーマは削除できない
  - 適用中のテーマを削除すると先頭の組み込みテーマへ戻る
  - 状態と例外はJSON化できる
- `test/theme_widgets_test.dart`
  - モード切り替えで画面の明るさが変わる
  - テーマ切り替えがウィジェットへ即時反映される
  - spaceAll/spaceVertical が SpaceField の値で Padding になる
  - ボタンのバリアント: secondary は枠線あり・影なし(土台に負けない)
  - バリアント変換したボタンが描画できる
  - ThemeExtension が無いテーマでは分かりやすいエラー
  - SpaceField / BorderField の lerp と copyWith

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
