#!/usr/bin/env bash
# 招待コードを発行する (superuser 権限)
#   使い方: ./scripts/invite.sh <username> [app_user_id] [email] [note]
#     username    : ログインに使うユーザーID (英数字 . _ - / 3〜32文字)
#     app_user_id : App DB のユーザーID (任意)
#     email       : 任意。SMTP 有効時はここへ招待メールを送信
#   .env の PB_SUPERUSER_EMAIL / PB_SUPERUSER_PASSWORD / PB_PORT を使用
set -euo pipefail
cd "$(dirname "$0")/.."
set -a; [ -f .env ] && . ./.env; set +a

USERNAME="${1:?username を指定してください}"
APP_USER_ID="${2:-}"
EMAIL="${3:-}"
NOTE="${4:-}"
BASE="${PB_URL:-http://localhost:${PB_PORT:-8090}}/api"

TOKEN=$(curl -sf -X POST "$BASE/collections/_superusers/auth-with-password" \
  -H 'Content-Type: application/json' \
  -d "$(python3 -c 'import json,sys;print(json.dumps({"identity":sys.argv[1],"password":sys.argv[2]}))' "$PB_SUPERUSER_EMAIL" "$PB_SUPERUSER_PASSWORD")" \
  | python3 -c 'import sys,json;print(json.load(sys.stdin)["token"])')

BODY=$(python3 -c 'import json,sys;print(json.dumps({"username":sys.argv[1],"app_user_id":sys.argv[2],"email":sys.argv[3],"note":sys.argv[4]}))' \
  "$USERNAME" "$APP_USER_ID" "$EMAIL" "$NOTE")

curl -s -X POST "$BASE/collections/invites/records" \
  -H "Authorization: $TOKEN" -H 'Content-Type: application/json' -d "$BODY" \
  | python3 -c '
import sys, json
d = json.load(sys.stdin)
if "code" not in d:
    print("ERROR:", d.get("message"), json.dumps(d.get("data", {}), ensure_ascii=False))
    sys.exit(1)
for k in ("username", "code", "expires_at", "app_user_id", "email", "note"):
    print(f"{k:12}: {d.get(k)}")
'
