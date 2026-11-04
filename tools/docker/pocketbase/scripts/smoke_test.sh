#!/usr/bin/env bash
# 権限・フローのスモークテスト（空の PB_DATA_DIR で起動した直後に実行すること）
#   ./scripts/smoke_test.sh            # .env の PB_PORT / PB_SUPERUSER_* を使用
#   PB_URL=http://host:8090 ./scripts/smoke_test.sh
# 必要: curl, jq（Raspberry Pi OS: sudo apt install -y jq）
# 注意: テスト用のユーザー・ファイルを作成します。本番データの入った環境では実行しないでください。
set -uo pipefail

cd "$(dirname "$0")/.."
if [ -f .env ]; then set -a; . ./.env; set +a; fi
URL="${PB_URL:-http://127.0.0.1:${PB_PORT:-8090}}"
SU_EMAIL="${PB_SUPERUSER_EMAIL:?PB_SUPERUSER_EMAIL}"
SU_PASS="${PB_SUPERUSER_PASSWORD:?PB_SUPERUSER_PASSWORD}"
RUN="$(date +%s | tail -c 6)"
TMP="$(mktemp -d)"; trap 'rm -rf "$TMP"' EXIT

PASS=0; FAIL=0
ok()   { PASS=$((PASS+1)); printf '  \033[32mOK\033[0m   %s\n' "$1"; }
ng()   { FAIL=$((FAIL+1)); printf '  \033[31mNG\033[0m   %s  (%s)\n' "$1" "$2"; }

# req METHOD PATH [TOKEN] [JSON]  → $CODE / $BODY
req() {
  local m="$1" p="$2" t="${3:-}" d="${4:-}"
  local args=(-s -o "$TMP/body" -w '%{http_code}' -X "$m" "$URL$p")
  [ -n "$t" ] && args+=(-H "Authorization: $t")
  [ -n "$d" ] && args+=(-H 'Content-Type: application/json' -d "$d")
  CODE="$(curl "${args[@]}")"; BODY="$(cat "$TMP/body")"
}
expect() { # expect "名前" 期待コード
  if [ "$CODE" = "$2" ]; then ok "$1"; else ng "$1" "expected $2, got $CODE: $(echo "$BODY" | head -c 200)"; fi
}
expect_jq() { # expect_jq "名前" 'jq式' 期待値
  local v; v="$(echo "$BODY" | jq -r "$2" 2>/dev/null)"
  if [ "$v" = "$3" ]; then ok "$1"; else ng "$1" "expected '$3', got '$v'"; fi
}
login() { # login identity password → TOKEN（失敗時は空）
  req POST /api/collections/users/auth-with-password "" "{\"identity\":\"$1\",\"password\":\"$2\"}"
  TOKEN="$(echo "$BODY" | jq -r '.token // empty')"
}
enc() { jq -rn --arg v "$1" '$v|@uri'; }
accept() { # accept username code password
  req POST /api/app/codes/accept "" "{\"username\":\"$1\",\"code\":\"$2\",\"password\":\"$3\",\"passwordConfirm\":\"$3\"}"
}

echo "== target: $URL"
req POST /api/collections/_superusers/auth-with-password "" "{\"identity\":\"$SU_EMAIL\",\"password\":\"$SU_PASS\"}"
SU="$(echo "$BODY" | jq -r '.token // empty')"
[ -n "$SU" ] || { echo "superuser でログインできません: $BODY"; exit 1; }

ADMIN_U="adm$RUN"; USER_U="taro$RUN"; OTHER_U="hana$RUN"; ADMIN2_U="adm2$RUN"
PW1="Passw0rd-one"; PW2="Passw0rd-two"; PW3="Passw0rd-three"

echo "== 1. 登録申請"
req POST /api/app/signup "" "{\"full_name\":\"山田 太郎\",\"requested_username\":\"$USER_U\",\"contact_email\":\"Taro$RUN@Example.com\",\"profile\":{\"dept_wish\":\"製造部\",\"tel\":\"0000\"}}"
expect "申請 → 202" 202
req POST /api/app/signup "" "{\"full_name\":\"山田 次郎\",\"requested_username\":\"$USER_U\"}"
expect "同じ希望IDでも 202（重複は応答に出さない）" 202
req POST /api/app/signup "" '{"full_name":""}'
expect "氏名なし → 400" 400
req POST /api/app/signup "" '{"full_name":"x","requested_username":"Bad ID!"}'
expect "不正な希望ID → 400" 400
req POST /api/collections/users/records "" '{"username":"selfreg","password":"Passw0rd-xx","passwordConfirm":"Passw0rd-xx"}'
[ "$CODE" -ge 400 ] && ok "users の自己登録 API は閉じている ($CODE)" || ng "users の自己登録 API は閉じている" "$CODE"
req GET "/api/collections/signup_profiles/records" ""
expect_jq "未ログインでは申請一覧が見えない" '.items | length' 0
req GET "/api/collections/signup_profiles/records?filter=$(enc "requested_username='$USER_U'")&sort=created&expand=user" "$SU"
expect_jq "superuser には申請が2件見える" '.items | length' 2
PENDING_ID="$(echo "$BODY" | jq -r '.items[0].user')"
PENDING2_ID="$(echo "$BODY" | jq -r '.items[1].user')"
expect_jq "申請中ユーザーは仮ID (pending-)" '.items[0].expand.user.username | startswith("pending-")' true
expect_jq "申請中ユーザーの app_user_id は空" '.items[0].expand.user.app_user_id' ""

echo "== 2. 管理者の作成（superuser）と有効化"
req POST /api/app/admin/users "$SU" "{\"username\":\"$ADMIN_U\",\"app_user_id\":\"A$RUN\",\"name\":\"管理者\",\"role\":\"admin\"}"
expect "superuser が管理者を登録 → 201" 201
ADMIN_CODE="$(echo "$BODY" | jq -r .code)"; ADMIN_ID="$(echo "$BODY" | jq -r .user.id)"
expect_jq "状態 = approved（未有効化）" '.user.status' approved
login "$ADMIN_U" "$PW1"; [ -z "$TOKEN" ] && ok "有効化前はログイン不可" || ng "有効化前はログイン不可" "token issued"
accept "$ADMIN_U" "AAAA-BBBB-CCCC" "$PW1"
expect "誤ったコード → 400" 400
accept "$ADMIN_U" "$ADMIN_CODE" "short"
expect "短いパスワード → 400" 400
accept "$(echo "$ADMIN_U" | tr a-z A-Z)" "$(echo "$ADMIN_CODE" | tr -d - | tr A-Z a-z)" "$PW1"
expect "正しいコード（ID大文字・コード小文字/ハイフンなしでも可）→ 204" 204
accept "$ADMIN_U" "$ADMIN_CODE" "$PW1"
expect "使用済みコード → 400" 400
login "$ADMIN_U" "$PW1"; ADMIN="$TOKEN"
[ -n "$ADMIN" ] && ok "管理者ログイン" || ng "管理者ログイン" "$BODY"

echo "== 3. 管理者による申請の承認"
req GET "/api/collections/signup_profiles/records?expand=user" "$ADMIN"
[ "$(echo "$BODY" | jq '.items | length')" -ge 2 ] && ok "管理者は申請一覧を取得できる" || ng "管理者は申請一覧を取得できる" "$BODY"
req POST /api/app/admin/users "$ADMIN" "{\"username\":\"x$RUN\",\"app_user_id\":\"X$RUN\",\"role\":\"admin\"}"
expect "管理者は admin を作成できない → 403" 403
req POST "/api/app/admin/users/$PENDING_ID/activate" "$ADMIN" "{\"app_user_id\":\"U$RUN\"}"
expect "承認（希望IDとメールを採用）→ 200" 200
expect_jq "希望ユーザーIDが正式IDになる" '.user.username' "$USER_U"
expect_jq "メールは小文字で保存" '.user.email' "taro$RUN@example.com"
CODE1="$(echo "$BODY" | jq -r .code)"
req GET "/api/collections/signup_profiles/records?filter=$(enc "user='$PENDING_ID'")" "$ADMIN"
expect_jq "承認後は申請情報（一時置き場）が削除される" '.items | length' 0
req POST "/api/app/admin/users/$PENDING_ID/activate" "$ADMIN" "{\"app_user_id\":\"U$RUN\"}"
expect "同じ app_user_id で再実行 → 200（コード再発行）" 200
CODE2="$(echo "$BODY" | jq -r .code)"
req POST "/api/app/admin/users/$PENDING2_ID/activate" "$ADMIN" "{\"app_user_id\":\"U$RUN\",\"username\":\"$OTHER_U\"}"
expect "別ユーザーに同じ app_user_id → 409" 409
req POST "/api/app/admin/users/$PENDING2_ID/activate" "$ADMIN" "{\"app_user_id\":\"V$RUN\"}"
expect "希望IDが既に使用済み → 400" 400
accept "$USER_U" "$CODE1" "$PW1"
expect "再発行前の古いコード → 400" 400
accept "$USER_U" "$CODE2" "$PW1"
expect "新しいコードで有効化 → 204" 204
req POST "/api/app/admin/users/$PENDING_ID/activate" "$ADMIN" "{\"app_user_id\":\"U$RUN\"}"
expect "有効化済みに activate → 409" 409
login "$(echo "$USER_U" | tr a-z A-Z)" "$PW1"; USER="$TOKEN"
[ -n "$USER" ] && ok "ユーザーID（大文字）でログイン" || ng "ユーザーID（大文字）でログイン" "$BODY"
login "TARO$RUN@EXAMPLE.COM" "$PW1"
[ -n "$TOKEN" ] && ok "Eメール（大文字）でログイン" || ng "Eメール（大文字）でログイン" "$BODY"

echo "== 4. 一般ユーザーの権限"
req GET "/api/collections/signup_profiles/records" "$USER"
expect_jq "一般ユーザーには申請一覧が見えない" '.items | length' 0
req GET "/api/collections/users/records?perPage=200" "$USER"
expect_jq "一般ユーザーには申請中ユーザーが見えない" "[.items[] | select(.id == \"$PENDING2_ID\")] | length" 0
req POST "/api/app/admin/users/$PENDING2_ID/activate" "$USER" '{"app_user_id":"Z1"}'
expect "一般ユーザーは承認できない → 403" 403
USER_ID="$(curl -s -H "Authorization: $USER" "$URL/api/collections/users/auth-refresh" -X POST | jq -r .record.id)"
req GET "/api/collections/users/records/$USER_ID" "$ADMIN"
expect_jq "他ユーザーの email は見えない（管理者からも）" '.email // "hidden"' hidden
req PATCH "/api/collections/users/records/$USER_ID" "$USER" '{"role":"admin"}'
[ "$CODE" -ge 400 ] && ok "本人は role を変更できない ($CODE)" || ng "本人は role を変更できない" "$CODE"
req PATCH "/api/collections/users/records/$USER_ID" "$USER" '{"app_user_id":"HACK"}'
[ "$CODE" -ge 400 ] && ok "本人は app_user_id を変更できない ($CODE)" || ng "本人は app_user_id を変更できない" "$CODE"
req PATCH "/api/collections/users/records/$USER_ID" "$USER" '{"name":"山田 太郎2"}'
expect "本人は name を変更できる" 200
req GET /api/collections/auth_codes/records "$USER"
expect_jq "auth_codes は見えない" '.items | length // 0' 0

echo "== 5. パスワード再設定（メールなし → 管理者対応）"
req POST /api/app/password-reset/request "" '{"identity":"no-such-user"}'
expect "存在しないID → 202（同じ応答）" 202
req POST /api/app/password-reset/request "" "{\"identity\":\"$USER_U\"}"
expect "依頼 → 202" 202
req POST /api/app/password-reset/request "" "{\"identity\":\"$USER_U\"}"
req GET "/api/collections/reset_requests/records?filter=$(enc "status='open' && user='$USER_ID'")" "$ADMIN"
expect_jq "SMTP 無効のため管理者向け依頼が1件（重複なし）" '.items | length' 1
req POST "/api/app/admin/users/$USER_ID/reset-code" "$ADMIN" '{}'
expect "管理者が再設定コード発行 → 200" 200
RCODE="$(echo "$BODY" | jq -r .code)"
req GET "/api/collections/reset_requests/records?filter=$(enc "status='open' && user='$USER_ID'")" "$ADMIN"
expect_jq "依頼はクローズされる" '.items | length' 0
accept "$USER_U" "$RCODE" "$PW2"
expect "再設定コードで変更 → 204" 204
req POST /api/collections/users/auth-refresh "$USER"
expect "変更前のトークンは失効 → 401" 401
login "$USER_U" "$PW1"; [ -z "$TOKEN" ] && ok "旧パスワードではログイン不可" || ng "旧パスワードではログイン不可" "token"
login "$USER_U" "$PW2"; USER="$TOKEN"
[ -n "$USER" ] && ok "新パスワードでログイン" || ng "新パスワードでログイン" "$BODY"

echo "== 6. コード総当たり対策"
# ここまででコード受諾を多数呼んでいるため、レート制限（既定 10回/60秒）の窓を一度リセットする
if [ "${PB_RATE_LIMIT:-true}" = "true" ]; then echo "  (レート制限の窓をリセットするため 61 秒待機)"; sleep 61; fi
req POST "/api/app/admin/users/$USER_ID/reset-code" "$ADMIN" '{}'
RCODE="$(echo "$BODY" | jq -r .code)"
for i in 1 2 3 4 5; do accept "$USER_U" "ZZZZ-ZZZZ-ZZZ$i" "$PW3"; done
accept "$USER_U" "$RCODE" "$PW3"
expect "5回失敗後は正しいコードも無効 → 400" 400

echo "== 7. 管理者アカウントの保護"
req POST /api/app/admin/users "$SU" "{\"username\":\"$ADMIN2_U\",\"app_user_id\":\"B$RUN\",\"role\":\"admin\"}"
ADMIN2_ID="$(echo "$BODY" | jq -r .user.id)"
req POST "/api/app/admin/users/$ADMIN2_ID/reset-code" "$ADMIN" '{}'
expect "管理者は他の管理者の再設定コードを発行できない → 403" 403
req POST "/api/app/admin/users/$ADMIN_ID/disable" "$ADMIN" '{"disabled":true}'
expect "管理者は他の管理者を無効化できない → 403" 403

echo "== 8. 無効化"
req POST "/api/app/admin/users/$USER_ID/disable" "$ADMIN" '{"disabled":true}'
expect "無効化 → 200" 200
req POST /api/collections/users/auth-refresh "$USER"
expect "無効化後はトークン延長不可 → 401" 401
login "$USER_U" "$PW2"; [ -z "$TOKEN" ] && ok "無効化後はログイン不可" || ng "無効化後はログイン不可" "token"
req POST /api/app/password-reset/request "" "{\"identity\":\"$USER_U\"}"
expect "無効化ユーザーの再設定依頼も 202（同じ応答）" 202
req POST "/api/app/admin/users/$USER_ID/disable" "$ADMIN" '{"disabled":false}'
expect "再有効化 → 200" 200
login "$USER_U" "$PW2"; USER="$TOKEN"
[ -n "$USER" ] && ok "再有効化後はログイン可" || ng "再有効化後はログイン可" "$BODY"

echo "== 9. 却下"
req POST "/api/app/admin/users/$USER_ID/reject" "$ADMIN"
expect "有効なユーザーは却下できない → 409" 409
req POST "/api/app/admin/users/$PENDING2_ID/reject" "$ADMIN"
expect "申請中ユーザーを却下 → 204" 204
req GET "/api/collections/users/records/$PENDING2_ID" "$SU"
expect "却下したユーザーは削除される → 404" 404

echo "== 10. 共有ファイル"
echo "hello v1" > "$TMP/a.txt"; echo "hello v2" > "$TMP/b.txt"
up() { local t="$1" f="$2"; shift 2; CODE="$(curl -s -o "$TMP/body" -w '%{http_code}' -X POST "$URL/api/collections/app_files/records" -H "Authorization: $t" -F "app_file_id=F$RUN" "$@" -F "file=@$f")"; BODY="$(cat "$TMP/body")"; }
up "$USER" "$TMP/a.txt" -F "revision=99"; expect "revision を指定したアップロードは拒否 → 400" 400
up "$USER" "$TMP/a.txt" -F "uploaded_by=$ADMIN_ID"; expect "他人名義のアップロードは拒否 → 400" 400
up "$USER" "$TMP/a.txt" -F "comment=初版" -F "mime_type=text/plain"; expect "アップロード v1 → 200" 200
expect_jq "revision はサーバー採番 (=1)" '.revision' 1
expect_jq "uploaded_by は本人" '.uploaded_by' "$USER_ID"
expect_jq "original_name 自動設定" '.original_name' a.txt
expect_jq "size_bytes 自動設定" '.size_bytes' 9
FILE_ID="$(echo "$BODY" | jq -r .id)"; FNAME="$(echo "$BODY" | jq -r .file)"
up "$ADMIN" "$TMP/b.txt"; expect "同じ app_file_id で再アップロード → 200" 200
expect_jq "revision = 2（上書きしない）" '.revision' 2
CODE="$(curl -s -o /dev/null -w '%{http_code}' -X POST "$URL/api/collections/app_files/records" -F "app_file_id=F$RUN" -F "file=@$TMP/a.txt")"
expect "未ログインはアップロード不可" 400
req PATCH "/api/collections/app_files/records/$FILE_ID" "$USER" '{"comment":"x"}'
[ "$CODE" -ge 400 ] && ok "更新不可 ($CODE)" || ng "更新不可" "$CODE"
req DELETE "/api/collections/app_files/records/$FILE_ID" "$USER"
[ "$CODE" -ge 400 ] && ok "削除不可 ($CODE)" || ng "削除不可" "$CODE"
CODE="$(curl -s -o /dev/null -w '%{http_code}' "$URL/api/files/app_files/$FILE_ID/$FNAME")"
[ "$CODE" -ge 400 ] && ok "file token なしではダウンロード不可 ($CODE)" || ng "file token なしではダウンロード不可" "$CODE"
FT="$(curl -s -X POST -H "Authorization: $USER" "$URL/api/files/token" | jq -r .token)"
CODE="$(curl -s -o "$TMP/dl" -w '%{http_code}' "$URL/api/files/app_files/$FILE_ID/$FNAME?token=$FT")"
expect "file token でダウンロード → 200" 200
[ "$(cat "$TMP/dl")" = "hello v1" ] && ok "ダウンロード内容が一致" || ng "ダウンロード内容が一致" "$(cat "$TMP/dl")"

echo "== 11. GraphQL 用トークン"
req GET /api/app/graphql-token "$USER"
if [ "$CODE" = "404" ]; then
  ok "PB_GRAPHQL_JWT_SECRET 未設定 → 404（スキップ）"
else
  expect "GraphQL トークン発行 → 200" 200
  PAYLOAD="$(echo "$BODY" | jq -r .token | cut -d. -f2 | tr '_-' '/+')"
  while [ $(( ${#PAYLOAD} % 4 )) -ne 0 ]; do PAYLOAD="$PAYLOAD="; done
  BODY="$(echo "$PAYLOAD" | base64 -d 2>/dev/null)"
  expect_jq "sub = app_user_id" '.sub' "U$RUN"
  expect_jq "app_role = user" '.app_role' user
  req GET /api/app/graphql-token ""
  expect "未ログイン → 401" 401
fi

echo "== 12. アバター（user_avatars）"
# テスト用の一般ユーザー（もう1人）を管理者が登録して有効化
req POST /api/app/admin/users "$ADMIN" "{\"username\":\"$OTHER_U\",\"app_user_id\":\"O$RUN\",\"name\":\"花子\"}"
OTHER_ID="$(echo "$BODY" | jq -r .user.id)"; OTHER_CODE="$(echo "$BODY" | jq -r .code)"
accept "$OTHER_U" "$OTHER_CODE" "$PW1"
# レート制限（コード受諾・ログインは 60 秒あたりの回数制限）に掛かったら待って再試行
if [ "$CODE" = "429" ]; then echo "  (レート制限のため 61 秒待機)"; sleep 61; accept "$OTHER_U" "$OTHER_CODE" "$PW1"; fi
login "$OTHER_U" "$PW1"
if [ -z "$TOKEN" ] && [ "$CODE" = "429" ]; then echo "  (レート制限のため 61 秒待機)"; sleep 61; login "$OTHER_U" "$PW1"; fi
OTHER="$TOKEN"
[ -n "$OTHER" ] && ok "テスト用ユーザー（hana）でログイン" || ng "テスト用ユーザー（hana）でログイン" "$BODY"

echo "iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAIAAAD2HxkiAAACeklEQVR42u3TMQkAAAzEwBf2/qmsaujU5eAUBJJpgUeRAEwIJgRMCCYETAgmBEwIJgRMCCYETAgmBEwIJgRMCCYETAgmBEwIJgRMCCYETAgmBEwIJgRMCCYETAgmBEwIJgRMCCYETAgmBEwIJgRMCCYETAgmBEwIJgRMCCYETAgmBEwIJgRMCCYETAgmBEwIJgRMCCYETAgmBEwIJgRMCCYEE6oAJgQTAiYEEwImBBMCJgQTAiYEEwImBBMCJgQTAiYEEwImBBMCJgQTAiYEEwImBBMCJgQTAiYEEwImBBMCJgQTAiYEEwImBBMCJgQTAiYEEwImBBMCJgQTAiYEEwImBBMCJgQTAiYEEwImBBMCJgQTAiYEEwImBBMCJgQTAiYEE4IJVQATggkBE4IJAROCCQETggkBE4IJAROCCQETggkBE4IJAROCCQETggkBE4IJAROCCQETggkBE4IJAROCCQETggkBE4IJAROCCQETggkBE4IJAROCCQETggkBE4IJAROCCQETggkBE4IJAROCCQETggkBE4IJAROCCQETggkBE4IJwYSACcGEgAnBhIAJwYSACcGEgAnBhIAJwYSACcGEgAnBhIAJwYSACcGEgAnBhIAJwYSACcGEgAnBhIAJwYSACcGEgAnBhIAJwYSACcGEgAnBhIAJwYSACcGEgAnBhIAJwYSACcGEgAnBhIAJwYSACcGEgAnBhIAJwYSACcGEYEIJwIRgQsCEYELAhGBCwIRgQsCEYELAhGBCwIRgQsCEYELAhGBCwIRgQsCEYELAhGBCwIRgQsCEYELAhGBCwIRgQsCEYELAhGBCwIRgQsCEYELgZgEoEY2632U+bAAAAABJRU5ErkJggg==" | base64 -d > "$TMP/a.png"     # 300x300 PNG
echo "iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAIAAAAiOjnJAAABd0lEQVR42u3SMQ0AAAzDsAIrfw3WSOzYYckIoqQdOBcJMBbGwlhgLIyFscBYGAtjgbEwFsYCY2EsjAXGwlgYC4yFsTAWGAtjYSwwFsbCWGAsjIWxwFgYC2OBsTAWxgJjYSyMBcbCWBgLjIWxMBYYC2NhLDAWxsJYYCyMhbHAWBgLY4GxMBbGAmNhLIwFxsJYGAuMhbEwFhgLY2EsMBbGwlhgLIyFscBYGAtjgbEwFsYCY2EsjIWxVMBYGAtjgbEwFsYCY2EsjAXGwlgYC4yFsTAWGAtjYSwwFsbCWGAsjIWxwFgYC2OBsTAWxgJjYSyMBcbCWBgLjIWxMBYYC2NhLDAWxsJYYCyMhbHAWBgLY4GxMBbGAmNhLIwFxsJYGAuMhbEwFhgLY2EsMBbGwlhgLIyFscBYGAtjgbEwFsYCY2EsjAXGwlgYC2OpgLEwFsYCY2EsjAXGwlgYC4yFsTAWGAtjYSwwFsbCWGAsjIWxwFgYC2OBsfhmAej0W24DwotzAAAAAElFTkSuQmCC" | base64 -d > "$TMP/b.png"     # 200x200 PNG
echo "not an image" > "$TMP/fake.png"
{ cat "$TMP/a.png"; head -c 3145728 /dev/urandom; } > "$TMP/big.png"   # PNG ヘッダー + 3MB
av() { # av METHOD PATH TOKEN [curl -F ...]
  local m="$1" p="$2" t="$3"; shift 3
  local args=(-s -o "$TMP/body" -w '%{http_code}' -X "$m" "$URL$p")
  [ -n "$t" ] && args+=(-H "Authorization: $t")
  CODE="$(curl "${args[@]}" "$@")"; BODY="$(cat "$TMP/body")"
}
png_size() { od -An -tu1 -j16 -N8 "$1" | awk '{printf "%dx%d", $1*16777216+$2*65536+$3*256+$4, $5*16777216+$6*65536+$7*256+$8}'; }

av POST /api/collections/user_avatars/records "$USER" -F "user=$USER_ID" -F "image=@$TMP/a.png"
expect "本人が自分のアバターを登録 → 200" 200
expect_jq "updated_by は本人" '.updated_by' "$USER_ID"
AV_ID="$(echo "$BODY" | jq -r .id)"; AV_OLD="$(echo "$BODY" | jq -r .image)"
av POST /api/collections/user_avatars/records "$USER" -F "user=$USER_ID" -F "image=@$TMP/b.png"
expect "2枚目は登録できない（1人1枚）→ 400" 400
av POST /api/collections/user_avatars/records "$OTHER" -F "user=$USER_ID" -F "image=@$TMP/b.png"
expect "一般ユーザーは他人のアバターを登録できない → 400" 400
av PATCH "/api/collections/user_avatars/records/$AV_ID" "$OTHER" -F "image=@$TMP/b.png"
expect "一般ユーザーは他人のアバターを差し替えできない → 404" 404
av PATCH "/api/collections/user_avatars/records/$AV_ID" "$USER" -F "user=$OTHER_ID"
expect "名義（user）の付け替えは不可 → 404" 404
av POST /api/collections/user_avatars/records "$ADMIN" -F "user=$OTHER_ID" -F "image=@$TMP/b.png"
expect "管理者が他人のアバターを登録 → 200" 200
expect_jq "updated_by は管理者" '.updated_by' "$ADMIN_ID"
av POST /api/collections/user_avatars/records "$ADMIN" -F "user=$ADMIN2_ID" -F "image=@$TMP/b.png"
expect "管理者は他の管理者のアバターも登録できる → 200" 200
av POST /api/collections/user_avatars/records "$ADMIN" -F "user=$ADMIN_ID" -F "image=@$TMP/fake.png"
expect "画像以外は拒否 → 400" 400
av POST /api/collections/user_avatars/records "$ADMIN" -F "user=$ADMIN_ID" -F "image=@$TMP/big.png"
expect "サイズ上限（2MB）超過は拒否 → 400" 400
CODE="$(curl -s -o /dev/null -w '%{http_code}' -X POST "$URL/api/collections/user_avatars/records" -F "user=$USER_ID" -F "image=@$TMP/b.png")"
expect "未ログインは登録できない" 400
av PATCH "/api/collections/users/records/$USER_ID" "$USER" -F "avatar=@$TMP/b.png"
[ "$CODE" -ge 400 ] && ok "users.avatar には登録できない ($CODE)" || ng "users.avatar には登録できない" "$CODE"
av PATCH "/api/collections/user_avatars/records/$AV_ID" "$ADMIN" -F "image=@$TMP/b.png"
expect "管理者が差し替え → 200" 200
AV_NEW="$(echo "$BODY" | jq -r .image)"
[ "$AV_NEW" != "$AV_OLD" ] && ok "差し替えるとファイル名が変わる" || ng "差し替えるとファイル名が変わる" "$AV_NEW"

FT="$(curl -s -X POST -H "Authorization: $OTHER" "$URL/api/files/token" | jq -r .token)"
CODE="$(curl -s -o /dev/null -w '%{http_code}' "$URL/api/files/user_avatars/$AV_ID/$AV_OLD?token=$FT")"
expect "差し替え前の画像は残らない → 404" 404
req GET "/api/collections/user_avatars/records?filter=$(enc "user='$USER_ID'")" "$OTHER"
expect_jq "他のユーザーもアバターを閲覧できる（担当者一覧用）" '.items | length' 1
req GET "/api/collections/user_avatars/records" ""
expect_jq "未ログインでは閲覧できない" '.items | length' 0
CODE="$(curl -s -o "$TMP/av" -w '%{http_code}' "$URL/api/files/user_avatars/$AV_ID/$AV_NEW?token=$FT&thumb=128x128")"
expect "他のユーザーの file token で取得 → 200" 200
[ "$(png_size "$TMP/av")" = "128x128" ] && ok "サムネイル 128x128" || ng "サムネイル 128x128" "$(png_size "$TMP/av")"
CODE="$(curl -s -o /dev/null -w '%{http_code}' "$URL/api/files/user_avatars/$AV_ID/$AV_NEW")"
[ "$CODE" -ge 400 ] && ok "file token なしでは取得できない ($CODE)" || ng "file token なしでは取得できない" "$CODE"
CODE="$(curl -s -L -o "$TMP/av2" -w '%{http_code}' -H "Authorization: $OTHER" "$URL/api/app/users/$USER_ID/avatar?thumb=256x256")"
expect "入口 API（302 → 画像）→ 200" 200
[ "$(png_size "$TMP/av2")" = "256x256" ] && ok "入口 API: サムネイル 256x256" || ng "入口 API: サムネイル 256x256" "$(png_size "$TMP/av2")"
req GET "/api/app/users/$USER_ID/avatar" ""
expect "入口 API: 未ログイン → 401" 401
req GET "/api/app/users/$ADMIN_ID/avatar" "$OTHER"
expect "入口 API: 未登録 → 404" 404
req DELETE "/api/collections/user_avatars/records/$AV_ID" "$OTHER"
expect "一般ユーザーは他人のアバターを削除できない → 404" 404
req DELETE "/api/collections/user_avatars/records/$AV_ID" "$USER"
expect "本人が削除 → 204" 204

echo
echo "== 結果: OK $PASS / NG $FAIL"
[ "$FAIL" -eq 0 ]
