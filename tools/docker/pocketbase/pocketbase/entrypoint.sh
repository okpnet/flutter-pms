#!/bin/sh
# 起動処理: マイグレーション → superuser 作成/更新 → serve
set -eu

PB=/pb/pocketbase
# --encryptionEnv: 設定内の SMTP/S3 シークレットを PB_ENCRYPTION_KEY で暗号化して保存
ARGS="--dir=/pb/pb_data --migrationsDir=/pb/pb_migrations --hooksDir=/pb/pb_hooks --encryptionEnv=PB_ENCRYPTION_KEY"

if [ -z "${PB_ENCRYPTION_KEY:-}" ]; then
  echo "ERROR: PB_ENCRYPTION_KEY が未設定です（openssl rand -hex 16 で作成し .env に設定）" >&2
  exit 1
fi

mkdir -p /pb/pb_data/storage

# 1) マイグレーション (コレクション作成・users の拡張)
# shellcheck disable=SC2086
$PB migrate up $ARGS

# 2) superuser (.env の PB_SUPERUSER_EMAIL / PB_SUPERUSER_PASSWORD)
if [ -n "${PB_SUPERUSER_EMAIL:-}" ] && [ -n "${PB_SUPERUSER_PASSWORD:-}" ]; then
  if [ "${PB_SUPERUSER_SYNC:-true}" = "true" ]; then
    # 毎起動 .env の値で作成/更新
    # shellcheck disable=SC2086
    $PB superuser upsert "$PB_SUPERUSER_EMAIL" "$PB_SUPERUSER_PASSWORD" $ARGS
  else
    # 初回のみ作成 (既に存在すればそのまま)
    # shellcheck disable=SC2086
    $PB superuser create "$PB_SUPERUSER_EMAIL" "$PB_SUPERUSER_PASSWORD" $ARGS 2>/dev/null \
      || echo "superuser already exists - skip"
  fi
else
  echo "WARN: PB_SUPERUSER_EMAIL / PB_SUPERUSER_PASSWORD が未設定です"
fi

# 3) 起動
# shellcheck disable=SC2086
exec $PB serve --http=0.0.0.0:8090 $ARGS
