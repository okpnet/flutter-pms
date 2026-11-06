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
| 操作 | 認証 | 内容 |
|---|---|---|
| `GET /health` | 不要 | 通常 200、メンテナンス中は 503。アプリの `MAINTENANCE_URL` に指定する |
| `GET /info/<名前>.json` | 不要 | 通知する情報ファイルを読む |
| `PUT /info/<名前>.json` | Basic | 情報ファイルを作る・書き換える |
| `DELETE /info/<名前>.json` | Basic | 情報ファイルを消す |
| `PUT /maintenance.flag` | Basic | メンテナンス中にする |
| `DELETE /maintenance.flag` | Basic | メンテナンスを解除する |

```powershell
curl.exe -u maintainer:パスワード -T status.json http://localhost:18480/info/status.json
curl.exe -u maintainer:パスワード -X PUT http://localhost:18480/maintenance.flag
curl.exe -u maintainer:パスワード -X DELETE http://localhost:18480/maintenance.flag
```

## メンテナンス中の表示(アプリ)
アプリは、`/health` が 503 のとき、同じサーバーの `GET /info/maintenance.json` を読んで、メンテナンスページに表示する。
ファイル名は `maintenance.json` に固定する(`status.json` は使わない)。キーは次の3つで、すべて省略できる(無いときは既定の文面・時間なし)。
```json
{"message": "定期メンテナンス", "startAt": "2026-11-07T01:00:00", "endAt": "2026-11-07T03:00:00"}
```
| キー | 内容 | ページの表示 |
|---|---|---|
| `message` | 利用者へ知らせる文面 | 文面 |
| `startAt` | 開始の日時(ISO 8601) | 「開始」 |
| `endAt` | 終了の日時(ISO 8601) | 「終了」 |
```powershell
curl.exe -u maintainer:パスワード -T maintenance.json http://localhost:18480/info/maintenance.json
```
`maintenance.json` が無い・読めなくても、メンテナンス中の判定は変わらない(既定の文面)。メンテナンスの開始・解除は `/maintenance.flag`。

## 注意
- `https` で公開するときは前段にリバースプロキシを置く(Basic 認証は平文)。ローカルのネットワークだけなら `http` 可。
- `.env` と `data/` は Git に入れない。
- 書き込みは `PUT`(削除は `DELETE`)だけ。`POST` は受け付けず、404 になる(Talend API Tester などはメソッドを `PUT` にする)。
- Windows で作ったスクリプトは実行権限が付かない(Git では 100644)。認証ファイルの作成は、`docker-compose.yml` の `entrypoint` が `sh` に直接渡して行うので、権限に関係なく動く。
