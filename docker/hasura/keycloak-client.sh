#!/bin/bash

# ヘルプ表示関数
show_help() {
  echo "Usage: $0 -r <keycloak-host> -u <registry-user> -c <client-host>"
  echo "  -k : Keycloakホスト名（必須）"
  echo "  -u : Keycloakホストのユーザー名（必須）"
  echo "  -c : クライアントホスト名（必須）"
  exit 1
}

# 引数解析
while [[ $# -gt 0 ]]; do
  key="$1"
  case $key in
    -k)
      if [[ -z "$2" ]]; then echo "❌ -r オプションに値が必要です"; show_help; fi
      KEYCLOAK_HOST="$2"
      shift; shift
      ;;
    -u)
      if [[ -z "$2" ]]; then echo "❌ -u オプションに値が必要です"; show_help; fi
      KEYCLOAK_HOST_USER="$2"
      shift; shift
      ;;
    -c)
      if [[ -z "$2" ]]; then echo "❌ -c オプションに値が必要です"; show_help; fi
      CLIENT_HOST="$2"
      shift; shift
      ;;
    *)
      echo "❌ 不明なオプション: $1"
      show_help
      ;;
  esac
done

# 必須引数チェック
if [[ -z "$KEYCLOAK_HOST" || -z "$KEYCLOAK_HOST_USER" || -z "$CLIENT_HOST" ]]; then
  echo "❌ 必須引数が不足しています"
  show_help
fi

# sudo コマンド確認
if ! command -v sudo &> /dev/null; then
  echo "❌ sudo コマンドが見つかりません。インストールまたは権限確認してください。"
  exit 1
fi

# 証明書ファイルの存在確認
REMOTE_CERT_PATH="/opt/letsencrypt/live/${KEYCLOAK_HOST}/fullchain.pem"
ssh "${KEYCLOAK_HOST_USER}@${KEYCLOAK_HOST}" "test -f ${REMOTE_CERT_PATH}"
if [[ $? -ne 0 ]]; then
  echo "❌ 証明書ファイルが存在しません: ${REMOTE_CERT_PATH}"
  exit 1
fi

# 証明書ディレクトリ作成とコピー
CERT_DIR="/opt/keycloak/certs.d/${KEYCLOAK_HOST}"
echo "📁 証明書ディレクトリ: ${CERT_DIR} を作成します..."
sudo mkdir -p "${CERT_DIR}"

echo "📦 証明書を ${KEYCLOAK_HOST} からコピーします..."
sudo scp "${KEYCLOAK_HOST_USER}@${KEYCLOAK_HOST}:${REMOTE_CERT_PATH}" "${CERT_DIR}/ca.crt"
if [[ $? -ne 0 ]]; then
  echo "❌ 証明書のコピーに失敗しました。SSH接続やパスを確認してください。"
  exit 1
fi

echo "✅ 設定完了: ${CLIENT_HOST} から ${KEYCLOAK_HOST}:8443 への安全なアクセスが可能になりました。"