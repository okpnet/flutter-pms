# App ログインサービス (PocketBase / Docker Compose)

Flutter アプリ (App) 向けの **認証（招待制）・セッション管理・共有ファイル保管** を PocketBase に任せる構成です。
OAuth2 は今回の対象外です。PocketBase 標準機能で後から有効化できます。

```
┌──────────┐ 招待コード登録 / ログイン  ┌──────────────────┐
│ Flutter  │ ───────────────────────▶ │   PocketBase     │── PB_DATA_DIR    (SQLite)
│   App    │ ◀──── auth token ─────── │ users / invites  │── PB_STORAGE_DIR (ファイル実体)
│          │ 共有ファイル up/down      │ app_files        │
│          │                          └──────────────────┘
│          │ ID のみ保存 ───────────▶ App DB (pb_user_id / pb_file_record_id)
└──────────┘
```

## 0. 動作環境

### 想定している環境

| 項目 | 内容 |
|---|---|
| ハードウェア | Raspberry Pi（Pi 3 / 4 / 5 / Zero 2 W） |
| OS | Raspberry Pi OS（Raspbian）。**64bit 版を推奨** |
| Docker | Docker Engine＋**Compose v2 プラグイン**（`docker compose` コマンド） |
| PocketBase | v0.40.6。公式バイナリをビルド時に取得 |
| 保存先 | `PB_DATA_DIR` / `PB_STORAGE_DIR` は USB SSD または NAS を推奨 |

### CPU アーキテクチャと対応状況

Dockerfile がコンテナ内で `uname -m` を見て、合ったバイナリを自動で選びます。

| `uname -m` | 該当する環境 | 取得するバイナリ | 対応 |
|---|---|---|---|
| `aarch64` | 64bit OS（Pi 3/4/5/Zero 2 W）、または 64bit カーネルの 32bit OS | `linux_arm64` | ○ 推奨 |
| `armv7l` | 32bit OS（Pi 2/3/4） | `linux_armv7` | ○ |
| `armv6l` | Pi 1 / Zero / Zero W | − | ×（PocketBase の公式バイナリがない。ビルド時にエラーで止まる） |
| `x86_64` | 一般的な PC・サーバー | `linux_amd64` | ○（開発用） |

### 事前確認

```bash
uname -m                          # 上の表で確認
getconf LONG_BIT                  # 64 なら 64bit OS
docker version --format '{{.Server.Os}}/{{.Server.Arch}}'
docker compose version            # v2 系であること
```

### インストール（Raspberry Pi OS）

```bash
curl -fsSL https://get.docker.com | sh       # Docker Engine + Compose v2 プラグイン
sudo usermod -aG docker $USER                # sudo なしで docker を使う (再ログイン後に有効)
```

### Raspberry Pi での注意点

- **`docker-compose`（v1、ハイフンあり）は使えません。** この構成は `name:` や `bind.create_host_path` を使っているので、`docker compose`（v2）で実行してください。
- **SD カードに DB を置かないでください。** SQLite は書き込みが多く、SD カードの寿命が縮みます。また、電源が落ちたときにデータが壊れやすくなります。`PB_DATA_DIR` と `PB_STORAGE_DIR` は USB SSD に置くのが安全です。
  - 例：`PB_DATA_DIR=/mnt/ssd/pb_data`、`PB_STORAGE_DIR=/mnt/ssd/storage`
- **外部ディスクを使う場合は、起動時に自動でマウントされるよう `/etc/fstab` に登録してください。** マウントされないまま Docker が起動すると、SD カード上に空のフォルダが作られ、新しい DB として起動してしまいます。
- **ARM の Pi でイメージをビルドすると時間がかかります。** 再ビルドが必要なのは、`entrypoint.sh` と `Dockerfile` を変更したときだけです。`pb_hooks` と `pb_migrations` はマウントしているので、再起動だけで反映されます。
- **メモリの目安：** PocketBase 本体は数十MB程度です。1GB の Pi でも動きます。100MB クラスのファイルを同時に何本もアップロードする場合は、2GB 以上が安心です。
- **時刻：** トークンの有効期限や招待の期限は時刻を使います。Pi に RTC がない場合は、NTP（`timedatectl` で確認）で時刻が合っていることを確認してください。

## 1. 設定 (.env に集約)

| 区分 | 変数 |
|---|---|
| 1.1 superuser | `PB_SUPERUSER_EMAIL` / `PB_SUPERUSER_PASSWORD` / `PB_SUPERUSER_SYNC`（true=毎起動 .env の値で上書き、false=初回だけ作成） |
| 1.2 保存先パス | `PB_DATA_DIR`（DB・バックアップ）/ `PB_STORAGE_DIR`（ファイル実体。NAS なども指定可） |
| 招待制 | `PB_INVITE_ONLY` / `PB_INVITE_TTL_HOURS` / `PB_INVITE_LINK_BASE` / `PB_RATE_LIMIT_INVITE_PER_MIN` |
| ログイン | `PB_IDENTITY_FIELDS`（`username,email`=ユーザーIDまたはEメール〔既定〕／`username`=ユーザーIDのみ） |
| セッション | `PB_AUTH_TOKEN_DURATION` |
| 任意 | SMTP（招待メール）、S3、Caddy（HTTPS） |

## 2. ボリューム

| ホスト側（.env） | コンテナ側 | 内容 |
|---|---|---|
| `PB_DATA_DIR` | `/pb/pb_data` | data.db、auxiliary.db、backups |
| `PB_STORAGE_DIR` | `/pb/pb_data/storage` | アップロードファイル（`<collectionId>/<recordId>/<file>`） |

存在しないディレクトリは起動時に作成されます（`create_host_path`）。DB とファイル実体を別の場所に置けるので、ファイル実体だけ容量の大きいディスクへ分けられます。

## 3. 招待制・ユーザーIDでのログイン

最初の起動時から招待制です。マイグレーションで `users` の自己登録 API を閉じ、さらに起動のたびに閉じ直します（`PB_INVITE_ONLY=true`）。
ログインには、メールアドレスではなく **管理者が決めたユーザーID（`username`）** を使います。

```
① 管理者が招待を発行
     ./scripts/invite.sh <ユーザーID> [app_user_id] [email] [メモ]
     例) ./scripts/invite.sh tanaka.t U0001 "" "製造部"
     → 12桁の招待コード（有効期限 72時間）を表示 → 本人に手渡し
       email を指定し、かつ SMTP が有効なら招待メールも送信
② 利用者が App の「招待コードで登録」に ユーザーID + コード + パスワード を入力
     → POST /api/app/invites/accept
       ・1回限り／期限付き／ユーザーIDとコードの両方が一致したときだけ受け付け
       ・ユーザー作成。招待時の app_user_id（と email）を自動設定
       ・同じ IP からは 1分あたり 10回まで（超えると 429）
③ 「ユーザーIDまたはEメール」+ パスワードでログイン
```

**ログイン欄は「ユーザーIDまたはEメール」の1つだけです。** サーバー（PocketBase）が、入力値をユーザーIDとEメールの両方と照合します。App 側で入力の種類を判定する必要はありません。

| 入力例 | 照合先 |
|---|---|
| `tanaka.t` / `TANAKA.T` | ユーザーID（大文字小文字は区別しない） |
| `tanaka@example.com` / `Tanaka@Example.com` | Eメール（登録しているユーザーのみ。大文字小文字は区別しない） |

- ユーザーIDには `@` を使えないので、入力値がユーザーIDとEメールの両方に一致することはありません。
- Eメールも大文字小文字を区別しません（`pb_hooks/15_login_identity.pb.js` で補っています。PocketBase の標準の照合では区別されます）。
- Eメールを登録していないユーザーは、ユーザーIDでだけログインできます。
- ユーザーIDだけに限定したい場合は、`.env` を `PB_IDENTITY_FIELDS=username` にして再起動します。

| 項目 | 仕様 |
|---|---|
| ユーザーID（`username`） | 英数字と `.` `_` `-`、3〜32文字。**大文字小文字は区別しません**（`Tanaka` と `tanaka` は同じユーザー） |
| 一意性 | すでに使われているIDでは招待を発行できません（発行の時点でエラー） |
| 変更 | 本人は変更できません（ユーザーIDと `app_user_id` は管理者のみ変更可） |
| email | 任意。登録しておくと、招待メールとパスワード再設定メールが使えます |
| パスワードを忘れた場合 | email がないユーザーは、管理者が管理画面（users）でパスワードを再設定します |

- 管理画面の `invites` から発行することもできます（code と expires_at は空欄で作成すれば自動で入ります）。
- 他のユーザーからは `username` が見えます（アップロード者の表示用）。email は非公開です。

## 4. 共有ファイル（上書きしない）

| 操作 | 権限 |
|---|---|
| 一覧・参照・ダウンロード | ログイン済みの全ユーザー（共有） |
| アップロード | ログイン済みの全ユーザー。`uploaded_by` は自動設定 |
| 更新・削除 | **API からは不可**（superuser のみ） |

- **上書きしない仕組み**
  - 同じ `app_file_id` で再アップロードすると、`revision` が 1, 2, 3… と増えた新しいレコードになります。古い版は残ります。
  - `revision` はサーバーが採番します。クライアントからは指定できません。
  - `(app_file_id, revision)` に一意制約があるので、同時にアップロードされても上書きにはならず、片方が 400 になります（サンプルは自動で再試行）。
  - ストレージ上の物理ファイル名にもランダムな接尾辞が付くので、ファイルが上書きされることはありません。
- **ダウンロード**：短時間で失効する file token が必要です（＝ログインしていないと取得できません）。
- **App DB との紐付け**：App DB のファイル管理ID → `app_file_id`。版を区別したい場合は `pb_file_record_id`（または revision）も保存します。

## 5. セッション

- PocketBase がトークンを発行します（既定 7日）。App は **画面の切り替え・保存・呼び出しのたびに `ensureSession()`** を呼びます。
- サーバー側でトークンを検証して延長します。401/403/404 が返ったらトークンを破棄し、ログイン画面へ戻します。
- 全端末を強制ログアウトさせるには、管理画面で該当ユーザーのパスワードを変更します。

## 6. 起動

```bash
cp .env.example .env
#   PB_ENCRYPTION_KEY (openssl rand -hex 16), PB_SUPERUSER_*, PB_DATA_DIR, PB_STORAGE_DIR を設定
docker compose up -d --build
./scripts/invite.sh tanaka.t U0001               # 招待発行 (ユーザーID, app_user_id)
./scripts/smoke_test.sh                           # 権限テスト 37項目
```

管理画面は `http://localhost:8090/_/` です。本番で HTTPS を使う場合は `docker compose --profile proxy up -d` で起動します。

> **以前の版から移行する場合**：スキーマを作り直したため（email ログイン → ユーザーIDログイン）、以前の `PB_DATA_DIR` のデータは使えません。空のフォルダを指定して起動してください。

## 7. ファイル構成

### 7.1 Docker Compose の起動に関わるファイル・フォルダ

データ用ボリューム（`PB_DATA_DIR` / `PB_STORAGE_DIR` / caddy_data / caddy_config）は除いています。

```
pb-app-service/                           ← docker compose を実行するディレクトリ
├── docker-compose.yml                    # サービス定義 (pocketbase / caddy[profile: proxy])
├── .env                                  # ★手動作成 (cp .env.example .env)。compose の変数展開と env_file の両方で使う
├── .env.example                          # .env のひな形 (全設定項目)
├── pocketbase/                           # pocketbase サービスのビルドコンテキスト
│   ├── Dockerfile                        # alpine + PocketBase 公式バイナリ (PB_VERSION, amd64/arm64)
│   ├── entrypoint.sh                     # 起動処理: migrate up → superuser 作成/更新 → serve
│   ├── pb_migrations/                    # スキーマ定義 (起動時に自動適用)
│   │   └── 1761955200_init_schema.js     #   users(招待制・ユーザーIDログイン) / invites / app_files
│   └── pb_hooks/                         # サーバー側の処理 (JSVM)
│       ├── 10_settings_from_env.pb.js    #   .env → URL / SMTP / S3 / レート制限 / 招待制の強制 / ログイン項目
│       ├── 15_login_identity.pb.js       #   「ユーザーIDまたはEメール」ログインの大文字小文字補正
│       ├── 20_invites.pb.js              #   招待コード生成・招待メール・受諾API /api/app/invites/accept
│       └── 30_app_files.pb.js            #   uploaded_by 自動設定・revision 採番
└── caddy/                                # profile: proxy のときだけ使用
    └── Caddyfile                         # HTTPS 終端・リバースプロキシ (PB_DOMAIN)
```

各ファイルがどう使われるか:

| ファイル / フォルダ | ビルド時 (`--build`) | 実行時 | 備考 |
|---|---|---|---|
| `docker-compose.yml` | ○ | ○ | |
| `.env` | ○ (`PB_VERSION`) | ○ (環境変数として渡す) | Git 管理外 (`.gitignore`) |
| `pocketbase/Dockerfile` | ○ | − | |
| `pocketbase/entrypoint.sh` | ○ (イメージにコピー) | ○ | 変更したら再ビルドが必要 |
| `pocketbase/pb_migrations/` | ○ (イメージにコピー) | ○ (読み取り専用でマウント) | マウントしているので再ビルド不要。新しいマイグレーションは再起動時に適用される |
| `pocketbase/pb_hooks/` | ○ (イメージにコピー) | ○ (読み取り専用でマウント) | マウントしているので再起動だけで反映される |
| `caddy/Caddyfile` | − | ○ (読み取り専用でマウント) | `--profile proxy` のときだけ使う |

> 本番でイメージに焼き込んだ版だけを使う場合は、docker-compose.yml の `pb_migrations` / `pb_hooks` のマウント行をコメントアウトしてください。

### 7.2 起動に関係しないファイル (運用・開発用)

```
pb-app-service/
├── README.md
├── .gitignore                            # .env と data/ を除外
├── scripts/
│   ├── invite.sh                         # 招待コード発行 (superuser 権限、.env を読む)
│   └── smoke_test.sh                     # 権限テスト 37項目
├── flutter_sample/lib/pb_service.dart    # Flutter 側サンプル (サービス)
├── flutter_sample/lib/login_page.dart    # Flutter 側サンプル (「ユーザーIDまたはEメール」ログイン画面)
└── docs/card_login_research.md           # 物理カードでのログイン方式の調査
```

## 8. 運用メモ

- **バックアップ**：`PB_DATA_DIR` と `PB_STORAGE_DIR` の両方を取得します。管理画面の Backups 機能は pb_data 配下（storage を含む）が対象です。
- `PB_ENCRYPTION_KEY` は初回起動の前に決め、変更しないでください。
- 不要になった版を消すときは、superuser が管理画面から削除します（運用ルールで決める）。
- バージョンを上げるときは `PB_VERSION` を変更して `docker compose build` します。その前にリリースノートを確認してください。
