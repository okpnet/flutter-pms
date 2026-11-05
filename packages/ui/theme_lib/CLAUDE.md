# theme_lib
## 一般
この`theme_lib`ライブラリは、機能毎のページデザインを統一するためにテーマを提供し、システム、ダーク、ライトの切り替え、有効な構造をもつJSONファイルからテーマを追加できる機能を提供します。
`Riverpod`へ管理インスタンスを登録し、管理インスタンスを取得後に切り替え、取り込みなどの管理テーマの切り替えはオンザフライが可能です。
アプリケーションを使用するユーザーが、任意の方法（画面から、またはJSONを直接）でカラーやフォントなどテーマを変更できるようにするため、テーマのエクスポート、インポート、インスタンスの変更を可能にします。変更されたテーマは直ちに反映されます。

##  規則/仕様
1.  ディリクトリ/ファイル
    1.  生成結果のレポートは`doc/log`ディリクトリにファイル名`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  同じ年月日、同じ番号に対する追加変更は`年月日_4桁ゼロ埋の番号_add_1からの連番.md`として保存する。
    2.  生成したライブラリに関する使い方やヘルプなどの使用にかかわるレポートは`doc/contents`の保存する。
    3.  最終的にこの`CLAUDE.md`へ統合される追加、変更の指示は`issue`ディリクトリに`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  つまり`生成結果のレポート`と連動する。
        2.  `CLAUDE.md`への統合も指示に含める。統合時、削除指示が無い限り`issue`ディリクトリ`doc/log`ディリクトリの中を削除しない。`CLAUDE.md`には変更や追加、削除であることについて記録しない(生成時に`issue`ディリクトリ`doc/log`ディリクトリを参照するため)。
    4.  細分化した機能別に`lib/`以下のディリクトリを2階層を限度(`lib/xxx/xxx`)として分ける。細分化の程度は、2階層になる程度の抽象度とする。
        1.  細分化する機能が少ない(5以下)のとき、1階層で良い(`lib/xxx`)。
2.  命名規則
    1.  ファイル名、クラス名など名前付けのルールはFlutterの規則、慣例に従う。
    2.  クラス名はデザインパターンがわかる、または意味が通る英語の名詞とする。ただし、`はい/いいえ`のような`isXxxx`などの`is/as/has`の慣例を優先する。
        1.  `Command`などデザインパターンのみの名前だと誤解や衝突を招くため、機能、動きの名詞化したものと組み合わせる。
    3.  プリフィクスにライブラリ名をつけない(BatonLibXXのような)。
3.  バレルファイルを使用する
    1.  バレルファイルにまとめ、このライブラリを使用する側は1行を読み込むだけで解決できるようにする。ただし、相互に関連が無い独立した機能の場合はバレルファイルを分けて、仕様側が機能に応じて選択できるようにする(例えば、ファイル参照機能と計算機能があり、計算機能がファイル参照を行わない場合は別々にする)。ただし、 ユーザーの仕様体験を優先する。ライブラリ全体の機能が少ない(10以下)ときにインポートするファイルを分ける必要はない。
4.  インスタンスのJSON化
    1.  生成するこのライブラリのインターフェイス、クラスのインスタンスをJSONにコンバートできる。ただし、エラー追跡のためであり、現時点で機能を復元する目的では使用しない。
5.  ログを残す
    1.  ライブラリは実行したときのログを残す。ただし、このライブラリ側のエラーログがけを残し、実行側のアプリケーションがどの実行でエラーが発生したか調査するとき、機能毎のライブラリ側なのかを切り分け可能にするために、適切に選別する。
    2. ロガーはRiverpodから提供され、アプリケーション全体をとおして同じ仕様のログ出力を行う。

##  既定のテーマ(画面案のデザイン)
組み込みの先頭(`id: default`、`openDesignTheme`)は、画面案(`flutter-pms/tools/open-design`)のデザイントークンと同じ値にする。正本は `design/theme.md`・`flutter/app_theme.dart`・`styles.css`。画面案の値を変えたら、ここも同じ値に直す。ライトとダークは、それぞれ独立に調整した配色(ダークはライトの自動変換ではない)。
1.  色(ライト / ダーク)

    | 画面案のトークン | ColorScheme の色 | ライト | ダーク |
    |---|---|---|---|
    | `--bg` | 画面の地(`background` → `scaffoldBackgroundColor`) | `#F2F5F6` | `#0E171D` |
    | `--surface` | `surface` | `#FFFFFF` | `#16232B` |
    | `--ink` | `onSurface` | `#12202A` | `#E8EFF2` |
    | `--accent` | `primary`(seed も同じ) | `#0B6B6F` | `#5CC3C6` |
    | `--accent-ink` | `onPrimary` | `#FFFFFF` | `#062A2C` |
    | `--accent-soft` | `primaryContainer`(`onPrimaryContainer` は accent) | `#DCEFEF` | `#1B3F43` |
    | `--danger` | `error`(`onError` は accent-ink と同じ) | `#B3261E` | `#FF8A80` |
    | `--danger-soft` | `errorContainer`(`onErrorContainer` は danger) | `#FBE3E1` | `#4A1F1D` |
    | `--surface-2` | `surfaceContainerHighest` | `#EAF0F1` | `#1E2F39` |
    | `--muted` | `onSurfaceVariant` | `#4F5E69` | `#A5B4BD` |
    | `--line` | `outlineVariant`(カード・区切りの罫線) | `#D3DCE1` | `#2D4250` |
    | (入力欄・ボタンの枠) | `outline`。罫線より濃くして背景との差を 3:1 以上にする | `#7C8B96` | `#5B7384` |
    | `--seg-2` / `--seg-3` | `secondary` / `tertiary` | `#3B78A8` / `#7B8895` | `#7DB4E0` / `#98A6B2` |
    | `--focus` | `focus`(フォーカスリング。`focusColor` と `AppColors.focus`) | `#1A5FD0` | `#8AB4FF` |
1.  数値: 角丸 8(ボタン・入力。`radius`)、12(カード・ダイアログ・シート。`cardRadius`)、タップ領域 44x44(`buttonHeight`・`buttonWidth`・`iconButtonSize`)、罫線 1・フォーカス 2、ボタンの影なし。余白は 4 刻み。
1.  文字: 画面案の大きさ(headlineMedium 28/太字/行高 1.3、titleLarge 20/太字/1.4、titleMedium 16/太字、bodyLarge 16/1.6、bodyMedium 14/1.6、labelSmall 12/太字)を、すべてのテーマに適用する(`ThemeBuilder`)。色は `ColorScheme` に従う。
1.  フォント: **OS に入っているフォントだけを使い、フォントは同梱しない。** 日本語の代替を `ThemeBuilder.fontFamilyFallback`(Hiragino Sans → Yu Gothic UI → Meiryo)として、すべてのテーマに付ける。`fontFamily` を指定した場合は、それが先。画面案の Noto Sans JP は同梱しないため使わない。同梱が必要になったときは、メイリオにする。
1.  部品の見た目: 面は影ではなく罫線で区切る(カードは影なし+`outlineVariant` の罫線、タイトルバーは下に罫線、ダイアログ・シートは `cardRadius`)。チップ・ナビゲーションの選択中は `primaryContainer`。これらはすべてのテーマに共通(`ThemeBuilder`)。`cardRadius` を省略したテーマは、カードの角丸が `radius` と同じ。
1.  `AppColors`(`ThemeExtension`。`Theme.of(context).extension<AppColors>()` または `AppColors.of(theme)`): `ColorScheme` に収まらない画面案の色を持つ。すべてのテーマで `ThemeBuilder` が `ColorScheme` から作る(`surface2`=surfaceContainerHighest、`muted`=onSurfaceVariant、`line`=outlineVariant、`accentSoft`=primaryContainer、`seg1/2/3`=primary/secondary/tertiary、`focus`=色の個別指定 `focus`、無ければ primary)。区分の色は色だけで伝えず、ラベルや数値を併記する。
1.  色の個別上書き(`light.colors`・`dark.colors`)に使える名前: `primary` `onPrimary` `primaryContainer` `onPrimaryContainer` `secondary` `onSecondary` `tertiary` `onTertiary` `error` `onError` `errorContainer` `onErrorContainer` `surface` `background` `onSurface` `surfaceContainerHighest` `onSurfaceVariant` `outline` `outlineVariant` `focus`。
1.  コントラスト: 文字は 4.5:1 以上、枠は背景に対して 3:1 以上(`test/open_design_theme_test.dart`・`test/external_themes_test.dart` が確認する)。区分や状態は色だけで伝えない。

##  追加のテーマ(外部のJSONファイル)
`ocean`・`forest` は組み込みではなく、このライブラリの外部のJSONファイル(`themes/ocean.json`・`themes/forest.json`、アセット)として持つ。組み込みは既定の1つだけ(削除できない)。
1.  取り込み: `ThemeManager.importAssets(paths, {bundle})`(`ThemeAssets.all` が追加のテーマすべて)。アプリは起動時に、設定の復元より前に呼ぶ。登録だけで、適用中のテーマは変えない。読めない・構造が不正なテーマは、残りを続けて取り込み、失敗の一覧(`ThemeAssetFailure`)を返す(起動を止めない。失敗は `[theme_lib]` 付きでログに残る)。
1.  内容: 既定のテーマと同じ項目をすべて指定し(色の個別上書きの全項目、ライトとダークの両方、数値)、画面案の配色と同じ構造にする。`ocean` は青緑〜青、`forest` は緑を主色にする。中立の色(地・面・文字・罫線・エラー)は既定に近い値で、主色の系統だけが違う。
1.  テーマの中身の編集(色・数値を作る画面)は、別のアプリケーションで行う。このライブラリとアプリは、選ぶ・取り込む・書き出すだけ。
1.  アプリの設定画面(`app_core`)は、登録されているテーマと表示モード(システム・ライト・ダーク)から選ぶ。選んだテーマと表示モードは、ユーザー設定として保存・復元する。保存したテーマが取り込まれていないときは、既定のテーマのまま。
1.  features の `example` は、既定のテーマを使う(`FeatureHost` の `themeOf: lightThemeProvider`・`darkThemeOf: darkThemeProvider`・`themeModeOf: themeModeProvider`)。

##  実際の実装状態
`example`以下にthemeの機能を使用した状態として、全ての機能を適用した状態のサンプルアプリケーションを作成する。

##　使用方法
この`theme_lib`の使用方法を`doc/contents`に`usage.md`として、絵文字を使用し、楽しさ30%と真面目さ70%の割合てCALUDEのボキャブラリーの範囲で作成する。理解しやすさの観点から、適用した状態のイメージを[実際の実装状態](#実際の実装状態)から取得し、themeの機能を使用した状態として外観の変化がある1項目につき1つ以上のイメージを追加する。

##  使用パッケージ
1.  使用して良いパッケージ
    1.  Logger
    2.  BuildRunner(Dev)
    3.  Riverpod
    4.  RiverpodGenerator(Dev)
    5.  その他必要があれば提案しなければならない。
        1.  例えば、このライブラリに適切な`json_theme_plus`など。