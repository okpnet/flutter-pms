# approval_stamp ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

approval_stamp: 承認スタンプの様式・PDF のテーマ・ヘッダ/フッタの書式(変数の展開)・配置の計算(画面を持たない純 Dart)。

承認スタンプの様式・PDF のテーマ・ヘッダ/フッタの書式(変数の展開)・配置の計算。画面を持たない純 Dart(`dart test`)。仕様の経緯は `issue/202611.md#20261121_0001`(リポジトリのルート)。

### 1.2 範囲

- 場所: `packages/foundation/approval_stamp`(foundation(画面を持たない汎用部品))
- 種類: 純 Dart パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`document_settings`(パッケージ)、`manual`(パッケージ)、`quality_document`(パッケージ)、`markdown_pdf`(パッケージ)、`approval_stamp_view`(パッケージ)

### 2.2 依存先(ワークスペース内)

なし

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `PdfDocumentInfo` | クラス | PDF のヘッダ・フッタの変数の元(文書の情報)。 |
| FR-02 | `PdfBandText` | クラス | 解決したヘッダ・フッタの 3 か所の文字。 |
| FR-03 | `PdfBandResolver` | クラス | ヘッダ・フッタの書式を、ページごとに展開する。 |
| FR-04 | `AppSettings` | クラス | アプリの設定(`info_app.settings`)。`version` と、機能ごとのキー(`stamp`・`pdf`)を持つ。 |
| FR-05 | `SettingsSchemaIssue` | クラス | 設定の JSON の形の誤り 1 件。[path] は誤りの場所(`/pdf/page/size`。ルートは空)、[message] は理由。 |
| FR-06 | `validateAppSettings` | 関数 | 設定の JSON を、スキーマ([appSettingsSchema])で検査する。誤りが無ければ空。 |
| FR-07 | `validateStampStyle` | 関数 | 承認パターンごとのスタンプの様式(`mstr_approval_pattern.stamp_style`)を、スキーマ(設定の `stamp` と同じ形)で検査する。誤りが無ければ空。 |
| FR-08 | `ApprovalStepInfo` | クラス | 承認の段 1 つの状態(`v_document_approval_stamp` の 1 行から作る。判定は boolean。文字はビューの値をそのまま使う)。 |
| FR-09 | `StampState` | 列挙型 |  |
| FR-10 | `StampLine` | クラス |  |
| FR-11 | `StampCard` | クラス | スタンプ 1 つ(表示する行と状態)。 |
| FR-12 | `StampContentBuilder` | クラス | 様式([StampStyle])と承認の段から、スタンプの内容(行)を作る。 |
| FR-13 | `StampPlacement` | クラス | 用紙の上でのスタンプ 1 つの位置と大きさ(mm。左上が原点)。 |
| FR-14 | `StampLayout` | クラス | スタンプの配置の計算(画面の用紙のプレビューと PDF で同じ結果を使う)。 |
| FR-15 | `resolveColor` | 関数 | 色の指定: `"#RRGGBB"`・`"#AARRGGBB"`、または `"$変数名"`(テーマの変数 `vars` の値。変数が別の変数を指してもよい。循環は止める)。 |
| FR-16 | `parseHexColor` | 関数 | `#RRGGBB`・`#AARRGGBB`(大文字小文字は区別しない)を ARGB の整数にする。不正なら null。 |
| FR-17 | `colorToHex` | 関数 | ARGB の整数を `#RRGGBB`(不透明)または `#AARRGGBB` にする。 |
| FR-18 | `Problems` | クラス | 設定の JSON を、寛容に読む部品(欠けた・型の違う値は既定に戻し、[Problems] に残す)。 |
| FR-19 | `deepMerge` | 関数 | [base] に [override] を重ねる(Map は再帰。リスト・値は [override] が置き換える。null は無視)。 |
| FR-20 | `PdfPageSize` | 列挙型 |  |
| FR-21 | `PdfOrientation` | 列挙型 |  |
| FR-22 | `PdfFirstPage` | 列挙型 | 1 ページ目のヘッダ・フッタ。same = 他のページと同じ、none = 出さない。 |
| FR-23 | `PdfMargins` | クラス |  |
| FR-24 | `PdfPage` | クラス |  |
| FR-25 | `PdfFont` | クラス |  |
| FR-26 | `PdfHeading` | クラス |  |
| FR-27 | `PdfTheme` | クラス | PDF のテーマ(文字の大きさ・色。色は `#RRGGBB` か `$変数`)。 |
| FR-28 | `PdfBand` | クラス | ヘッダまたはフッタ。[left]・[center]・[right] は、固定の文字と変数を混ぜた書式(`TemplateFormatter`)。 |
| FR-29 | `PdfSettings` | クラス | PDF の出力の設定(`info_app.settings` の `pdf`)。 |
| FR-30 | `StampAnchor` | 列挙型 |  |
| FR-31 | `StampPages` | 列挙型 | どのページに出すか。first = 先頭のページ(ルートの文書の 1 ページ目)、all = 全ページ。 |
| FR-32 | `StampLayer` | 列挙型 | 本文との重なり。background = 透かし(本文の後ろ)、foreground = 本文の前。 |
| FR-33 | `StampShapeKind` | 列挙型 |  |
| FR-34 | `StampStages` | 列挙型 | 承認の段が複数のとき。all = 段ごとに並べる、last = 最後に承認した 1 つだけ。 |
| FR-35 | `StampPosition` | クラス |  |
| FR-36 | `StampShape` | クラス |  |
| FR-37 | `StampColors` | クラス | 色の指定(`#RRGGBB`・`$変数`)。fill が null のときは塗らない。 |
| FR-38 | `StampItem` | クラス | スタンプに出す 1 行。[field] はビュー `v_document_approval_stamp` の列(のうち表示するもの)。 |
| FR-39 | `StampPendingStyle` | クラス | 承認待ちのスタンプの見た目(破線・灰色など)。 |
| FR-40 | `StampStyle` | クラス | 承認スタンプの様式(位置・すかし・形・色・表示項目・書式)。 |
| FR-41 | `formatDate` | 関数 | 日時の書式(スタンプ・ヘッダ・フッタで共通)。 |
| FR-42 | `TemplateFormatter` | クラス | 固定の文字と変数を混ぜた書式を展開する(ヘッダ・フッタ・スタンプの文字)。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **設定の置き場所**: 標準: `info_app.settings`(jsonb。DB の列の既定値が標準値)。`{ "version": 1, "stamp": {…}, "pdf": {…} }`。読み取りは一般ユーザー、書き込みは管理者だけ(画面と、DB のトリガー `trg_00_admin_only_column`)。接続先・ログイン入口・秘密情報は DB に置けない(…
- **構成**: | 場所 | 内容 |

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/approval_stamp.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 56 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 2 件、テストケース 56 件。

- `test/app_settings_schema_test.dart`
  - 標準の設定・DB の既定値は、スキーマに通る
  - 承認パターンの設定は info_app の列へ移した: 設定に残っている approval のキーは、知らないキーとして保たれる(誤りにしない)
  - 知らないキーはルートでは許す(ほかの機能の設定)。値を読んで書き戻しても通る
  - キー名の打ち間違い(スタンプ・PDF の中)は誤りになる(読み取りでは黙って捨てられるもの)
  - 型・範囲・選択肢の誤りを、場所つきで返す
  - オブジェクトでないときは、ルートの誤り。必須の項目(items の field)が無いのも誤り
  - 色は #RRGGBB(AA)・$変数、PDF の変数・色は名前が自由
  - 取り込み用のサンプル(document_settings の doc/contents)は、スキーマに通る
  - 承認パターンごとのスタンプの様式: 書いた項目だけでよい。誤りは様式の中の場所で返す
  - 標準の様式・DB の標準の様式は、様式のスキーマに通る
  - schema/app_settings.schema.json は Dart の定義と一致する(違ったら dart run tool/gen_schema.dart)
- `test/approval_stamp_test.dart`
  - 基本の記号と、英字以外の文字
  - 引用符の中は文字として出す
  - 和暦(元号と年)
  - 固定の文字と変数を混ぜる
  - 日時の書式・数値の 0 埋め
  - 波括弧そのものは {{ と }}
  - 未知の変数は空にして知らせる。null は空
  - 閉じていない { は文字として出す
  - 使っている変数の一覧
  - #RRGGBB・#AARRGGBB・$変数
  - 解決できない・循環は fallback
  - colorToHex
  - 標準の設定として読め、不備が無い
  - 読んで書き戻しても同じ(往復)
  - コードの標準値(const)も DB の既定値と同じ
  - null・不正な JSON・オブジェクトでない値は標準
  - 型の違う値は既定に戻し、問題に残す。読めた値は使う
  - 不透明度は 0〜1 に収める
  - 知らないキーは書き戻しても残る
  - 新しい版は問題として知らせる(知っている項目は使う)
  - 上書きは項目ごと。書いていない項目は標準
  - NULL(上書き無し)は標準そのもの
  - items は渡したら全体を置き換える
  - 既定は透かし(本文の後ろ)。右上 10mm
  - JSON で本文の前に変えられ、不正な値は透かしに戻して知らせる
  - 承認パターンの上書きで、そのパターンだけ本文の前にできる
  - 段が 0 件ならスタンプなし(承認不要)
  - 標準: 承認の文字・日付・承認者の 3 行
  - 承認待ちは、空の項目(日付・承認者)を出さない
  - 段ごとに順位の順で並べる(stages = all)
  - stages = last は、最後に承認した 1 つ(承認済みが無ければ先頭)
  - 言語・日時の書式・同じ行に並べる・項目の追加
  - 未知の項目は、空にして知らせる
  - 右上: 右の端から 10mm・上から 10mm
  - 四隅と中央
  - 複数は、右の基準なら左へ・左の基準なら右へ並ぶ
  - pages = first は 2 ページ目以降に出さない。all は出す
  - 0 個は空
  - 標準のヘッダ・フッタを展開する
  - firstPage = none は 1 ページ目に出さない。無効なら出さない
  - 章・利用者の変数({var.名前})・波括弧
  - 未知の変数は空にして知らせる(PDF の出力は止めない)
  - 標準の書式の変数は、すべて既知
  - 用紙の向きを反映した幅・高さ
  - テーマの色: 変数の参照・見出しごとの色

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
