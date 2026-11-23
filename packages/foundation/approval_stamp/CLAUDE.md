# approval_stamp

承認スタンプの様式・PDF のテーマ・ヘッダ/フッタの書式(変数の展開)・配置の計算。画面を持たない純 Dart(`dart test`)。仕様の経緯は `issue/202611.md#20261121_0001`(リポジトリのルート)。

## 設定の置き場所
1.  標準: `info_app.settings`(jsonb。DB の列の既定値が標準値)。`{ "version": 1, "stamp": {…}, "pdf": {…} }`。読み取りは一般ユーザー、書き込みは管理者だけ(画面と、DB のトリガー `trg_00_admin_only_column`)。接続先・ログイン入口・秘密情報は DB に置けない(接続前に要る。裏設定 `backstage` に残す)。
1.  承認パターンごとの上書き: `mstr_approval_pattern.stamp_style`(jsonb、NULL 可)。NULL は標準。書いた項目だけが標準を上書きする(`StampStyle.resolve`。`items` は渡したら全体を置き換える)。
1.  スタンプの重ね方 `stamp.layer`: 既定は `background`(透かし。本文の後ろ)、`foreground`(本文の前)。位置の既定は右上・10mm(`position`)。PDF(`markdown_pdf`)・プレビュー(`approval_stamp_view`)とも従う。
1.  読むときは寛容: 欠けた・型の違う値は既定に戻し、`Problems` に残す(呼び出し側がログに出す)。設定の不備でアプリ・PDF の出力を止めない。知らないキーは `AppSettings.extra` に保ち、書き戻しても消さない。新しい版は問題として知らせる。
1.  コードの標準値(`AppSettings.standard`)は、DB の既定値と同じ(`test/db_default_settings.dart` と照合するテストがある)。DB の既定値を変えたら、コードの標準値と `test/db_default_settings.dart` も直す。

1.  設定の JSON の形は、JSON スキーマ(JSON Schema draft-07)で検査する(`validateAppSettings`。`json_schema` パッケージ)。誤りは場所(`/pdf/page/size`)と理由で返す。読み取り(`AppSettings.parse`)とは別の検査で、読み取りでは黙って標準に戻る誤り(キー名の打ち間違い・型・範囲・選択肢・色の形)を見つける。ルートは知らないキーを許し、`stamp`・`pdf` の中は許さない(`pdf.theme.vars`・`colors`・`custom` は名前が自由)。スキーマの定義は Dart(`lib/src/settings/app_settings_schema.dart`)が正で、`schema/app_settings.schema.json` は書き出し(`dart run tool/gen_schema.dart`。違うとテストが失敗する)。エディタの補完には、JSON の先頭に `"$schema": "<このファイルへの相対パス>"` を書く。承認パターンごとの様式(`mstr_approval_pattern.stamp_style`)は、同じスキーマの `stamp` を使う `validateStampStyle` で検査する(標準に重ねる値のため、書いた項目だけでよい。誤りの場所は様式の中の場所)。標準の設定・DB の既定値・取り込み用のサンプルがスキーマに通ることは、テストで確かめる。

## 構成
| 場所 | 内容 |
|---|---|
| `lib/src/template/` | `formatDate`(日時の書式。和暦 `G`・`E` を含む)・`TemplateFormatter`(`{変数}`・`{変数:書式}`・`{{`/`}}`。未知の変数は空にして知らせる) |
| `lib/src/style/` | `StampStyle`(位置・すかし・形・色・表示項目・承認待ちの見た目)・`PdfSettings`(用紙・テーマ・ヘッダ/フッタ・custom)・色(`#RRGGBB`・`$変数`)・寛容な読み取り |
| `lib/src/settings/` | `AppSettings`(`info_app.settings` の読み書き)・`app_settings_schema.dart`(JSON スキーマと検査 `validateAppSettings`) |
| `schema/` | `app_settings.schema.json`(スキーマの書き出し) |
| `lib/src/stamp/` | `StampContentBuilder`(承認の段 → スタンプの行)・`StampLayout`(用紙上の位置。画面のプレビューと PDF で共通) |
| `lib/src/pdf/` | `PdfBandResolver`(ヘッダ・フッタを、ページごとに変数を展開) |

## 規則
1.  承認の判定・スタンプの文字(承認・承認待ち・却下)は DB のビュー(`v_document_publication`・`v_document_approval_stamp`)が 1 か所で持つ。このパッケージは文字を組み立てず、ビューの値(`ApprovalStepInfo.stampLabelJa/En`)をそのまま使う。判定は boolean(`approved`・`rejected`・`pending`)。
1.  スタンプの項目名は、ビューの列名のうち表示するもの(`StampContentBuilder.fields`)。
1.  ヘッダ・フッタの変数: `page`・`pages`・`title`・`chapter`・`controlNumber`・`versionCode`・`revision`・`statusLabel`・`approvedAt`・`approvedBy`・`printedAt`・`printedBy`、`custom` の `var.名前`(`PdfBandResolver.variableNames`)。
1.  未実装: 描画(画面の `CustomPainter`・PDF の `pdf` パッケージ)、設定の画面、PDF の出力。

## 規則/仕様
`packages/foundation` の他のパッケージと同じ(ディレクトリ/ファイル・命名・バレルファイル・JSON 化・ログ・GoF)。
1.  生成結果のレポートは `doc/log` に `年月日_4桁ゼロ埋の番号.md`、使い方は `doc/contents`、追加・変更の指示は `issue` に置く。
1.  ログは持たない(不備は `Problems`・`onProblem` で呼び出し側に返す)。ロガーはアプリが Riverpod で提供する。
