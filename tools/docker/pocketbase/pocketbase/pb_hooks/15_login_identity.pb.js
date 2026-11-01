/// <reference path="../pb_data/types.d.ts" />

/**
 * 「ユーザーIDまたはEメール」ログインの補完
 *
 * PocketBase 標準の照合では、Eメールは大文字小文字を区別して比較される。
 * そのため、ここで次の2つを補う。
 *  - Eメール (@ を含む入力) は小文字にして再検索する
 *  - ユーザーIDは大文字小文字を区別せずに再検索する (登録時の一意制約も NOCASE)
 * パスワードの検証は、この後の標準処理 (e.next()) が行う。
 */
onRecordAuthWithPasswordRequest((e) => {
  if (!e.record) {
    const raw = String(e.identity || "").trim();
    const fields = e.collection.passwordAuth.identityFields || [];
    try {
      if (raw.includes("@") && fields.includes("email")) {
        e.record = e.app.findAuthRecordByEmail(e.collection, raw.toLowerCase());
      } else if (!raw.includes("@") && fields.includes("username")) {
        const found = e.app.findRecordsByFilter(
          e.collection, "username:lower = {:u}", "", 1, 0, { u: raw.toLowerCase() },
        );
        if (found.length > 0) e.record = found[0];
      }
    } catch (_) {
      // 見つからない場合は標準処理に任せる (400: 認証失敗)
    }
  }
  e.next();
}, "users");
