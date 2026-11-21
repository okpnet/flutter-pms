# approval_stamp

承認スタンプの様式・PDF のテーマ・ヘッダ/フッタの書式(変数の展開)・配置の計算。画面を持たない純 Dart(`dart test`)。仕様の経緯は `issue/20261121_0001.md`(リポジトリのルート)。

## 設定の置き場所
1.  標準: `info_app.settings`(jsonb。DB の列の既定値が標準値)。`{ "version": 1, "stamp": {…}, "pdf": {…} }`。読み取りは一般ユーザー、書き込みは管理者の画面だけ(DB では制限していない)。接続先・ログイン入口・秘密情報は DB に置けない(接続前に要る。裏設定 `backstage` に残す)。
1.  承認パターンごとの上書き: `mstr_approval_pattern.stamp_style`(jsonb、NULL 可)。NULL は標準。書いた項目だけが標準を上書きする(`StampStyle.resolve`。`items` は渡したら全体を置き換える)。
1.  読むときは寛容: 欠けた・型の違う値は既定に戻し、`Problems` に残す(呼び出し側がログに出す)。設定の不備でアプリ・PDF の出力を止めない。知らないキーは `AppSettings.extra` に保ち、書き戻しても消さない。新しい版は問題として知らせる。
1.  コードの標準値(`AppSettings.standard`)は、DB の既定値と同じ(`test/db_default_settings.dart` と照合するテストがある)。DB の既定値を変えたら、コードの標準値と `test/db_default_settings.dart` も直す。

## 構成
| 場所 | 内容 |
|---|---|
| `lib/src/template/` | `formatDate`(日時の書式。和暦 `G`・`E` を含む)・`TemplateFormatter`(`{変数}`・`{変数:書式}`・`{{`/`}}`。未知の変数は空にして知らせる) |
| `lib/src/style/` | `StampStyle`(位置・すかし・形・色・表示項目・承認待ちの見た目)・`PdfSettings`(用紙・テーマ・ヘッダ/フッタ・custom)・色(`#RRGGBB`・`$変数`)・寛容な読み取り |
| `lib/src/settings/` | `AppSettings`(`info_app.settings` の読み書き) |
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
