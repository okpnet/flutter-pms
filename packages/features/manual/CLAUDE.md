# manual

マニュアル(Wiki)の実装(画面・ルート・ハンドラ)。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。
デザインは `tools/open-design` の Html のトップメニュー「品質管理文書」の「マニュアル」に従う(`pms_design.md` の 6.6 を参照)。
契約(遷移先・命令の型)は `lib/manual_api.dart`(`ManualDestination`)に公開する(別パッケージ `manual_api` は作らない)。実装の入口 `lib/manual.dart` はアプリだけが読み込む。

品質管理文書を Wiki として育てる画面。ページの正本は Markdown(本文 `md`。ページ名 `title` は別の項目)で、管理者が編集し、それ以外は閲覧のみ。ルート(親の無いページ)は複数作れる。

## 画面(`/manual`。`ManualViewPage`)
パスは `/manual`、ページはクエリ `id`(省略は最初のルート)、編集の状態で開くときは `edit=1`(`ManualPaths.pageOf`)。アクセスの許可はパスで判定するため、ページごとにパスを分けない。
1.  **閲覧**: 左に目次(番号つきのツリー)と検索(ページ名・本文)、右にページ。ページはパンくず・本文(Markdown → 部品。HTML は無効)・このページの目次(見出しが 3 つ以上のとき)・このページの下(子ページ)・このページへのリンク(被リンク)・更新者/更新日/改訂。幅 900 未満は、目次を「目次・検索」の折りたたみにする。
1.  **権限**: 管理者だけが、編集・子ページの追加・ルートの追加・履歴の復元・未作成リンクからのページ作成をできる。それ以外は閲覧と Markdown の書き出しだけ(「閲覧のみ」を表示)。`manualIsAdminProvider`(既定は閲覧のみ)をアプリが認証の結果で差し込む(`pms_app` の `manualOverrides`)。取得元(`IManualRepository`)も `isAdmin` を受け取り、管理者でなければ書き込みを断る(`ManualError.notAdmin`)。
1.  **リンク**: `[[ページ名]]`・`[[ページ名|表示文字]]` でページへ、`[表示文字](https://…)` で外部へ(外部は文字だけ。アプリからは開かない)。存在しないページへのリンクは赤い破線で示し、管理者は押してその場でページ(子ページ)を作成して編集に入れる。ページ名は全体で一意(空・重複は保存できない)。ページ名を変えると、他のページの `[[旧名]]` も新しい名前に書き換わる(表示文字は残す。改訂は上げない)。
1.  **編集**(管理者。`ManualEditor`): 「ビジュアル」と「Markdown」を切り替えて書く。切り替えても内容は変わらない(同じ Markdown を正本に相互変換)。
    1.  **Markdown**: 等幅の入力欄。広い画面は右に、その場のプレビュー。
    1.  **ビジュアル**: 本文を、出来上がりの見た目のブロック(段落・表・リスト…)で出し、ブロックを選んで直す(完了・上へ・下へ・削除。ブロックは空行で区切る。コードの囲みの中の空行では分けない)。どのブロックも選んでいないときに道具バーの段落・表などを押すと、新しいブロックを末尾に足す。
    1.  道具バー(どちらも同じ。`ManualMdEdit` の純粋な関数): H2・H3・太字・斜体・箇条書き・番号付き・引用・コード・表・区切り線・リンク。リンクは、既存ページを検索して選ぶか、新しいページ名を入れて作成してリンクする(`showManualLinkDialog`)。
    1.  保存すると、直前の版を履歴(最新 10 件)に残し、改訂を 1 つ上げる。変更が無ければ保存しない(整えただけの差は無視)。ページ名は必須・重複不可(エラーは種類 `ManualError` で持ち、画面が文字にする)。キャンセルは、変更があれば確認する。
1.  **履歴**(管理者): 過去の版の一覧。「この版に戻す」で復元(戻す前の版も履歴に残る)。
1.  **Markdown の書き出し**: 「Markdown」ボタンで、生成した Markdown を表示し、コピーできる。範囲は「このページ」(ページ名が H1。他ページへのリンクは文字だけ)か「文書全体」(章の順に結合し、見出しの階層を合わせ、ページ間のリンクを文書内のリンク `[表示](#id)` に直す。範囲の外のページへのリンクは文字だけ)。
1.  **メニュー**: グループ ID `quality_document`(品質管理文書)に、ルートごとに 1 項目(`ManualModule.menuEntries`。取得元の状態から作るため、ルートを足すと項目も増える)。ルートが無いときは「マニュアル」の 1 項目。
1.  **PDF の出力**(「PDF」ボタン。`showManualPdfDialog`): 範囲(このページ / 文書全体)を選び、「名前を付けて保存」で保存する。`markdown_pdf` で生成し、設定(`manualAppSettingsProvider`。`info_app.settings` の標準。用紙・テーマ・ヘッダ/フッタ・スタンプ)と承認の状態を使う。保存先は `manualFileSaverProvider`(既定は OS のダイアログ。テストは差し替え)、フォントは `manualPdfFontsProvider`(既定は同梱の BIZ UDP 明朝)。ヘッダ・フッタの `{printedBy}` は `manualPrinterNameProvider`。
1.  **承認と公開**(`ManualApprovalGate`): 文書(ルートのページ)の承認の状態は `manualApprovalSourceProvider`(`IManualApprovalSource`。既定は承認なし = 公開・スタンプなし。アプリが DB のビュー `v_document_publication`・`v_document_approval_stamp` の値に差し替える)。承認待ち(`pending`)の文書は、読める人にも「承認待ち」の帯を出す。読めない(`readable = false`)ときは本文の代わりに案内を出す。承認スタンプはルートの文書にだけ出す(子ページには注記)。判定は DB のビューの値で、画面・PDF では判定しない。承認の操作(承認待ち一覧・承認)の画面は別。
1.  制約: 画像の取り込みなし・目次にページ番号なし。取得元の既定はメモリ上のサンプル(再読み込みで初期データに戻る)。決定の経緯は `issue/202611.md#20261120_0002`。

## 構成
Markdown の読み取り・閲覧・編集・PDF は `packages/foundation` の Markdown 系のパッケージ(`markdown_ast`・`markdown_view`・`wysiwyg_editor`・`markdown_pdf` ほか)。この機能は組み合わせるだけ(本文の表示 `ManualContent` = `MarkdownView` + ページへのリンクの行き先、編集 `ManualEditor` = ページ名・保存・取り消し + `WysiwygEditor`)。

| 場所 | 内容 |
|---|---|
| `lib/src/model/manual_wiki.dart` | ツリー・番号・被リンク・検索・見出し・書き出し(`ManualWiki`。読み取りだけ) |
| `lib/src/model/manual_page_record.dart` | ページ(`ManualPageRecord`)と履歴の 1 件(`ManualVersion`) |
| `lib/src/data/` | 取得元(`IManualRepository`・`InMemoryManualRepository`・サンプル)と、状態(`manualProvider`)・差し込み口。承認(`manual_approval.dart`)・PDF(`manual_pdf_service.dart`) |
| `lib/src/page/` | 画面(`ManualViewPage`・`ManualContent`・`ManualEditor`・ダイアログ)・`ManualModule`・パス・遷移先 |

## 実装の指針
1.  `ManualModule implements FeatureModule, MenuContributor` を `lib/src/page/manual_module.dart` に置き、公開は `lib/manual.dart` のバレルから行う。アプリは `featureModules` に `ManualModule()` を 1 行足して組み込む。
1.  取得元は `manualRepositoryProvider` で差し替える(GraphQL 版は `IManualRepository` を実装)。保存・作成・復元は `manualProvider`(`ManualNotifier`)を通し、終わったら取得元から読み直す。更新者は `manualEditorNameProvider`(既定はログインユーザーの表示名)。
1.  色・サイズは `Theme` の `ColorScheme` から取る(色の値を直接書かない)。見出しは `app_shell` の `ScreenScaffold`、保存・キャンセルは `ActionButtons`、確認は `showConfirmDialog`。
1.  ラベルは slang(`lib/src/i18n`。`dart run slang`)。クラスは `ManualStrings`、言語の選択は `manualStringsProvider`(`feature_shared` の `localeProvider`)。
1.  アクセスパスは `/manual`(`apps/pms_app/doc/contents/access_paths.csv`)。機能コードは `N`・画面コード `M`(`packages/features/doc/page_code_list.yml`)。

## 取得元(DB 版。`GraphqlManualRepository`・`GraphqlManualApprovalSource`)
`GRAPHQL_URL` を指定したときだけ、アプリ(`pms_app` の `manualOverrides`)が DB 版に差し替える(未指定はメモリ上のサンプル)。モデルは `packages/model_providers/manual_model`。
1.  ルート = 文書(`mstr_document`)で、文書ツリーの親が NULL のもの(親のある文書は出さない)。ページ = 文書コンテンツ(`mstr_document_content`。文書コンテンツのツリーの親が NULL のものは、ルートの文書の直下)。ページ名 = 呼称(`titles`)の言語 ja の名称、本文 = 共有テキスト(`contents`)の言語 ja の値(Markdown)。
1.  書き込みは共通関数(`shared_appellation_save`・`shared_text_save`)で、渡した言語の値だけが入れ替わる(他の言語は残る)。ページの作成は、呼称 → 本文 → 本体 → ツリーの順に呼ぶ(マスタは同時実行の影響が小さいため。失敗したときの孤児の呼称・文章は許容する)。ページ名の変更は、ほかのページの `[[旧名]]` も書き換える。
1.  改訂・履歴・更新者は DB の履歴の表(`history_shared_text_value`。改訂 = 本文の版、履歴 = 現在より前の版を新しい順に最大 10 件)。ページ名の版は DB に無いため、履歴の各版のページ名は現在のページ名。履歴の復元は、その版の本文を新しい版として保存する。
1.  ルートの文書は本文の列を持たない(`IManualRepository.rootHasBody` = false)。ルートの編集はページ名だけ(本文のエディタを出さない)。本文は子のページに書く。
1.  ルートの作成は、**管理番号(`control_number`)を利用者が決める**(作成のダイアログに欄が出る。空は `ManualError.controlNumberRequired`。`requiresControlNumber`)。文書階層は、階層番号が最小のもの(ルートの階層)。承認パターンは、DB のトリガー(登録が申請)が `info_app.document_approval_pattern_id` から入れる。内部のコード(`code`)は自動で付ける。
1.  公開・承認の状態(`ManualApproval`)は、DB のビュー `v_document_publication`・`v_document_approval_stamp` の値を詰めるだけ(判定は持たない)。承認パターンごとのスタンプの様式は、承認の実行(`trans_approval_pattern`)から元の承認パターンをたどって `mstr_approval_pattern.stamp_style` を読み(`ManualApprovalStylePage`)、`ManualApproval.stampStyleOverride` に入れる。画面・PDF は、標準の設定(`info_app.settings` の `stamp`)に重ねて使う(`StampStyle.resolve`。書いた項目だけが標準を上書きする)。NULL・行が無い・読めない(通信の失敗・不正な JSON)ときは標準の様式(承認の状態は返す)。承認一覧の「参照」は、文書をマニュアルのルート(`/manual?id=<文書の ID>`)へ向ける。
1.  テスト: `test/graphql_manual_test.dart`・`test/graphql_manual_approval_test.dart`(仮の通路。サーバーには接続しない)。検証用サーバーでの書き込みの通信テストは書いていない(読み取りのクエリは `manual_model` の通信テストで確認)。

## example とテスト
1.  `example`(Windows 向け。`flutter run -d windows`)。メニューの項目: 最初のルート・品質マニュアル・2 つ目のルート(安全衛生マニュアル)・編集の状態。`ExampleApp(isAdmin: false)` で閲覧のみを確認できる。
1.  `test/manual_logic_test.dart`(Markdown・Wiki・書式の挿入・取得元)、`test/manual_page_test.dart`(閲覧・検索・編集・ビジュアル・リンク・子ページとルートの追加・履歴・書き出し・メニュー)、`example/test/widget_test.dart`。サーバーには接続しない。

## 規則/仕様
1.  ディリクトリ/ファイル
    1.  生成結果のレポートは`doc/log`ディリクトリにファイル名`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  同じ年月日、同じ番号に対する追加変更は`年月日_4桁ゼロ埋の番号_add_1からの連番.md`として保存する。
    2.  画面イメージ(HTML)や使い方などは`doc/contents`に保存する。
    3.  最終的にこの`CLAUDE.md`へ統合される追加、変更の指示は`issue`ディリクトリに`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  つまり`生成結果のレポート`と連動する。
        2.  `CLAUDE.md`への統合も指示に含める。統合時、削除指示が無い限り`issue`ディリクトリ`doc/log`ディリクトリの中を削除しない。`CLAUDE.md`には変更や追加、削除であることについて記録しない(生成時に`issue`ディリクトリ`doc/log`ディリクトリを参照するため)。
2.  命名規則
    1.  ファイル名、クラス名など名前付けのルールはFlutterの規則、慣例に従う。
    2.  クラス名はデザインパターンがわかる、または意味が通る英語の名詞とする。ただし、`はい/いいえ`のような`isXxxx`などの`is/as/has`の慣例を優先する。
        1.  `Command`などデザインパターンのみの名前だと誤解や衝突を招くため、機能、動きの名詞化したものと組み合わせる。
    3.  プリフィクスにライブラリ名をつけない(BatonLibXXのような)。
3.  バレルファイルを使用する
    1.  バレルファイルにまとめ、このライブラリを使用する側は1行を読み込むだけで解決できるようにする。ただし、相互に関連が無い独立した機能の場合はバレルファイルを分けて、仕様側が機能に応じて選択できるようにする。ただし、ユーザーの使用体験を優先する。ライブラリ全体の機能が少ない(10以下)ときにインポートするファイルを分ける必要はない。
4.  インスタンスのJSON化
    1.  生成するこのライブラリのインターフェイス、クラスのインスタンスをJSONにコンバートできる。ただし、エラー追跡のためであり、現時点で機能を復元する目的では使用しない。
5.  ログを残す
    1.  ライブラリは実行したときのログを残す。ただし、このライブラリ側のエラーログだけを残し、機能毎のライブラリ側なのかを切り分け可能にするために、適切に選別する。
    2.  ロガーはRiverpodから提供され、アプリケーション全体をとおして同じ仕様のログ出力を行う。
6.  GOFデザインパターン
    1.  クラス名やファイル名にデザインパターンを含めない場合は、コメントに該当するパターン名を追加する。
    2.  必ずしもデザインパターンに割り当てる必要はない。

## 規則: プロジェクト間をまたぐ指示
指示や実装が、プロジェクト(アプリ・ライブラリ)をまたいで行われるときの`issue`・`doc/log`の扱い。
1.  指示をしたプロジェクト
    1.  `doc/log`に、指示の内容・指示した先のプロジェクト・実施した結果を記録する。
2.  指示を受けたプロジェクト
    1.  指示の内容と、指示をしたプロジェクトを`issue`に追加する。
    2.  実施した結果を`doc/log`に記録する。
