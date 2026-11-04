/// <reference path="../pb_data/types.d.ts" />
/**
 * ユーザーアバター（user_avatars）
 *  - 閲覧・取得          : 有効なユーザー全員（担当者一覧で表示するため）
 *  - 登録・差し替え・削除 : 本人 または 管理者（role=admin の有効ユーザー / superuser）
 *                          管理者は他の管理者のアバターも変更できる
 *  - 1ユーザー1枚。差し替えは上書き（履歴なし。古い画像ファイルは自動削除）
 *  - JPEG / PNG / WebP、最大 2MB（.env の PB_AVATAR_MAX_MB で上書き）、サムネイル 128x128 / 256x256
 *  - users.avatar は使わない（本人の更新項目から外す）
 *
 * ルール・最大サイズは pb_hooks/10_settings_from_env.pb.js が起動のたびに同じ内容へ強制する
 * （lib/common.js の avatarRules() と同じ内容）。何度実行しても同じ結果になるように書いている。
 */
migrate((app) => {
  const ACTIVE = '@request.auth.collectionName = "users" && @request.auth.app_user_id != "" && @request.auth.disabled = false'
  const ADMIN = `(${ACTIVE} && @request.auth.role = "admin")`
  const SELF = `(${ACTIVE} && user = @request.auth.id)`
  const rules = {
    listRule: ACTIVE,
    viewRule: ACTIVE,
    createRule: `(${ACTIVE} && @request.body.user = @request.auth.id) || ${ADMIN}`,
    updateRule: `(${SELF} || ${ADMIN}) && @request.body.user:isset = false`,
    deleteRule: `${SELF} || ${ADMIN}`,
  }

  const users = app.findCollectionByNameOrId("users")

  // ------------------------------------------------------------ user_avatars
  let col = null
  try { col = app.findCollectionByNameOrId("user_avatars") } catch (_) {}
  if (!col) {
    col = new Collection({
      type: "base",
      name: "user_avatars",
      fields: [
        { type: "relation", name: "user", required: true, collectionId: users.id, maxSelect: 1, cascadeDelete: true },
        {
          type: "file", name: "image", required: true, maxSelect: 1,
          maxSize: 2 * 1024 * 1024,
          mimeTypes: ["image/jpeg", "image/png", "image/webp"],
          thumbs: ["128x128", "256x256"],
          protected: true, // 取得には file token（= ログイン）が必要
        },
        // 最後に登録・差し替えした人（フックで自動設定）
        { type: "relation", name: "updated_by", collectionId: users.id, maxSelect: 1, cascadeDelete: false },
        { type: "autodate", name: "created", onCreate: true },
        { type: "autodate", name: "updated", onCreate: true, onUpdate: true },
      ],
      indexes: ["CREATE UNIQUE INDEX idx_user_avatars_user ON user_avatars (user)"],
    })
  }
  col.listRule = rules.listRule
  col.viewRule = rules.viewRule
  col.createRule = rules.createRule
  col.updateRule = rules.updateRule
  col.deleteRule = rules.deleteRule
  app.save(col)

  // ------------------------------------------------------------------- users
  // 本人の更新項目から avatar を外す（アバターは user_avatars に一本化）
  const guard = "@request.body.avatar:isset = false"
  if (users.updateRule && users.updateRule.indexOf(guard) < 0) {
    users.updateRule = users.updateRule + " && " + guard
    app.save(users)
  }
}, (app) => {
  try { app.delete(app.findCollectionByNameOrId("user_avatars")) } catch (_) {}
  const users = app.findCollectionByNameOrId("users")
  if (users.updateRule) {
    users.updateRule = users.updateRule.replace(" && @request.body.avatar:isset = false", "")
    app.save(users)
  }
})
