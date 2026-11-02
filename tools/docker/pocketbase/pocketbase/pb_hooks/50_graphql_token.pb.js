/// <reference path="../pb_data/types.d.ts" />
/**
 * GraphQL（PostGraphile など）用の短期 JWT を発行
 *
 * GET /api/app/graphql-token   （users のトークンが必要）
 *   → { token, expires_in }
 *
 * PocketBase のトークンはユーザーごとの鍵で署名されるため外部サーバーで検証できない。
 * そこで共有鍵 PB_GRAPHQL_JWT_SECRET（HS256）で別の JWT を発行し、GraphQL サーバーはこれを検証する。
 * PB_GRAPHQL_JWT_SECRET が空なら 404。
 *
 * クレーム:
 *   role         PostgreSQL ロール（PB_GRAPHQL_JWT_DB_ROLE / 管理者は PB_GRAPHQL_JWT_ADMIN_DB_ROLE）
 *   aud          PB_GRAPHQL_JWT_AUDIENCE
 *   sub          app_user_id
 *   pb_user_id   PocketBase の users.id
 *   app_user_id  App DB のユーザーID
 *   app_role     user | admin
 */
routerAdd("GET", "/api/app/graphql-token", (e) => {
  const c = require(`${__hooks}/lib/common.js`)
  const secret = c.env("PB_GRAPHQL_JWT_SECRET", "")
  if (secret === "") throw new NotFoundError()

  const u = e.auth
  if (!u || u.collection().name !== "users" || !c.isActive(u)) throw new UnauthorizedError("ログインが必要です")

  const ttl = c.envInt("PB_GRAPHQL_JWT_TTL_SECONDS", 900)
  const isAdmin = u.get("role") === "admin"
  const token = $security.createJWT({
    role: isAdmin ? c.env("PB_GRAPHQL_JWT_ADMIN_DB_ROLE", "app_admin") : c.env("PB_GRAPHQL_JWT_DB_ROLE", "app_user"),
    aud: c.env("PB_GRAPHQL_JWT_AUDIENCE", "postgraphile"),
    sub: u.get("app_user_id"),
    pb_user_id: u.id,
    app_user_id: u.get("app_user_id"),
    app_role: isAdmin ? "admin" : "user",
  }, secret, ttl)

  return e.json(200, { token: token, expires_in: ttl })
}, $apis.requireAuth("users"))
