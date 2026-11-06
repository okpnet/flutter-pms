# config_generator

裏設定の設定ファイル(JSON)を**パスフレーズで暗号化**するコマンドラインのツール。ワークスペースの対象外(`tools/`)で、単独の Dart パッケージ。

**パスフレーズは、裏設定の入口のパスワード**(`tools/config_user_generator` で入口を作ったときのパスワード)と同じにする。アプリは入口を通ったときのパスワードで復号するため、別のパスフレーズは持たない。設定ファイルを作れる人は、入口を通れる人(適用できる人)に限られる。

## 使い方(パスを省略する)
1.  このフォルダ(`tools/config_generator`)に、平文の設定を `backstage_config.json` として置く。
1.  実行する(パスフレーズ = 入口のパスワードを聞かれる)。同じフォルダに `backstage_config.enc.json` ができる。
1.  平文の `backstage_config.json` を削除する。
1.  `backstage_config.enc.json` を、アプリの実行ファイル(exe)と同じフォルダに置く(置き換えるときも同じ)。

```powershell
cd tools\config_generator
dart pub get                          # 初回のみ
dart run bin/config_generator.dart     # backstage_config.json → backstage_config.enc.json
```

パスを指定するとき:
```powershell
dart run bin/config_generator.dart C:\work\plain.json C:\work\config.enc.json
dart run bin/config_generator.dart plain.json out.enc.json --passphrase-file pass.txt   # パスフレーズをファイルの1行目から
dart run bin/config_generator.dart --decrypt                                        # 確認用(暗号化 → 平文を標準出力)
```

## ヘルプを呼び出す
```powershell
dart run bin/config_generator.dart --help
```

## 平文の設定(裏設定の項目)
```json
{"isChangeUserImage": false, "logLevel": "info", "graphqlUrl": "https://...", "pocketbaseUrl": "https://...", "maintenanceUrl": "https://...", "sidebarIconOnly": false}
```
指定する項目だけ書く。URL は https(ローカルのネットワークだけ http)。ID・パスワードは書かない。

## 仕様
1.  AES-256-GCM。鍵はパスフレーズから PBKDF2-HMAC-SHA256(既定 200000 回、ソルト16バイト)で導出。ナンス12バイト。
1.  出力は JSON: `format`(`pms-backstage-config`)・`version`(1)・`kdf`・`iterations`・`salt`・`nonce`・`data`(バイナリは base64)。パスフレーズの誤りと改ざんは、復号時に検出される(GCM の認証)。
1.  平文のファイルは暗号化のあと削除する。パスフレーズはソース・アセット・ログに書かない。

## アプリ側の動き
1.  アプリは起動時に、exe と同じフォルダの `backstage_config.enc.json` を読む(無ければ何もしない)。
1.  ログインページで入口の ID とパスワードが一致したとき、そのパスワードで復号し、検証(URL の規則・知らないログのレベル)を通れば裏設定として保管庫へ保存する。
1.  復号できない(パスワード違い・改ざん・形式違い)・検証に通らないときは、**標準のまま**。利用者へ通知しない。
1.  保管庫に裏設定が既にあるときは上書きしない(ページで編集した値を守る)。ファイルの内容に置き換えたいときは、裏設定のページで「保存した値を消す」を行ってから、もう一度入口を通る。
1.  接続先・ログのレベルは起動時に使うため、適用の反映は再起動のあと。

## テスト
```powershell
dart test
```
