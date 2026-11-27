# document_settings ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

document_settings: 承認スタンプ・PDF の設定(info_app.settings の stamp・pdf)の編集画面(プレビューつき)。

承認スタンプ・PDF の設定(`info_app.settings` の `stamp`・`pdf`)の編集画面。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。仕様の経緯は `issue/202611.md#20261121_0001`(リポジトリのルート)。 契約(遷移先の型)は `lib/document_settings_api.dart`(`DocumentSettingsDestination`)。実装の入口 `lib/document_settings.dart` はアプリだけが読み込む。

### 1.2 範囲

- 場所: `packages/features/document_settings`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)

### 2.2 依存先(ワークスペース内)

`feature_shared`、`baton_lib`、`app_shell`、`approval_stamp`、`approval_stamp_view`、`document_approval_model`、`pms_graphql`

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
| FR-01 | `IAppSettingsGateway` | インターフェイス | アプリの設定(`info_app.settings`)の取得元。アプリが GraphQL 版(`document_approval_model` の |
| FR-02 | `InMemoryAppSettingsGateway` | クラス | メモリ上の取得元(既定・example・テスト用)。 |
| FR-03 | `documentSettingsGatewayProvider` | Riverpod プロバイダ |  |
| FR-04 | `savedAppSettingsProvider` | Riverpod プロバイダ | 保存されている設定(標準を含む)。ほかの機能(`manual` の PDF など)が使う。保存すると読み直す。 |
| FR-05 | `documentSettingsIsAdminProvider` | Riverpod プロバイダ | 変更できるのは管理者だけ。既定は閲覧のみ(false)。アプリが認証の結果で差し替える。 |
| FR-06 | `ApprovalPatternOption` | クラス | 承認パターン(`mstr_approval_pattern`)の選択肢 1 件。 |
| FR-07 | `IApprovalPatternSource` | インターフェイス | 承認パターンの取得元(一覧・スタンプの様式の保存)。アプリが GraphQL 版(`GraphqlApprovalPatternSource`)に差し替える(Strategy)。 |
| FR-08 | `InMemoryApprovalPatternSource` | クラス | メモリ上の取得元(既定・example・テスト用)。 |
| FR-09 | `documentSettingsPatternSourceProvider` | Riverpod プロバイダ |  |
| FR-10 | `PickedSettingsFile` | クラス | 選んだ設定のファイル(名前と中身)。 |
| FR-11 | `ISettingsFilePicker` | インターフェイス | 設定の JSON ファイルを選ぶ窓口。既定は OS のダイアログ([PlatformSettingsFilePicker])。テストは差し替える。取り消しは null。 |
| FR-12 | `PlatformSettingsFilePicker` | クラス | OS の「ファイルを開く」ダイアログ(`file_picker`。拡張子 json)。 |
| FR-13 | `documentSettingsFilePickerProvider` | Riverpod プロバイダ |  |
| FR-14 | `GraphqlAppSettingsGateway` | クラス | アプリの設定(`info_app.settings`)の GraphQL 版の取得元。モデルは `document_approval_model` |
| FR-15 | `GraphqlApprovalPatternSource` | クラス | 承認パターンの GraphQL 版の取得元。モデルは `document_approval_model` の `ApprovalPatternStylePage`(読み取り。 |
| FR-16 | `DocumentSettingsStrings` | 定数・その他 |  |
| FR-17 | `documentSettingsStringsProvider` | 定数・その他 |  |
| FR-18 | `DocumentSettingsModule` | クラス | 承認スタンプ・PDF の設定をアプリへ組み込む口。メニューは、システムメニュー(管理者のユーザーメニュー)に 1 項目。 |
| FR-19 | `DocumentSettingsPage` | クラス | 承認スタンプ・PDF の設定(`info_app.settings`)の編集画面。左にフォーム(承認スタンプ・PDF・JSON)、右に用紙のプレビュー。 |
| FR-20 | `DocumentSettingsPaths` | クラス | 画面のパス。`/auth/admin/…` は、アプリが管理者だけが開ける画面として扱う(`pms_app` の `isAdminOnlyPath`)。 |
| FR-21 | `DocumentSettingsDestination` | クラス | 承認スタンプ・PDF の設定(`info_app.settings`)の画面へ。変えられるのは管理者だけ(それ以外は閲覧のみ)。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **画面(`/auth/admin/document-settings`。`DocumentSettingsPage`)**: パスが `/auth/admin/…` のため、アプリは管理者だけが開ける画面として扱う(`pms_app` の `isAdminOnlyPath`)。画面の中でも、変更できるのは管理者だけ(`documentSettingsIsAdminProvider`。それ以外は入力を受け付けず、「管理者だけが変更できます。」を表示)。
- **構成**: | 場所 | 内容 |
- **実装の指針**: アプリが差し込むもの: `documentSettingsGatewayProvider`(GraphQL に接続するときは `GraphqlAppSettingsGateway`)、`documentSettingsPatternSourceProvider`(パターン別のスタンプの承認パターンの一覧・様式の保存。GraphQL に接続するときは `Gra…

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/document_settings.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 34 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 5 件、テストケース 34 件。

- `test/document_settings_test.dart`
  - 標準の設定でプレビューが出る(右上に 2 つのスタンプ・ヘッダ・フッタの文字)
  - 管理者でなければ閲覧のみ(保存は出ず、入力もできない)
  - 位置を変えるとプレビューが動き、未保存の帯が出る。保存すると取得元へ入る
  - 元に戻す・標準に戻す
  - 基準を左上に変えると、スタンプが左へ移る。ページ 2 では出ない(先頭のページだけ)
  - 重ね方を変えて保存すると、JSON の layer に入る(既定は background)
  - 表示項目の追加・削除がプレビューの行に反映される
  - PDF: ヘッダの書式に変数を入れる(ボタンで挿入)と、プレビューのヘッダに出る
  - PDF: 利用者の変数の追加
  - JSON: 反映するとフォームとプレビューが変わる。不正な JSON は誤りを示す
  - 読み取れない項目は、標準の値で表示し、問題として一覧に出す
  - 読み込みに失敗したら標準の設定と案内を出す。保存に失敗したら案内を出す
- `test/graphql_gateway_test.dart`
  - 読み込み: info_app の設定(JSON)を返し、行の ID を覚える
  - 行が無いときは null(標準の設定になる)
  - 保存: 設定と更新者を送る。先に読み込んでいなくても、行の ID を引いてから保存する
  - 通信の失敗は例外のまま投げる
  - savedAppSettingsProvider: 保存されている設定を返し、読めないときは標準
- `test/graphql_pattern_source_test.dart`
  - 承認パターンの一覧: 言語コード ja の名称と、スタンプの様式(JSON のオブジェクト・JSON の文字列。それ以外は標準)で返す
  - 様式の保存: JSON の文字列で渡す(PostGraphile v4)。更新者つき
  - 様式を標準に戻す(null): キーを残したまま null を送る(省略すると変わらないため)
  - 検証用サーバー(読み取りだけ): 承認パターンの一覧を、名称・様式つきで取得できる
  - 変更する: 様式を保存して読み直し、標準(NULL)に戻して元の状態にする(管理者の資格情報)
- `test/pattern_style_test.dart`
  - パターンを選ぶと保存済みの様式が入り、標準のパターンは「標準の様式を使う」になる
  - 専用の様式を書いて保存すると、パターンの様式になる(標準に重ねたプレビューが動く)
  - 「標準の様式を使う」にして保存すると、様式は NULL になる
  - スキーマの誤り・読めない JSON・オブジェクト以外は、場所つきで示して保存しない
  - 保存に失敗したら案内を出す(管理者でないときの DB の拒否など)
  - 「保存済みに戻す」は、入力を保存済みの様式に戻す
  - パターンが無い・読み込みの失敗は案内、管理者でなければ操作できない
- `test/settings_import_test.dart`
  - JSON ファイルの取り込み: スキーマに通れば、フォームに入り未保存になる(保存は別)
  - 取り込み: スキーマの誤りは、場所つきで一覧に出して、何も取り込まない
  - 取り込み: JSON として読めないファイル・取り消しは、何も変えない
  - 取り込み: BOM つきの UTF-8 も読める
  - 「反映」もスキーマで検査する: 誤りがあれば反映しない

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
