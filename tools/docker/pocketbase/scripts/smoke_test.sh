#!/usr/bin/env bash
# PocketBase 疎通・権限テスト (招待制・ユーザーIDログイン / 共有 / 上書き不可)
#   使い方: ./scripts/smoke_test.sh [http://localhost:8090]
#   .env の PB_SUPERUSER_EMAIL / PB_SUPERUSER_PASSWORD を使用
set -u
cd "$(dirname "$0")/.."
set -a; [ -f .env ] && . ./.env; set +a
B="${1:-http://localhost:${PB_PORT:-8090}}/api"
PASS=0; FAIL=0
j(){ python3 -c "import sys,json;d=json.load(sys.stdin);print(d$1)" 2>/dev/null; }
check(){ if [ "$2" = "$3" ]; then echo "  OK  $1 ($3)"; PASS=$((PASS+1)); else echo "  NG  $1 (expected $2, got $3)"; FAIL=$((FAIL+1)); fi; }
code(){ curl -s -o /dev/null -w "%{http_code}" "$@"; }
SUF=$RANDOM$RANDOM

ST=$(curl -s -X POST $B/collections/_superusers/auth-with-password -H 'Content-Type: application/json' \
  -d "{\"identity\":\"$PB_SUPERUSER_EMAIL\",\"password\":\"$PB_SUPERUSER_PASSWORD\"}" | j '["token"]')
[ -n "$ST" ] || { echo "superuser login failed"; exit 1; }

invite(){ curl -s -X POST $B/collections/invites/records -H "Authorization: $ST" -H 'Content-Type: application/json' -d "$1"; }
accept(){ curl -s -o /dev/null -w "%{http_code}" -X POST $B/app/invites/accept -H 'Content-Type: application/json' \
  -d "{\"username\":\"$1\",\"code\":\"$2\",\"password\":\"Passw0rd123\",\"passwordConfirm\":\"Passw0rd123\"}"; }
tok(){ curl -s -X POST $B/collections/users/auth-with-password -H 'Content-Type: application/json' \
  -d "{\"identity\":\"$1\",\"password\":\"Passw0rd123\"}" | j '["token"]'; }

echo "[招待制 / ユーザーIDログイン]"
UA="userA_$SUF"; UB="userB_$SUF"
check "自己登録は拒否" 403 $(code -X POST $B/collections/users/records -H 'Content-Type: application/json' \
  -d "{\"username\":\"x$SUF\",\"password\":\"Passw0rd123\",\"passwordConfirm\":\"Passw0rd123\"}")
check "一般ユーザーは invites を見られない" 403 $(code $B/collections/invites/records)
IA=$(invite "{\"username\":\"$UA\",\"app_user_id\":\"U$SUF\"}"); CA=$(echo "$IA" | j '["code"]')
IB=$(invite "{\"username\":\"$UB\",\"email\":\"b$SUF@example.com\"}"); CB=$(echo "$IB" | j '["code"]')
check "招待コード自動生成(12桁)"   12 ${#CA}
check "不正なユーザーID形式は拒否" 400 $(code -X POST $B/collections/invites/records -H "Authorization: $ST" -H 'Content-Type: application/json' -d '{"username":"bad id!"}')
check "コード違いは拒否"           400 $(accept "$UA" "WRONGCODE123")
check "ユーザーID違いは拒否"       400 $(accept "other$SUF" "$CA")
check "招待受諾 A (email なし)"    200 $(accept "$UA" "$CA")
check "同じコード再利用は拒否"     400 $(accept "$UA" "$CA")
check "使用済みユーザーIDの招待は拒否(大小無視)" 400 $(code -X POST $B/collections/invites/records -H "Authorization: $ST" -H 'Content-Type: application/json' -d "{\"username\":\"USERA_$SUF\"}")
check "招待受諾 B (email あり)"    200 $(accept "$UB" "$CB")
IX=$(invite "{\"username\":\"x$SUF\",\"expires_at\":\"2020-01-01 00:00:00.000Z\"}"); CX=$(echo "$IX" | j '["code"]')
check "期限切れは拒否"             400 $(accept "x$SUF" "$CX")
TA=$(tok "$UA"); TB=$(tok "$UB")
check "A ユーザーIDでログイン"     1 $([ -n "$TA" ] && echo 1 || echo 0)
check "B ユーザーIDでログイン"     1 $([ -n "$TB" ] && echo 1 || echo 0)
check "B Eメールでログイン"        1 $([ -n "$(tok "b$SUF@example.com")" ] && echo 1 || echo 0)
check "Eメール大文字でもログイン"  1 $([ -n "$(tok "B$SUF@EXAMPLE.COM")" ] && echo 1 || echo 0)
check "Eメール未登録の A はEメール不可(当然)" 400 $(code -X POST $B/collections/users/auth-with-password -H 'Content-Type: application/json' -d "{\"identity\":\"a$SUF@example.com\",\"password\":\"Passw0rd123\"}")
check "大文字小文字違いでもログイン" 1 $([ -n "$(tok "USERA_$SUF")" ] && echo 1 || echo 0)
check "誤パスワードは拒否"         400 $(code -X POST $B/collections/users/auth-with-password -H 'Content-Type: application/json' -d "{\"identity\":\"$UA\",\"password\":\"wrongpass1\"}")
AID=$(curl -s -X POST $B/collections/users/auth-refresh -H "Authorization: $TA" | j '["record"]["id"]')
check "app_user_id 招待時に設定"   "U$SUF" "$(curl -s $B/collections/users/records/$AID -H "Authorization: $TA" | j '["app_user_id"]')"
check "app_user_id 本人変更不可"   404 $(code -X PATCH $B/collections/users/records/$AID -H "Authorization: $TA" -H 'Content-Type: application/json' -d '{"app_user_id":"HACK"}')
check "username 本人変更不可"      404 $(code -X PATCH $B/collections/users/records/$AID -H "Authorization: $TA" -H 'Content-Type: application/json' -d '{"username":"hacked"}')
check "auth-refresh 不正トークン" 401 $(code -X POST $B/collections/users/auth-refresh -H "Authorization: invalid")

echo "[共有ファイル / 上書き不可]"
TMP=$(mktemp -d); echo "rev1" > "$TMP/図面.txt"; echo "rev2" > "$TMP/図面_v2.txt"
R1=$(curl -s -X POST $B/collections/app_files/records -H "Authorization: $TA" -F "app_file_id=F$SUF" -F "file=@$TMP/図面.txt")
R2=$(curl -s -X POST $B/collections/app_files/records -H "Authorization: $TB" -F "app_file_id=F$SUF" -F "file=@$TMP/図面_v2.txt")
ID1=$(echo "$R1" | j '["id"]'); FN1=$(echo "$R1" | j '["file"]')
check "A アップロード revision=1"   1 "$(echo "$R1" | j '["revision"]')"
check "B 同一IDで追加 revision=2"   2 "$(echo "$R2" | j '["revision"]')"
check "original_name 記録"  "図面.txt" "$(echo "$R1" | j '["original_name"]')"
check "revision 指定は拒否"        400 $(code -X POST $B/collections/app_files/records -H "Authorization: $TA" -F "app_file_id=F$SUF" -F "revision=1" -F "file=@$TMP/図面.txt")
check "他人名義は拒否"             400 $(code -X POST $B/collections/app_files/records -H "Authorization: $TB" -F "app_file_id=G$SUF" -F "uploaded_by=$AID" -F "file=@$TMP/図面.txt")
check "未認証アップロード拒否"     400 $(code -X POST $B/collections/app_files/records -F "app_file_id=H$SUF" -F "file=@$TMP/図面.txt")
check "B が A のファイルを参照(共有)" 200 $(code $B/collections/app_files/records/$ID1 -H "Authorization: $TB")
check "未認証は一覧不可(0件)"      0 "$(curl -s -G $B/collections/app_files/records | j '["totalItems"]')"
check "最新revision取得"           2 "$(curl -s -G $B/collections/app_files/records -H "Authorization: $TB" --data-urlencode "filter=app_file_id='F$SUF'" --data-urlencode "sort=-revision" --data-urlencode "perPage=1" | j '["items"][0]["revision"]')"
check "更新(上書き)は拒否"         403 $(code -X PATCH $B/collections/app_files/records/$ID1 -H "Authorization: $TA" -F "file=@$TMP/図面_v2.txt")
check "削除は拒否"                 403 $(code -X DELETE $B/collections/app_files/records/$ID1 -H "Authorization: $TA")

echo "[ダウンロード]"
FTB=$(curl -s -X POST $B/files/token -H "Authorization: $TB" | j '["token"]')
check "token なしは拒否"           404 $(code "$B/files/app_files/$ID1/$FN1")
check "B の token で A のファイル取得" 200 $(code "$B/files/app_files/$ID1/$FN1?token=$FTB&download=1")
check "rev1 の内容は保持"        "rev1" "$(curl -s "$B/files/app_files/$ID1/$FN1?token=$FTB")"

echo "[レート制限]"
LAST=""; for i in $(seq 1 12); do LAST=$(accept "z$SUF" "BRUTEFORCE$i"); [ "$LAST" = "429" ] && break; done
check "招待受諾の総当たりは 429" 429 "$LAST"

rm -rf "$TMP"
echo "PASS=$PASS FAIL=$FAIL"; [ $FAIL -eq 0 ]
