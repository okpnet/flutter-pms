FROM alpine:3.20

ARG PB_VERSION=0.40.6

# 実行環境の CPU アーキテクチャに合ったバイナリを取得し、ビルド時に起動確認する
# (TARGETARCH はビルダーによって未設定のことがあるため uname -m で判定)
RUN set -eux; \
    apk add --no-cache ca-certificates unzip wget tzdata; \
    case "$(uname -m)" in \
      x86_64)  PB_ARCH=amd64 ;; \
      aarch64) PB_ARCH=arm64 ;; \
      armv7l)  PB_ARCH=armv7 ;; \
      armv6l)  echo "armv6 (Pi 1 / Zero / Zero W) は PocketBase 公式バイナリ非対応です"; exit 1 ;; \
      *) echo "unsupported arch: $(uname -m)"; exit 1 ;; \
    esac; \
    wget -q -O /tmp/pb.zip \
      "https://github.com/pocketbase/pocketbase/releases/download/v${PB_VERSION}/pocketbase_${PB_VERSION}_linux_${PB_ARCH}.zip"; \
    unzip -o /tmp/pb.zip pocketbase -d /pb; \
    rm /tmp/pb.zip; \
    chmod +x /pb/pocketbase; \
    /pb/pocketbase --version

COPY pb_migrations /pb/pb_migrations
COPY pb_hooks      /pb/pb_hooks
COPY entrypoint.sh /pb/entrypoint.sh
# Windows で編集された場合の CRLF 改行を除去
RUN sed -i 's/\r$//' /pb/entrypoint.sh && chmod +x /pb/entrypoint.sh

ENV TZ=Asia/Tokyo
EXPOSE 8090

ENTRYPOINT ["/pb/entrypoint.sh"]
