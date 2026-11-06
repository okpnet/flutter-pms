# config_user_generator

裏設定(`packages/features/backstage`)の入口の条件 — ログインページの特定のユーザーIDとパスワード — の**ハッシュ**を作るコマンドラインのツール。ワークスペースの対象外(`tools/`)で、単独の Dart パッケージ。

## 使い方
```powershell
cd tools\config_user_generator
dart pub get                                   # 初回のみ
dart run bin/config_user_generator.dart         # ユーザーID・パスワードを聞かれる
dart run bin/config_user_generator.dart 200000  # 反復回数を指定(既定 100000)
dart run bin/config_user_generator.dart --out entry.json   # ファイルへ書く
```

## ヘルプを呼び出す
```powershell
dart run bin/config_user_generator.dart --help
```

## 仕様
1.  ユーザーIDとパスワードは標準入力から読む(パスワードは画面に出ない。コマンドの履歴に残らない)。
1.  出力は `{"entry": {"salt", "iterations", "hash"}}`。`apps/pms_app/assets/backstage.json` の `entry` に貼り、アプリを再起動する。
1.  方式は PBKDF2-HMAC-SHA256(32バイト、ソルト16バイト)。材料は `"<ユーザーID(前後の空白を除く)>\u0000<パスワード>"`。アプリの `EntryHash` と同じ値になる(`test/entry_hash_test.dart` と `backstage/test/backstage_test.dart` が同じ固定値を確認)。
1.  **ハッシュは一方向**で、元のIDとパスワードは取り出せない(暗号化して保存しているのではない)。変えるときは作り直して `entry` を貼り替える。
1.  ID・パスワードをソース・アセット・ログ・チャットに書かない。

## テスト
```powershell
dart test
```
