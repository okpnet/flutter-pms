/// <reference path="../pb_data/types.d.ts" />
/**
 * 新規登録の申請（認証不要・レート制限あり）
 *
 * POST /api/app/signup
 *   { full_name, requested_username?, contact_email?, profile?: {...}, note? }
 *   → 202 { status: "accepted" }
 *
 * - users に「申請中」ユーザーを作成（app_user_id 空・仮ユーザーID・使えないランダムパスワード）
 *   → authRule によりログイン不可
 * - 本人情報は signup_profiles に保存（管理者だけが読める。承認時に削除）
 * - 希望ユーザーIDの重複は確認しない（応答から他人の登録状況が分からないようにするため）。
 *   正式なユーザーIDは管理者が承認時に決める。
 */
routerAdd("POST", "/api/app/signup", (e) => {
  const c = require(`${__hooks}/lib/common.js`)
  const app = e.app
  const body = e.requestInfo().body || {}

  const fullName = c.str(body.full_name)
  const requested = c.normUsername(body.requested_username)
  const contactEmail = c.normEmail(body.contact_email)
  const note = c.str(body.note)
  const profile = body.profile === undefined || body.profile === null ? {} : body.profile

  if (fullName === "" || fullName.length > 100) throw c.fieldError("full_name", "氏名は1〜100文字で入力してください。")
  if (requested !== "" && !c.isValidUsername(requested)) {
    throw c.fieldError("requested_username", "ユーザーIDは英小文字・数字・. _ - の3〜32文字です。")
  }
  if (contactEmail !== "" && !c.isValidEmail(contactEmail)) throw c.fieldError("contact_email", "Eメールの形式が正しくありません。")
  if (note.length > 1000) throw c.fieldError("note", "備考は1000文字以内です。")
  if (typeof profile !== "object" || Array.isArray(profile)) throw c.fieldError("profile", "profile はオブジェクトで指定してください。")
  if (JSON.stringify(profile).length > 16000) throw c.fieldError("profile", "profile が大きすぎます。")

  const maxPending = c.envInt("PB_SIGNUP_MAX_PENDING", 100)
  const pending = app.countRecords("users", $dbx.exp("app_user_id = ''"))
  if (pending >= maxPending) {
    throw new ApiError(503, "現在、登録申請を受け付けていません。管理者へお問い合わせください")
  }

  app.runInTransaction((tx) => {
    const user = new Record(tx.findCollectionByNameOrId("users"))
    user.set("username", c.pendingUsername())
    user.set("name", fullName)
    user.set("role", "user")
    user.set("app_user_id", "")
    user.set("disabled", false)
    user.setPassword($security.randomString(40))
    tx.save(user)

    const p = new Record(tx.findCollectionByNameOrId("signup_profiles"))
    p.set("user", user.id)
    p.set("requested_username", requested)
    p.set("full_name", fullName)
    p.set("contact_email", contactEmail)
    p.set("profile", profile)
    p.set("note", note)
    tx.save(p)
  })

  return e.json(202, { status: "accepted" })
})
