# pms_app_example

`pms_app` の実際の動作を、仮想のサーバーと各機能のサンプルの取得元で真似て、評価するためのアプリ(Windows)。ルートの `CLAUDE.md` の規則を適用する。

## 方針
1.  画面・ルーター・セッション確認・認証・メニューの枠・各機能は、`pms_app`(`package:pms_app/...`)の**実物をそのまま使う**。複製しない。接続先だけを差し替える。
1.  差し替えるもの(`lib/virtual/example_overrides.dart`): PocketBase(`VirtualServer`。`http` の差し替えで、`pbapi` の実物のログイン・セッション確認・共有ファイルを動かす)、メンテナンスの確認(`VirtualMaintenanceChecker`)、OS のファイルダイアログ(`VirtualFilePicker`・`VirtualFileSaver`)、メニューの許可(`menuAccessProvider`。GraphQL に接続しないため、仮想のユーザーの許可を返す)。GraphQL には接続しない(各機能はメモリ上のサンプルの取得元)。
1.  実物と違う点: セッション確認を省く間隔を 0 にした(実物は 30 秒。検証パネルの「セッションを切る」をすぐ確かめるため)。ほかは `sessionOverrides` と同じ組み立て。
1.  各画面の動作は、`packages/features/*/example` と同じサンプルの取得元で動く。

## 起動
```powershell
cd apps\pms_app_example; flutter run -d windows
```
右下の検証パネルで、接続断・メンテナンス・セッション切れを再現する。仮想のユーザー: `admin` / `admin-pass`(管理者)、`sato` / `sato-pass`(受注だけ許可)。

## テスト(評価)
`flutter test`(サーバーに接続しない)。`test/navigation_session_test.dart`(遷移・セッション切れ・接続断・メンテナンス)、`test/shell_evaluation_test.dart`(テーマ・ログインユーザー・ファイル・権限・メニュー)。評価の結果と指摘は `doc/contents/evaluation.md`(Issue は `issue/202611.md#D_20261117_0002`)。画面の見た目の確認は利用者が行う。

## 規則: プロジェクト間をまたぐ指示
指示や実装が、プロジェクト(アプリ・ライブラリ)をまたいで行われるときの`issue`・`doc/log`の扱い。
1.  指示をしたプロジェクト
    1.  `doc/log`に、指示の内容・指示した先のプロジェクト・実施した結果を記録する。
2.  指示を受けたプロジェクト
    1.  指示の内容と、指示をしたプロジェクトを`issue`に追加する。
    2.  実施した結果を`doc/log`に記録する。
