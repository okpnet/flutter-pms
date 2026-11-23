# document_settings

承認スタンプ・PDF の設定(`info_app.settings` の `stamp`・`pdf`)の編集画面。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。仕様の経緯は `issue/202611.md#20261121_0001`(リポジトリのルート)。
契約(遷移先の型)は `lib/document_settings_api.dart`(`DocumentSettingsDestination`)。実装の入口 `lib/document_settings.dart` はアプリだけが読み込む。

## 画面(`/auth/admin/document-settings`。`DocumentSettingsPage`)
パスが `/auth/admin/…` のため、アプリは管理者だけが開ける画面として扱う(`pms_app` の `isAdminOnlyPath`)。画面の中でも、変更できるのは管理者だけ(`documentSettingsIsAdminProvider`。それ以外は入力を受け付けず、「管理者だけが変更できます。」を表示)。
1.  **左**: タブ 4 つ(承認スタンプ・PDF・パターン別のスタンプ・JSON)。
    1.  **承認スタンプ**: 位置(基準・左右/上下の距離・出すページ。既定は右上・10mm)、見た目(重ね方(透かし = 本文の後ろ(既定)/本文の前)・すかし・形・大きさ・回転・色)、内容(文字の言語・段の並べ方・表示項目の追加/削除/書式/大きさ/行)、承認待ちの見た目。
    1.  **PDF**: 用紙(大きさ・向き・余白)、テーマ(変数・フォント・色・見出し・H1 の改ページ)、ヘッダ・フッタ(出す・高さ・大きさ・色・線・1 ページ目・左/中央/右の書式)、使える変数のボタン(押すと、最後に選んだ書式の欄へ `{変数}` を入れる)、利用者の変数(`{var.名前}`)。
    1.  **パターン別のスタンプ**(`PatternStyleForm`): 承認パターンごとのスタンプの様式(`mstr_approval_pattern.stamp_style`)の編集。パターンを選び、「標準の様式を使う」(NULL。専用の様式を持たない)か、標準に重ねる様式(JSON。**書いた項目だけ**が標準を上書きする。`items` は書いたとき全体を置き換える)を書く。JSON はスキーマ(`approval_stamp` の `validateStampStyle`。設定の `stamp` と同じ形で、すべて省略できる)で検査し、誤り(場所は様式の中の `/position/anchor`)・読めない JSON・オブジェクト以外は、示して保存しない。下に、標準(いまの編集中の設定)に重ねた結果のプレビューを出す(書いている途中も、読めて検査に通る間は反映)。**保存は設定の「保存」とは別**で、このタブの「このパターンに保存」が取得元(`IApprovalPatternSource.saveStampStyle`)へ直接書く(更新者つき。DB でも管理者だけ: トリガー `trg_00_admin_only_stamp_style`。失敗したら案内を出す)。「保存済みに戻す」で入力を保存済みの様式に戻す。標準に戻すときは、キーを残したまま null を送る(省略すると変わらない)。manual の承認の状態の取得元が、この値を承認スタンプ・PDF の様式に使う(`manual` の CLAUDE.md)。
    1.  **JSON**: 設定の JSON を直接直して「反映」、または JSON ファイルから「取り込む」。どちらも、取り込む前にスキーマ(`approval_stamp` の `validateAppSettings`)で検査し、誤りがあれば場所つきの一覧(`/stamp/position/anchor: …`)を出して、**何も取り込まない**(JSON として読めないときも同じ)。通れば、フォームとプレビューに入り、未保存になる(取り込んだだけでは保存しない。内容を確かめて「保存」)。BOM つきの UTF-8 も読める。ファイルの選び方は窓口 `documentSettingsFilePickerProvider`(`ISettingsFilePicker`。既定は OS のダイアログ。テストは差し替える)。取り込む JSON は、設定全体(欠けた項目は標準)。見本は `doc/contents/app_settings.sample.json`(標準の設定。承認パターンは null)。種類ごとの標準の承認パターンは、この設定には持たない(`info_app` の列。会社情報の「承認」で選ぶ)。
1.  **右**: 用紙のプレビュー(`approval_stamp_view` の `StampPagePreview`)。見本の文書(承認済みと承認待ちの 2 段)で、スタンプの位置・ヘッダ/フッタの展開結果を 1 ページ目/2 ページ目で見る。フォームの変更がすぐ反映される。
1.  **保存・元に戻す・標準に戻す**: 保存は設定全体(`AppSettings.toJson`。知らないキーも保つ)を取得元へ。未保存の変更があるときは帯を出す。標準に戻すは、標準の値を入れるだけ(保存はしない)。読み取れない項目は、標準の値で表示し、一覧(問題)に出す。読み込みに失敗したら標準の設定と案内を出す。
1.  メニュー: グループ `quality_document`(品質管理文書)に「承認スタンプ・PDF の設定」。アクセスパスは `apps/pms_app/doc/contents/access_paths.csv`、機能コードは `D`・画面コード `S`(`packages/features/doc/page_code_list.yml`)。

## 構成
| 場所 | 内容 |
|---|---|
| `lib/src/data/settings_draft.dart` | 取得元(`IAppSettingsGateway`・メモリ上の `InMemoryAppSettingsGateway`)、編集中の設定(`settingsDraftProvider`。JSON を直接直す)、`savedAppSettingsProvider`(保存されている設定。ほかの機能が使う。保存すると読み直す) |
| `lib/src/data/settings_file_picker.dart` | 設定の JSON ファイルを選ぶ窓口(`ISettingsFilePicker`・`PlatformSettingsFilePicker`) |
| `lib/src/data/approval_pattern_source.dart` | 承認パターンの取得元(パターン別のスタンプが使う)(`IApprovalPatternSource`・メモリ上の `InMemoryApprovalPatternSource`・`approvalPatternOptionsProvider`) |
| `lib/src/graphql/graphql_approval_pattern_source.dart` | GraphQL 版(`document_approval_model` の `ApprovalPatternStylePage`・`ApprovalPatternStylePageEdit`。様式の読み書き) |
| `lib/src/graphql/graphql_app_settings_gateway.dart` | GraphQL 版の取得元(`document_approval_model` の `AppSettingsPage`・`AppSettingsPageEdit`。更新者つき) |
| `lib/src/page/` | 画面・フォームの入力欄(`form_fields.dart`)・パターン別のスタンプ(`pattern_style_form.dart`)・用紙のプレビュー(`settings_preview.dart`。右とパターン別のタブが使う)・`DocumentSettingsModule`・パス・遷移先 |
| `lib/src/i18n` | slang(`ja` が基準、`en`)。YAML の値に `$` を書かない(slang の補間になる) |

## 実装の指針
1.  アプリが差し込むもの: `documentSettingsGatewayProvider`(GraphQL に接続するときは `GraphqlAppSettingsGateway`)、`documentSettingsPatternSourceProvider`(パターン別のスタンプの承認パターンの一覧・様式の保存。GraphQL に接続するときは `GraphqlApprovalPatternSource`)、`documentSettingsIsAdminProvider`(認証の結果)。`pms_app` の `manualOverrides` が行う。`manual` の PDF の設定(`manualAppSettingsProvider`)は `savedAppSettingsProvider` から取る(設定画面で保存すると、次の PDF から反映)。
1.  設定の JSON の形・書式・既定は `packages/foundation/approval_stamp`(`AppSettings`)。DB の既定値は `06_cteate_test.sql` の `info_app.settings`。
1.  設定の書き込みは、画面だけでなく DB でも管理者に限る(`trg_00_admin_only_column`。一般ユーザーが `info_app.settings` を変えると errcode `ADM01` で止まり、保存は「保存できませんでした」になる)。

## テスト
`test/document_settings_test.dart`(画面。サーバー不要)、`test/settings_import_test.dart`(JSON ファイルの取り込み・スキーマの検査)、`test/pattern_style_test.dart`(パターン別のスタンプ)、`test/graphql_pattern_source_test.dart`(承認パターンの一覧・様式の保存。偽の通路と、検証用サーバー。サーバーの「変更する」テストは、様式を保存して読み直したあと元の値に戻す。管理者の資格情報で実行する)、`test/graphql_gateway_test.dart`(取得元。偽の通路で問い合わせと変数を確認。サーバー不要)、`example/test/widget_test.dart`。`example`(Windows 向け。`flutter run -d windows`)。

## 規則/仕様
`packages/features/CLAUDE.md` の規則に従う(ディレクトリ/ファイル・命名・バレルファイル・JSON 化・ログ・GoF)。
