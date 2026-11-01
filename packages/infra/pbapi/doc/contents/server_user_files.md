# 個人ファイル用のサーバー準備(提案)

`PersonalFileService`(設定のアップロード)は、サーバーの`user_files`コレクションを使います。
現在のサーバー(`tools/docker/pocketbase`)には無いため、次の2つを追加してください。
共有ファイル(`app_files`)は全員に見えるため、設定のような個人のファイルには使えません。

## 1. マイグレーション `pb_migrations/<時刻>_user_files.js`
```js
/// <reference path="../pb_data/types.d.ts" />
migrate((app) => {
  const users = app.findCollectionByNameOrId("users");
  const mine = "@request.auth.collectionName = 'users' && owner = @request.auth.id";
  const userFiles = new Collection({
    type: "base",
    name: "user_files",
    // 本人のファイルだけ一覧・参照・更新・削除できる(他人からは見えない)
    listRule: mine,
    viewRule: mine,
    // 作成: owner はサーバーが設定する(他人名義は不可)
    createRule: "@request.auth.collectionName = 'users' && @request.body.owner:isset = false",
    updateRule: mine + " && @request.body.owner:isset = false && @request.body.key:isset = false",
    deleteRule: mine,
    fields: [
      { type: "relation", name: "owner", required: true, collectionId: users.id, maxSelect: 1, cascadeDelete: true },
      { type: "text", name: "key", required: true, max: 64, pattern: "^[a-z0-9][a-z0-9_.-]*$" },
      {
        type: "file",
        name: "file",
        required: true,
        maxSelect: 1,
        maxSize: 5242880, // 5MB(設定用)
        protected: true,  // ダウンロードに file token が必要
      },
      { type: "autodate", name: "created", onCreate: true, onUpdate: false },
      { type: "autodate", name: "updated", onCreate: true, onUpdate: true },
    ],
    // 1ユーザーにつき key ごとに1つ
    indexes: ["CREATE UNIQUE INDEX idx_user_files_owner_key ON user_files (owner, key)"],
  });
  app.save(userFiles);
}, (app) => {
  app.delete(app.findCollectionByNameOrId("user_files"));
});
```

## 2. フック `pb_hooks/40_user_files.pb.js`
```js
/// <reference path="../pb_data/types.d.ts" />
// owner をログインユーザーに強制する
onRecordCreateRequest((e) => {
  e.record.set("owner", e.auth.id);
  e.next();
}, "user_files");
```

`PersonalFileService`は、`key`が同じファイルがあれば更新(上書き)し、無ければ作成します。
別のコレクション名を使う場合は`PersonalFileService(connection, collection: '...')`で指定します。
