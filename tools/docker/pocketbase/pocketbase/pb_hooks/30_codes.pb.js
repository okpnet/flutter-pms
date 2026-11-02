/// <reference path="../pb_data/types.d.ts" />
/**
 * コード方式（認証不要・レート制限あり）
 *
 * POST /api/app/password-reset/request   { identity }  → 202（結果に関わらず同じ応答）
 *   - Eメール登録あり → 再設定コードをメール送信
 *   - Eメールなし（または SMTP 無効）→ reset_requests に依頼を登録（管理者が対応）
 *
 * POST /api/app/codes/accept   { username, code, password, passwordConfirm } → 204
 *   - 有効化コード: 初回パスワード設定（activated_at を記録）
 *   - 再設定コード: パスワード変更（既存トークンはすべて失効）
 */

routerAdd("POST", "/api/app/password-reset/request", (e) => {
  const c = require(`${__hooks}/lib/common.js`)
  const app = e.app
  const body = e.requestInfo().body || {}
  const identity = c.str(body.identity)
  if (identity === "" || identity.length > 254) throw c.fieldError("identity", "ユーザーIDまたはEメールを入力してください。")

  const user = c.findUserByIdentity(app, identity)
  if (user && c.isActive(user) && c.isActivated(user)) {
    try {
      const hasMail = c.str(user.get("email")) !== "" && app.settings().smtp.enabled
      if (hasMail) {
        let issued
        app.runInTransaction((tx) => { issued = c.issueCode(tx, user, "reset", null) })
        if (!c.mailCode(app, user, issued, "reset")) {
          // 送信失敗 → 管理者対応へ回す
          c.invalidateCodes(app, user.id)
          openRequest(app, user)
        }
      } else {
        openRequest(app, user)
      }
    } catch (err) {
      app.logger().error("password-reset/request failed", "user", user.id, "error", String(err))
    }
  }

  function openRequest(app, user) {
    const open = app.findRecordsByFilter("reset_requests", "user = {:u} && status = 'open'", "", 1, 0, { u: user.id })
    if (open.length > 0) return
    const r = new Record(app.findCollectionByNameOrId("reset_requests"))
    r.set("user", user.id)
    r.set("status", "open")
    app.save(r)
  }

  return e.json(202, { status: "accepted" })
})

routerAdd("POST", "/api/app/codes/accept", (e) => {
  const c = require(`${__hooks}/lib/common.js`)
  const app = e.app
  const body = e.requestInfo().body || {}

  const username = c.normUsername(body.username)
  const code = c.normCode(body.code)
  const password = body.password === undefined || body.password === null ? "" : String(body.password)
  const confirm = body.passwordConfirm === undefined || body.passwordConfirm === null ? "" : String(body.passwordConfirm)

  if (username === "") throw c.fieldError("username", "ユーザーIDを入力してください。")
  if (code === "") throw c.fieldError("code", "コードを入力してください。")
  const minLen = app.findCollectionByNameOrId("users").fields.getByName("password").min || 8
  if (password.length < minLen || password.length > 71) {
    throw c.fieldError("password", `パスワードは${minLen}〜71文字で入力してください。`)
  }
  if (password !== confirm) throw c.fieldError("passwordConfirm", "パスワードが一致しません。")

  const INVALID = "ユーザーIDまたはコードが正しくないか、有効期限が切れています"
  const maxAttempts = c.envInt("PB_CODE_MAX_ATTEMPTS", 5)

  const user = c.findUserByUsername(app, username)
  if (!user || !c.isActive(user)) {
    c.hashCode("dummy", code) // 応答時間をそろえる
    throw new BadRequestError(INVALID)
  }

  const now = new DateTime()
  const list = app.findRecordsByFilter(
    "auth_codes", "user = {:u} && used_at = '' && expires_at > {:now}", "-created", 1, 0,
    { u: user.id, now: now.string() },
  )
  if (list.length === 0) {
    c.hashCode(user.id, code)
    throw new BadRequestError(INVALID)
  }
  const rec = list[0]

  if (!$security.equal(c.hashCode(user.id, code), rec.get("code_hash"))) {
    const attempts = rec.getInt("attempts") + 1
    rec.set("attempts", attempts)
    if (attempts >= maxAttempts) rec.set("used_at", now) // 失敗回数超過 → このコードは無効
    app.save(rec)
    throw new BadRequestError(INVALID)
  }

  const kind = rec.get("kind")
  app.runInTransaction((tx) => {
    const u = tx.findRecordById("users", user.id)
    u.setPassword(password)
    u.refreshTokenKey() // 既存トークンはすべて失効
    if (kind === "activate") u.set("activated_at", now)
    // メールで届いたコードで成功 → メール到達を確認済みとする
    if (rec.getBool("mailed") && c.str(u.get("email")) !== "") u.set("verified", true)
    tx.save(u)
    c.invalidateCodes(tx, u.id)
    c.closeResetRequests(tx, u.id)
  })

  return e.noContent(204)
})
