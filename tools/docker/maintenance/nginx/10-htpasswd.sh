#!/bin/sh
# .env の ID・パスワードから Basic 認証のファイルを作る(起動のたび)。
set -eu
: "${MAINT_USER:?MAINT_USER を .env に指定してください}"
: "${MAINT_PASSWORD:?MAINT_PASSWORD を .env に指定してください}"
mkdir -p /data/info
umask 077
printf '%s:{PLAIN}%s\n' "$MAINT_USER" "$MAINT_PASSWORD" > /etc/nginx/htpasswd
chown nginx /etc/nginx/htpasswd 2>/dev/null || chmod 644 /etc/nginx/htpasswd
chown nginx /data /data/info 2>/dev/null || true
# chown が効かない置き場(共有フォルダ・NAS など)でも、nginx が書けるようにする
chmod 777 /data /data/info 2>/dev/null || true
