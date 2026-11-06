# メンテナンス情報サーバー

メンテナンスや稼働状況の情報を配る、nginx 1つだけの軽量なサーバー(FTP は使わない)。

## 起動
```powershell
cd tools\docker\maintenance
copy .env.example .env   # MAINT_USER / MAINT_PASSWORD を必ず変える
docker compose up -d
```
ポートは既定 `18480`(`.env` の `MAINT_PORT`)。ID・パスワード・ポート・置き場は `.env` にまとめる。

## 使い方(例: `http://サーバー:18480`)
アプリ(裏設定の `maintenanceUrl`、または `MAINTENANCE_URL`)には、**サーバーのルートだけ**(`http://サーバー:18480`)を指定する。`/health` と `/info` はアプリが付ける(以前の形の `.../health` も受け付け、末尾の `/health` を取り除く)。パスの食い違いが起きないよう、サーバーとアプリはこのパスを固定で共有する。

| 操作 | 認証 | 内容 |
|---|---|---|
| `GET /health` | 不要 | 通常 200、メンテナンス中は 503 |
| `GET /info` | 不要 | メンテナンスの通知する情報(JSON)を読む。無ければ 404 |
| `PUT /info` | Basic | 情報を作る・書き換える |
| `DELETE /info` | Basic | 情報を消す |
| `PUT /maintenance.flag` | Basic | メンテナンス中にする |
| `DELETE /maintenance.flag` | Basic | メンテナンスを解除する |

情報にファイル名は無い。パス `/info` だけで1つの情報を読み書きする(管理者がファイル名を間違えないため。サーバー内の実体は `data/info/maintenance.json`)。`/info/<名前>.json` のようなパスは無く、404 になる。

```powershell
curl.exe -u maintainer:パスワード -T maintenance.json http://localhost:18480/info
curl.exe -u maintainer:パスワード -X PUT http://localhost:18480/maintenance.flag
curl.exe -u maintainer:パスワード -X DELETE http://localhost:18480/maintenance.flag
```
(`curl.exe -T` は `PUT` で送る。ローカルのファイル名 `maintenance.json` は何でもよい。)

## メンテナンス中の表示(アプリ)
アプリは、`/health` が 503 のとき、同じサーバーの `GET /info` を読んで、メンテナンスページに表示する。キーは次の3つで、すべて省略できる(無いときは既定の文面・時間なし)。
```json
{"message": "定期メンテナンス", "startAt": "2026-11-07T01:00:00", "endAt": "2026-11-07T03:00:00"}
```
| キー | 内容 | ページの表示 |
|---|---|---|
| `message` | 利用者へ知らせる文面 | 文面 |
| `startAt` | 開始の日時(ISO 8601) | 「開始」 |
| `endAt` | 終了の日時(ISO 8601) | 「終了」 |

`/info` が無い・読めなくても、メンテナンス中の判定は変わらない(既定の文面)。メンテナンスの開始・解除は `/maintenance.flag`。

## 注意
- `https` で公開するときは前段にリバースプロキシを置く(Basic 認証は平文)。ローカルのネットワークだけなら `http` 可。
- `.env` と `data/` は Git に入れない。
- 書き込みは `PUT`(削除は `DELETE`)だけ。`POST` は受け付けず、404 になる(Talend API Tester などはメソッドを `PUT` にする)。
- Windows で作ったスクリプトは実行権限が付かない(Git では 100644)。認証ファイルの作成は、`docker-compose.yml` の `entrypoint` が `sh` に直接渡して行うので、権限に関係なく動く。
