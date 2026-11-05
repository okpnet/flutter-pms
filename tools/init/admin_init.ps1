<#
.SYNOPSIS
  App の管理者ユーザーを用意する(アプリからログインできる管理者。superuser ではない)。

.DESCRIPTION
  admin_init.bat(本番)・test_admin_init.bat(テスト環境、-Test)から呼ばれる。何度実行しても安全。

  1. PocketBase の superuser でログインする。
  2. 管理者ユーザー(role=admin、有効)の username・パスワード・Eメール(省略可)を**入力**で受け付ける。
     ユーザーがいなければ追加する。いれば role・無効化・有効化をそろえ、Eメールが違えば更新する
     (パスワードは -ResetPassword のときだけ変える)。
  3. PostgreSQL の担当者(info_staff)のID(UUID)を、PocketBase のユーザーの app_user_id に入れる(更新)。
     すでに同じなら何もしない。
  4. アプリと同じ手順(ログイン → GraphQL 用の JWT → PostGraphile)で確認する。

  本番(既定): 接続先・superuser・担当者のコードも入力で受け付ける(既定値なし)。https でない接続先
              (ローカルのネットワーク以外)は拒否する。.env は読まない。パスワードは確認のため2回入力し、表示しない。
  テスト(-Test): tools/docker/pocketbase/.env の値と、テスト環境の接続先を既定にする。Enter で既定の値。
              パスワードが無ければ乱数で作り、一度だけ表示する。担当者はコード=ユーザーID、無ければ ADMIN。

.PARAMETER Test            テスト環境用
.PARAMETER PocketBaseUrl   PocketBase の接続先(環境変数 PB_URL でも指定できる)
.PARAMETER GraphqlUrl      PostGraphile の接続先(環境変数 GRAPHQL_URL でも指定できる)
.PARAMETER EnvFile         (テスト)PocketBase の .env。既定 ..\docker\pocketbase\.env
.PARAMETER SuperEmail      superuser のメール(本番は入力)
.PARAMETER SuperPassword   superuser のパスワード(本番は入力。引数に書くと履歴に残るため、入力を勧める)
.PARAMETER AdminUser       管理者の username(英小文字・数字・. _ -、3〜32文字)
.PARAMETER AdminPassword   管理者のパスワード(引数に書くと履歴に残るため、入力を勧める)
.PARAMETER AdminEmail      管理者のEメール。'' を渡すと空(Null)
.PARAMETER StaffCode       紐付ける担当者のコード(本番は必須)
.PARAMETER ResetPassword   既存のユーザーのパスワードも変更する。既存のトークンは失効する
.PARAMETER NoPrompt        入力を受け付けない(引数・環境変数・.env(テスト)だけで実行する)
#>
[CmdletBinding()]
param(
  [switch]$Test,
  [string]$PocketBaseUrl,
  [string]$GraphqlUrl,
  [string]$EnvFile,
  [string]$SuperEmail,
  [string]$SuperPassword,
  [string]$AdminUser,
  [string]$AdminPassword,
  [string]$AdminEmail,
  [string]$StaffCode,
  [switch]$ResetPassword,
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
Write-Host "管理者ユーザーの初期化($modeLabel): アプリからログインできる管理者を用意します" -ForegroundColor White

# 接続先
$pb = Pick $PocketBaseUrl 'PB_URL' $dotEnv ''
if (-not $pb -and $Test) { $pb = 'http://192.168.1.103:' + (Pick '' 'PB_PORT' $dotEnv '8090') }
if (-not $pb) { $pb = Read-Answer -Label 'PocketBase の URL(例 https://pb.example.com)' -Interactive $interactive }
if (-not $pb) { Stop-Init 'PocketBase の接続先がありません(-PocketBaseUrl または環境変数 PB_URL)' }
$pb = Format-PbUrl $pb
if (-not (Test-EndpointAllowed $pb)) { Stop-Init "PocketBase の接続先 $pb は使えません。ローカルのネットワーク以外は https にしてください" }

$graphqlCandidates = @()
$gqlGiven = Pick $GraphqlUrl 'GRAPHQL_URL' $dotEnv ''
if (-not $gqlGiven -and $Test) { $graphqlCandidates = @('http://192.168.1.100:5000/graphql', 'http://192.168.9.245:5000/graphql') }
elseif (-not $gqlGiven) { $gqlGiven = Read-Answer -Label 'PostGraphile の URL(例 https://gql.example.com/graphql。担当者の紐付けに使う)' -Interactive $interactive }
if ($gqlGiven) {
  if (-not (Test-EndpointAllowed $gqlGiven)) { Stop-Init "PostGraphile の接続先 $gqlGiven は使えません。ローカルのネットワーク以外は https にしてください" }
  $graphqlCandidates = @($gqlGiven)
}

# superuser
$superEmail = Pick $SuperEmail 'PB_SUPERUSER_EMAIL' $dotEnv ''
if (-not $superEmail) { $superEmail = Read-Answer -Label 'PocketBase の superuser のメール' -Interactive $interactive }
$superPassword = Pick $SuperPassword 'PB_SUPERUSER_PASSWORD' $dotEnv ''
if (-not $superPassword) { $superPassword = Read-Answer -Label 'PocketBase の superuser のパスワード' -Secret -Interactive $interactive }
if (-not $superEmail -or -not $superPassword) { Stop-Init 'superuser の資格情報がありません(入力、または -SuperEmail / -SuperPassword。テストは .env の PB_SUPERUSER_*)' }

# 管理者の username・Eメール・担当者のコード
$usernameDefault = Pick '' 'APP_ADMIN_USER' $dotEnv $(if ($Test) { 'admin' } else { '' })
$username = if ($AdminUser) { $AdminUser } else { Read-Answer -Label '管理者の username(英小文字・数字・. _ -)' -Default $usernameDefault -Interactive $interactive }
$username = "$username".Trim().ToLowerInvariant()
if ($username -notmatch '^[a-z0-9._-]{3,32}$') { Stop-Init "username `"$username`" は、英小文字・数字・. _ - の3〜32文字にしてください" }

if ($PSBoundParameters.ContainsKey('AdminEmail')) { $email = $AdminEmail }
else { $email = Read-Answer -Label '管理者のEメール(省略可。Enterで空)' -Default (Pick '' 'APP_ADMIN_EMAIL' $dotEnv '') -Interactive $interactive }
$email = "$email".Trim().ToLowerInvariant()
if ($email -and $email -notmatch '^[^\s@]+@[^\s@]+\.[^\s@]+$') { Stop-Init "Eメール `"$email`" の形式が正しくありません" }

$staffCodeWanted = (Pick $StaffCode 'APP_ADMIN_STAFF_CODE' $dotEnv '').Trim()
if (-not $staffCodeWanted) {
  $prompt = if ($Test) { '紐付ける担当者のコード(Enterで、ユーザーIDと同じコード、無ければ ADMIN)' } else { '紐付ける担当者(info_staff)のコード' }
  $staffCodeWanted = (Read-Answer -Label $prompt -Interactive $interactive).Trim()
}
if (-not $Test -and -not $staffCodeWanted) { Stop-Init '本番では、紐付ける担当者のコードが必要です(-StaffCode)' }

$displayName = Pick '' 'APP_ADMIN_NAME' $dotEnv '管理者'
$configuredAppUserId = Pick '' 'APP_ADMIN_APP_USER_ID' $dotEnv ''
$minLength = [Math]::Max(8, [int](Pick '' 'PB_PASSWORD_MIN_LENGTH' $dotEnv '8'))

Write-Info "PocketBase : $pb"
Write-Info "管理者     : $username$(if ($email) { " <$email>" })"

# パスワード(ユーザーを作るとき、-ResetPassword のときだけ要る)。本番は表示しない。
$passwordGenerated = $false
function Get-AdminPassword {
  $pw = Pick $AdminPassword 'APP_ADMIN_PWD' $dotEnv ''
  if (-not $pw) {
    if ($Test) {
      $pw = Read-Answer -Label "管理者のパスワード($minLength 文字以上。Enterで乱数)" -Secret -Interactive $interactive
      if (-not $pw) { $script:passwordGenerated = $true; return New-RandomPassword ([Math]::Max(16, $minLength)) }
    } else {
      $pw = Read-NewPassword -Label "管理者のパスワード($minLength 文字以上)" -MinLength $minLength -Interactive $interactive
    }
  }
  if (-not $pw) { Stop-Init 'パスワードがありません(入力、または -AdminPassword)' }
  if ($pw.Length -lt $minLength) { Stop-Init "パスワードは $minLength 文字以上にしてください" }
  return $pw
}

# ---- 1. superuser ---------------------------------------------------------

Write-Step '1. PocketBase の superuser でログイン'
$suToken = Connect-Superuser $pb $superEmail $superPassword
Write-Ok 'ログインしました'

# ---- 2. 管理者ユーザー ------------------------------------------------------

Write-Step "2. App の管理者ユーザー($username)を用意"
$user = Find-PbUser $pb $suToken $username
$nowText = [DateTime]::UtcNow.ToString("yyyy-MM-dd HH:mm:ss.fff'Z'")
$appUserIdTemp = if ($configuredAppUserId) { $configuredAppUserId } else { $username.Replace('.', '_') }
$password = ''
$created = $false
$passwordChanged = $false

if (-not $user) {
  $password = Get-AdminPassword
  $body = @{
    username = $username; password = $password; passwordConfirm = $password
    name = $displayName; role = 'admin'; disabled = $false; activated_at = $nowText
    app_user_id = $appUserIdTemp
  }
  if ($email) { $body['email'] = $email }
  try {
    $user = Invoke-Api -Method Post -Uri "$pb/api/collections/users/records" -Body $body -Token $suToken
  } catch {
    Stop-Init "ユーザーを作成できません: $_"
  }
  $created = $true
  $passwordChanged = $true
  Write-Ok '管理者が存在しなかったため、追加しました(role=admin、有効)'
} else {
  $changes = @{}
  if ($user.role -ne 'admin') { $changes['role'] = 'admin' }
  if ($user.disabled) { $changes['disabled'] = $false }
  if (-not $user.activated_at) { $changes['activated_at'] = $nowText }
  if ($email -and "$($user.email)" -ne $email) { $changes['email'] = $email }
  if ($ResetPassword) {
    $password = Get-AdminPassword
    $changes['password'] = $password; $changes['passwordConfirm'] = $password
    $passwordChanged = $true
  }
  if ($changes.Count -gt 0) {
    try {
      $user = Invoke-Api -Method Patch -Uri "$pb/api/collections/users/records/$($user.id)" -Body $changes -Token $suToken
    } catch {
      Stop-Init "ユーザーを更新できません: $_"
    }
    $names = @($changes.Keys | Where-Object { $_ -notin @('password', 'passwordConfirm') })
    if ($ResetPassword) { $names += 'パスワード' }
    Write-Ok "登録済みのため、次を更新しました: $($names -join ' / ')"
  } else {
    Write-Ok '登録済みです(変更なし)。パスワードは変えていません(変えるときは -ResetPassword)'
  }
}

# ---- 3. 担当者との紐付け ----------------------------------------------------

Write-Step '3. PostgreSQL の担当者(info_staff)のIDを、app_user_id に入れる'
$staff = $null
$graphqlOk = $false
try {
  $jwt = Get-GraphqlJwt $pb $suToken $user.id
} catch {
  $jwt = ''
  Write-Warn "GraphQL 用の JWT を取得できません(PocketBase の graphql-token が無効か、サーバーが古い): $_"
}

if ($jwt) {
  $gql = Find-Graphql $graphqlCandidates
  if (-not $gql) {
    Write-Warn "PostGraphile に接続できません($($graphqlCandidates -join ' / '))"
  } else {
    Write-Info "PostGraphile : $gql"
    try {
      $staffs = Get-Staffs $gql $jwt
      $graphqlOk = $true
      $wanted = if ($staffCodeWanted) { @($staffCodeWanted) } elseif ($Test) { @($username, 'ADMIN') } else { @() }
      $staff = Resolve-Staff $staffs $wanted
    } catch {
      Write-Warn "担当者を読めません: $_"
    }
  }
}

$linked = $false
if ($staff) {
  if ($user.app_user_id -ne $staff.infoStaffId) {
    try {
      $user = Invoke-Api -Method Patch -Uri "$pb/api/collections/users/records/$($user.id)" -Body @{ app_user_id = $staff.infoStaffId } -Token $suToken
    } catch {
      Stop-Init "app_user_id を更新できません: $_"
    }
    Write-Ok "担当者 $($staff.code)($($staff.infoStaffId))のIDを app_user_id に入れました"
  } else {
    Write-Ok "担当者 $($staff.code)($($staff.infoStaffId))と対応済みです(何もしません)"
  }
  $linked = $true
} elseif ($graphqlOk) {
  $tried = if ($staffCodeWanted) { $staffCodeWanted } elseif ($Test) { "$username / ADMIN" } else { '(未指定)' }
  Write-Warn "担当者(コード: $tried)が見つかりません。担当者を登録(テストはダミーデータ 10_mrp_dummy.sql・12_app_admin_dummy.sql)してから、もう一度実行してください"
  Write-Warn "app_user_id は仮の値($($user.app_user_id))のままです。担当者のIDを使う機能は動きません"
}

# ---- 4. 確認(アプリと同じ手順) ---------------------------------------------

Write-Step '4. アプリと同じ手順で確認'
if ($password) {
  try {
    $login = Invoke-Api -Method Post -Uri "$pb/api/collections/users/auth-with-password" -Body @{ identity = $username; password = $password }
    Write-Ok "ログインできます($($login.record.username)、role=$($login.record.role))"
    $gjwt = (Invoke-Api -Method Get -Uri "$pb/api/app/graphql-token" -Token $login.token).token
    $claims = Get-JwtClaims $gjwt
    Write-Ok "GraphQL 用の JWT: role=$($claims.role)、staff_id=$($claims.staff_id)"
    if ($claims.role -ne 'pms_admin') { Write-Warn "JWT の role が pms_admin ではありません($($claims.role))" }
  } catch {
    Write-Warn "ログインの確認に失敗しました: $_"
  }
} else {
  try {
    $claims = Get-JwtClaims (Get-GraphqlJwt $pb $suToken $user.id)
    Write-Ok "GraphQL 用の JWT: role=$($claims.role)、staff_id=$($claims.staff_id)(パスワードが分からないため、ログイン自体の確認は省きました)"
  } catch {
    Write-Warn "JWT の確認に失敗しました: $_"
  }
}

# ---- 結果 -----------------------------------------------------------------

Write-Host "`n=================================================" -ForegroundColor White
Write-Host "  PocketBase : $pb"
Write-Host "  username   : $username(role=admin)"
Write-Host "  担当者     : $(if ($linked) { "$($staff.code)  $($staff.infoStaffId)" } else { '(未対応)' })"
if ($passwordGenerated) {
  Write-Host "  パスワード : $password" -ForegroundColor Yellow
  Write-Host '               ↑ テスト用に乱数で作りました。ここにしか表示しません。控えてください' -ForegroundColor Yellow
} elseif ($passwordChanged) {
  Write-Host '  パスワード : 入力された値に設定しました(表示しません)'
}
Write-Host '  ログイン   : アプリ(pms_app --dart-define=POCKETBASE_URL=...)のログイン画面で、上の username とパスワードを入力'
Write-Host '=================================================' -ForegroundColor White

if (-not $linked) { exit 2 }
exit 0
