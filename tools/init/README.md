# tools/init

サーバーの初期化用のスクリプト置き場。メイン(本番)用とテスト用(`test_` 付き)に分かれる。

| ファイル | 対象 | 内容 |
|---|---|---|
| `admin_init.bat` | 本番 | App の管理者を PocketBase に用意し、PostgreSQL の担当者と対応させる(入力式) |
| `user_init.bat` | 本番 | CSV の一般の利用者を、担当者に対応させて PocketBase に登録する(有効化コードを発行) |
| `test_admin_init.bat` | テスト環境 | 管理者を用意する(`.env` から読む。`admin_init.ps1 -Test`) |
| `test_user_init.bat` | テスト環境 | ダミーの担当者を、PocketBase のユーザーに追加する(`user_init.ps1 -Test`) |
| `init_common.ps1` | — | 共通の部品(直接は実行しない) |

どれも何度実行しても安全(対応済みなら何もしない)。bat は PowerShell の ps1 を呼ぶだけ。自動実行のときは `INIT_NOPAUSE=1` で最後の一時停止を省く。
終了コード: `0` 完了 / `1` 失敗 / `2` 一部を処理できなかった(担当者が無い・行の誤り、など)。

実行順: **管理者 → 一般の利用者**(利用者の登録は、管理者になりすまして担当者の一覧を PostGraphile から読むため、先に管理者が要る)。

## 管理者: admin_init.bat / test_admin_init.bat

1. PostgreSQL の担当者(`info_staff`)のID(UUID)を、PocketBase の `users.app_user_id` に入れる(更新)。すでに同じなら何もしない。
2. PocketBase に管理者(`role=admin`、有効。superuser ではない)がいなければ追加する。いれば `role`・有効・Eメールだけそろえる(パスワードは `-ResetPassword` のときだけ変える)。
3. 実行時に、管理者の `username`・パスワード・`email`(空でもよい)を入力する。
4. アプリと同じ手順で確認する(ログイン → GraphQL 用の JWT(`role=pms_admin`、`staff_id`))。

```bat
tools\init\admin_init.bat                          :: 足りない項目は、その場で入力
tools\init\admin_init.bat -PocketBaseUrl https://pb.example.com -GraphqlUrl https://gql.example.com/graphql -StaffCode ADMIN
tools\init\test_admin_init.bat                     :: テスト環境(.env の値を使う)
tools\init\test_admin_init.bat -ResetPassword
```

### 本番(admin_init)
- 入力項目: PocketBase・PostGraphile の接続先、superuser のメール・パスワード、管理者の `username`・パスワード(2回)・`email`(省略可)、対応させる担当者のコード。引数・環境変数(`PB_URL`・`GRAPHQL_URL`・`PB_SUPERUSER_EMAIL`・`PB_SUPERUSER_PASSWORD`)で渡してもよい(`-NoPrompt` で入力を止める)。
- 接続先は `https`(ローカルのネットワーク、`localhost`・`10.x`・`172.16-31.x`・`192.168.x.x`・`*.local` だけ `http` 可)。
- パスワード・superuser の資格情報は、画面・ファイル・ログに出さない。`.env` は読まない。
- 担当者は、コードを指定して(`-StaffCode`)、PostGraphile から引く。担当者が無ければ紐付けず、終了コード 2。

### テスト(test_admin_init)
設定は `tools/docker/pocketbase/.env`(Git 管理外)。

| 変数 | 内容 |
|---|---|
| `PB_SUPERUSER_EMAIL` / `PB_SUPERUSER_PASSWORD` | PocketBase の superuser(必須) |
| `APP_ADMIN_USER` | 管理者の `username`。無ければ `admin` |
| `APP_ADMIN_PWD` | 管理者のパスワード。無ければ、作成時だけ乱数で作って、**一度だけ**表示する |
| `APP_ADMIN_NAME` / `APP_ADMIN_EMAIL` | 任意。表示名・Eメール |
| `PB_PASSWORD_MIN_LENGTH` | パスワードの最小の長さ(既定 8) |

接続先の既定は PocketBase `http://192.168.1.103:8090`、PostGraphile `http://192.168.1.100:5000/graphql`(なければ `192.168.9.245`)。担当者は、コードが `username` と同じもの(大文字小文字を区別しない)、無ければ `ADMIN`(`10_mrp_dummy.sql` が作る)。

DB の関数は、JWT の `staff_id` を UUID として読む。PocketBase のサーバー起動時の自動作成(`pb_hooks/05_app_admin.pb.js`)の `app_user_id` の既定は UUID ではないため、このバッチが担当者のIDに直す。

## 一般の利用者: user_init.bat / test_user_init.bat

### 本番(user_init)
```bat
tools\init\user_init.bat -File users.csv -AdminUser <管理者のusername>
```
CSV(UTF-8、見出し行 `username,staff_code,email,name`。`email`・`name` は省略可)の各行を、コードが `staff_code` の担当者に対応させる。
- 未登録なら、PocketBase の管理 API(`POST /api/app/admin/users`)で登録する。**パスワードは決めず**、有効化コードを発行して、結果の表に一度だけ表示する(本人が、ログイン画面の「認証コードをお持ちの方」から、`username` とコードで初めてパスワードを決める)。ファイルには残さない。
- 登録済みで `app_user_id` が違うなら、更新する。同じなら何もしない。管理者のアカウントは変更しない。
- 担当者が見つからない・`username` の形式が違う・担当者がすでに別のユーザーと対応している行は、飛ばして続け、最後に終了コード 2。

### テスト(test_user_init)
```bat
tools\init\test_user_init.bat
tools\init\test_user_init.bat -UserPassword <共通のパスワード>
```
PostgreSQL のダミーの担当者(管理者の担当者を除く)を、`username`=コード(小文字)、`role=user`、有効、共通のパスワードで追加し、担当者のID(`info_staff_id`)を `app_user_id` に入れる。すでにユーザーがいれば `app_user_id` だけ更新する。
パスワードは、`-UserPassword`、`.env` の `APP_DUMMY_USER_PWD`、入力、の順。空なら乱数で作って一度だけ表示する。

## ダミーの担当者(テスト環境のPostgreSQL)
流してから、バッチを実行する。何度流しても同じ(あるコードは作らない)。
- `tools/docker/postgresql/script/10_mrp_dummy.sql`: 担当者 `ADMIN`。
- `tools/docker/postgresql/script/12_app_admin_dummy.sql`: 管理者の `username` が `admin` 以外のとき、同じコードの担当者を作る。`psql -d test_avocado -v admin_code=ADMINISTRATOR -f 12_app_admin_dummy.sql`
- `tools/docker/postgresql/script/13_user_dummy.sql`: 利用者の担当者 `TANAKA`・`SUZUKI`・`SATO`。

## アプリからのログイン
`apps/pms_app` を `--dart-define=POCKETBASE_URL=<PocketBase の接続先>` で起動し、ログイン画面に `username` とパスワードを入力する。
