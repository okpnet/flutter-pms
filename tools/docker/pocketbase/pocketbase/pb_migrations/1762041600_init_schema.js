/// <reference path="../pb_data/types.d.ts" />
/**
 * 初期スキーマ（何度実行しても同じ結果になるように書いている）
 *  - users            : 認証（申請 → 管理者承認 → コードでパスワード設定）
 *  - signup_profiles  : 登録申請時の本人情報（一時置き場。承認時に削除）
 *  - auth_codes       : 有効化コード / 再設定コード（ハッシュのみ保存）
 *  - reset_requests   : メール未登録ユーザーのパスワード再設定依頼（管理者向け）
 *  - app_files        : 共有ファイル（上書きしない・revision 採番）
 *
 * 以前の版（招待コード方式, 1761955200_init_schema.js）が適用済みの DB でも動く:
 *  - 既にあるフィールド・コレクションは作り直さず、設定だけ更新する
 *  - username / email は小文字にそろえる
 *  - 既存ユーザーは role=user。app_user_id ありのユーザーは「有効化済み」とみなす
 *    （app_user_id なしのユーザーは申請中と同じ扱い → 管理者が activate して有効化コードを渡す）
 *  - invites コレクションは削除（申請・承認方式に置き換え）
 */
migrate((app) => {
  const AUTHED = '@request.auth.id != ""'
  const ADMIN = '@request.auth.collectionName = "users" && @request.auth.role = "admin"'

  // 既にあれば返す（なければ null）
  const findCollection = (name) => {
    try { return app.findCollectionByNameOrId(name) } catch (_) { return null }
  }
  // フィールドがなければ追加、あれば設定を上書き
  const ensureField = (col, field) => {
    const cur = col.fields.getByName(field.name)
    if (!cur) { col.fields.add(field); return }
    for (const k of ["required", "min", "max", "pattern", "values", "maxSelect", "presentable", "onlyInt"]) {
      if (field[k] !== undefined && cur[k] !== undefined) cur[k] = field[k]
    }
  }

  // ------------------------------------------------------------------ users
  const users = app.findCollectionByNameOrId("users")

  // 以前の版のデータ: username / email を小文字にそろえてから pattern を締める
  if (users.fields.getByName("username")) {
    app.db().newQuery("UPDATE users SET username = LOWER(username), email = LOWER(email)").execute()
  }

  ensureField(users, new TextField({
    name: "username",
    required: true,
    min: 3,
    max: 32,
    pattern: "^[a-z0-9._-]+$",
    presentable: true,
  }))
  ensureField(users, new TextField({ name: "app_user_id", max: 64, pattern: "^[A-Za-z0-9_-]*$" }))
  ensureField(users, new SelectField({ name: "role", values: ["user", "admin"], maxSelect: 1 }))
  ensureField(users, new BoolField({ name: "disabled" }))
  // 本人が有効化コードでパスワードを設定した日時（空 = 未有効化）
  ensureField(users, new DateField({ name: "activated_at" }))

  users.fields.getByName("email").required = false

  users.indexes = [
    "CREATE UNIQUE INDEX idx_users_username ON users (username)",
    "CREATE UNIQUE INDEX idx_users_email ON users (email) WHERE email != ''",
    "CREATE UNIQUE INDEX idx_users_tokenKey ON users (tokenKey)",
    "CREATE UNIQUE INDEX idx_users_app_user_id ON users (app_user_id) WHERE app_user_id != ''",
  ]

  // ログインできるのは「App DB 登録済み（app_user_id あり）かつ無効化されていない」ユーザーだけ
  users.authRule = 'app_user_id != "" && disabled = false'
  // 自己登録 API は閉じる（申請は /api/app/signup 経由）
  users.createRule = null
  users.deleteRule = null
  users.manageRule = null
  // 他ユーザーからは承認済みユーザーだけが見える（管理者は申請中も見える）
  users.listRule = `${AUTHED} && (app_user_id != "" || (${ADMIN}))`
  users.viewRule = users.listRule
  // 本人は name・avatar・パスワード（oldPassword 必須）だけ変更可
  users.updateRule = [
    "id = @request.auth.id",
    "@request.body.username:isset = false",
    "@request.body.app_user_id:isset = false",
    "@request.body.role:isset = false",
    "@request.body.disabled:isset = false",
    "@request.body.email:isset = false",
    "@request.body.verified:isset = false",
    "@request.body.activated_at:isset = false",
  ].join(" && ")

  users.passwordAuth.enabled = true
  users.passwordAuth.identityFields = ["username", "email"]
  users.oauth2.enabled = false
  users.otp.enabled = false
  users.mfa.enabled = false

  app.save(users)

  // 以前の版から引き継いだユーザー（初回適用時点のユーザー＝全員が既存ユーザー）
  app.db().newQuery("UPDATE users SET role = 'user' WHERE role = '' OR role IS NULL").execute()
  app.db().newQuery(
    "UPDATE users SET activated_at = created WHERE (activated_at = '' OR activated_at IS NULL) AND app_user_id != ''",
  ).execute()

  // 招待コード方式は廃止
  const invites = findCollection("invites")
  if (invites) app.delete(invites)

  // ---------------------------------------------------------- signup_profiles
  if (!findCollection("signup_profiles")) {
  const profiles = new Collection({
    type: "base",
    name: "signup_profiles",
    listRule: ADMIN,
    viewRule: ADMIN,
    createRule: null,
    updateRule: null,
    deleteRule: null,
    fields: [
      { type: "relation", name: "user", required: true, collectionId: users.id, maxSelect: 1, cascadeDelete: true },
      { type: "text", name: "requested_username", max: 32 },
      { type: "text", name: "full_name", required: true, max: 100 },
      { type: "email", name: "contact_email" },
      { type: "json", name: "profile", maxSize: 16384 },
      { type: "text", name: "note", max: 1000 },
      { type: "autodate", name: "created", onCreate: true },
      { type: "autodate", name: "updated", onCreate: true, onUpdate: true },
    ],
    indexes: ["CREATE UNIQUE INDEX idx_signup_profiles_user ON signup_profiles (user)"],
  })
  app.save(profiles)
  }

  // --------------------------------------------------------------- auth_codes
  if (!findCollection("auth_codes")) {
  const codes = new Collection({
    type: "base",
    name: "auth_codes",
    // API からは一切アクセス不可（superuser のみ）
    listRule: null,
    viewRule: null,
    createRule: null,
    updateRule: null,
    deleteRule: null,
    fields: [
      { type: "relation", name: "user", required: true, collectionId: users.id, maxSelect: 1, cascadeDelete: true },
      { type: "select", name: "kind", required: true, values: ["activate", "reset"], maxSelect: 1 },
      { type: "text", name: "code_hash", required: true, hidden: true },
      { type: "date", name: "expires_at", required: true },
      { type: "date", name: "used_at" },
      { type: "number", name: "attempts", onlyInt: true, min: 0 },
      { type: "bool", name: "mailed" },
      { type: "relation", name: "issued_by", collectionId: users.id, maxSelect: 1 },
      { type: "autodate", name: "created", onCreate: true },
      { type: "autodate", name: "updated", onCreate: true, onUpdate: true },
    ],
    indexes: ["CREATE INDEX idx_auth_codes_user ON auth_codes (user, used_at)"],
  })
  app.save(codes)
  }

  // ----------------------------------------------------------- reset_requests
  if (!findCollection("reset_requests")) {
  const resets = new Collection({
    type: "base",
    name: "reset_requests",
    listRule: ADMIN,
    viewRule: ADMIN,
    createRule: null,
    updateRule: null,
    deleteRule: null,
    fields: [
      { type: "relation", name: "user", required: true, collectionId: users.id, maxSelect: 1, cascadeDelete: true },
      { type: "select", name: "status", required: true, values: ["open", "done"], maxSelect: 1 },
      { type: "autodate", name: "created", onCreate: true },
      { type: "autodate", name: "updated", onCreate: true, onUpdate: true },
    ],
    indexes: ["CREATE INDEX idx_reset_requests_status ON reset_requests (status, user)"],
  })
  app.save(resets)
  }

  // ---------------------------------------------------------------- app_files
  const isUser = '@request.auth.collectionName = "users"'
  const filesDef = {
    type: "base",
    name: "app_files",
    // 共有: ログインユーザーなら誰でも一覧・参照・ダウンロード可
    listRule: isUser,
    viewRule: isUser,
    // 作成: uploaded_by / revision はサーバーが設定 (他人名義・revision 指定は不可)
    createRule: isUser +
      " && (@request.body.uploaded_by:isset = false || @request.body.uploaded_by = @request.auth.id)" +
      " && @request.body.revision:isset = false",
    // 上書き禁止: 更新・削除は API から不可 (superuser のみ)
    updateRule: null,
    deleteRule: null,
    fields: [
      // App DB 側のファイル管理ID (同じIDで複数 revision を持てる)
      { type: "text", name: "app_file_id", required: true, max: 64, pattern: "^[A-Za-z0-9_-]+$" },
      { type: "number", name: "revision", required: true, onlyInt: true, min: 1 },
      // protected: ダウンロードに file token が必要 (= ログイン必須)。maxSize は .env の PB_FILE_MAX_MB で上書き
      { type: "file", name: "file", required: true, maxSelect: 1, maxSize: 100 * 1024 * 1024, mimeTypes: [], protected: true },
      { type: "text", name: "original_name", max: 255 },
      { type: "number", name: "size_bytes", onlyInt: true },
      { type: "text", name: "mime_type", max: 255 },
      { type: "text", name: "comment", max: 1000 },
      { type: "relation", name: "uploaded_by", required: true, collectionId: users.id, maxSelect: 1, cascadeDelete: false },
      { type: "autodate", name: "created", onCreate: true },
    ],
    indexes: ["CREATE UNIQUE INDEX idx_app_files_id_rev ON app_files (app_file_id, revision)"],
  }
  let files = findCollection("app_files")
  if (!files) {
    files = new Collection(filesDef)
  } else {
    // 以前の版で作成済み → ルールと不足フィールドだけ更新（既存ファイルは残す）
    files.listRule = filesDef.listRule
    files.viewRule = filesDef.viewRule
    files.createRule = filesDef.createRule
    files.updateRule = null
    files.deleteRule = null
    const tmp = new Collection(filesDef)
    for (const f of tmp.fields) {
      if (!files.fields.getByName(f.name)) files.fields.add(f)
    }
    files.indexes = filesDef.indexes
  }
  app.save(files)
}, (app) => {
  for (const name of ["app_files", "reset_requests", "auth_codes", "signup_profiles"]) {
    try { app.delete(app.findCollectionByNameOrId(name)) } catch (_) {}
  }
  const users = app.findCollectionByNameOrId("users")
  for (const f of ["username", "app_user_id", "role", "disabled", "activated_at"]) users.fields.removeByName(f)
  users.indexes = [
    "CREATE UNIQUE INDEX idx_tokenKey__pb_users_auth_ ON users (tokenKey)",
    "CREATE UNIQUE INDEX idx_email__pb_users_auth_ ON users (email) WHERE email != ''",
  ]
  users.authRule = ""
  users.createRule = ""
  app.save(users)
})
