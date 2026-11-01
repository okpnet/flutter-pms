/// <reference path="../pb_data/types.d.ts" />

/**
 * app_files (共有・上書き不可)
 *  - uploaded_by をログインユーザーに強制
 *  - revision を app_file_id ごとに自動採番 (1, 2, 3 ...)
 *  - 元ファイル名・サイズを記録
 *
 * 更新・削除 API は collection rule で閉じている (superuser のみ)。
 * 物理ファイル名も PocketBase がランダム接尾辞を付けるため、ストレージ上でも上書きは起きない。
 */
onRecordCreateRequest((e) => {
  if (e.auth && e.auth.collection().name === "users") {
    e.record.set("uploaded_by", e.auth.id);
  }

  const files = e.findUploadedFiles("file");
  if (files && files.length > 0) {
    e.record.set("original_name", files[0].originalName);
    e.record.set("size_bytes", files[0].size);
  }

  // revision 採番 (同時アップロードで衝突した場合は一意制約で 400 → クライアントで再試行)
  const appFileId = e.record.getString("app_file_id");
  let next = 1;
  if (appFileId) {
    const last = e.app.findRecordsByFilter(
      "app_files", "app_file_id = {:id}", "-revision", 1, 0, { id: appFileId },
    );
    if (last.length > 0) next = last[0].getInt("revision") + 1;
  }
  e.record.set("revision", next);

  e.next();
}, "app_files");
