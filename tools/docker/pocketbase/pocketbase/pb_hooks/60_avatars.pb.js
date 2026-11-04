/// <reference path="../pb_data/types.d.ts" />
/**
 * ユーザーアバター（user_avatars）
 *  - 登録・差し替え時に updated_by を操作した人に設定
 *  - users.avatar への書き込みを拒否（アバターの置き場所は user_avatars に一本化）
 *  - GET /api/app/users/{id}/avatar[?thumb=128x128|256x256]
 *      Authorization ヘッダーだけで画像を取得できる入口。
 *      短命の file token を付けた標準のファイル URL へ 302 で転送する
 *      （標準ルートを通すので、サムネイルも必要に応じて生成される）
 *
 * 誰が登録・閲覧できるかは user_avatars のルールで判定する（lib/common.js の avatarRules）。
 */

onRecordCreateRequest((e) => {
  if (e.auth && e.auth.collection().name === "users") e.record.set("updated_by", e.auth.id)
  e.next()
}, "user_avatars")

onRecordUpdateRequest((e) => {
  if (e.auth && e.auth.collection().name === "users") e.record.set("updated_by", e.auth.id)
  e.next()
}, "user_avatars")

onRecordUpdateRequest((e) => {
  if (e.hasSuperuserAuth()) return e.next()
  const c = require(`${__hooks}/lib/common.js`)
  const body = e.requestInfo().body || {}
  let files = []
  try {
    files = e.findUploadedFiles("avatar") || [] // JSON リクエストでは例外になる
  } catch (_) {}
  if (files.length > 0 || Object.keys(body).some((k) => k.indexOf("avatar") === 0)) {
    throw c.fieldError("avatar", "アバターは user_avatars で登録してください")
  }
  e.next()
}, "users")

routerAdd("GET", "/api/app/users/{id}/avatar", (e) => {
  const c = require(`${__hooks}/lib/common.js`)
  const me = e.auth
  if (!c.isActive(me)) throw new ForbiddenError("このアカウントは利用できません")

  let rec
  try {
    rec = e.app.findFirstRecordByFilter("user_avatars", "user = {:u}", { u: e.request.pathValue("id") })
  } catch (_) {
    throw new NotFoundError("アバターは登録されていません")
  }

  const name = rec.getString("image")
  const params = ["token=" + encodeURIComponent(me.newFileToken())]
  const thumb = c.str(e.request.url.query().get("thumb"))
  if (c.AVATAR_THUMBS.indexOf(thumb) >= 0) params.push("thumb=" + thumb)

  // ファイル名は差し替えのたびに変わるので、App 側のキャッシュキーに使える
  e.response.header().set("X-Avatar-File", name)
  e.response.header().set("Cache-Control", "no-store")
  return e.redirect(302,
    `/api/files/${rec.collection().id}/${rec.id}/${encodeURIComponent(name)}?${params.join("&")}`)
}, $apis.requireAuth("users"))
