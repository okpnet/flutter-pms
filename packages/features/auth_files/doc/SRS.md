# auth_files ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

auth_files: 認証(PocketBase のログイン・登録申請・コード入力・管理者操作)と共有ファイルのアップロード/ダウンロードの画面。

認証(PocketBase のログイン・登録申請・コード入力・パスワード再設定・管理者操作)と、共有ファイルのアップロード/ダウンロードの画面。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 名前は「認証(auth)」と「共有ファイル(files)」の両方を表す。PocketBase のクライアントは `packages/infra/pbapi`(この機能は画面とページの流れだけを持つ)。ページの遷移の仕様は `tools/docker/pocketbase/README.md` に従う。Keycloak の `pms_authenticator` は削除した。

### 1.2 範囲

- 場所: `packages/features/auth_files`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`pms_app_example`(アプリ)、`organization`(パッケージ)

### 2.2 依存先(ワークスペース内)

`loadux_lib`、`app_shell`、`feature_shared`、`baton_lib`、`app_core`、`backstage`、`page_mediator_extension`、`pbapi`、`logger_provider`

テスト用: `theme_lib`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `AuthFilesModule` | クラス | 認証(ログイン・登録申請・再設定・コード入力・管理者操作)と共有ファイルの画面をアプリへ組み込むための口。 |
| FR-02 | `AuthFilesPaths` | クラス | auth_files のパス。文字列はこのファイルだけに書く。 |
| FR-03 | `AuthMode` | 列挙型 | 認証の方式。 |
| FR-04 | `authModeProvider` | Riverpod プロバイダ | 認証の方式。アプリが、認証サーバーに接続しているかに応じて上書きする。 |
| FR-05 | `PickedFile` | クラス | 利用者が選んだファイル。 |
| FR-06 | `IFilePickerGateway` | インターフェイス | ファイルの選択(アップロード元)。実体はアプリが差し込む(Strategy)。 |
| FR-07 | `IFileSaverGateway` | インターフェイス | ファイルの保存(ダウンロード先)。実体はアプリが差し込む(Strategy)。 |
| FR-08 | `UnsupportedFileGateway` | クラス | 使えないことを表す実体。使うと [UnsupportedError] を投げ、画面が文言にする。 |
| FR-09 | `filePickerGatewayProvider` | Riverpod プロバイダ | ファイルの選択。既定は OS のダイアログ。アプリ・テストは上書きできる。 |
| FR-10 | `fileSaverGatewayProvider` | Riverpod プロバイダ | ファイルの保存。既定は OS の「名前を付けて保存」ダイアログ。アプリ・テストは上書きできる。 |
| FR-11 | `AuthFilesStrings` | 定数・その他 |  |
| FR-12 | `authFilesStringsProvider` | 定数・その他 |  |
| FR-13 | `FileTooLargeException` | クラス | 選んだファイルが、扱える大きさを超えているとき。サーバーの上限(100MB)に合わせている。 |
| FR-14 | `PickedSource` | 型の別名 | 選ばれたファイル(`file_picker` の `PlatformFile` を、テストで差し替えられる形にしたもの)。 |
| FR-15 | `PlatformFilePicker` | クラス | OS のファイル選択ダイアログ(`file_picker`)で、アップロードするファイルを1つ選ぶ。 |
| FR-16 | `PlatformFileSaver` | クラス | OS の「名前を付けて保存」ダイアログ(`file_picker`)で、ダウンロードしたファイルを保存する。 |
| FR-17 | `SecureTokenStore` | クラス | ログイン情報(PocketBase のトークンとユーザー)を、OS の安全な保管庫に保存する [ITokenStore]。 |
| FR-18 | `tokenStoreProvider` | Riverpod プロバイダ | ログイン情報の保存先。既定は [SecureTokenStore]。アプリは `PbConnection.open` に同じものを渡し、 |
| FR-19 | `authFilesSignOut` | 関数 | ログアウト。PocketBase のセッション(メモリ上のトークンと GraphQL 用の JWT)と、保管庫のログイン情報を |
| FR-20 | `signOutProvider` | Riverpod プロバイダ | ログアウトの実体。ログアウト画面が、確認のあとに1回呼ぶ。既定は [authFilesSignOut]。 |
| FR-21 | `LoginDestination` | クラス | ログイン画面へ(ユーザーIDまたはEメール + パスワード)。 |
| FR-22 | `LogoutDestination` | クラス | ログアウト画面へ。ユーザーメニューの「ログアウト」から開くと、確認 → ログアウト → 完了(5秒後にログイン画面へ)。 |
| FR-23 | `SignupDestination` | クラス | 新規登録(申請)へ。 |
| FR-24 | `PasswordResetRequestDestination` | クラス | パスワードを忘れたとき(再設定の依頼)へ。 |
| FR-25 | `AcceptCodeDestination` | クラス | 認証コードの入力へ(有効化・パスワード再設定の共通)。 |
| FR-26 | `NewPasswordDestination` | クラス | 新しいパスワードの入力へ(認証コードの入力のあと)。コードが無いときは認証コードの入力へ戻される。 |
| FR-27 | `SharedFilesDestination` | クラス | 共有ファイル(一覧・アップロード・ダウンロード)へ。 |
| FR-28 | `AdminSignupsDestination` | クラス | 管理者: アカウント管理(登録申請の一覧。アカウントの作成・却下)へ。 |
| FR-29 | `AdminResetsDestination` | クラス | 管理者: パスワード再設定の依頼の一覧(コードの発行)へ。 |
| FR-30 | `AdminCreateUserDestination` | クラス | 管理者: ユーザーの作成(PocketBase のユーザー + 有効化コードの発行)へ。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **画面案との対応**: 画面案は `tools/open-design/index.html`(`#/login`・`#/register`・`#/forgot`・`#/forgot/code`・`#/forgot/reset`、実装は `app.js` の「account: register / forgot password」)。見た目と項目は画面案に合わせ、遷移の流れは `t…
- **画面と遷移**: ログイン前の画面はマルチメインフレームの枠の外、共有ファイルと管理者の画面は枠の中。表示する文字列はすべて slang(日本語・English)。
- **構成**: | 種別 | ファイル | 内容 |
- **実装の指針**: アプリが差し込むもの: `pbConnectionProvider`(`PbConnection.open`。保存先には `SecureTokenStore` を渡し、同じものを `tokenStoreProvider` にも差し込む)、`app_core` の `signOutProvider`(`authFilesSignOut` を呼ぶ関数)と `si…
- **裏設定の手作業(ツール)**: 裏設定の入口(ID とパスワード)は、ログイン画面でこの機能の通常のログインより先に判定する(`backstage`)。その条件のハッシュと設定ファイルの暗号化は `tools/` のコマンドラインのツールで作る。
- **裏設定のキー一覧**: `tools/config_generator` で暗号化する設定ファイル(`backstage_config.json`)のキー。値のないキーだけの見本は `doc/backstage_config.json.example`。指定する項目だけ書く(`null`・空文字・型違いは「指定なし」)。定義は `packages/features/backstag…
- **未対応**: Html 画面案(`tools/open-design`)に、共有ファイルと管理者(新規登録の管理・再設定依頼の管理)の画面は無い。追加するときは画面案を先に更新する。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | `loggerProvider` を使う |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/auth_files.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 57 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 7 件、テストケース 57 件。

- `test/admin_create_user_test.dart`
  - 担当者の ID と氏名が初期値で入り(ID は変えられない)、ユーザーを作ると有効化コードを一度だけ見せる
  - メールは送らない(Eメールを入れても、メール送信を依頼しない。送信の選択も無い)
  - 入力の誤り(ユーザーID・担当者の ID・メールの形式)は、送信せずに表示する
  - 遷移先は JSON にできる
- `test/auth_files_module_split_test.dart`
  - 既定は、ログイン前の画面と枠の中の画面の両方
  - includeFramed: false はログイン前の画面だけ(枠の外に置く)
  - includeEntry: false は枠の中の画面だけ
  - 2つに分けても、すべての遷移先がどちらか一方で解決される
- `test/auth_files_test.dart`
  - 見本の遷移先はすべてパスに変換できる(登録漏れ検出)
  - 成功: ユーザーの表示を更新してダッシュボードへ進む
  - JWTを取得できないときは、ログインを取り消してメッセージを出す
  - メンテナンス中は、ログインを送信しない
  - 裏設定の入口: 特定のIDとパスワードなら、ログインせず裏設定へ進む
  - 裏設定の入口に一致しなければ、通常のログイン(存在を示さない)
  - 接続先が未設定でも、通常の画面。入口に一致しなければ、設定を促すエラーにする
  - 接続先が未設定でも、裏設定の入口には一致できる(接続先を設定するため)
  - 失敗: 理由に応じた文言を出し、画面に留まる
  - 未入力は項目ごとに「入力してください。」を出し、通信しない
  - リンク: パスワードを忘れたへ進める
  - 申請すると、受け付けた表示になる(ふりがなは本人情報に入る)
  - 形式の誤りは項目ごとに示し、通信しない
  - 受付停止(503)は文言にして、入力は残す
  - 依頼 → コード → 新パスワード → ログインに完了の案内
  - メールで依頼したときは、ユーザーIDを入力してもらう
  - コードの形式が違うときは先へ進めない
  - パスワードが短い・一致しないときは通信しない
  - コードの誤りは理由を区別せず同じ文言にする
  - コードが無いまま新しいパスワードを開くと、認証コードの入力へ戻す
  - 不正なIDは通信しない
  - アップロードすると版が増え、履歴からダウンロードできる
  - ファイルの選択が使えない環境では文言を出す
- `test/logout_test.dart`
  - 確認 → ログアウト → 完了。5秒後にログイン画面へ進む
  - 「今すぐログイン画面へ」ですぐ進む
  - キャンセルでダッシュボードへ戻り、ログアウトしない
  - セッション切れは、確認を出さずにログアウトして案内する
  - すでにログアウトしている(ユーザーなし)ときも、確認せずに完了を表示する
  - 実体が失敗しても、ログに残して完了を表示する(ログアウトで止めない)
  - ログアウトは、セッションも保管庫も触らず、表示だけを消す
  - ログイン画面の見出しは、アプリの名前を引数に取り、言語に合わせる
  - 上書きしないときは、製品の名前「生産管理」
  - パスと遷移先: ログアウトはセッション切れだけ ?expired=1 を付ける
- `test/secure_token_and_files_test.dart`
  - 書いた値を読み戻せ、削除すると消える(未保存は null)
  - キーは既定の名前で、別のキーの値と混ざらない
  - PbConnection の保存先として、ログイン情報を保管庫に残し、復元する
  - 保管庫が使えなくても例外にしない(読めなければ未ログイン、失敗はログへ。値は出さない)
  - toJson に保存する値は含まれない
  - 選んだファイルの名前と内容を返す。取り消しは null
  - 上限を超えるファイルは、内容を読む前に FileTooLargeException
  - 保存: 保存先が決まれば true、取り消しは false。名前と内容を渡す
  - 既定は OS のダイアログ。未対応の代役(UnsupportedFileGateway)に差し替えられる
  - セッションと保管庫を破棄し、ログインユーザーの表示を消す
  - 一部が失敗しても残りを続け、例外にしない(ログに残す)。何度呼んでも安全
- `test/server_failure_test.dart`
  - 接続に関する失敗は、種類によらず同じ文言だけを利用者に見せる
  - 利用者の文言に、サーバー名・アドレス・設定の案内を含めない
  - ログには、サーバーの種類と失敗の内容を残す(アドレス・秘密は含めない)
  - サーバーの種類は3つ
- `test/tab_order_test.dart`
  - タブキーで ID → パスワード → ボタンの順に移り、余分な停止がない

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
