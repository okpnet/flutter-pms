@echo off
rem ============================================================================
rem  test_init.bat  -  テスト環境の初期化(アプリからログインできる管理者ユーザーを用意する)
rem
rem  使い方:  test_init.bat [オプション]
rem    -AdminUser <ID>        管理者のユーザーID(既定: .env の APP_ADMIN_USER、無ければ admin)
rem    -AdminPassword <PW>    管理者のパスワード(既定: .env の APP_ADMIN_PWD、無ければ乱数)
rem    -StaffCode <コード>    紐付ける担当者のコード(既定: ユーザーID、無ければ ADMIN)
rem    -ResetPassword         既存のユーザーのパスワードも変更する
rem    -PocketBaseUrl <URL>   既定: http://192.168.1.103:8090
rem    -GraphqlUrl <URL>      既定: http://192.168.1.100:5000/graphql
rem
rem  何度実行しても安全。詳細は README.md と test_init.ps1 の先頭を参照。
rem  メインの(本番の)初期化バッチは未作成。この test_init.bat はテスト環境専用。
rem  終了コード: 0=完了 / 1=失敗 / 2=ユーザーは用意したが、担当者と紐付けられなかった
rem  自動実行のときは、環境変数 TEST_INIT_NOPAUSE=1 で最後の一時停止を省く。
rem ============================================================================
setlocal
chcp 65001 >nul

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0test_init.ps1" %*
set "RC=%ERRORLEVEL%"

if /I not "%TEST_INIT_NOPAUSE%"=="1" (
  echo.
  pause
)
exit /b %RC%
