/// <reference path="../../pb_data/types.d.ts" />
/** 管理者 API の共通処理 */

const c = require(`${__hooks}/lib/common.js`)

/** ユーザーIDを検証して設定（他ユーザーと重複したら 400） */
function setUsername(app, user, username) {
  const v = c.normUsername(username)
  if (!c.isValidUsername(v) || v.indexOf("pending-") === 0) {
    throw c.fieldError("username", "ユーザーIDは英小文字・数字・. _ - の3〜32文字です（pending- で始まるIDは不可）。")
  }
  const other = c.findUserByUsername(app, v)
  if (other && other.id !== user.id) throw c.fieldError("username", "このユーザーIDは既に使われています。")
  user.set("username", v)
}

/** Eメールを検証して設定（空は「なし」） */
function setEmail(app, user, email) {
  const v = c.normEmail(email)
  if (v !== "" && !c.isValidEmail(v)) throw c.fieldError("email", "Eメールの形式が正しくありません。")
  if (v !== "") {
    const other = c.findUserByEmail(app, v)
    if (other && other.id !== user.id) throw c.fieldError("email", "このEメールは既に使われています。")
  }
  if (v !== user.get("email")) user.set("verified", false)
  user.set("email", v)
}

/** app_user_id を検証して設定 */
function setAppUserId(app, user, appUserId) {
  const v = c.str(appUserId)
  if (!/^[A-Za-z0-9_-]{1,64}$/.test(v)) {
    throw c.fieldError("app_user_id", "app_user_id は英数字・_ - の1〜64文字で指定してください。")
  }
  const cur = c.str(user.get("app_user_id"))
  if (cur !== "" && cur !== v) {
    throw new ApiError(409, "このユーザーは別の app_user_id で登録済みです", { app_user_id: cur })
  }
  const others = app.findRecordsByFilter("users", "app_user_id = {:v} && id != {:id}", "", 1, 0, { v: v, id: user.id })
  if (others.length > 0) throw new ApiError(409, "この app_user_id は別のユーザーに紐付いています")
  user.set("app_user_id", v)
}

function findProfile(app, userId) {
  try {
    return app.findFirstRecordByData("signup_profiles", "user", userId)
  } catch (_) {
    return null
  }
}

/** コード発行結果のレスポンス */
function codeResponse(app, user, issued, kind, mail) {
  const mailed = mail ? c.mailCode(app, user, issued, kind) : false
  return {
    user: c.userView(user),
    kind: kind,
    code: issued.code,
    expires_at: issued.expiresAt,
    mailed: mailed,
  }
}

module.exports = { setUsername, setEmail, setAppUserId, findProfile, codeResponse }
