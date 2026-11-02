/// <reference path="../pb_data/types.d.ts" />
/**
 * 管理者 API（role=admin のユーザー、または superuser）
 *
 * 申請中ユーザーの一覧・本人情報は標準 API で取得する:
 *   GET /api/collections/signup_profiles/records?expand=user&sort=created
 *   GET /api/collections/reset_requests/records?filter=status='open'&expand=user
 *
 * POST /api/app/admin/users                    管理者が先に登録（従来の招待に相当）
 * POST /api/app/admin/users/{id}/activate      申請を承認（App DB 登録後に呼ぶ）→ 有効化コード
 * POST /api/app/admin/users/{id}/reject        申請を却下（申請中ユーザーを削除）
 * POST /api/app/admin/users/{id}/reset-code    再設定コードを発行
 * POST /api/app/admin/users/{id}/disable       無効化 / 再有効化
 *
 * 管理者アカウント（role=admin）を対象にした操作は superuser のみ。
 */

// 管理者が先に登録する（App DB 登録済みの担当者に PocketBase アカウントを作る）
routerAdd("POST", "/api/app/admin/users", (e) => {
  const c = require(`${__hooks}/lib/common.js`)
  const a = require(`${__hooks}/lib/admin.js`)
  const admin = c.requireAdmin(e)
  const app = e.app
  const body = e.requestInfo().body || {}

  const role = c.str(body.role) || "user"
  if (role !== "user" && role !== "admin") throw c.fieldError("role", "role は user または admin です。")
  if (role === "admin" && !admin.isSuperuser()) throw new ForbiddenError("管理者アカウントの作成は superuser のみ実行できます")

  let result
  app.runInTransaction((tx) => {
    const user = new Record(tx.findCollectionByNameOrId("users"))
    a.setUsername(tx, user, body.username)
    a.setAppUserId(tx, user, body.app_user_id)
    a.setEmail(tx, user, body.email)
    user.set("name", c.str(body.name).slice(0, 255))
    user.set("role", role)
    user.set("disabled", false)
    user.setPassword($security.randomString(40))
    tx.save(user)

    const issued = c.issueCode(tx, user, "activate", admin)
    result = { user: user, issued: issued }
  })

  return e.json(201, a.codeResponse(app, result.user, result.issued, "activate", body.mail !== false))
}, $apis.requireAuth())

// 申請を承認する（App DB への担当者登録が済んでから呼ぶ。同じ app_user_id なら何度呼んでもよい）
routerAdd("POST", "/api/app/admin/users/{id}/activate", (e) => {
  const c = require(`${__hooks}/lib/common.js`)
  const a = require(`${__hooks}/lib/admin.js`)
  const admin = c.requireAdmin(e)
  const app = e.app
  const body = e.requestInfo().body || {}

  let result
  app.runInTransaction((tx) => {
    const user = c.findUserById(tx, e.request.pathValue("id"))
    c.guardAdminTarget(e, user)
    if (user.getBool("disabled")) throw new ApiError(409, "無効化されたユーザーです")
    if (c.isActivated(user)) {
      throw new ApiError(409, "既に有効化済みです。パスワードを忘れた場合は再設定コードを発行してください")
    }

    const profile = a.findProfile(tx, user.id)

    a.setAppUserId(tx, user, body.app_user_id)

    // ユーザーID: 指定 > 申請時の希望 > 現在値
    let username = c.str(body.username)
    if (username === "" && profile) username = c.str(profile.get("requested_username"))
    if (username === "") username = user.get("username")
    a.setUsername(tx, user, username)

    // Eメール: 指定（"" = なし）> 申請時の連絡先 > 現在値
    let email
    if (Object.prototype.hasOwnProperty.call(body, "email")) email = c.str(body.email)
    else if (profile) email = c.str(profile.get("contact_email"))
    else email = user.get("email")
    a.setEmail(tx, user, email)

    if (c.str(body.name) !== "") user.set("name", c.str(body.name).slice(0, 255))

    tx.save(user)
    if (profile) tx.delete(profile)

    result = { user: user, issued: c.issueCode(tx, user, "activate", admin) }
  })

  return e.json(200, a.codeResponse(app, result.user, result.issued, "activate", body.mail !== false))
}, $apis.requireAuth())

// 申請を却下する（申請中のユーザーのみ。本人情報もまとめて削除）
routerAdd("POST", "/api/app/admin/users/{id}/reject", (e) => {
  const c = require(`${__hooks}/lib/common.js`)
  c.requireAdmin(e)
  const user = c.findUserById(e.app, e.request.pathValue("id"))
  if (!c.isPending(user)) throw new ApiError(409, "申請中のユーザーではありません")
  e.app.delete(user)
  return e.noContent(204)
}, $apis.requireAuth())

// 再設定コードを発行する（有効化済みのユーザーのみ）
routerAdd("POST", "/api/app/admin/users/{id}/reset-code", (e) => {
  const c = require(`${__hooks}/lib/common.js`)
  const a = require(`${__hooks}/lib/admin.js`)
  const admin = c.requireAdmin(e)
  const app = e.app
  const body = e.requestInfo().body || {}

  const user = c.findUserById(app, e.request.pathValue("id"))
  c.guardAdminTarget(e, user)
  if (!c.isActive(user)) throw new ApiError(409, "有効なユーザーではありません")
  if (!c.isActivated(user)) throw new ApiError(409, "未有効化のユーザーです。activate を再実行して有効化コードを再発行してください")

  let issued
  app.runInTransaction((tx) => {
    issued = c.issueCode(tx, user, "reset", admin)
    c.closeResetRequests(tx, user.id)
  })
  return e.json(200, a.codeResponse(app, user, issued, "reset", body.mail !== false))
}, $apis.requireAuth())

// 無効化 / 再有効化（無効化するとすべての端末のトークンが失効）
routerAdd("POST", "/api/app/admin/users/{id}/disable", (e) => {
  const c = require(`${__hooks}/lib/common.js`)
  const admin = c.requireAdmin(e)
  const app = e.app
  const body = e.requestInfo().body || {}
  const disabled = body.disabled !== false

  const user = c.findUserById(app, e.request.pathValue("id"))
  c.guardAdminTarget(e, user)
  if (!admin.isSuperuser() && admin.id === user.id) throw new BadRequestError("自分自身は無効化できません")

  app.runInTransaction((tx) => {
    user.set("disabled", disabled)
    if (disabled) {
      user.refreshTokenKey()
      c.invalidateCodes(tx, user.id)
    }
    tx.save(user)
  })
  return e.json(200, { user: c.userView(user) })
}, $apis.requireAuth())
