/// <reference path="../pb_data/types.d.ts" />

/**
 * 招待制 (ユーザーIDベース)
 *
 *  1) superuser が invites にレコード作成 (管理画面 or scripts/invite.sh)
 *       username (= ログインID) を指定。code / expires_at は自動設定
 *       email を入れた場合のみ、SMTP 有効時に招待メールを送信
 *  2) 利用者が App で「ユーザーID + 招待コード + パスワード」を入力
 *       → POST /api/app/invites/accept でユーザー作成 (1回限り・期限付き)
 */

// ---------- 1) 招待作成時: 正規化・重複チェック・コード/期限の自動設定 ----------
onRecordCreate((e) => {
  const r = e.record;
  const username = String(r.getString("username")).trim();
  r.set("username", username);
  r.set("email", String(r.getString("email")).trim().toLowerCase());

  // 既に使われているユーザーIDは招待できない (大文字小文字は区別しない)
  if (username) {
    const exists = e.app.findRecordsByFilter(
      "users", "username:lower = {:u}", "", 1, 0, { u: username.toLowerCase() },
    );
    if (exists.length > 0) {
      throw new BadRequestError(`ユーザーID "${username}" は既に使われています`);
    }
  }

  if (!r.getString("code")) {
    // 紛らわしい文字 (0/O, 1/I/L) を除いた 12 桁
    r.set("code", $security.randomStringWithAlphabet(12, "ABCDEFGHJKMNPQRSTUVWXYZ23456789"));
  }
  if (!r.getString("expires_at")) {
    const hours = parseInt($os.getenv("PB_INVITE_TTL_HOURS") || "72", 10);
    r.set("expires_at", new Date(Date.now() + hours * 3600 * 1000).toISOString());
  }
  e.next();
}, "invites");

// ---------- 1') 招待メール送信 (email 指定 かつ SMTP 有効時のみ) ----------
onRecordAfterCreateSuccess((e) => {
  e.next();
  const r = e.record;
  const s = e.app.settings();
  if (!s.smtp.enabled || !r.getString("email")) return;

  const appName = s.meta.appName || "App";
  const linkBase = ($os.getenv("PB_INVITE_LINK_BASE") || "").trim(); // 例: myapp://invite
  const link = linkBase
    ? `${linkBase}?username=${encodeURIComponent(r.getString("username"))}&code=${r.getString("code")}`
    : "";

  try {
    e.app.newMailClient().send(new MailerMessage({
      from: { address: s.meta.senderAddress, name: s.meta.senderName },
      to: [{ address: r.getString("email") }],
      subject: `[${appName}] 招待のお知らせ`,
      html:
        `<p>${appName} に招待されました。</p>` +
        `<p>アプリの「招待コードで登録」から、次の内容を入力してください。</p>` +
        `<p>ユーザーID: <b>${r.getString("username")}</b><br>` +
        `招待コード: <b style="font-size:20px;letter-spacing:2px">${r.getString("code")}</b></p>` +
        (link ? `<p><a href="${link}">アプリで開く</a></p>` : "") +
        `<p>有効期限: ${r.getString("expires_at")} (UTC)</p>`,
    }));
  } catch (err) {
    console.error("[invites] mail send failed:", String(err));
  }
}, "invites");

// ---------- 2) 招待の受諾 (公開API) ----------
routerAdd("POST", "/api/app/invites/accept", (e) => {
  const body = e.requestInfo().body || {};
  const username = String(body.username || "").trim();
  const code = String(body.code || "").trim().toUpperCase();
  const password = String(body.password || "");
  const passwordConfirm = String(body.passwordConfirm || "");
  const name = String(body.name || "").trim();

  if (!username || !code || !password) {
    throw new BadRequestError("username, code, password は必須です。");
  }
  if (password !== passwordConfirm) {
    throw new BadRequestError("パスワードが一致しません。");
  }

  // 期限内・未使用の招待を検索 (理由は返さない: 総当たり対策)
  let invite;
  try {
    invite = e.app.findFirstRecordByFilter(
      "invites",
      "code = {:code} && username:lower = {:u} && used_at = '' && expires_at > @now",
      { code: code, u: username.toLowerCase() },
    );
  } catch (_) {
    throw new BadRequestError("ユーザーIDまたは招待コードが無効か、期限切れです。");
  }

  let userId = "";
  e.app.runInTransaction((txApp) => {
    const users = txApp.findCollectionByNameOrId("users");
    const u = new Record(users);
    u.set("username", invite.getString("username")); // 招待時の表記で登録
    if (invite.getString("email")) {
      u.setEmail(invite.getString("email"));
      u.setVerified(true);
    }
    u.setPassword(password);
    if (name) u.set("name", name);
    if (invite.getString("app_user_id")) u.set("app_user_id", invite.getString("app_user_id"));
    txApp.save(u); // パスワード長・ユーザーID重複などはここで検証される

    const inv = txApp.findRecordById("invites", invite.id);
    inv.set("used_at", new Date().toISOString());
    inv.set("user", u.id);
    txApp.save(inv);
    userId = u.id;
  });

  return e.json(200, { userId: userId, username: invite.getString("username") });
});
