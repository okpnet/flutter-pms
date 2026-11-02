#!/usr/bin/env bash
# 管理者が先にユーザーを登録し、有効化コードを発行する（superuser 権限。.env を読む）
#   ./scripts/create_user.sh <ユーザーID> <app_user_id> [email] [氏名] [role(user|admin)]
#   例) ./scripts/create_user.sh tanaka.t U0001 "" "田中 太郎"
#       ./scripts/create_user.sh admin1 A0001 admin1@example.com "管理者" admin   ← 最初のアプリ管理者
# 表示された「ユーザーID + 有効化コード」を本人に手渡す（email があり SMTP 有効ならメールも送信）。
# 必要: curl, jq（Raspberry Pi OS: sudo apt install -y jq）
set -euo pipefail

cd "$(dirname "$0")/.."
if [ -f .env ]; then set -a; . ./.env; set +a; fi
URL="${PB_URL:-http://127.0.0.1:${PB_PORT:-8090}}"

if [ $# -lt 2 ]; then
  sed -n '2,7p' "$0"; exit 1
fi
USERNAME="$1"; APP_USER_ID="$2"; EMAIL="${3:-}"; NAME="${4:-}"; ROLE="${5:-user}"

SU="$(curl -s -X POST "$URL/api/collections/_superusers/auth-with-password" \
  -H 'Content-Type: application/json' \
  -d "$(jq -n --arg i "$PB_SUPERUSER_EMAIL" --arg p "$PB_SUPERUSER_PASSWORD" '{identity:$i,password:$p}')" | jq -r '.token // empty')"
[ -n "$SU" ] || { echo "superuser でログインできません（.env の PB_SUPERUSER_* を確認）" >&2; exit 1; }

RES="$(curl -s -w '\n%{http_code}' -X POST "$URL/api/app/admin/users" \
  -H "Authorization: $SU" -H 'Content-Type: application/json' \
  -d "$(jq -n --arg u "$USERNAME" --arg a "$APP_USER_ID" --arg e "$EMAIL" --arg n "$NAME" --arg r "$ROLE" \
        '{username:$u, app_user_id:$a, email:$e, name:$n, role:$r}')")"
CODE="$(echo "$RES" | tail -1)"; BODY="$(echo "$RES" | sed '$d')"

if [ "$CODE" != "201" ]; then
  echo "登録に失敗しました ($CODE):" >&2; echo "$BODY" | jq . >&2; exit 1
fi

echo "$BODY" | jq -r '"ユーザーID : \(.user.username)\n有効化コード: \(.code)\n有効期限   : \(.expires_at) (UTC)\nメール送信 : \(if .mailed then "済" else "なし（手渡ししてください）" end)"'
