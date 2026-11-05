@echo off
rem ============================================================================
rem  test_user_init.bat  -  テスト環境の初期化: ダミーの担当者を、PocketBase のユーザーに追加する
rem
rem  user_init.bat のテスト環境版(-Test)。PostgreSQL のダミーの担当者(管理者を除く。13_user_dummy.sql)を、
rem  username=担当者のコード(小文字)、role=user、有効、共通のパスワードで追加し、
rem  担当者のID(info_staff_id)を app_user_id に入れる。すでにいれば app_user_id を更新する。
rem    -UserPassword <PW>     共通のパスワード(既定: .env の APP_DUMMY_USER_PWD、無ければ入力、Enter で乱数)
rem  先に test_admin_init.bat で、管理者を用意しておく。
rem  終了コード: 0=完了 / 1=失敗 / 2=処理できなかった担当者がある
rem ============================================================================
setlocal
chcp 65001 >nul

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0user_init.ps1" -Test %*
set "RC=%ERRORLEVEL%"

if /I not "%INIT_NOPAUSE%"=="1" if /I not "%TEST_INIT_NOPAUSE%"=="1" (
  echo.
  pause
)
exit /b %RC%
