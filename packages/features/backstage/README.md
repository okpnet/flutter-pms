# backstage

アプリケーションの裏設定。システム制作者だけが入れる設定のページと、設定の保存・優先順位の解決を持つ。仕様・設計は [CLAUDE.md](CLAUDE.md)。

## 入口のハッシュの作り方(忘れやすいのでここに残す)

ログインページで、特定の**ユーザーID**と**パスワード**を入力すると、通常のログインをせず裏設定のページへ進む。その条件は、平文ではなくハッシュ(PBKDF2-HMAC-SHA256・ソルト付き)で、アプリのアセットに置く。

### 1. ハッシュを作る
**このフォルダ(`packages/features/backstage`)で**実行する。

```powershell
cd packages\features\backstage
dart run backstage:make_entry_hash
```

- `ユーザーID:` と `パスワード:` を聞かれる(標準入力。パスワードは画面に表示されず、コマンドの履歴にも残らない)。
- 反復回数を変えるときは、引数で渡す。既定は 100000。大きいほど総当たりに強いが、ログインのたびの計算が重くなる。
  ```powershell
  dart run backstage:make_entry_hash 200000
  ```
- 先に、リポジトリのルートで `flutter pub get` を実行しておく(ワークスペース)。

### 2. アセットに貼る
出力された JSON を、`apps/pms_app/assets/backstage.json` の `entry` に貼る。

```json
{
  "entry": { "salt": "...", "iterations": 100000, "hash": "..." },
  "defaults": {}
}
```

- `entry` が無いときは、入口なし(裏設定へ入れない)。
- `defaults` は、開発側の既定値(接続先・ログのレベル・画像の変更可否・サイドバーの既定)。保管庫に値があるときは保管庫が優先する。

### 3. 反映する
アプリを再起動する(アセットは起動時に読む)。ログインページで、1 で入力したユーザーIDとパスワードを入れる。

### 注意
- **ユーザーIDとパスワードは、ソース・アセット・ログ・チャットに書かない。** 忘れたら、同じ手順で作り直して、`entry` を置き換える(ハッシュから元の値は戻せない)。
- ソルトは作るたびに変わるので、同じIDとパスワードでも出力は毎回違う。どれを貼っても、同じIDとパスワードで入れる。
- ハッシュはアセットに含まれるため、アプリを解析されるとオフラインで総当たりされうる。強いパスワードにする。
- 入口は、PocketBase を使うログイン(`auth_files`)だけ。

## 起動時の値(`--dart-define`)
優先順位は、起動時の値 > 保管庫(ページで保存した値)> アセットの既定値。

| 項目 | `--dart-define` | 反映 |
|---|---|---|
| ユーザー画像の変更可否 | `IS_CHANGE_USER_IMAGE=true` | すぐ |
| 接続先(GraphQL) | `GRAPHQL_URL=https://.../graphql` | 再起動 |
| 接続先(PocketBase) | `POCKETBASE_URL=https://...` | 再起動 |
| メンテナンスの確認先 | `MAINTENANCE_URL=https://.../health` | 再起動 |
| ログのレベル | `LOG_LEVEL=info`(`trace`・`debug`・`info`・`warning`・`error`・`fatal`) | 再起動 |
| サイドバーの既定 | `SIDEBAR_ICON_ONLY=true` | 次の起動 |

URL は `https`(ローカルのネットワークだけ `http` 可)。

## ビジュアルテスト
```powershell
cd packages\features\backstage\example
flutter run -d windows
```
入口を通った状態から始まる(保存先はメモリ上)。
