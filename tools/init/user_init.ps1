<#
.SYNOPSIS
  App の一般の利用者を、PostgreSQL の担当者(info_staff)に対応させて PocketBase に用意する。

.DESCRIPTION
  user_init.bat(本番)・test_user_init.bat(テスト環境、-Test)から呼ばれる。何度実行しても安全。
  先に admin_init.bat(または test_admin_init.bat)で、管理者を用意しておく
  (管理者になりすまして、担当者の一覧を PostGraphile から読むため)。

  テスト(-Test): PostgreSQL のダミーデータの担当者(管理者の担当者を除く)を、PocketBase のユーザーに追加する。
    username は担当者のコード(小文字)。すぐログインできるよう有効にし、共通のパスワードを設定する
    (入力、Enter で乱数。乱数は一度だけ表示)。すでにユーザーがいれば、担当者のIDを app_user_id に入れる(更新)。
    対応済みなら何もしない。ダミーの担当者は tools/docker/postgresql/script/13_user_dummy.sql。

  本番: CSV ファイル(-File。UTF-8、見出し行: username,staff_code,email,name。email・name は省略可)の
    利用者を、担当者(コードが staff_code のもの)に対応させて追加する。パスワードは決めず、
    PocketBase の管理 API で登録して「有効化コード」を発行する(本人が、コードで初めてパスワードを決める)。
    コードは結果の表に一度だけ表示する。ファイルには残さない。すでにいれば、app_user_id だけ更新する。

.PARAMETER Test            テスト環境用
.PARAMETER File            (本番)利用者の CSV
.PARAMETER PocketBaseUrl   PocketBase の接続先(環境変数 PB_URL でも指定できる)
.PARAMETER GraphqlUrl      PostGraphile の接続先(環境変数 GRAPHQL_URL でも指定できる)
.PARAMETER EnvFile         (テスト)PocketBase の .env。既定 ..\docker\pocketbase\.env
.PARAMETER SuperEmail      superuser のメール(本番は入力)
.PARAMETER SuperPassword   superuser のパスワード(本番は入力)
.PARAMETER AdminUser       管理者の username(担当者の一覧を読むために使う)
.PARAMETER UserPassword    (テスト)ダミーユーザーの共通のパスワード
.PARAMETER NoPrompt        入力を受け付けない
#>
[CmdletBinding()]
param(
  [switch]$Test,
  [string]$File,
  [string]$PocketBaseUrl,
  [string]$GraphqlUrl,
  [string]$EnvFile,
  [string]$SuperEmail,
  [string]$SuperPassword,
  [string]$AdminUser,
  [string]$UserPassword,
  [switch]$NoPrompt
)

. (Join-Path $PSScriptRoot 'init_common.ps1')

# ---- 設定 -----------------------------------------------------------------

$dotEnv = @{}
if ($Test) {
  if (-not $EnvFile) { $EnvFile = Join-Path $PSScriptRoot '..\docker\pocketbase\.env' }
  $dotEnv = Read-DotEnv $EnvFile
}
$interactive = Test-Interactive -NoPrompt:$NoPrompt
$modeLabel = if ($Test) { 'テスト環境' } else { '本番' }
Write-Host "一般の利用者の初期化($modeLabel): 担当者に対応する利用者を PocketBase に用意します" -ForegroundColor White

$pb = Pick $PocketBaseUrl 'PB_URL' $dotEnv ''
if (-not $pb -and $Test) { $pb = 'http://192.168.1.103:' + (Pick '' 'PB_PORT' $dotEnv '8090') }
if (-not $pb) { $pb = Read-Answer -Label 'PocketBase の URL(例 https://pb.example.com)' -Interactive $interactive }
if (-not $pb) { Stop-Init 'PocketBase の接続先がありません(-PocketBaseUrl または環境変数 PB_URL)' }
$pb = Format-PbUrl $pb
if (-not (Test-EndpointAllowed $pb)) { Stop-Init "PocketBase の接続先 $pb は使えません。ローカルのネットワーク以外は https にしてください" }

$graphqlCandidates = @()
$gqlGiven = Pick $GraphqlUrl 'GRAPHQL_URL' $dotEnv ''
if (-not $gqlGiven -and $Test) { $graphqlCandidates = @('http://192.168.1.100:5000/graphql', 'http://192.168.9.245:5000/graphql') }
elseif (-not $gqlGiven) { $gqlGiven = Read-Answer -Label 'PostGraphile の URL(例 https://gql.example.com/graphql)' -Interactive $interactive }
if ($gqlGiven) {
  if (-not (Test-EndpointAllowed $gqlGiven)) { Stop-Init "PostGraphile の接続先 $gqlGiven は使えません。ローカルのネットワーク以外は https にしてください" }
  $graphqlCandidates = @($gqlGiven)
}

$superEmail = Pick $SuperEmail 'PB_SUPERUSER_EMAIL' $dotEnv ''
if (-not $superEmail) { $superEmail = Read-Answer -Label 'PocketBase の superuser のメール' -Interactive $interactive }
$superPassword = Pick $SuperPassword 'PB_SUPERUSER_PASSWORD' $dotEnv ''
if (-not $superPassword) { $superPassword = Read-Answer -Label 'PocketBase の superuser のパスワード' -Secret -Interactive $interactive }
if (-not $superEmail -or -not $superPassword) { Stop-Init 'superuser の資格情報がありません(入力、または -SuperEmail / -SuperPassword。テストは .env の PB_SUPERUSER_*)' }

$adminDefault = Pick '' 'APP_ADMIN_USER' $dotEnv $(if ($Test) { 'admin' } else { '' })
$adminName = if ($AdminUser) { $AdminUser } else { Read-Answer -Label '管理者の username(担当者の一覧を読むために使う)' -Default $adminDefault -Interactive $interactive }
$adminName = "$adminName".Trim().ToLowerInvariant()
if (-not $adminName) { Stop-Init '管理者の username が必要です(-AdminUser)' }

$csvRows = @()
if (-not $Test) {
  if (-not $File) { $File = Read-Answer -Label '利用者の CSV ファイル(見出し行: username,staff_code,email,name)' -Interactive $interactive }
  if (-not $File -or -not (Test-Path -LiteralPath $File)) { Stop-Init "CSV ファイルが見つかりません: $File" }
  $csvRows = @(Import-Csv -LiteralPath $File -Encoding UTF8)
  if ($csvRows.Count -eq 0) { Stop-Init 'CSV に利用者がありません' }
  foreach ($col in 'username', 'staff_code') {
    if (-not ($csvRows[0].PSObject.Properties.Name -contains $col)) { Stop-Init "CSV の見出しに $col がありません(username,staff_code,email,name)" }
  }
}
$minLength = [Math]::Max(8, [int](Pick '' 'PB_PASSWORD_MIN_LENGTH' $dotEnv '8'))

# ---- 1. superuser と管理者 ---------------------------------------------------

Write-Step '1. PocketBase の superuser でログインし、担当者の一覧を読む'
$suToken = Connect-Superuser $pb $superEmail $superPassword
Write-Ok 'ログインしました'

$adminRecord = Find-PbUser $pb $suToken $adminName
if (-not $adminRecord -or $adminRecord.role -ne 'admin') {
  Stop-Init "管理者 $adminName が PocketBase にいません。先に $(if ($Test) { 'test_admin_init.bat' } else { 'admin_init.bat' }) で管理者を用意してください"
}
try { $jwt = Get-GraphqlJwt $pb $suToken $adminRecord.id } catch { Stop-Init "GraphQL 用の JWT を取得できません: $_" }
$gql = Find-Graphql $graphqlCandidates
if (-not $gql) { Stop-Init "PostGraphile に接続できません($($graphqlCandidates -join ' / '))" }
Write-Info "PostGraphile : $gql"
try { $staffs = Get-Staffs $gql $jwt } catch { Stop-Init "担当者を読めません: $_" }
Write-Ok "担当者 $($staffs.Count) 人を読みました"

$users = Get-PbUsers $pb $suToken
$nowText = [DateTime]::UtcNow.ToString("yyyy-MM-dd HH:mm:ss.fff'Z'")
$results = @()
$problems = 0

function Update-AppUserId($PbUser, [string]$StaffId) {
  Invoke-Api -Method Patch -Uri "$pb/api/collections/users/records/$($PbUser.id)" -Body @{ app_user_id = $StaffId } -Token $suToken | Out-Null
}

# ---- 2. 利用者 --------------------------------------------------------------

if ($Test) {
  Write-Step '2. ダミーの担当者を、PocketBase のユーザーに追加(または app_user_id を更新)'
  $passwordGenerated = $false
  $password = ''
  $targets = @($staffs | Where-Object { $_.infoStaffId -ne $adminRecord.app_user_id } | Sort-Object code)
  if ($targets.Count -eq 0) {
    Write-Warn '管理者以外の担当者がありません。ダミーデータ(tools/docker/postgresql/script/13_user_dummy.sql)を流してから、もう一度実行してください'
  }
  foreach ($staff in $targets) {
    $uname = $staff.code.Trim().ToLowerInvariant()
    if ($uname -notmatch '^[a-z0-9._-]{3,32}$') {
      Write-Warn "$($staff.code): username にできないコードです(英小文字・数字・. _ -、3〜32文字)。飛ばします"
      $problems++; continue
    }
    $existing = $users | Where-Object { $_.username -eq $uname } | Select-Object -First 1
    if ($existing) {
      if ($existing.app_user_id -eq $staff.infoStaffId) {
        Write-Ok "${uname}: 対応済みです(何もしません)"
        $results += [pscustomobject]@{ username = $uname; staff = $staff.code; result = '対応済み'; staffId = $staff.infoStaffId }
      } elseif ($existing.role -eq 'admin') {
        Write-Warn "${uname}: 管理者のアカウントのため、変更しません"
        $problems++
      } else {
        try { Update-AppUserId $existing $staff.infoStaffId } catch { Write-Warn "${uname}: app_user_id を更新できません: $_"; $problems++; continue }
        Write-Ok "${uname}: 担当者 $($staff.code) のIDを app_user_id に入れました(更新)"
        $results += [pscustomobject]@{ username = $uname; staff = $staff.code; result = '更新'; staffId = $staff.infoStaffId }
      }
      continue
    }
    $linkedTo = $users | Where-Object { $_.app_user_id -eq $staff.infoStaffId } | Select-Object -First 1
    if ($linkedTo) {
      Write-Warn "${uname}: 担当者 $($staff.code) は、すでにユーザー $($linkedTo.username) と対応しています。飛ばします"
      $problems++; continue
    }
    if (-not $password) {
      $password = Pick $UserPassword 'APP_DUMMY_USER_PWD' $dotEnv ''
      if (-not $password) {
        $password = Read-Answer -Label "ダミーユーザーの共通のパスワード($minLength 文字以上。Enterで乱数)" -Secret -Interactive $interactive
      }
      if (-not $password) { $password = New-RandomPassword ([Math]::Max(16, $minLength)); $passwordGenerated = $true }
      if ($password.Length -lt $minLength) { Stop-Init "パスワードは $minLength 文字以上にしてください" }
    }
    try {
      $null = Invoke-Api -Method Post -Uri "$pb/api/collections/users/records" -Token $suToken -Body @{
        username = $uname; password = $password; passwordConfirm = $password
        name = $staff.code; role = 'user'; disabled = $false; activated_at = $nowText
        app_user_id = $staff.infoStaffId
      }
    } catch {
      Write-Warn "${uname}: 作成できません: $_"; $problems++; continue
    }
    Write-Ok "${uname}: 追加しました(role=user、有効、担当者 $($staff.code))"
    $results += [pscustomobject]@{ username = $uname; staff = $staff.code; result = '追加'; staffId = $staff.infoStaffId }
  }
} else {
  Write-Step "2. CSV の利用者を、担当者に対応させて登録($($csvRows.Count) 件)"
  $issued = @()
  foreach ($row in $csvRows) {
    $uname = "$($row.username)".Trim().ToLowerInvariant()
    $code = "$($row.staff_code)".Trim()
    $mail = if ($row.PSObject.Properties.Name -contains 'email') { "$($row.email)".Trim().ToLowerInvariant() } else { '' }
    $display = if ($row.PSObject.Properties.Name -contains 'name') { "$($row.name)".Trim() } else { '' }
    if ($uname -notmatch '^[a-z0-9._-]{3,32}$') { Write-Warn "$($row.username): username は、英小文字・数字・. _ -、3〜32文字にしてください。飛ばします"; $problems++; continue }
    if ($mail -and $mail -notmatch '^[^\s@]+@[^\s@]+\.[^\s@]+$') { Write-Warn "${uname}: Eメール $mail の形式が正しくありません。飛ばします"; $problems++; continue }
    $staff = Resolve-Staff $staffs @($code)
    if (-not $staff) { Write-Warn "${uname}: 担当者(コード: $code)が見つかりません。飛ばします"; $problems++; continue }

    $existing = $users | Where-Object { $_.username -eq $uname } | Select-Object -First 1
    if ($existing) {
      if ($existing.app_user_id -eq $staff.infoStaffId) {
        Write-Ok "${uname}: 対応済みです(何もしません)"
      } elseif ($existing.role -eq 'admin') {
        Write-Warn "${uname}: 管理者のアカウントのため、変更しません"; $problems++
      } else {
        try { Update-AppUserId $existing $staff.infoStaffId } catch { Write-Warn "${uname}: app_user_id を更新できません: $_"; $problems++; continue }
        Write-Ok "${uname}: 担当者 $($staff.code) のIDを app_user_id に入れました(更新)"
      }
      continue
    }
    $linkedTo = $users | Where-Object { $_.app_user_id -eq $staff.infoStaffId } | Select-Object -First 1
    if ($linkedTo) { Write-Warn "${uname}: 担当者 $($staff.code) は、すでにユーザー $($linkedTo.username) と対応しています。飛ばします"; $problems++; continue }

    $body = @{ username = $uname; app_user_id = $staff.infoStaffId; role = 'user' }
    if ($mail) { $body['email'] = $mail }
    if ($display) { $body['name'] = $display }
    try {
      $res = Invoke-Api -Method Post -Uri "$pb/api/app/admin/users" -Body $body -Token $suToken
    } catch {
      Write-Warn "${uname}: 登録できません: $_"; $problems++; continue
    }
    Write-Ok "${uname}: 登録しました(担当者 $($staff.code)、有効化コードを発行)"
    $issued += [pscustomobject]@{ username = $uname; staff = $staff.code; code = $res.code; expires = $res.expires_at; mailed = $(if ($res.mailed) { '済' } else { 'なし' }) }
  }
}

# ---- 結果 -----------------------------------------------------------------

Write-Host "`n=================================================" -ForegroundColor White
if ($Test) {
  $results | Format-Table username, staff, result, staffId -AutoSize | Out-String -Width 200 | Write-Host
  if ($passwordGenerated) {
    Write-Host "  共通のパスワード: $password" -ForegroundColor Yellow
    Write-Host '                    ↑ テスト用に乱数で作りました。ここにしか表示しません。控えてください' -ForegroundColor Yellow
  } elseif ($password) {
    Write-Host '  共通のパスワード: 入力された値に設定しました(表示しません)'
  }
} elseif ($issued.Count -gt 0) {
  Write-Host '  有効化コード(本人に手渡してください。ここにしか表示しません):' -ForegroundColor Yellow
  $issued | Format-Table username, staff, code, expires, mailed -AutoSize | Out-String -Width 200 | Write-Host
  Write-Host '  本人は、アプリのログイン画面の「認証コードをお持ちの方」から、username とコードで初めてパスワードを決めます。'
} else {
  Write-Host '  新しく登録した利用者はありません'
}
if ($problems -gt 0) { Write-Host "  注意: $problems 件を処理できませんでした(上の [注意] を参照)" -ForegroundColor Yellow }
Write-Host '=================================================' -ForegroundColor White

if ($problems -gt 0) { exit 2 }
exit 0
