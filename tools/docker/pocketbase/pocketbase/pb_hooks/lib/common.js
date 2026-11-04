/// <reference path="../../pb_data/types.d.ts" />
/**
 * 共通ヘルパー
 * JSVM のハンドラは個別の実行環境で動くため、各ハンドラの中で
 *   const c = require(`${__hooks}/lib/common.js`)
 * として読み込むこと（ファイル先頭の変数はハンドラから参照できない）。
 */

const USERNAME_RE = /^[a-z0-9._-]{3,32}$/
const CODE_ALPHABET = "23456789ABCDEFGHJKLMNPQRSTUVWXYZ" // 0/O/1/I を除外
const CODE_LENGTH = 12

function env(name, def) {
  const v = $os.getenv(name)
  return v === "" ? def : v
}
function envInt(name, def) {
  const n = parseInt($os.getenv(name), 10)
  return isNaN(n) ? def : n
}
function envBool(name, def) {
  const v = ($os.getenv(name) || "").toLowerCase()
  if (v === "") return def
  return v === "true" || v === "1" || v === "yes"
}

function str(v) {
  return v === undefined || v === null ? "" : String(v).trim()
}
function normUsername(v) {
  return str(v).toLowerCase()
}
function normEmail(v) {
  return str(v).toLowerCase()
}
function isValidUsername(v) {
  return USERNAME_RE.test(v)
}
function isValidEmail(v) {
  return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(v) && v.length <= 254
}

/** 入力値エラー（PocketBase 標準形式: data.<field>.code / message） */
function fieldError(field, message) {
  const data = {}
  // PocketBase がメッセージ末尾に "." を付けるため、句点は外しておく
  data[field] = new ValidationError("validation_invalid", String(message).replace(/。$/, ""))
  return new BadRequestError("入力内容を確認してください", data)
}

/** 状態判定 */
function isActive(user) {
  return str(user.get("app_user_id")) !== "" && !user.getBool("disabled")
}
function isPending(user) {
  return str(user.get("app_user_id")) === ""
}
function isActivated(user) {
  return !user.getDateTime("activated_at").isZero()
}

/** 呼び出し元が管理者（role=admin のユーザー or superuser）か */
function requireAdmin(e) {
  const a = e.auth
  if (!a) throw new UnauthorizedError("ログインが必要です")
  if (a.isSuperuser()) return a
  if (a.collection().name === "users" && a.get("role") === "admin" && isActive(a)) return a
  throw new ForbiddenError("管理者のみ実行できます")
}
/** 管理者ユーザー（role=admin）を対象にした操作は superuser のみ */
function guardAdminTarget(e, target) {
  if (target.get("role") === "admin" && !e.auth.isSuperuser()) {
    throw new ForbiddenError("管理者アカウントの操作は superuser のみ実行できます")
  }
}

function findUserById(app, id) {
  try {
    return app.findRecordById("users", id)
  } catch (_) {
    throw new NotFoundError("ユーザーが見つかりません")
  }
}
function findUserByUsername(app, username) {
  try {
    return app.findFirstRecordByData("users", "username", normUsername(username))
  } catch (_) {
    return null
  }
}
function findUserByEmail(app, email) {
  const v = normEmail(email)
  if (v === "") return null
  try {
    return app.findFirstRecordByData("users", "email", v)
  } catch (_) {
    return null
  }
}
/** ユーザーID または Eメール（PB_IDENTITY_FIELDS に従う） */
function findUserByIdentity(app, identity) {
  const v = str(identity).toLowerCase()
  if (v === "") return null
  const fields = env("PB_IDENTITY_FIELDS", "username,email").split(",").map((s) => s.trim())
  if (v.indexOf("@") >= 0) {
    return fields.indexOf("email") >= 0 ? findUserByEmail(app, v) : null
  }
  return fields.indexOf("username") >= 0 ? findUserByUsername(app, v) : null
}

/** 申請中ユーザーの仮ユーザーID（管理者が承認時に正式IDへ変更する） */
function pendingUsername() {
  return "pending-" + $security.randomStringWithAlphabet(12, "abcdefghijklmnopqrstuvwxyz0123456789")
}

// ------------------------------------------------------------------ コード

function normCode(v) {
  return str(v).toUpperCase().replace(/[\s-]/g, "")
}
function formatCode(code) {
  return code.replace(/(.{4})(?=.)/g, "$1-")
}
function hashCode(userId, code) {
  const key = env("PB_ENCRYPTION_KEY", "pb-app-service")
  return $security.hs256(userId + ":" + normCode(code), key)
}

/**
 * コードを発行する（そのユーザーの未使用コードはすべて無効化）
 * @returns {{code:string, expiresAt:string, record:core.Record}}
 */
function issueCode(app, user, kind, issuedBy) {
  const hours = kind === "activate" ? envInt("PB_ACTIVATE_CODE_TTL_HOURS", 72) : envInt("PB_RESET_CODE_TTL_HOURS", 24)
  invalidateCodes(app, user.id)

  const code = $security.randomStringWithAlphabet(CODE_LENGTH, CODE_ALPHABET)
  const expires = new DateTime().add(hours * 60 * 60 * 1000 * 1000 * 1000) // time.Duration(ns)

  const rec = new Record(app.findCollectionByNameOrId("auth_codes"))
  rec.set("user", user.id)
  rec.set("kind", kind)
  rec.set("code_hash", hashCode(user.id, code))
  rec.set("expires_at", expires)
  rec.set("attempts", 0)
  if (issuedBy && !issuedBy.isSuperuser()) rec.set("issued_by", issuedBy.id)
  app.save(rec)

  return { code: formatCode(code), expiresAt: expires.string(), record: rec }
}

function invalidateCodes(app, userId) {
  const now = new DateTime()
  const list = app.findRecordsByFilter("auth_codes", "user = {:u} && used_at = ''", "", 0, 0, { u: userId })
  for (const r of list) {
    r.set("used_at", now)
    app.save(r)
  }
}

function closeResetRequests(app, userId) {
  const list = app.findRecordsByFilter("reset_requests", "user = {:u} && status = 'open'", "", 0, 0, { u: userId })
  for (const r of list) {
    r.set("status", "done")
    app.save(r)
  }
}

// ------------------------------------------------------------------ メール

function smtpEnabled(app) {
  return app.settings().smtp.enabled
}

/** コードをメール送信（SMTP 無効・メール未登録なら false） */
function mailCode(app, user, issued, kind) {
  const to = str(user.get("email"))
  if (to === "" || !smtpEnabled(app)) return false

  const s = app.settings().meta
  const username = user.get("username")
  const title = kind === "activate" ? "アカウント有効化コード" : "パスワード再設定コード"
  // 任意: アプリ起動リンク（例: myapp://code?username=...&code=...&kind=...）
  const linkBase = env("PB_CODE_LINK_BASE", "")
  const link = linkBase
    ? `${linkBase}?username=${encodeURIComponent(username)}&code=${encodeURIComponent(issued.code)}&kind=${kind}`
    : ""
  const html = [
    `<p>${escapeHtml(user.get("name") || username)} 様</p>`,
    `<p>${escapeHtml(s.appName)} の${title}をお知らせします。</p>`,
    `<p>ユーザーID: <b>${escapeHtml(username)}</b><br>`,
    `コード: <b style="font-size:1.3em;letter-spacing:2px">${issued.code}</b><br>`,
    `有効期限: ${escapeHtml(issued.expiresAt)} (UTC)</p>`,
    `<p>アプリの「コードを入力」画面で、ユーザーID・コード・新しいパスワードを入力してください。</p>`,
    link ? `<p><a href="${escapeHtml(link)}">アプリで開く</a></p>` : "",
    `<p>心当たりがない場合は、このメールを破棄し管理者へご連絡ください。</p>`,
  ].join("\n")

  try {
    app.newMailClient().send(new MailerMessage({
      from: { address: s.senderAddress, name: s.senderName },
      to: [{ address: to }],
      subject: `[${s.appName}] ${title}`,
      html: html,
    }))
    issued.record.set("mailed", true)
    app.save(issued.record)
    return true
  } catch (err) {
    app.logger().error("mailCode failed", "user", user.id, "error", String(err))
    return false
  }
}

function escapeHtml(s) {
  return String(s === undefined || s === null ? "" : s)
    .replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/"/g, "&quot;")
}

/** 管理者向けにユーザーを返す形 */
function userView(user) {
  return {
    id: user.id,
    username: user.get("username"),
    name: user.get("name"),
    email: user.get("email"),
    app_user_id: user.get("app_user_id"),
    role: user.get("role"),
    disabled: user.getBool("disabled"),
    verified: user.getBool("verified"),
    activated_at: isActivated(user) ? user.getDateTime("activated_at").string() : "",
    status: isPending(user) ? "pending" : (!isActivated(user) ? "approved" : (user.getBool("disabled") ? "disabled" : "active")),
  }
}

// ------------------------------------------------------------------ アバター

/**
 * user_avatars のルール（migrations/1762200000_user_avatars.js と同じ内容）
 *  閲覧: 有効なユーザー全員 / 登録・差し替え・削除: 本人 または 管理者
 */
function avatarRules() {
  const ACTIVE = '@request.auth.collectionName = "users" && @request.auth.app_user_id != "" && @request.auth.disabled = false'
  const ADMIN = `(${ACTIVE} && @request.auth.role = "admin")`
  const SELF = `(${ACTIVE} && user = @request.auth.id)`
  return {
    listRule: ACTIVE,
    viewRule: ACTIVE,
    createRule: `(${ACTIVE} && @request.body.user = @request.auth.id) || ${ADMIN}`,
    updateRule: `(${SELF} || ${ADMIN}) && @request.body.user:isset = false`,
    deleteRule: `${SELF} || ${ADMIN}`,
  }
}
const AVATAR_THUMBS = ["128x128", "256x256"]

module.exports = {
  avatarRules, AVATAR_THUMBS,
  env, envInt, envBool, str,
  normUsername, normEmail, isValidUsername, isValidEmail, fieldError,
  isActive, isPending, isActivated, requireAdmin, guardAdminTarget,
  findUserById, findUserByUsername, findUserByEmail, findUserByIdentity, pendingUsername,
  normCode, hashCode, issueCode, invalidateCodes, closeResetRequests,
  mailCode, userView,
}
