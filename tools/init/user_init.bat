@echo off
rem ============================================================================
rem  user_init.bat  -  メイン(本番)の初期化: 一般の利用者を、担当者に対応させて PocketBase に登録する
rem
rem  使い方:  user_init.bat -File users.csv [オプション]
rem    -File <CSV>            利用者の一覧(UTF-8、見出し行: username,staff_code,email,name。email・name は省略可)
rem    -AdminUser <ID>        管理者の username(担当者の一覧を読むために使う。先に admin_init.bat で用意)
rem    -PocketBaseUrl / -GraphqlUrl / -SuperEmail / -SuperPassword / -NoPrompt は admin_init.bat と同じ
rem
rem  パスワードは決めない。有効化コードを発行して表示する(本人が、コードで初めてパスワードを決める)。
rem  すでにいる利用者は、app_user_id だけ更新する(対応済みなら何もしない)。
rem  終了コード: 0=完了 / 1=失敗 / 2=処理できなかった行がある
rem  自動実行のときは、環境変数 INIT_NOPAUSE=1 で最後の一時停止を省く。
rem ============================================================================
setlocal
chcp 65001 >nul

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0user_init.ps1" %*
set "RC=%ERRORLEVEL%"

if /I not "%INIT_NOPAUSE%"=="1" if /I not "%TEST_INIT_NOPAUSE%"=="1" (
  echo.
  pause
)
exit /b %RC%
