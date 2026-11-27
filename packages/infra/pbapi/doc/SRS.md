# pbapi ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

pbapi: PocketBaseのJWT認証・セッション・ファイル共有のクライアント。

`pbapi`は、PocketBase(テスト環境は`http://192.168.1.103:8090`)の認証・セッション・ファイルのクライアントです。サーバーの仕様は`tools/docker/pocketbase/README.md`を参照します。

### 1.2 範囲

- 場所: `packages/infra/pbapi`(infra(通信・認証・ログ・テストの道具))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`pms_app_example`(アプリ)、`auth_files`(パッケージ)、`auth_files/example`(example)、`user_profile`(パッケージ)、`user_profile/example`(example)、`jwt_verification_test`(パッケージ・テスト用)

### 2.2 依存先(ワークスペース内)

`logger_provider`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `AccountService` | クラス | 登録申請・コード入力・パスワードの変更と再設定・プロフィール変更。 |
| FR-02 | `AvatarService` | クラス | ユーザーのアバター画像(サーバーの `user_avatars`)。サーバーの仕様は README「9. ユーザーアバター」。 |
| FR-03 | `UserAvatar` | クラス | ユーザーのアバター画像の識別情報(サーバーの `user_avatars`)。画像の実体は [AvatarService.download] で取る。 |
| FR-04 | `AdminService` | クラス | 管理者の操作(申請の承認・却下、先に登録、コードの発行、無効化)。 |
| FR-05 | `CodeKind` | 列挙型 | コードの種類。 |
| FR-06 | `IssuedCode` | クラス | 管理者が発行したコード。本人へ手渡しする(メールで送れたときは [mailed] が true)。 |
| FR-07 | `ResetRequest` | クラス | メールを登録していないユーザーのパスワード再設定の依頼(管理者が本人確認をしてコードを渡す)。 |
| FR-08 | `SignupRequest` | クラス | 登録の申請(管理者が承認する前の本人情報)。 |
| FR-09 | `PbConnection` | クラス | PocketBase への接続(SDK のクライアント・トークンの保存先・ロガー)。各サービスが共有する。 |
| FR-10 | `PbEndpoint` | クラス | PocketBase の接続先。 |
| FR-11 | `PbFailureKind` | 列挙型 | 失敗の種類。呼び出し側は [PbException.kind] で処理を分ける。 |
| FR-12 | `PbException` | クラス | このライブラリが投げる例外。SDK の [ClientException](URLにトークンが入りうる)は外へ出さない。 |
| FR-13 | `ITokenStore` | インターフェイス | ログイン情報(トークンとユーザー)の保存先。 |
| FR-14 | `InMemoryTokenStore` | クラス | メモリにだけ保存する。アプリを閉じるとログアウトになる。テストと既定。 |
| FR-15 | `PersonalFileService` | クラス | 個人ファイル(設定のアップロード)。本人だけが参照・更新できるファイル。 |
| FR-16 | `SharedFileService` | クラス | 共有ファイル(`app_files`)のアップロードとダウンロード。 |
| FR-17 | `fetchRecordFile` | 関数 | レコードのファイル項目([field]。既定は `file`)を、短時間だけ有効なトークンでダウンロードする。 |
| FR-18 | `StoredFile` | クラス | 保存したファイルの識別情報。アプリのDBには [recordId]([appFileId]・[revision])だけを保存する。 |
| FR-19 | `DownloadedFile` | クラス | ダウンロードしたファイル。アプリ側で保存する。 |
| FR-20 | `pbConnectionProvider` | Riverpod プロバイダ | PocketBase への接続。アプリが起動時に [PbConnection.open] で開き、上書きする。 |
| FR-21 | `sessionServiceProvider` | Riverpod プロバイダ |  |
| FR-22 | `accountServiceProvider` | Riverpod プロバイダ |  |
| FR-23 | `adminServiceProvider` | Riverpod プロバイダ |  |
| FR-24 | `sharedFileServiceProvider` | Riverpod プロバイダ |  |
| FR-25 | `personalFileServiceProvider` | Riverpod プロバイダ |  |
| FR-26 | `avatarServiceProvider` | Riverpod プロバイダ |  |
| FR-27 | `AuthSession` | クラス | ログイン中のセッションの情報。 |
| FR-28 | `GraphqlToken` | クラス | GraphQL サーバー(PostGraphile)用の短期の JWT。PocketBase のトークンとは別物。 |
| FR-29 | `SessionService` | クラス | ログイン・ログアウトとセッションの確認。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **このライブラリについて**: `pbapi`は、PocketBase(テスト環境は`http://192.168.1.103:8090`)の認証・セッション・ファイルのクライアントです。サーバーの仕様は`tools/docker/pocketbase/README.md`を参照します。
- **セキュリティ**: トークンは秘密情報。`AuthSession.toJson`・例外・ログに含めない。保存先`ITokenStore`は本番では`flutter_secure_storage`などの安全な保管庫で実装する(`shared_preferences`の平文は避ける)。GraphQL用のJWTも同じ扱い。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/pbapi.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 76 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 5 件、テストケース 76 件。

- `test/avatar_test.dart`
  - 取得: 未登録はnull、登録済みは識別情報を返す。キャッシュのキーは画像のファイル名
  - 未ログインは通信せずunauthorized
  - 複数ユーザーをまとめて取得する(50件ずつ・重複は除く)
  - 登録: 無ければ作成(user+image)。あれば差し替え(PATCH)
  - 権限が無いとき: 登録は400=validation、差し替え・削除は404=notFound
  - 削除: 未登録なら何もしない
  - 画像の取得: tokenを都度取り、サムネイルを指定できる。URLは例外に出さない
  - 不正なユーザーID・サムネイルはArgumentError(通信しない)
- `test/pbapi_test.dart`
  - 末尾の /api と / を取り除く
  - 平文の http は、ローカルのネットワークだけ許す
  - ログインでトークンを返し、保存先に残る。toJsonにトークンは含まれない
  - 保存済みのトークンから復元する。期限切れは捨てる
  - ID/パスワードの不一致はinvalidCredentials。エラーログには残さない
  - 無効・未承認のユーザーの403も、パスワード違いと同じinvalidCredentials
  - 試行が多すぎればrateLimited
  - ログアウトでトークンを破棄する
  - 一致すれば true。今のセッション・GraphQL 用のトークンは変わらない
  - 不一致(400)・状態による拒否(403)は false。空のパスワードは通信せず false
  - ログインしていなければ unauthorized。試行が多すぎれば rateLimited
  - パスワードはログ・エラーに出ない
  - 未ログインならfalse(通信しない)
  - 有効ならtrue。minInterval内は問い合わせを省く
  - サーバーが401ならトークンを破棄してfalse
  - 通信できないときは有効/無効を決めず、networkを投げてトークンを残す
  - watchは定期的に確認して結果を流し、通信できない回は流さない
  - 登録申請は空の項目を送らず、ログインはしない
  - 受付停止(503)はunavailableで、一時的な失敗として扱うがエラーログには残さない
  - コード入力はコードを加工せず送り(照合はサーバー)、ログインはしない
  - コードが無効なら理由によらずvalidation。例外とログにコード・パスワードを含めない
  - 項目のエラーは文言ではなくコードで持つ
  - 短いパスワードは通信せずArgumentError(値は例外に出さない)
  - パスワードを忘れた依頼は、ユーザーIDまたはEメールをそのまま送る
  - パスワード変更は古いパスワードを送り、新しいパスワードで入り直す
  - 古いパスワードが違えばvalidation(oldPassword)。未ログインはunauthorized
  - プロフィール変更は名前だけを送る(アバターはAvatarService)。未ログインはunauthorized
  - 未ログインはunauthorized(通信しない)
  - 期限まで使い回し、期限の前なら取り直す。toStringにトークンは含まれない
  - ログアウトせずに別のユーザーでログインし直しても、前のユーザーのJWTを使い回さない
  - ログアウトで破棄する。サーバーが無設定(404)ならnotFound
  - 未ログインは通信せずunauthorized
  - 申請の一覧を古い順に取り、本人情報を読む
  - 承認はapp_user_idを送り、コードを返す。toJson・toStringにコードを含めない
  - 一般ユーザーの呼び出しはサーバーのforbiddenに従う
  - 却下・無効化・再有効化・先に登録・再設定コード
  - 再設定依頼の一覧は未対応だけを、依頼したユーザーの名前つきで返す
  - 空のユーザーIDはArgumentError(通信しない)
  - ログ用の1行に、操作・種類・ステータス・項目のコードを含み、入力値は含めない
  - 未ログインは通信せずunauthorized(空の一覧を「見つからない」と取り違えない)
  - アップロードはIDと版を返す
  - 版が衝突したら1回だけやり直す。2回続けば失敗
  - DB の trans_file_id(UUID。36 文字・ハイフン入り)を、そのままファイルIDにできる
  - 不正なファイルIDはArgumentError(通信しない)
  - ダウンロードはファイルIDから最新の版を取り、短命トークンで本体を取得する
  - 版を指定するとその版を探す。無ければnull
  - ファイル本体の取得に失敗したらPbException(URLを含めない)
  - 無ければ作成する
  - 未ログインのアップロードはunauthorized(通信しない)
  - あれば上書き(更新)する
  - ダウンロードと削除。無ければnull・何もしない
  - 不正なキーはArgumentError
  - PbException・PbConnectionはJSONにできる
- `test/pocketbase_avatar_test.dart`
  - 本人は登録・取得・差し替え・削除でき、差し替えるとファイル名が変わる
  - 他の一般ユーザーは、他人のアバターを登録・差し替え・削除できない(閲覧はできる)
  - 管理者は、他のユーザーのアバターを登録・差し替え・削除できる
  - 画像でないファイル(拡張子だけ画像)と大きすぎるファイルは、validation で断られる
  - 未ログインでは取得できない(通信しない)
- `test/pocketbase_integration_test.dart`
  - 有効化コードでパスワードを決めてログインでき、同じコードは二度使えない。有効化前はログインできない
  - ログイン: 誤りはinvalidCredentials、IDは大文字小文字を区別せず、ログアウトで無効になる
  - セッション確認: 期限内ならtrue、複数回確認できる
  - パスワード変更: 古いパスワードが違えば拒否、一致すれば適用。以前のトークンは無効になる
  - 共有ファイル: 版が増え、ファイルIDから最新・指定の版をダウンロードでき、他のユーザーも取得できる
  - 個人ファイル: 本人だけが参照でき、同じキーは上書きされ、削除できる
  - パスワード再設定の依頼: 登録の有無がわからない応答(存在しないメールでも成功)
  - 申請→一覧→承認→コード入力→ログイン→無効化でログインできなくなる
- `test/pocketbase_server_test.dart`
  - 存在しないユーザーのログインはinvalidCredentials(またはrateLimited)
  - 未ログインで共有ファイルを参照すると、unauthorizedになる

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
