# manual ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

manual: マニュアル(Wiki)。品質管理文書のページを、Markdown を正本に、閲覧・編集(Markdown / ビジュアル)・履歴・書き出しで育てる。

マニュアル(Wiki)の実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 デザインは `tools/open-design` の Html のトップメニュー「品質管理文書」の「マニュアル」に従う(`pms_design.md` の 6.6 を参照)。 契約(遷移先・命令の型)は `lib/manual_api.dart`(`ManualDestination`)に公開する(別パッケージ `manual_api` は作らない)。実装の入口 `lib/manual.dart` はアプリだけが読み込む。

### 1.2 範囲

- 場所: `packages/features/manual`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`pms_app_example`(アプリ)

### 2.2 依存先(ワークスペース内)

`feature_shared`、`baton_lib`、`app_shell`、`markdown_pdf`、`markdown_ast`、`markdown_view`、`wysiwyg_editor`、`approval_stamp`、`approval_stamp_view`、`manual_model`、`pms_graphql`

テスト用: `data_test_harness`、`theme_lib`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `InMemoryManualRepository` | クラス | メモリ上の取得元(サンプル・テスト用)。アプリを閉じると初期データに戻る。 |
| FR-02 | `ManualApproval` | クラス | 文書(ルートのページ)の公開・承認の状態。DB のビュー(`v_document_publication`・`v_document_approval_stamp`)の値。 |
| FR-03 | `IManualApprovalSource` | インターフェイス | 文書の承認の状態の取得元。アプリが GraphQL 版に差し替える(Strategy)。 |
| FR-04 | `NoManualApprovalSource` | クラス | 承認を持たない取得元(既定。すべて公開・スタンプなし)。 |
| FR-05 | `InMemoryManualApprovalSource` | クラス | メモリ上の取得元(example・テスト用)。 |
| FR-06 | `manualApprovalSourceProvider` | Riverpod プロバイダ |  |
| FR-07 | `manualApprovalProvider` | Riverpod プロバイダ | ルートのページの承認の状態(ページを開くたびに取り直す)。 |
| FR-08 | `manualAppSettingsProvider` | Riverpod プロバイダ | アプリの設定(`info_app.settings`。承認スタンプの標準・PDF のテーマ・ヘッダ/フッタ)。既定は標準値。アプリが DB の値に差し替える。 |
| FR-09 | `manualPdfFontsProvider` | Riverpod プロバイダ | PDF に埋め込むフォント。既定は同梱の BIZ UDP 明朝。テストでは差し替えられる。 |
| FR-10 | `IManualFileSaver` | インターフェイス | PDF を保存する(Strategy)。取り消しは false。 |
| FR-11 | `PlatformManualFileSaver` | クラス | OS の「名前を付けて保存」ダイアログ(`file_picker`)。 |
| FR-12 | `manualFileSaverProvider` | Riverpod プロバイダ |  |
| FR-13 | `manualPrinterNameProvider` | Riverpod プロバイダ | PDF の「出力した人」。既定は空。アプリがログインユーザーの表示名に差し替える。 |
| FR-14 | `manualClockProvider` | Riverpod プロバイダ | 出力日時の取得元(テストで固定する)。 |
| FR-15 | `ManualPdfService` | クラス | マニュアルを PDF にする。範囲は「このページ」か「文書全体」(ルートの下)。 |
| FR-16 | `manualSeedPages` | 関数 | サンプルのマニュアル(画面案 `tools/open-design/data.extra.js` の `manual.pages`)。 |
| FR-17 | `manualRepositoryProvider` | Riverpod プロバイダ | 取得元。既定はメモリ上のサンプル。アプリが GraphQL 版などに差し替える。 |
| FR-18 | `manualCanEditProvider` | Riverpod プロバイダ | 現在のユーザーが管理者か。既定は閲覧のみ(false)。アプリが認証の結果で差し替える。 |
| FR-19 | `manualEditorNameProvider` | Riverpod プロバイダ | 更新者として記録する名前。既定はログインユーザーの表示名(無ければ空)。 |
| FR-20 | `ManualState` | クラス | ページの一覧の状態。読み込みが終わるまで [loaded] は false。 |
| FR-21 | `manualProvider` | Riverpod プロバイダ |  |
| FR-22 | `ManualError` | 列挙型 | 取得元が返すエラーの種類。画面が表示のときに文字へ変える(文字列では持たない)。 |
| FR-23 | `ManualException` | クラス |  |
| FR-24 | `IManualRepository` | インターフェイス | マニュアルの取得元。メモリ上([InMemoryManualRepository])のほか、GraphQL 版を差し替えられる。 |
| FR-25 | `GraphqlManualApprovalSource` | クラス | 文書(ルートのページ)の公開・承認の状態の GraphQL 版の取得元。 |
| FR-26 | `ManualGraphqlClient` | クラス | マニュアルの GraphQL 版の取得元が共有する、通信の下請け(クエリの実行・言語コード・読み取りの小物)。 |
| FR-27 | `GraphqlManualRepository` | クラス | マニュアルの GraphQL 版の取得元(DB の文書とつなぐ)。 |
| FR-28 | `ManualStrings` | 定数・その他 |  |
| FR-29 | `manualStringsProvider` | 定数・その他 |  |
| FR-30 | `ManualVersion` | クラス | マニュアルのページの、過去の版(履歴の 1 件)。 |
| FR-31 | `ManualPageRecord` | クラス | マニュアルの 1 ページ。正本は Markdown([md])で、ページ名([title])は別の項目に持つ。 |
| FR-32 | `ManualHeadingRef` | クラス | 本文の見出し(このページの目次の 1 項目)。 |
| FR-33 | `ManualWiki` | クラス | ページの集まり(Wiki)に対する問い合わせ。読み取りだけで、状態を持たない。 |
| FR-34 | `ManualModule` | クラス | マニュアル(Wiki)をアプリへ組み込むための口。 |
| FR-35 | `ManualPaths` | クラス | マニュアルのパス。文字列はこのファイルだけに書く。 |
| FR-36 | `ManualViewPage` | クラス | マニュアル(Wiki)の閲覧・管理の画面。左に目次(番号つきのツリー)と検索、右にページ。 |
| FR-37 | `ManualDestination` | クラス | マニュアルへ。[pageId] を指定するとそのページを開く(省略は最初のルート)。 |

ほかのパッケージの公開面を再公開する: `approval_stamp`。

### 3.1 仕様の要点(`CLAUDE.md` より)

- **文書の台帳(`/manual`。id なし。`ManualLedgerPage`)**: メニュー「運用と改善 → 文書」の 1 項目の入口(ルートごとの項目は台帳に集める。文書階層・レポート・承認スタンプと PDF の設定はメニューに出さない)。ルートの文書の管理番号・名称・版・状態・更新日を並べる。状態の文字・管理番号・版は DB のビューの値(`ManualApproval`。画面で判定しない)。読めない文書(`readable = fal…
- **画面(`/manual?id=…`。`ManualViewPage`)**: パスは `/manual`、ページはクエリ `id`(省略は台帳)、編集の状態で開くときは `edit=1`(`ManualPaths.pageOf`)。アクセスの許可はパスで判定するため、ページごとにパスを分けない。
- **構成**: Markdown の読み取り・閲覧・編集・PDF は `packages/foundation` の Markdown 系のパッケージ(`markdown_ast`・`markdown_view`・`wysiwyg_editor`・`markdown_pdf` ほか)。この機能は組み合わせるだけ(本文の表示 `ManualContent` = `Markdo…
- **実装の指針**: `ManualModule implements FeatureModule, MenuContributor` を `lib/src/page/manual_module.dart` に置き、公開は `lib/manual.dart` のバレルから行う。アプリは `featureModules` に `ManualModule()` を 1 行足して組み込…
- **取得元(DB 版。`GraphqlManualRepository`・`GraphqlManualApprovalSource`)**: `GRAPHQL_URL` を指定したときだけ、アプリ(`pms_app` の `manualOverrides`)が DB 版に差し替える(未指定はメモリ上のサンプル)。モデルは `packages/model_providers/manual_model`。
- **example とテスト**: `example`(Windows 向け。`flutter run -d windows`)。メニューの項目: 最初のルート・品質マニュアル・2 つ目のルート(安全衛生マニュアル)・編集の状態。`ExampleApp(isAdmin: false)` で閲覧のみを確認できる。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/manual.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 66 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 8 件、テストケース 66 件。

- `test/graphql_manual_approval_test.dart`
  - 承認の状態: ビューの値をそのまま詰める(公開の判定を持たない)。段は順位順
  - 承認パターンごとのスタンプの様式: 承認の実行から元の承認パターンの stamp_style を読み、重ねる値として渡す
  - 様式が NULL(標準を使う)・行が無い・JSON の文字列・読み込みの失敗: 承認の状態は返し、様式は必要なときだけ
  - 承認の実行が無い(承認不要)ときは、様式を読みにいかない
  - 英語のときは、スタンプの文字も英語
  - 文書が無いときは、承認なし(公開)
  - 取得元が管理番号を要求するとき、ルートの作成に管理番号の欄が出て、空は断る
  - 本文を持たないルートの編集は、ページ名だけ(本文のエディタを出さない)
- `test/graphql_manual_server_test.dart`
  - 変更する: ルートの作成 → 子ページ → 本文の保存 → ページ名の変更 → 履歴の復元 → 承認の状態
- `test/graphql_manual_test.dart`
  - 一覧: ルートの文書(親が NULL のもの)と、文書コンテンツのツリー。親のある文書は出ない
  - ルートは本文を持たず、管理番号が要る
  - 管理者でなければ書けない
  - ルートの作成: 管理番号は利用者が決める(空は断る)。文書階層は階層番号が最小のもの。呼称 → 文書 → ツリーの順
  - 子のページの作成: 本文 → 文書コンテンツ(属する文書・並び)→ ツリー(親のページ)
  - ルート直下の子のページ: 親のページはルートの文書で、ツリーの親は付けない
  - 同じ名前・空の名前は作れない
  - 本文の保存: 言語 ja の値だけを、そのページの共有テキストに入れ替える(JSON の文字列)
  - 変更が無いときは何も書かない
  - ページ名の変更: 呼称を入れ替え、ほかのページのリンクも追従させる
  - ルートの文書は、ページ名だけを変える(本文は書かない)
  - 履歴の復元: その版の本文を、新しい版として保存する
- `test/manual_approval_test.dart`
  - 承認の情報が無い文書は、帯もスタンプも出さずに本文を読める
  - 承認待ち(読める人): 帯と、承認済み・承認待ちのスタンプが出る
  - 承認済み: 帯は出ず、スタンプだけ出る
  - 読めない(承認待ちの該当者でない人): 本文の代わりに案内を出す
  - 子ページには、スタンプではなく「承認はルートにある」の注記を出す
  - PDF: このページを保存できる(%PDF。ファイル名はページ名)
  - PDF: 文書全体・保存を取り消したら案内を出す
- `test/manual_ledger_test.dart`
  - 台帳に、ルートの文書の管理番号・名称・状態を出す(状態の文字はビューの値)
  - 読めない文書は、編集の権限が無い人には出さない
  - 「新規」は編集の権限がある人だけ
  - 編集の権限がある人には「新規」が出る
  - 行を押すと閲覧へ。編集者が承認待ちを開くときは編集の状態で開く
- `test/manual_logic_test.dart`
  - ルートは複数。子は order 順
  - 番号はルートごとに 1 から
  - 祖先・部分木・被リンク
  - 検索はページ名・本文(空は全件)
  - 見出しは H2・H3 だけ(通し番号は全見出し)
  - ページ名の重複・空
  - 1 ページの書き出し: H1 とリンクは文字だけ
  - 文書全体の書き出し: 階層を合わせ、範囲内のリンクは文書内リンクに
  - 管理者でなければ作成・更新・復元できない
  - ルートを複数作れる。名前は必須・重複不可
  - 保存: 変更があれば改訂を上げ、直前の版を履歴へ。変更なしは何もしない
  - 履歴は最新 10 件まで
  - ページ名を変えると、ほかのページのリンクが追従する(改訂は上げない)
  - 復元: 戻す前の版も履歴に残る
- `test/manual_page_test.dart`
  - 閲覧のみ: 目次・本文・被リンクが出て、編集の操作は出ない
  - 検索はページ名・本文で絞り込む
  - 管理者: Markdown で編集して保存すると、改訂が上がる
  - 編集: ページ名が空・重複のときは保存できず、理由を示す
  - 編集: 変更があるまま取り消すと確認する。破棄すると閲覧に戻る
  - ビジュアル: ブロックを選んで直し、保存する
  - ビジュアル: 道具バーの表でブロックが増え、Markdown に切り替えても同じ内容
  - リンク: 新しいページ名を入れて作成してリンクする(書きながら文書が育つ)
  - リンク: 既存のページを検索して選ぶ
  - 管理者: 子ページ・ルートを追加できる(ルートは複数)
  - 未作成のリンクは、管理者だけが押して作成できる
  - 履歴: 過去の版に戻せる
  - Markdown の書き出し: このページ / 文書全体
  - メニューは「文書」(台帳)の 1 項目
  - 遷移先はパスに変換でき、他の遷移先は引き受けない
- `test/manual_request_approval_test.dart`
  - 編集の権限がある人には、承認待ちの文書に「承認を申請」を出し、押すと申請する
  - 同じ文書を続けて申請しても、通知を増やさない(冪等)
  - 編集の権限が無い人には出さない
  - 承認不要・公開済みの文書(承認待ちでない)には出さない

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
