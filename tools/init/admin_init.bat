@echo off
rem ============================================================================
rem  admin_init.bat  -  メイン(本番)の初期化: App の管理者を PocketBase に用意し、担当者と対応させる
rem
rem  使い方:  admin_init.bat [オプション]    (足りない項目は、その場で入力する)
rem    -PocketBaseUrl <URL>   PocketBase の接続先(https。ローカルのネットワークのみ http 可)
rem    -GraphqlUrl <URL>      PostGraphile の接続先(同上)
rem    -SuperEmail / -SuperPassword   PocketBase の superuser(入力でもよい)
rem    -AdminUser <ID>        管理者の username
rem    -AdminPassword <PW>    管理者のパスワード(入力でもよい。ファイル・ログには残さない)
rem    -AdminEmail <メール>   管理者のEメール(省略可)
rem    -StaffCode <コード>    対応させる PostgreSQL の担当者(info_staff)のコード
rem    -ResetPassword         既存の管理者のパスワードも変更する
rem    -NoPrompt              入力を受け付けない(引数・環境変数だけで実行)
rem
rem  何度実行しても安全(対応済みなら何もしない)。詳細は README.md と admin_init.ps1 の先頭を参照。
rem  テスト環境用は test_admin_init.bat。
rem  終了コード: 0=完了 / 1=失敗 / 2=管理者は用意したが、担当者と対応させられなかった
rem  自動実行のときは、環境変数 INIT_NOPAUSE=1 で最後の一時停止を省く。
rem ============================================================================
setlocal
chcp 65001 >nul

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0admin_init.ps1" %*
set "RC=%ERRORLEVEL%"

if /I not "%INIT_NOPAUSE%"=="1" if /I not "%TEST_INIT_NOPAUSE%"=="1" (
  echo.
  pause
)
exit /b %RC%
