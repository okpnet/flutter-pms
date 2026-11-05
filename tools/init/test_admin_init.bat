@echo off
rem ============================================================================
rem  test_admin_init.bat  -  テスト環境の初期化: アプリからログインできる管理者を用意する
rem
rem  admin_init.bat のテスト環境版(-Test)。tools\docker\pocketbase\.env の PB_SUPERUSER_*・APP_ADMIN_* を使い、
rem  接続先の既定は PocketBase http://192.168.1.103:8090、PostGraphile http://192.168.1.100:5000/graphql。
rem  オプションは admin_init.bat と同じ。管理者の username は .env の APP_ADMIN_USER(無ければ admin)。
rem  終了コード: 0=完了 / 1=失敗 / 2=管理者は用意したが、担当者と対応させられなかった
rem  自動実行のときは、環境変数 INIT_NOPAUSE=1 で最後の一時停止を省く。
rem ============================================================================
setlocal
chcp 65001 >nul

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0admin_init.ps1" -Test %*
set "RC=%ERRORLEVEL%"

if /I not "%INIT_NOPAUSE%"=="1" if /I not "%TEST_INIT_NOPAUSE%"=="1" (
  echo.
  pause
)
exit /b %RC%
