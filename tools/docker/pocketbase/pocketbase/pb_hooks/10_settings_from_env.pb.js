/// <reference path="../pb_data/types.d.ts" />

/**
 * serve 起動時に .env の内容を設定へ反映する。
 *  - アプリURL / 名前 / 認証トークン有効期間 / パスワード最小長
 *  - SMTP (コード通知メール, 任意) / S3 互換ストレージ (任意)
 *  - レート制限 (申請・再設定依頼・コード受諾・ログインの総当たり対策)
 *  - リバースプロキシ (X-Forwarded-For)
 *  - users のセキュリティ設定を強制 (自己登録 API を閉じる・authRule・OAuth2/OTP 無効)
 *  - app_files の最大ファイルサイズ
 *  - user_avatars のルール (本人・管理者のみ登録) と最大サイズ (PB_AVATAR_MAX_MB)
 *
 * 任意項目は、環境変数が空なら変更しない (管理画面での設定を尊重)。
 * セキュリティに関わる users の設定だけは、管理画面で変更しても起動のたびに戻す。
 * ※ pb_hooks はハンドラごとに独立したVMで動くため、処理はハンドラ内に書く。
 */
onBootstrap((e) => {
  e.next()
  if (!$os.args.includes("serve")) return // migrate / superuser コマンド時は何もしない

  const c = require(`${__hooks}/lib/common.js`)
  const has = (k) => c.env(k, "") !== ""

  try {
    // ---------- 全体設定 ----------
    const s = e.app.settings()
    if (has("PB_APP_NAME")) s.meta.appName = c.env("PB_APP_NAME")
    if (has("PB_APP_URL")) s.meta.appURL = c.env("PB_APP_URL")

    // SMTP
    if (has("PB_SMTP_ENABLED")) {
      s.smtp.enabled = c.envBool("PB_SMTP_ENABLED", false)
      if (s.smtp.enabled) {
        s.smtp.host = c.env("PB_SMTP_HOST", "")
        s.smtp.port = c.envInt("PB_SMTP_PORT", 587)
        s.smtp.username = c.env("PB_SMTP_USERNAME", "")
        s.smtp.password = c.env("PB_SMTP_PASSWORD", "")
        s.smtp.tls = c.envBool("PB_SMTP_TLS", false)
        if (has("PB_SMTP_SENDER_ADDRESS")) s.meta.senderAddress = c.env("PB_SMTP_SENDER_ADDRESS")
        if (has("PB_SMTP_SENDER_NAME")) s.meta.senderName = c.env("PB_SMTP_SENDER_NAME")
      }
    }

    // S3 (使う場合は PB_STORAGE_DIR の代わりにバケットへ保存)
    if (has("PB_S3_ENABLED")) {
      s.s3.enabled = c.envBool("PB_S3_ENABLED", false)
      if (s.s3.enabled) {
        s.s3.bucket = c.env("PB_S3_BUCKET", "")
        s.s3.region = c.env("PB_S3_REGION", "")
        s.s3.endpoint = c.env("PB_S3_ENDPOINT", "")
        s.s3.accessKey = c.env("PB_S3_ACCESS_KEY", "")
        s.s3.secret = c.env("PB_S3_SECRET", "")
        s.s3.forcePathStyle = c.envBool("PB_S3_FORCE_PATH_STYLE", false)
      }
    }

    // リバースプロキシ (Caddy 経由のときクライアントIPを X-Forwarded-For から取る)
    s.trustedProxy.headers = c.envBool("PB_TRUSTED_PROXY", false) ? ["X-Forwarded-For"] : []
    s.trustedProxy.useLeftmostIP = false

    // レート制限 (同一IP)
    s.rateLimits.enabled = c.envBool("PB_RATE_LIMIT", true)
    if (s.rateLimits.enabled) {
      s.rateLimits.rules = [
        { label: "POST /api/app/signup", audience: "", duration: 60, maxRequests: c.envInt("PB_RATE_LIMIT_SIGNUP_PER_MIN", 5) },
        { label: "POST /api/app/password-reset/request", audience: "", duration: 60, maxRequests: c.envInt("PB_RATE_LIMIT_RESET_REQUEST_PER_MIN", 5) },
        { label: "POST /api/app/codes/accept", audience: "", duration: 60, maxRequests: c.envInt("PB_RATE_LIMIT_CODE_PER_MIN", 10) },
        { label: "*:auth", audience: "", duration: 60, maxRequests: c.envInt("PB_RATE_LIMIT_LOGIN_PER_MIN", 10) },
        { label: "/api/", audience: "", duration: 10, maxRequests: 300 },
      ]
    }

    e.app.save(s)

    // ---------- users (セキュリティ設定は常に強制) ----------
    const users = e.app.findCollectionByNameOrId("users")
    users.authToken.duration = c.envInt("PB_AUTH_TOKEN_DURATION", 604800)
    // 自己登録 API は常に閉じる (申請は /api/app/signup 経由)
    users.createRule = null
    // ログインできるのは App DB 登録済み (app_user_id あり) かつ無効化されていないユーザーだけ
    users.authRule = 'app_user_id != "" && disabled = false'
    users.oauth2.enabled = false
    users.otp.enabled = false
    users.passwordAuth.enabled = true
    // ログインに使う項目: "username,email" (既定: ユーザーIDまたはEメール) / "username" (IDのみ)
    const idFields = c.env("PB_IDENTITY_FIELDS", "username,email")
      .split(",").map((x) => x.trim()).filter((x) => x === "username" || x === "email")
    users.passwordAuth.identityFields = idFields.length > 0 ? idFields : ["username"]
    users.fields.getByName("password").min = Math.max(8, c.envInt("PB_PASSWORD_MIN_LENGTH", 8))
    e.app.save(users)

    // ---------- app_files ----------
    const files = e.app.findCollectionByNameOrId("app_files")
    files.fields.getByName("file").maxSize = c.envInt("PB_FILE_MAX_MB", 100) * 1024 * 1024
    e.app.save(files)

    // ---------- user_avatars (ルールは常に強制) ----------
    const avatars = e.app.findCollectionByNameOrId("user_avatars")
    const r = c.avatarRules()
    avatars.listRule = r.listRule
    avatars.viewRule = r.viewRule
    avatars.createRule = r.createRule
    avatars.updateRule = r.updateRule
    avatars.deleteRule = r.deleteRule
    const avatarMb = parseFloat(c.env("PB_AVATAR_MAX_MB", "2"))
    avatars.fields.getByName("image").maxSize = Math.floor((avatarMb > 0 ? avatarMb : 2) * 1024 * 1024)
    e.app.save(avatars)

    console.log("[settings] applied from env")
  } catch (err) {
    console.error("[settings] failed to apply from env:", String(err))
  }
})
