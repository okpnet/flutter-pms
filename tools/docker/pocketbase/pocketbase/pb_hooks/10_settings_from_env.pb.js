/// <reference path="../pb_data/types.d.ts" />

/**
 * serve 起動時に .env の内容を設定へ反映する。
 *  - アプリURL / 名前 / 認証トークン有効期間
 *  - 招待制の強制 (users の自己登録を常に閉じる)
 *  - SMTP (招待メール送信用, 任意)
 *  - S3 互換ストレージ (任意)
 *  - レート制限 (招待受諾・ログインの総当たり対策)
 *
 * 空の環境変数は変更しない (管理画面での設定を尊重)。
 * ※ pb_hooks はハンドラごとに独立したVMで動くため、処理はハンドラ内に書く。
 */
onBootstrap((e) => {
  e.next();
  if (!$os.args.includes("serve")) return; // migrate / superuser コマンド時は何もしない

  const env  = (k) => ($os.getenv(k) || "").trim();
  const has  = (k) => env(k) !== "";
  const bool = (k) => ["1", "true", "yes", "on"].includes(env(k).toLowerCase());
  const int  = (k, d) => { const n = parseInt(env(k), 10); return isNaN(n) ? d : n; };

  try {
    // ---------- 全体設定 ----------
    const s = e.app.settings();
    if (has("PB_APP_NAME")) s.meta.appName = env("PB_APP_NAME");
    if (has("PB_APP_URL"))  s.meta.appURL  = env("PB_APP_URL");

    // SMTP
    if (has("PB_SMTP_ENABLED")) {
      s.smtp.enabled = bool("PB_SMTP_ENABLED");
      if (s.smtp.enabled) {
        s.smtp.host     = env("PB_SMTP_HOST");
        s.smtp.port     = int("PB_SMTP_PORT", 587);
        s.smtp.username = env("PB_SMTP_USERNAME");
        s.smtp.password = env("PB_SMTP_PASSWORD");
        s.smtp.tls      = bool("PB_SMTP_TLS");
        if (has("PB_SMTP_SENDER_ADDRESS")) s.meta.senderAddress = env("PB_SMTP_SENDER_ADDRESS");
        if (has("PB_SMTP_SENDER_NAME"))    s.meta.senderName    = env("PB_SMTP_SENDER_NAME");
      }
    }

    // S3 (使う場合は PB_STORAGE_DIR の代わりにバケットへ保存)
    if (has("PB_S3_ENABLED")) {
      s.s3.enabled = bool("PB_S3_ENABLED");
      if (s.s3.enabled) {
        s.s3.bucket         = env("PB_S3_BUCKET");
        s.s3.region         = env("PB_S3_REGION");
        s.s3.endpoint       = env("PB_S3_ENDPOINT");
        s.s3.accessKey      = env("PB_S3_ACCESS_KEY");
        s.s3.secret         = env("PB_S3_SECRET");
        s.s3.forcePathStyle = bool("PB_S3_FORCE_PATH_STYLE");
      }
    }

    // レート制限 (同一IP)
    if (!has("PB_RATE_LIMIT") || bool("PB_RATE_LIMIT")) {
      s.rateLimits.enabled = true;
      s.rateLimits.rules = [
        { label: "/api/app/invites/accept",                   maxRequests: int("PB_RATE_LIMIT_INVITE_PER_MIN", 10), duration: 60 },
        { label: "/api/collections/users/auth-with-password", maxRequests: 10,  duration: 60 },
        { label: "/api/",                                     maxRequests: 300, duration: 10 },
      ];
    }

    e.app.save(s);

    // ---------- users ----------
    const users = e.app.findCollectionByNameOrId("users");
    const duration = int("PB_AUTH_TOKEN_DURATION", 0);
    if (duration > 0) users.authToken.duration = duration;

    // 招待制の強制 (既定 true)。誤って管理画面で開放しても再起動で閉じる
    if (!has("PB_INVITE_ONLY") || bool("PB_INVITE_ONLY")) {
      users.createRule = null;
    }
    users.oauth2.enabled = false;
    users.passwordAuth.enabled = true;
    // ログインに使う項目: "username,email" (既定: ユーザーIDまたはEメール) / "username" (IDのみ)
    const idFields = (env("PB_IDENTITY_FIELDS") || "username,email")
      .split(",").map((x) => x.trim()).filter((x) => x === "username" || x === "email");
    if (idFields.length > 0) users.passwordAuth.identityFields = idFields;
    e.app.save(users);

    console.log("[settings] applied from env");
  } catch (err) {
    console.error("[settings] failed to apply from env:", String(err));
  }
});
