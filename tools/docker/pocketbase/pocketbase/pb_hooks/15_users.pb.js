/// <reference path="../pb_data/types.d.ts" />
/**
 * users の正規化とログイン
 *  - username / email は保存時に小文字へ統一（大文字小文字を区別しない照合のため）
 *  - role の既定値は user
 *  - 「ユーザーIDまたはEメール」ログインを大文字小文字を区別せず照合
 *  - 無効化されたユーザーはトークン延長（auth-refresh）も拒否
 */

onRecordCreate((e) => {
  const c = require(`${__hooks}/lib/common.js`)
  const r = e.record
  r.set("username", c.normUsername(r.get("username")))
  r.set("email", c.normEmail(r.get("email")))
  if (!r.get("role")) r.set("role", "user")
  e.next()
}, "users")

onRecordUpdate((e) => {
  const c = require(`${__hooks}/lib/common.js`)
  const r = e.record
  r.set("username", c.normUsername(r.get("username")))
  r.set("email", c.normEmail(r.get("email")))
  if (!r.get("role")) r.set("role", "user")
  e.next()
}, "users")

onRecordAuthWithPasswordRequest((e) => {
  if (!e.record) {
    const c = require(`${__hooks}/lib/common.js`)
    const u = c.findUserByIdentity(e.app, e.identity)
    if (u) e.record = u
  }
  e.next()
}, "users")

onRecordAuthRefreshRequest((e) => {
  const c = require(`${__hooks}/lib/common.js`)
  if (e.record && !c.isActive(e.record)) {
    throw new UnauthorizedError("このアカウントは利用できません")
  }
  e.next()
}, "users")
