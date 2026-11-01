/// <reference path="../pb_data/types.d.ts" />

/**
 * 初期スキーマ (v2)
 *
 *  users     : 招待制 (自己登録不可)。ログインは任意のユーザーID (username) + パスワード。
 *              email は任意項目。App DB のユーザーIDと紐付ける app_user_id を追加
 *  invites   : 招待コード (superuser のみ操作可)
 *  app_files : 全ユーザー共有のファイル。上書き不可 (同じ app_file_id は revision を積み上げる)
 *
 * バイナリは PocketBase のストレージ (pb_data/storage → .env の PB_STORAGE_DIR) にのみ保存し、
 * App DB には「IDの紐付け」だけを持たせる。
 */
migrate((app) => {
  // ======================= users =======================
  const users = app.findCollectionByNameOrId("users");

  // ログイン用ユーザーID (英数字 . _ - / 3〜32文字 / 大文字小文字を区別しない一意)
  users.fields.add(new TextField({
    name: "username",
    required: true,
    min: 3,
    max: 32,
    pattern: "^[A-Za-z0-9._-]+$",
  }));
  users.indexes.push(
    "CREATE UNIQUE INDEX idx_users_username ON users (username COLLATE NOCASE)"
  );

  // email は任意 (空のユーザーを許可。一意制約は空以外にのみ掛かる)
  users.fields.getByName("email").required = false;

  users.fields.add(new TextField({
    name: "app_user_id",
    max: 64,
    pattern: "^[A-Za-z0-9_-]*$",
  }));
  users.indexes.push(
    "CREATE UNIQUE INDEX idx_users_app_user_id ON users (app_user_id) WHERE app_user_id != ''"
  );

  // 招待制: 自己登録 API を閉じる (null = superuser のみ)
  users.createRule = null;
  // ログインユーザー同士は参照可 (アップロード者表示用。email は emailVisibility=false で非公開)
  users.listRule = "@request.auth.collectionName = 'users'";
  users.viewRule = "@request.auth.collectionName = 'users'";
  // 本人のみ更新可。username / app_user_id は招待時に決まり、本人は変更不可
  users.updateRule = "id = @request.auth.id" +
    " && @request.body.username:isset = false" +
    " && @request.body.app_user_id:isset = false";
  users.deleteRule = null;

  users.passwordAuth.enabled = true;
  // 「ユーザーIDまたはEメール」でログイン (.env の PB_IDENTITY_FIELDS で変更可)
  // username は '@' を含められないため、入力値が email と衝突することはない
  users.passwordAuth.identityFields = ["username", "email"];
  users.oauth2.enabled = false;

  app.save(users);

  // ======================= invites =======================
  const invites = new Collection({
    type: "base",
    name: "invites",
    // すべて null = superuser (管理画面 / 管理APIトークン) のみ
    listRule: null, viewRule: null, createRule: null, updateRule: null, deleteRule: null,
    fields: [
      // 招待するユーザーID (= ログインID)
      { type: "text",     name: "username", required: true, min: 3, max: 32, pattern: "^[A-Za-z0-9._-]+$" },
      { type: "text",     name: "app_user_id", max: 64, pattern: "^[A-Za-z0-9_-]*$" },
      // 任意: 設定すると SMTP 有効時に招待メールを送信し、ユーザーの email にも登録
      { type: "email",    name: "email" },
      // 空で作成するとフックが自動生成
      { type: "text",     name: "code", max: 64 },
      // 空で作成するとフックが PB_INVITE_TTL_HOURS 後を設定
      { type: "date",     name: "expires_at" },
      { type: "date",     name: "used_at" },
      { type: "relation", name: "user", collectionId: users.id, maxSelect: 1, cascadeDelete: false },
      { type: "text",     name: "note", max: 500 },
      { type: "autodate", name: "created", onCreate: true, onUpdate: false },
      { type: "autodate", name: "updated", onCreate: true, onUpdate: true },
    ],
    indexes: [
      "CREATE UNIQUE INDEX idx_invites_code ON invites (code)",
      "CREATE INDEX idx_invites_username ON invites (username COLLATE NOCASE)",
    ],
  });
  app.save(invites);

  // ======================= app_files =======================
  const isUser = "@request.auth.collectionName = 'users'";
  const appFiles = new Collection({
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
      { type: "text",   name: "app_file_id", required: true, max: 64, pattern: "^[A-Za-z0-9_-]+$" },
      { type: "number", name: "revision", required: true, onlyInt: true, min: 1 },
      {
        type: "file",
        name: "file",
        required: true,
        maxSelect: 1,
        maxSize: 104857600, // 100MB
        mimeTypes: [],
        protected: true,    // ダウンロードに file token が必要 (= ログイン必須)
      },
      { type: "text",     name: "original_name", max: 255 },
      { type: "number",   name: "size_bytes", onlyInt: true },
      { type: "text",     name: "mime_type", max: 255 },
      { type: "text",     name: "comment", max: 1000 },
      { type: "relation", name: "uploaded_by", required: true, collectionId: users.id, maxSelect: 1, cascadeDelete: false },
      { type: "autodate", name: "created", onCreate: true, onUpdate: false },
    ],

    indexes: [
      "CREATE UNIQUE INDEX idx_app_files_id_rev ON app_files (app_file_id, revision)",
    ],
  });
  app.save(appFiles);
}, (app) => {
  // ---------- down ----------
  for (const name of ["app_files", "invites"]) {
    try { app.delete(app.findCollectionByNameOrId(name)); } catch (_) {}
  }
  const users = app.findCollectionByNameOrId("users");
  users.fields.removeByName("app_user_id");
  users.fields.removeByName("username");
  users.fields.getByName("email").required = true;
  users.passwordAuth.identityFields = ["email"];
  users.indexes = users.indexes.filter((i) => !i.includes("idx_users_app_user_id") && !i.includes("idx_users_username"));
  users.createRule = "";
  users.listRule = "id = @request.auth.id";
  users.viewRule = "id = @request.auth.id";
  users.updateRule = "id = @request.auth.id";
  users.deleteRule = "id = @request.auth.id";
  app.save(users);
});
