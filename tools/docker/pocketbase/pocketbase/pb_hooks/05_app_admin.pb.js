/// <reference path="../pb_data/types.d.ts" />
/**
 * 起動時に App の管理者ユーザー（role=admin）を1人用意する
 *
 * .env:
 *   APP_ADMIN_USER          ユーザーID（英小文字・数字・. _ -、3〜32文字）。空なら何もしない
 *   APP_ADMIN_PWD           パスワード（PB_PASSWORD_MIN_LENGTH 以上、最低 8 文字）
 *   APP_ADMIN_APP_USER_ID   任意。App DB の担当者ID（既定: ユーザーIDの "." を "_" に置き換えたもの）
 *   APP_ADMIN_NAME          任意。表示名（既定: 管理者）
 *   APP_ADMIN_EMAIL         任意。Eメール（パスワード再設定メール用）
 *   APP_ADMIN_SYNC          false（既定）: いなければ作成するだけ。既存ユーザーには触らない
 *                           true          : 起動のたびに .env の内容へそろえる
 *                                           （role=admin・無効化の解除・パスワード）
 *
 * - 作成したユーザーは最初から「有効」（コード入力なしでログインできる）。
 * - SYNC=true でも、パスワードが .env と同じなら変更しない（ログイン中の端末を切らないため）。
 * - 作成後は .env から APP_ADMIN_PWD を消してかまわない（SYNC=false なら以後は使わない）。
 * - パスワードはログに出さない。
 */
onBootstrap((e) => {
  e.next()
  if (!$os.args.includes("serve")) return // migrate / superuser コマンド時は何もしない

  const c = require(`${__hooks}/lib/common.js`)
  const a = require(`${__hooks}/lib/admin.js`)
  const app = e.app
  const log = (msg) => console.log("[app-admin] " + msg)
  const fail = (msg) => console.error("[app-admin] ERROR: " + msg)
  const errText = (err) => {
    // fieldError / ApiError の中身（data）も読めるようにする
    try { return String(err) + " " + JSON.stringify(err.value ? err.value.data : (err.data || {})) } catch (_) { return String(err) }
  }

  const username = c.normUsername(c.env("APP_ADMIN_USER", ""))
  if (username === "") return
  const password = $os.getenv("APP_ADMIN_PWD") || ""
  const sync = c.envBool("APP_ADMIN_SYNC", false)
  const minLen = Math.max(8, c.envInt("PB_PASSWORD_MIN_LENGTH", 8))
  const appUserId = c.env("APP_ADMIN_APP_USER_ID", username.replace(/\./g, "_"))
  const name = c.env("APP_ADMIN_NAME", "管理者")
  const email = c.env("APP_ADMIN_EMAIL", "")

  if (password !== "" && password.length < minLen) {
    fail(`APP_ADMIN_PWD は ${minLen} 文字以上にしてください（ユーザー ${username} は作成・更新しません）`)
    return
  }

  try {
    const existing = c.findUserByUsername(app, username)

    // ---------------------------------------------------------------- 新規作成
    if (!existing) {
      if (password === "") {
        fail(`ユーザー ${username} がいないため作成しようとしましたが、APP_ADMIN_PWD が空です`)
        return
      }
      app.runInTransaction((tx) => {
        const u = new Record(tx.findCollectionByNameOrId("users"))
        a.setUsername(tx, u, username)
        a.setAppUserId(tx, u, appUserId)
        a.setEmail(tx, u, email)
        u.set("name", name)
        u.set("role", "admin")
        u.set("disabled", false)
        u.set("activated_at", new DateTime())
        u.setPassword(password)
        tx.save(u)
      })
      log(`管理者ユーザー ${username}（app_user_id=${appUserId}）を作成しました`)
      return
    }

    // ---------------------------------------------------------------- 既存ユーザー
    if (!sync) {
      if (existing.get("role") !== "admin") {
        fail(`ユーザー ${username} は既に一般ユーザーとして存在します。管理者にする場合は APP_ADMIN_SYNC=true で起動してください`)
      } else {
        log(`管理者ユーザー ${username} は登録済みです（変更なし）`)
      }
      return
    }

    const changes = []
    app.runInTransaction((tx) => {
      const u = tx.findRecordById("users", existing.id)
      if (u.get("role") !== "admin") { u.set("role", "admin"); changes.push("role=admin") }
      if (u.getBool("disabled")) { u.set("disabled", false); changes.push("無効化を解除") }
      if (c.str(u.get("app_user_id")) === "") { a.setAppUserId(tx, u, appUserId); changes.push(`app_user_id=${appUserId}`) }
      if (!c.isActivated(u)) { u.set("activated_at", new DateTime()); changes.push("有効化") }
      if (password !== "" && !u.validatePassword(password)) { u.setPassword(password); changes.push("パスワードを .env の値に変更（既存のトークンは失効）") }
      if (changes.length > 0) tx.save(u)
    })
    log(changes.length > 0
      ? `管理者ユーザー ${username} を更新しました: ${changes.join(" / ")}`
      : `管理者ユーザー ${username} は .env と一致しています（変更なし）`)
  } catch (err) {
    fail(`管理者ユーザー ${username} を作成・更新できませんでした: ${errText(err)}`)
  }
})
