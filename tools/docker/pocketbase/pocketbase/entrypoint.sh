#!/bin/sh
set -e

PB=/pb/pocketbase
ARGS="--dir=/pb/pb_data --migrationsDir=/pb/pb_migrations --hooksDir=/pb/pb_hooks"

mkdir -p /pb/pb_data/storage

# 1) マイグレーション (コレクション作成・招待制の初期化)
$PB migrate up $ARGS

# 2) superuser (.env の PB_SUPERUSER_EMAIL / PB_SUPERUSER_PASSWORD)
if [ -n "$PB_SUPERUSER_EMAIL" ] && [ -n "$PB_SUPERUSER_PASSWORD" ]; then
  if [ "${PB_SUPERUSER_SYNC:-true}" = "true" ]; then
    # 毎起動 .env の値で作成/更新
    $PB superuser upsert "$PB_SUPERUSER_EMAIL" "$PB_SUPERUSER_PASSWORD" $ARGS
  else
    # 初回のみ作成 (既に存在すればそのまま)
    $PB superuser create "$PB_SUPERUSER_EMAIL" "$PB_SUPERUSER_PASSWORD" $ARGS 2>/dev/null \
      || echo "superuser already exists - skip"
  fi
else
  echo "WARN: PB_SUPERUSER_EMAIL / PB_SUPERUSER_PASSWORD が未設定です"
fi

# 3) 起動 (--encryptionEnv: 設定内の SMTP/S3 シークレットを暗号化して保存)
exec $PB serve --http=0.0.0.0:8090 $ARGS --encryptionEnv=PB_ENCRYPTION_KEY
