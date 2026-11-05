<#
.SYNOPSIS
  テスト環境の初期化: アプリ(pms_app)からログインできる管理者ユーザーを用意する。

.DESCRIPTION
  test_init.bat から呼ばれる。何度実行しても安全(すでにあれば作り直さず、足りない設定だけをそろえる)。

  1. PocketBase の superuser でログインする(tools/docker/pocketbase/.env の PB_SUPERUSER_*)。
  2. App の管理者ユーザー(role=admin、有効)を用意する。ユーザーID・パスワードは .env の APP_ADMIN_USER・APP_ADMIN_PWD
     (既定は admin。パスワードが無ければ、作成時だけ乱数で作って一度だけ表示する)。
     superuser ではない。PocketBase の pb_hooks/05_app_admin.pb.js(サーバー起動時の自動作成)と同じ内容。
  3. PostgreSQL の担当者(info_staff)と紐付ける。担当者のID(UUID)を PostGraphile から引き、
     PocketBase のユーザーの app_user_id に設定する。担当者は、コードがユーザーIDと同じもの(大文字小文字を区別しない)、
     無ければコード ADMIN(ダミーデータ 10_mrp_dummy.sql が作る)。
  4. アプリと同じ手順で確認する(ログイン → GraphQL 用の JWT → PostGraphile で担当者を読む)。

  パスワードは、新しく作ったとき・-ResetPassword のときだけ表示する。ファイルには残さない。

.PARAMETER PocketBaseUrl   PocketBase の接続先。既定 http://192.168.1.103:8090(環境変数 PB_URL でも指定できる)
.PARAMETER GraphqlUrl      PostGraphile の接続先。既定は http://192.168.1.100:5000/graphql、なければ http://192.168.9.245:5000/graphql
.PARAMETER EnvFile         PocketBase の .env。既定 ..\docker\pocketbase\.env
.PARAMETER AdminUser       管理者のユーザーID。既定は .env の APP_ADMIN_USER、無ければ admin
.PARAMETER AdminPassword   管理者のパスワード。既定は .env の APP_ADMIN_PWD、無ければ乱数(作成時のみ)
.PARAMETER StaffCode       紐付ける担当者のコード。既定はユーザーID(大文字小文字を区別しない)、無ければ ADMIN
.PARAMETER ResetPassword   既存のユーザーのパスワードも .env(または乱数)に変更する。既存のトークンは失効する
#>
[CmdletBinding()]
param(
  [string]$PocketBaseUrl,
  [string]$GraphqlUrl,
  [string]$EnvFile,
  [string]$AdminUser,
  [string]$AdminPassword,
  [string]$StaffCode,
  [switch]$ResetPassword
)

$ErrorActionPreference = 'Stop'
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8

# ---- 補助 -----------------------------------------------------------------

function Write-Step([string]$Message) { Write-Host "`n== $Message" -ForegroundColor Cyan }
function Write-Ok([string]$Message) { Write-Host "  [OK]   $Message" -ForegroundColor Green }
function Write-Info([string]$Message) { Write-Host "  [情報] $Message" }
function Write-Warn([string]$Message) { Write-Host "  [注意] $Message" -ForegroundColor Yellow }

function Stop-Init([string]$Message, [int]$Code = 1) {
  Write-Host "  [失敗] $Message" -ForegroundColor Red
  exit $Code
}

# .env を読む(KEY=value の行だけ。値の前後の引用符は外す)
function Read-DotEnv([string]$Path) {
  $map = @{}
  if (-not (Test-Path -LiteralPath $Path)) { return $map }
  foreach ($line in Get-Content -LiteralPath $Path -Encoding UTF8) {
    if ($line -match '^\s*([A-Za-z_][A-Za-z0-9_]*)=(.*)$') {
      $value = $Matches[2].Trim()
      if ($value.Length -ge 2 -and (($value.StartsWith('"') -and $value.EndsWith('"')) -or ($value.StartsWith("'") -and $value.EndsWith("'")))) {
        $value = $value.Substring(1, $value.Length - 2)
      }
      $map[$Matches[1]] = $value
    }
  }
  return $map
}

# 優先順位: 引数 > 環境変数 > .env > 既定
function Pick([string]$Param, [string]$Name, $DotEnv, [string]$Default = '') {
  if ($Param) { return $Param }
  $fromEnv = [Environment]::GetEnvironmentVariable($Name)
  if ($fromEnv) { return $fromEnv }
  if ($DotEnv.ContainsKey($Name) -and $DotEnv[$Name]) { return $DotEnv[$Name] }
  return $Default
}

# JSON の API を呼ぶ。失敗はサーバーのメッセージ付きの例外にする(パスワード・トークンは含めない)
function Invoke-Api {
  param([string]$Method, [string]$Uri, $Body = $null, [string]$Token = '')
  $headers = @{}
  if ($Token) { $headers['Authorization'] = $Token }
  $request = @{ Method = $Method; Uri = $Uri; Headers = $headers; TimeoutSec = 20; ContentType = 'application/json; charset=utf-8' }
  if ($null -ne $Body) { $request['Body'] = [System.Text.Encoding]::UTF8.GetBytes(($Body | ConvertTo-Json -Depth 8 -Compress)) }
  try {
    return Invoke-RestMethod @request
  } catch {
    $status = ''
    $detail = $_.Exception.Message
    if ($_.Exception.Response) { $status = [int]$_.Exception.Response.StatusCode }
    if ($_.ErrorDetails -and $_.ErrorDetails.Message) {
      try {
        $json = $_.ErrorDetails.Message | ConvertFrom-Json
        $detail = "$($json.message)"
        if ($json.data) {
          $fields = @($json.data.PSObject.Properties | ForEach-Object { "$($_.Name): $($_.Value.message)" })
          if ($fields.Count -gt 0) { $detail += ' (' + ($fields -join '; ') + ')' }
        }
      } catch { $detail = $_.ErrorDetails.Message }
    }
    throw "HTTP $status $detail"
  }
}

function New-RandomPassword([int]$Length) {
  $alphabet = 'abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ23456789'
  $bytes = New-Object byte[] ($Length)
  $rng = [System.Security.Cryptography.RandomNumberGenerator]::Create()
  try { $rng.GetBytes($bytes) } finally { $rng.Dispose() }
  $chars = for ($i = 0; $i -lt $Length; $i++) { $alphabet[$bytes[$i] % $alphabet.Length] }
  # 大文字・小文字・数字をそれぞれ1文字以上にそろえる
  $text = -join $chars
  if ($text -cnotmatch '[a-z]' -or $text -cnotmatch '[A-Z]' -or $text -notmatch '[0-9]') { return New-RandomPassword $Length }
  return $text
}

function Get-JwtClaims([string]$Jwt) {
  $part = $Jwt.Split('.')[1].Replace('-', '+').Replace('_', '/')
  while ($part.Length % 4 -ne 0) { $part += '=' }
  return [System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($part)) | ConvertFrom-Json
}

function Invoke-Graphql([string]$Url, [string]$Query, [string]$Jwt = '') {
  $headers = @{}
  if ($Jwt) { $headers['Authorization'] = "Bearer $Jwt" }
  $body = [System.Text.Encoding]::UTF8.GetBytes((@{ query = $Query } | ConvertTo-Json -Compress))
  try {
    return Invoke-RestMethod -Method Post -Uri $Url -Headers $headers -Body $body -ContentType 'application/json; charset=utf-8' -TimeoutSec 20
  } catch {
    $detail = $_.Exception.Message
    if ($_.ErrorDetails -and $_.ErrorDetails.Message) { $detail = $_.ErrorDetails.Message }
    throw "GraphQL: $detail"
  }
}

# ---- 設定 -----------------------------------------------------------------

if (-not $EnvFile) { $EnvFile = Join-Path $PSScriptRoot '..\docker\pocketbase\.env' }
$dotEnv = Read-DotEnv $EnvFile

$pb = Pick $PocketBaseUrl 'PB_URL' $dotEnv ''
if (-not $pb) {
  $port = Pick '' 'PB_PORT' $dotEnv '8090'
  $pb = "http://192.168.1.103:$port"
}
$pb = $pb.TrimEnd('/')
if ($pb.EndsWith('/api')) { $pb = $pb.Substring(0, $pb.Length - 4) }

$username = (Pick $AdminUser 'APP_ADMIN_USER' $dotEnv 'admin').Trim().ToLowerInvariant()
$displayName = Pick '' 'APP_ADMIN_NAME' $dotEnv '管理者'
$email = (Pick '' 'APP_ADMIN_EMAIL' $dotEnv '').Trim().ToLowerInvariant()
$configuredAppUserId = Pick '' 'APP_ADMIN_APP_USER_ID' $dotEnv ''
$minLength = [Math]::Max(8, [int](Pick '' 'PB_PASSWORD_MIN_LENGTH' $dotEnv '8'))
$superEmail = Pick '' 'PB_SUPERUSER_EMAIL' $dotEnv ''
$superPassword = Pick '' 'PB_SUPERUSER_PASSWORD' $dotEnv ''
$staffCodeWanted = (Pick $StaffCode 'APP_ADMIN_STAFF_CODE' $dotEnv '').Trim()
$password = Pick $AdminPassword 'APP_ADMIN_PWD' $dotEnv ''
$passwordGenerated = $false

Write-Host 'テスト環境の初期化: アプリからログインできる管理者ユーザーを用意します' -ForegroundColor White
Write-Info "PocketBase : $pb"
Write-Info "管理者     : $username"

if ($username -notmatch '^[a-z0-9._-]{3,32}$') { Stop-Init "ユーザーID `"$username`" は、英小文字・数字・. _ - の3〜32文字にしてください" }
if (-not $superEmail -or -not $superPassword) {
  Stop-Init "superuser の資格情報が見つかりません。$EnvFile に PB_SUPERUSER_EMAIL と PB_SUPERUSER_PASSWORD を設定してください"
}
if ($password -and $password.Length -lt $minLength) { Stop-Init "パスワードは $minLength 文字以上にしてください(PB_PASSWORD_MIN_LENGTH)" }

# ---- 1. superuser ---------------------------------------------------------

Write-Step '1. PocketBase の superuser でログイン'
try {
  $su = Invoke-Api -Method Post -Uri "$pb/api/collections/_superusers/auth-with-password" -Body @{ identity = $superEmail; password = $superPassword }
} catch {
  Stop-Init "PocketBase($pb)に superuser でログインできません: $_"
}
$suToken = $su.token
Write-Ok 'ログインしました'

# ---- 2. 管理者ユーザー ------------------------------------------------------

Write-Step "2. App の管理者ユーザー($username)を用意"
$filter = [Uri]::EscapeDataString("username = '$username'")
$found = Invoke-Api -Method Get -Uri "$pb/api/collections/users/records?filter=$filter&perPage=1" -Token $suToken
$user = if ($found.items.Count -gt 0) { $found.items[0] } else { $null }
$nowText = [DateTime]::UtcNow.ToString("yyyy-MM-dd HH:mm:ss.fff'Z'")
$appUserIdTemp = if ($configuredAppUserId) { $configuredAppUserId } else { $username.Replace('.', '_') }
$created = $false
$passwordChanged = $false

if (-not $user) {
  if (-not $password) { $password = New-RandomPassword ([Math]::Max(16, $minLength)); $passwordGenerated = $true }
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
  Write-Ok "作成しました(role=admin、有効)"
} else {
  $changes = @{}
  if ($user.role -ne 'admin') { $changes['role'] = 'admin' }
  if ($user.disabled) { $changes['disabled'] = $false }
  if (-not $user.activated_at) { $changes['activated_at'] = $nowText }
  if ($ResetPassword) {
    if (-not $password) { $password = New-RandomPassword ([Math]::Max(16, $minLength)); $passwordGenerated = $true }
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

Write-Step '3. PostgreSQL の担当者(info_staff)と紐付け'
$staffId = ''
$staffCodeUsed = ''
$graphqlOk = $false

# GraphQL 用の JWT は、管理者になりすまして取る(パスワードが分からない既存のユーザーでも動く)。
try {
  $imp = Invoke-Api -Method Post -Uri "$pb/api/collections/users/impersonate/$($user.id)" -Body @{ duration = 120 } -Token $suToken
  $jwtRes = Invoke-Api -Method Get -Uri "$pb/api/app/graphql-token" -Token $imp.token
  $jwt = $jwtRes.token
} catch {
  Write-Warn "GraphQL 用の JWT を取得できません(PocketBase の graphql-token が無効か、サーバーが古い): $_"
  $jwt = ''
}

if ($jwt) {
  $candidates = @()
  if ($GraphqlUrl) { $candidates += $GraphqlUrl }
  elseif ($env:GRAPHQL_URL) { $candidates += $env:GRAPHQL_URL }
  else { $candidates += 'http://192.168.1.100:5000/graphql', 'http://192.168.9.245:5000/graphql' }
  $gql = ''
  foreach ($url in $candidates) {
    try { $null = Invoke-Graphql $url '{ __typename }'; $gql = $url; break } catch { }
  }
  if (-not $gql) {
    Write-Warn "PostGraphile に接続できません($($candidates -join ' / '))"
  } else {
    Write-Info "PostGraphile : $gql"
    try {
      $res = Invoke-Graphql $gql '{ allInfoStaffs(first: 500, filter: { remove: { equalTo: false } }) { nodes { infoStaffId code } } }' $jwt
      if ($res.errors) { throw ($res.errors | ForEach-Object { $_.message }) -join '; ' }
      $graphqlOk = $true
      $staffs = @($res.data.allInfoStaffs.nodes)
      $wanted = if ($staffCodeWanted) { @($staffCodeWanted) } else { @($username, 'ADMIN') }
      foreach ($code in $wanted) {
        $hit = $staffs | Where-Object { $_.code -ieq $code } | Select-Object -First 1
        if ($hit) { $staffId = $hit.infoStaffId; $staffCodeUsed = $hit.code; break }
      }
    } catch {
      Write-Warn "担当者を読めません: $_"
    }
  }
}

$linked = $false
if ($staffId) {
  if ($user.app_user_id -ne $staffId) {
    try {
      $user = Invoke-Api -Method Patch -Uri "$pb/api/collections/users/records/$($user.id)" -Body @{ app_user_id = $staffId } -Token $suToken
    } catch {
      Stop-Init "app_user_id を更新できません: $_"
    }
    Write-Ok "担当者 $staffCodeUsed($staffId)と紐付けました"
  } else {
    Write-Ok "担当者 $staffCodeUsed($staffId)と紐付け済みです"
  }
  $linked = $true
} elseif ($graphqlOk) {
  $tried = if ($staffCodeWanted) { $staffCodeWanted } else { "$username / ADMIN" }
  Write-Warn "担当者(コード: $tried)が見つかりません。ダミーデータ(tools/docker/postgresql/script/10_mrp_dummy.sql、または 12_app_admin_dummy.sql)を流してから、もう一度実行してください"
  Write-Warn "app_user_id は仮の値($($user.app_user_id))のままです。担当者のIDを使う機能は動きません"
}

# ---- 4. 確認(アプリと同じ手順) ---------------------------------------------

Write-Step '4. アプリと同じ手順で確認'
$verified = $false
if ($password -and ($created -or $passwordChanged -or $AdminPassword -or $dotEnv.ContainsKey('APP_ADMIN_PWD'))) {
  try {
    $login = Invoke-Api -Method Post -Uri "$pb/api/collections/users/auth-with-password" -Body @{ identity = $username; password = $password }
    Write-Ok "ログインできます($($login.record.username)、role=$($login.record.role))"
    $verified = $true
    $gjwt = (Invoke-Api -Method Get -Uri "$pb/api/app/graphql-token" -Token $login.token).token
    $claims = Get-JwtClaims $gjwt
    Write-Ok "GraphQL 用の JWT: role=$($claims.role)、staff_id=$($claims.staff_id)"
    if ($claims.role -ne 'pms_admin') { Write-Warn "JWT の role が pms_admin ではありません($($claims.role))" }
  } catch {
    Write-Warn "ログインの確認に失敗しました: $_"
    Write-Warn '(.env の APP_ADMIN_PWD が、既存のユーザーのパスワードと違う場合は、-ResetPassword で合わせます)'
  }
} else {
  Write-Info 'パスワードが分からない(既存のユーザー)ため、ログインの確認は省きました'
}

# ---- 結果 -----------------------------------------------------------------

Write-Host "`n=================================================" -ForegroundColor White
Write-Host "  PocketBase : $pb"
Write-Host "  ユーザーID : $username(role=admin)"
Write-Host "  担当者     : $(if ($linked) { "$staffCodeUsed  $staffId" } else { '(未紐付け)' })"
if ($passwordGenerated) {
  Write-Host "  パスワード : $password" -ForegroundColor Yellow
  Write-Host '               ↑ 乱数で作りました。ここにしか表示しません。控えてください' -ForegroundColor Yellow
} elseif ($passwordChanged) {
  Write-Host '  パスワード : .env の APP_ADMIN_PWD(または -AdminPassword)の値に設定しました'
}
Write-Host '  ログイン   : アプリ(pms_app --dart-define=POCKETBASE_URL=...)のログイン画面で、上のユーザーIDとパスワードを入力'
Write-Host '=================================================' -ForegroundColor White

if (-not $linked) { exit 2 }
exit 0
