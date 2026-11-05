# tools/init

サーバーの初期化用のスクリプト置き場。

| ファイル | 対象 | 内容 |
|---|---|---|
| `test_init.bat` | **テスト環境** | アプリ(`pms_app`)からログインできる管理者ユーザーを用意する。本体は `test_init.ps1` |
| `init.bat` | 本番 | **未作成**(下の「メインのバッチ」) |

## test_init.bat(テスト環境)

PocketBase に App の管理者ユーザー(superuser ではない。`role=admin`、有効)を用意し、PostgreSQL の担当者(`info_staff`)と紐付ける。何度実行しても安全(すでにあれば作り直さない)。

```bat
tools\init\test_init.bat
tools\init\test_init.bat -AdminUser admin -StaffCode ADMIN
tools\init\test_init.bat -ResetPassword          :: 既存のユーザーのパスワードも変更する
```

### 設定(`tools/docker/pocketbase/.env`。Git 管理外)
| 変数 | 内容 |
|---|---|
| `PB_SUPERUSER_EMAIL` / `PB_SUPERUSER_PASSWORD` | PocketBase の superuser(必須。ユーザーの作成に使う) |
| `APP_ADMIN_USER` | 管理者のユーザーID。無ければ `admin`(PocketBase のサーバー起動時の自動作成 `pb_hooks/05_app_admin.pb.js` と同じ変数) |
| `APP_ADMIN_PWD` | 管理者のパスワード。無ければ、作成時だけ乱数で作って、**一度だけ**画面に表示する |
| `APP_ADMIN_NAME` / `APP_ADMIN_EMAIL` | 任意。表示名(既定: 管理者)・Eメール |
| `PB_PASSWORD_MIN_LENGTH` | パスワードの最小の長さ(既定 8) |

接続先は、引数・環境変数(`PB_URL`・`GRAPHQL_URL`)で変えられる。既定は PocketBase `http://192.168.1.103:8090`、PostGraphile `http://192.168.1.100:5000/graphql`(なければ `192.168.9.245`)。

### やること
1. PocketBase の superuser でログインする。
2. 管理者ユーザーを用意する(なければ作成。あれば `role=admin`・有効にそろえる。パスワードは `-ResetPassword` のときだけ変える)。
3. **担当者と紐付ける**: PostgreSQL の担当者のID(UUID)を、PostGraphile から引いて、PocketBase のユーザーの `app_user_id` に設定する。担当者は、コードがユーザーIDと同じもの(大文字小文字を区別しない)、無ければ `ADMIN`(ダミーデータ `10_mrp_dummy.sql` が作る)。
   - DB の関数は、JWT の `staff_id` を UUID として読む。PocketBase のサーバー起動時の自動作成(`05_app_admin.pb.js`)の `app_user_id` の既定(ユーザーIDの `.` を `_` にしたもの)は UUID ではないため、紐付けは担当者のIDで行う。
4. アプリと同じ手順で確認する(ログイン → GraphQL 用の JWT(`role=pms_admin`、`staff_id`)→ PostGraphile)。

### 終了コード
`0` 完了 / `1` 失敗 / `2` ユーザーは用意したが、担当者と紐付けられなかった(ダミーデータが無い、など)。

### 担当者が無いとき
ダミーデータを流してから、もう一度実行する。
- `tools/docker/postgresql/script/10_mrp_dummy.sql`: 担当者 `ADMIN` を作る(ユーザーIDが `admin` ならこれで足りる)。
- `tools/docker/postgresql/script/12_app_admin_dummy.sql`: ユーザーIDが `admin` 以外のとき、同じコードの担当者を作る。
  `psql -d test_avocado -v admin_code=ADMINISTRATOR -f 12_app_admin_dummy.sql`

### アプリからのログイン
`apps/pms_app` を `--dart-define=POCKETBASE_URL=http://192.168.1.103:8090` で起動し、ログイン画面に管理者のユーザーIDとパスワードを入力する。

## メインのバッチ(未作成)
本番用の初期化バッチ(`init.bat`)は、まだ作られていない。`test_init.bat` はテスト環境専用で、次の点を本番では変える必要がある。
- 管理者のパスワードを `.env` や画面表示に頼らず、安全な手段で渡す(初回ログイン後に変更させる、など)。
- 担当者の紐付けを、ダミーデータではなく、実際の担当者の登録(管理者が App DB に登録した担当者のID)に基づいて行う。
- 本番の接続先(`https`)、superuser の資格情報の扱い、実行できる環境の制限。
