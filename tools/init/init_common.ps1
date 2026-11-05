# init_common.ps1 - 初期化スクリプト(admin_init.ps1・user_init.ps1)の共通部品。直接は実行しない。
#
# 本番用(メイン)とテスト用(-Test)の違いは、各スクリプトが決める。ここには、通信・入力・確認の部品だけを置く。
# パスワード・トークン・資格情報は、画面にもファイルにも出さない(例外: テスト用の乱数のパスワードの一度だけの表示)。

$ErrorActionPreference = 'Stop'
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8

# ---- 表示 -------------------------------------------------------------------

function Write-Step([string]$Message) { Write-Host "`n== $Message" -ForegroundColor Cyan }
function Write-Ok([string]$Message) { Write-Host "  [OK]   $Message" -ForegroundColor Green }
function Write-Info([string]$Message) { Write-Host "  [情報] $Message" }
function Write-Warn([string]$Message) { Write-Host "  [注意] $Message" -ForegroundColor Yellow }

function Stop-Init([string]$Message, [int]$Code = 1) {
  Write-Host "  [失敗] $Message" -ForegroundColor Red
  exit $Code
}

# ---- 設定の読み込み ---------------------------------------------------------

# .env を読む(KEY=value の行だけ。値の前後の引用符は外す)。テスト用だけが使う。
function Read-DotEnv([string]$Path) {
  $map = @{}
  if (-not $Path -or -not (Test-Path -LiteralPath $Path)) { return $map }
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

# 優先順位: 引数 > 環境変数 > .env(テストのみ) > 既定
function Pick([string]$Param, [string]$Name, $DotEnv, [string]$Default = '') {
  if ($Param) { return $Param }
  $fromEnv = [Environment]::GetEnvironmentVariable($Name)
  if ($fromEnv) { return $fromEnv }
  if ($DotEnv -and $DotEnv.ContainsKey($Name) -and $DotEnv[$Name]) { return $DotEnv[$Name] }
  return $Default
}

# ---- 入力 -------------------------------------------------------------------

# 対話できるか(標準入力が端末で、-NoPrompt でないとき)
function Test-Interactive([switch]$NoPrompt) {
  return (-not $NoPrompt) -and (-not [Console]::IsInputRedirected)
}

# 1項目を入力する。対話できないときは [Default] を返す。Enter だけなら既定値。
function Read-Answer {
  param([string]$Label, [string]$Default = '', [switch]$Secret, [bool]$Interactive = $true)
  if (-not $Interactive) { return $Default }
  $hint = if ($Secret) { if ($Default) { ' [Enterで既定の値]' } else { '' } } elseif ($Default) { " [$Default]" } else { '' }
  if ($Secret) {
    $secure = Read-Host -Prompt "  $Label$hint" -AsSecureString
    $ptr = [Runtime.InteropServices.Marshal]::SecureStringToBSTR($secure)
    try { $text = [Runtime.InteropServices.Marshal]::PtrToStringBSTR($ptr) } finally { [Runtime.InteropServices.Marshal]::ZeroFreeBSTR($ptr) }
  } else {
    $text = Read-Host -Prompt "  $Label$hint"
  }
  if ([string]::IsNullOrEmpty($text)) { return $Default }
  return $text
}

# パスワードを入力する(確認のため2回)。一致しなければ聞き直す。
function Read-NewPassword([string]$Label, [int]$MinLength, [string]$Default = '', [bool]$Interactive = $true) {
  if (-not $Interactive) { return $Default }
  while ($true) {
    $first = Read-Answer -Label $Label -Secret -Default $Default
    if ($first -eq $Default -and $Default) { return $Default }
    if ($first.Length -lt $MinLength) { Write-Warn "$MinLength 文字以上にしてください"; continue }
    $second = Read-Answer -Label "$Label(確認)" -Secret
    if ($first -ceq $second) { return $first }
    Write-Warn '一致しません。もう一度入力してください'
  }
}

function New-RandomPassword([int]$Length) {
  $alphabet = 'abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ23456789'
  $bytes = New-Object byte[] ($Length)
  $rng = [System.Security.Cryptography.RandomNumberGenerator]::Create()
  try { $rng.GetBytes($bytes) } finally { $rng.Dispose() }
  $chars = for ($i = 0; $i -lt $Length; $i++) { $alphabet[$bytes[$i] % $alphabet.Length] }
  $text = -join $chars
  # 大文字・小文字・数字をそれぞれ1文字以上にそろえる
  if ($text -cnotmatch '[a-z]' -or $text -cnotmatch '[A-Z]' -or $text -notmatch '[0-9]') { return New-RandomPassword $Length }
  return $text
}

# ---- 通信 -------------------------------------------------------------------

# 接続先の検査: http は、ローカルのネットワーク(localhost・10.x・172.16-31.x・192.168.x.x・*.local)だけ許す。
# それ以外は https(パスワードとトークンが平文で流れないように)。pbapi の PbEndpoint と同じ規則。
function Test-EndpointAllowed([string]$Url) {
  $uri = $null
  if (-not [Uri]::TryCreate($Url, [UriKind]::Absolute, [ref]$uri)) { return $false }
  if ($uri.Scheme -eq 'https') { return $true }
  if ($uri.Scheme -ne 'http') { return $false }
  $h = $uri.Host.ToLowerInvariant()
  if ($h -eq 'localhost' -or $h.EndsWith('.local')) { return $true }
  $ip = $null
  if (-not [Net.IPAddress]::TryParse($h, [ref]$ip)) { return $false }
  if ([Net.IPAddress]::IsLoopback($ip)) { return $true }
  $b = $ip.GetAddressBytes()
  if ($ip.AddressFamily -ne 'InterNetwork') { return $false }
  return ($b[0] -eq 10) -or ($b[0] -eq 172 -and $b[1] -ge 16 -and $b[1] -le 31) -or ($b[0] -eq 192 -and $b[1] -eq 168)
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

function Get-JwtClaims([string]$Jwt) {
  $part = $Jwt.Split('.')[1].Replace('-', '+').Replace('_', '/')
  while ($part.Length % 4 -ne 0) { $part += '=' }
  return [System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($part)) | ConvertFrom-Json
}

# ---- PocketBase -------------------------------------------------------------

function Format-PbUrl([string]$Url) {
  $u = $Url.Trim().TrimEnd('/')
  if ($u.EndsWith('/api')) { $u = $u.Substring(0, $u.Length - 4) }
  return $u
}

function Connect-Superuser([string]$Pb, [string]$Email, [string]$Password) {
  try {
    $res = Invoke-Api -Method Post -Uri "$Pb/api/collections/_superusers/auth-with-password" -Body @{ identity = $Email; password = $Password }
  } catch {
    Stop-Init "PocketBase($Pb)に superuser でログインできません: $_"
  }
  return $res.token
}

function Find-PbUser([string]$Pb, [string]$SuToken, [string]$Username) {
  $filter = [Uri]::EscapeDataString("username = '$Username'")
  $found = Invoke-Api -Method Get -Uri "$Pb/api/collections/users/records?filter=$filter&perPage=1" -Token $SuToken
  if ($found.items.Count -gt 0) { return $found.items[0] }
  return $null
}

function Get-PbUsers([string]$Pb, [string]$SuToken) {
  $res = Invoke-Api -Method Get -Uri "$Pb/api/collections/users/records?perPage=500&fields=id,username,role,app_user_id,disabled" -Token $SuToken
  return @($res.items)
}

# 管理者になりすまして(superuser の impersonate、120秒)、GraphQL 用の JWT を取る。パスワードは要らない。
function Get-GraphqlJwt([string]$Pb, [string]$SuToken, [string]$UserId) {
  $imp = Invoke-Api -Method Post -Uri "$Pb/api/collections/users/impersonate/$UserId" -Body @{ duration = 120 } -Token $SuToken
  return (Invoke-Api -Method Get -Uri "$Pb/api/app/graphql-token" -Token $imp.token).token
}

# ---- PostGraphile -----------------------------------------------------------

# 候補のうち、先に応答した接続先。無ければ空
function Find-Graphql([string[]]$Candidates) {
  foreach ($url in $Candidates) {
    try { $null = Invoke-Graphql $url '{ __typename }'; return $url } catch { }
  }
  return ''
}

# 担当者(info_staff)の一覧。{ infoStaffId, code }
function Get-Staffs([string]$GraphqlUrl, [string]$Jwt) {
  $res = Invoke-Graphql $GraphqlUrl '{ allInfoStaffs(first: 500, filter: { remove: { equalTo: false } }) { nodes { infoStaffId code } } }' $Jwt
  if ($res.errors) { throw (($res.errors | ForEach-Object { $_.message }) -join '; ') }
  return @($res.data.allInfoStaffs.nodes)
}

# コードの候補(先に挙げたものを優先。大文字小文字を区別しない)に合う担当者
function Resolve-Staff($Staffs, [string[]]$Codes) {
  foreach ($code in $Codes) {
    if (-not $code) { continue }
    $hit = $Staffs | Where-Object { $_.code -ieq $code } | Select-Object -First 1
    if ($hit) { return $hit }
  }
  return $null
}
