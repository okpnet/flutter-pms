# auth_files

認証(PocketBase のログイン・登録申請・コード入力・パスワード再設定・管理者操作)と、共有ファイルのアップロード/ダウンロードの画面。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。
名前は「認証(auth)」と「共有ファイル(files)」の両方を表す。PocketBase のクライアントは `packages/infra/pbapi`(この機能は画面とページの流れだけを持つ)。ページの遷移の仕様は `tools/docker/pocketbase/README.md` に従う。Keycloak の `pms_authenticator` には着手しない。


## 画面案との対応
画面案は `tools/open-design/index.html`(`#/login`・`#/register`・`#/forgot`・`#/forgot/code`・`#/forgot/reset`、実装は `app.js` の「account: register / forgot password」)。見た目と項目は画面案に合わせ、遷移の流れは `tools/docker/pocketbase/README.md` に従う。

| 画面案 | この機能 | 画面案との違い(サーバーの仕様に従った点) |
|---|---|---|
| カード中央配置・エンブレム・見出し・「必須」の印・項目ごとのエラー・案内の帯(赤=失敗、アクセント色=完了) | `AuthCard`・`FieldRow`・`NoticeBanner` | 認証サーバーの画面を模した枠(URL バー)は出さない(Keycloak の内部ブラウザではないため) |
| ログイン: ユーザー名・パスワード | ユーザーIDまたはEメール・パスワード | ログインできるかの判定(申請中・無効など)はサーバー。0.7秒の送信中表示は「ログインしています...」のボタン表示にする |
| 新規登録: ユーザーID・メール・名前・ふりがなの4項目が必須 → 6桁コードをメールで送る | 同じ4項目 → 「申請を受け付けました」 | サーバーは管理者の承認制で、ユーザーIDの重複は応答に出さない(いつも同じ応答)。コードは承認のあとに渡される。ふりがなは申請の本人情報(`profile.ruby`)に入れる |
| パスワードを忘れた: ユーザーIDまたはメール → 6桁コード → 新しいパスワード | 同じ3画面 | コードは12文字(`ABCD-EFGH-JKLM`。ハイフン・空白・大文字小文字は区別しない)で、メールが無いユーザーは管理者から受け取る。コードの正否はサーバーが最後に判定する(コードは「新しいパスワード」の送信まで画面の状態に預かる) |

## 画面と遷移
ログイン前の画面はマルチメインフレームの枠の外、共有ファイルと管理者の画面は枠の中。表示する文字列はすべて slang(日本語・English)。

| 画面 | 遷移先 | パス | 枠 | 内容 |
|---|---|---|---|---|
| ログイン | `LoginDestination` | `/auth/login` | 外 | 成功したらログインユーザーの表示(`userSummaryProvider`)を更新してダッシュボードへ。空は「入力してください。」、誤りは「ユーザーIDまたはパスワードが正しくありません。」を帯で表示。リンク: パスワードを忘れた/新規登録/認証コードをお持ちの方。登録・再設定が終わったときは完了の案内の帯(`authFlashProvider`) |
| 新規登録 | `SignupDestination` | `/auth/register` | 外 | ユーザーID(半角英数字と `. _ -` の4〜32文字)・メールアドレス・名前・ふりがな(ひらがな/カタカナ)。フォーカスが外れたときと送信時に検証。受付停止(503)・回数超過(429)は文言にする |
| パスワードを忘れた | `PasswordResetRequestDestination` | `/auth/forgot` | 外 | ユーザーIDまたはメールアドレス。応答はいつも同じ。送信後は認証コードの入力へ |
| 認証コードの入力 | `AcceptCodeDestination` | `/auth/forgot/code` | 外 | 有効化(承認後)とパスワード再設定の共通の入口。ユーザーID(「忘れた」で入力したIDを引き継ぐ。メールのときは空)+ 認証コード(12文字)。形式だけ確認して「新しいパスワード」へ |
| 新しいパスワード | `NewPasswordDestination` | `/auth/forgot/reset` | 外 | 8文字以上と確認の一致。コードを預かっていないときは認証コードの入力へ戻す。送信するとコードとパスワードをまとめてサーバーへ。誤り・期限切れ・回数超過は同じ文言。成功してもログインはせず、ログインへ戻して完了を案内する |
| 共有ファイル | `SharedFilesDestination` | `/auth/files` | 中 | ファイルIDで版の履歴、アップロード(同じIDなら新しい版。上書きしない)、ダウンロード。更新・削除はできない |
| 新規登録の管理 | `AdminSignupsDestination` | `/auth/admin/signups` | 中 | 管理者。申請の一覧、承認(App DB で登録済みの担当者のIDを指定 → 認証コードを一度だけ表示)、却下 |
| 再設定依頼の管理 | `AdminResetsDestination` | `/auth/admin/resets` | 中 | 管理者。メールなしユーザーの依頼の一覧、本人確認のうえ再設定コードを発行(一度だけ表示) |

画面の流れ: ログイン → (新規登録 → 受付 → 管理者が承認 → コードを受け取る → 認証コードの入力 → 新しいパスワード → ログイン)、(パスワードを忘れた → 認証コードの入力 → 新しいパスワード → ログイン)。担当者の登録(App DB への書き込み)は `organization` の担当者の画面で行い、この機能は `app_user_id` を受け取って承認するだけにする。

## 構成
| 種別 | ファイル | 内容 |
|---|---|---|
| 実装の入口 | `lib/auth_files.dart` | `AuthFilesModule`、`authFilesStringsProvider`、ファイル選択・保存の差し込み口 |
| 契約の入口 | `lib/auth_files_api.dart` | 遷移先の型 |
| モジュール | `lib/src/auth_files_module.dart` | ルートと遷移先の変換 |
| 画面 | `lib/src/pages/` | `login_page`・`register_page`・`forgot_page`・`code_page`・`new_password_page`・`shared_files_page`・`admin_pages` |
| 部品 | `lib/src/pages/form_support.dart` | `AuthCard`(ログイン前の枠)・`FieldRow`(必須の印・項目ごとのエラー)・`NoticeBanner`・`BusyAction`(処理中・エラーの共通処理) |
| 検証 | `lib/src/form_rules.dart` | 画面案の `RULES`(ユーザーID・メール・ふりがな・コード・パスワード) |
| 状態 | `lib/src/account_flow.dart` | 画面をまたぐ状態(`accountFlowProvider`:ユーザーID・コード、`authFlashProvider`:完了の案内) |
| 失敗の文言 | `lib/src/failure_message.dart` | `PbException.kind` を利用者向けの文言へ |
| ファイル | `lib/src/file_gateway.dart` | ファイルの選択(`IFilePickerGateway`)・保存(`IFileSaverGateway`) |
| 文字列 | `lib/src/i18n` | slang の Yaml(`ja`が基準、`en`)。`slang.yaml` は `string_interpolation: braces` |

## 実装の指針
1.  アプリが差し込むもの: `pbConnectionProvider`(`PbConnection.open`。トークンの保存先は `ITokenStore`)、`filePickerGatewayProvider`・`fileSaverGatewayProvider`(既定は未対応で、使うと「この環境ではファイルを選択・保存できません」を出す)。この機能は接続先もファイル選択のパッケージも持たない。
2.  ログイン前の画面(ログイン・新規登録・パスワードを忘れた・認証コードの入力・新しいパスワード)はアプリの枠(`ShellRoute`)の外に置く(サイドバー・タイトルバーを出さない)。
3.  失敗は文字列ではなく種類(`PbFailureKind`)で受け、画面が `failureMessage` で文言にする。コードの誤りは理由を区別しない(サーバーが区別しない)。ログの文言は多言語の対象にしない。
4.  ログは `loggerProvider` を `ref` から取得し、この機能が発生元のものだけを `[auth_files]` 付きで出す。パスワード・コード・トークンはログに残さない。コードは「新しいパスワード」を送るまでの間だけ `accountFlowProvider` に預かり、送信後(または失敗でやり直すとき以外)に消す。発行したコード(管理者)は表示の間だけ持つ。
5.  クライアント側の事前検証は形式だけ(必須、ユーザーID・メール・ふりがな・コードの形式、パスワードの長さと一致、ファイルIDの形式)。重複・コードの正否・状態はサーバーが判定する。
6.  ログイン後は `app_core` の `DashboardDestination` へ進む(`app_core_api.dart` の型だけに依存する)。
7.  `IPageSessionMediator` の PocketBase 実装への接続は別の Issue。


## 規則/仕様
1.  ディリクトリ/ファイル
    1.  生成結果のレポートは`doc/log`ディリクトリにファイル名`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  同じ年月日、同じ番号に対する追加変更は`年月日_4桁ゼロ埋の番号_add_1からの連番.md`として保存する。
    2.  生成したライブラリに関する使い方やヘルプなどの使用にかかわるレポートは`doc/contents`の保存する。
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

## テスト
1.  共通の規則は`packages/features/CLAUDE.md`の「テスト」に従う。
2.  画面のテストは `pbapi` のサービス(`SessionService`・`AccountService`・`AdminService`・`SharedFileService`)を Provider の上書きで差し替える。サーバーには接続しない。
3.  PocketBase の実サーバーを使う通信テストは `packages/infra/pbapi` の側が持つ。この機能は、サーバーのデータを変更するテストを書かない。

## 未対応
1.  ビジュアルテスト用の `example`(features/CLAUDE.md の「ビジュアルテスト」)。
2.  アプリ(`pms_app`)への組み込み(`featureModules`、`pbConnectionProvider`・ファイル選択/保存の実装、ログイン前の画面を枠の外に置く配線、メニュー項目)。
3.  Html 画面案(`tools/open-design`)に、共有ファイルと管理者(新規登録の管理・再設定依頼の管理)の画面は無い。追加するときは画面案を先に更新する。
