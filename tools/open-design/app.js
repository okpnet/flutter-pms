(function () {
  const D = window.OD_DATA;
  const device = document.body.dataset.device; // pc | tablet | mobile
  const mobile = device === "mobile";
  const fmt = (n) => n.toLocaleString("ja-JP");

  const PATHS = {
    building: "M4 21V5l8-3v19M12 9h8v12M4 21h16M8 8h1M8 12h1M8 16h1M15 13h1M15 17h1",
    database: "M4 6c0-1.7 3.6-3 8-3s8 1.3 8 3-3.6 3-8 3-8-1.3-8-3zM4 6v12c0 1.7 3.6 3 8 3s8-1.3 8-3V6M4 12c0 1.7 3.6 3 8 3s8-1.3 8-3",
    ruler: "M3 17L17 3l4 4L7 21zM7 13l2 2M10 10l2 2M13 7l2 2",
    emblem: "M12 2l8.5 5v10L12 22l-8.5-5V7zM9 17v-6l3-1.5 3 1.5v6M9 17h6M11 13h2",
    factory: "M3 21V10l6 4v-4l6 4V6h3v15zM3 21h18",
    truck: "M2 6h11v10H2zM13 9h4l3 3v4h-7M6 19a1.5 1.5 0 1 0 .01 0M17 19a1.5 1.5 0 1 0 .01 0",
    office: "M3 21h18M5 21V8h6v13M11 21V4h8v17M14 8h2M14 12h2M8 12h0M8 16h0",
    users: "M9 11a3 3 0 1 0 0-6 3 3 0 0 0 0 6M3 20c0-3.3 2.7-5 6-5s6 1.7 6 5M16 5.5a3 3 0 0 1 0 5.5M18 15c2 .6 3 2 3 5",
    briefcase: "M4 8h16v11H4zM9 8V5h6v3M4 13h16",
    star: "M12 3l2.7 5.6 6.1.9-4.4 4.3 1 6.1L12 17l-5.4 2.9 1-6.1L3.2 9.5l6.1-.9z",
    pin: "M12 21s-7-5.5-7-11a7 7 0 0 1 14 0c0 5.5-7 11-7 11M12 12a2.5 2.5 0 1 0 .01 0",
    logout: "M9 4H5v16h4M16 8l4 4-4 4M20 12H9",
    chevron: "M9 6l6 6-6 6",
    close: "M6 6l12 12M18 6L6 18",
    check: "M5 12l5 5 9-10",
    box: "M3 7l9-4 9 4v10l-9 4-9-4zM3 7l9 4 9-4M12 11v10",
    wrench: "M15 5a4 4 0 0 0-4 5l-7 7 3 3 7-7a4 4 0 0 0 5-4l-3 2-2-2z",
    pencil: "M4 20l1-4L16 5l3 3L8 19zM14 7l3 3",
    menu: "M4 7h16M4 12h16M4 17h16",
    back: "M19 12H5M11 6l-6 6 6 6",
    plus: "M12 5v14M5 12h14",
    sort: "M8 9l4-4 4 4M8 15l4 4 4-4",
    sortAsc: "M12 19V5M6 11l6-6 6 6",
    sortDesc: "M12 5v14M6 13l6 6 6-6",
    grip: "M9 6h.01M15 6h.01M9 12h.01M15 12h.01M9 18h.01M15 18h.01",
    home: "M3 11l9-8 9 8M5 10v10h14V10M10 20v-6h4v6",
    orders: "M6 3h12l2 4v14H4V7zM4 7h16M9 12h6M9 16h4",
    production: "M4 20V10M10 20V4M16 20v-8M22 20H2",
    org: "M10 3h4v4h-4zM12 7v4M5 11h14M5 11v3M12 11v3M19 11v3M3 14h4v4H3zM10 14h4v4h-4zM17 14h4v4h-4z",
    search: "M11 4a7 7 0 1 0 0 14 7 7 0 0 0 0-14M20 20l-4-4",
    more: "M5 12h.01M12 12h.01M19 12h.01",
    alert: "M12 3l10 18H2zM12 10v5M12 18h.01",
    camera: "M4 8h3l2-3h6l2 3h3v11H4zM12 17a3.5 3.5 0 1 0 .01 0",
    barcode: "M4 5v14M7 5v14M11 5v14M14 5v14M18 5v14M21 5v14",
    refresh: "M20 11a8 8 0 1 0-2.3 5.7M20 4v7h-7",
    gear: "M12 9a3 3 0 1 0 .01 0M19 12a7 7 0 0 0-.1-1.2l2-1.5-2-3.4-2.3.9a7 7 0 0 0-2-1.2L14.2 3h-4l-.4 2.6a7 7 0 0 0-2 1.2l-2.3-.9-2 3.4 2 1.5a7 7 0 0 0 0 2.4l-2 1.5 2 3.4 2.3-.9a7 7 0 0 0 2 1.2l.4 2.6h4l.4-2.6a7 7 0 0 0 2-1.2l2.3.9 2-3.4-2-1.5c.1-.4.1-.8.1-1.2",
    list: "M9 6h11M9 12h11M9 18h11M4 6h.01M4 12h.01M4 18h.01",
  };
  const esc = (s) => String(s).replace(/[&<>"']/g, (c) => ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;" }[c]));
  const editLink = (href, label) =>
    `<a class="edit-btn" href="${href}" aria-label="${label}を編集">${icon("pencil")}<span>編集</span></a>`;
  const backLink = (href = "#/company", label = "戻る") => `<a class="btn back-btn" href="${href}">${icon("back")}<span>${label}</span></a>`;
  const TODAY = "2026年10月19日";
  D.company.updatedBy ||= "山田 太郎";
  D.company.updatedAt ||= "2026年9月30日";
  D.sites.forEach((s) => { s.updatedBy ||= "鈴木 一郎"; s.updatedAt ||= "2026年9月30日"; });
  const EMP_DEPT = { "E-0012": "d2", "E-0034": "d11", "E-0101": "d4", "E-0145": "d5", "P-0207": "d4", "E-0233": "d5", "P-0251": "d5", "D-0318": "d6", "E-0402": "d13", "D-0419": "d14", "E-0467": "d9", "P-0503": "d10" };
  /* capabilities / licenses: split into items (master) and holdings (staff x item). Holdings keep a denormalised name. */
  const CAP_DESC = { "NC旋盤加工": "NC旋盤で、図面どおりに部品を加工できる。", "測定・検査": "ノギス・マイクロメータで寸法を測定し、合否を判定できる。", "三次元測定": "三次元測定機で形状と位置の精度を測定できる。", "マシニング加工": "マシニングセンタで、段取りから加工までできる。", "組立（ユニットA）": "ユニットAの組立手順と検査基準を理解して組み立てられる。", "フォークリフト運転": "構内でフォークリフトを安全に運転し、荷役できる。", "生産計画の立案": "需要と能力から、週次の生産計画を立案できる。" };
  const LIC_ISSUER = { "機械加工技能士 1級": "都道府県職業能力開発協会", "品質管理検定 2級": "日本規格協会", "玉掛け技能講習": "登録教習機関", "機械保全技能士 2級": "都道府県職業能力開発協会", "フォークリフト運転技能講習": "登録教習機関", "中小企業診断士": "中小企業診断協会" };
  D.capItems ??= [];
  D.licItems ??= [];
  const ensureItem = (list, prefix, name, extra) => {
    let it = list.find((x) => x.name === name);
    if (!it) { it = { id: `${prefix}${list.length + 1}`, name, ...extra, updatedBy: "鈴木 一郎", updatedAt: "2026年9月1日" }; list.push(it); }
    return it;
  };
  D.capabilities.forEach((c) => { c.item ||= ensureItem(D.capItems, "ci", c.name, { desc: CAP_DESC[c.name] ?? "" }).id; });
  D.licenses.forEach((l) => { l.item ||= ensureItem(D.licItems, "li", l.name, { issuer: LIC_ISSUER[l.name] ?? "" }).id; });
  ensureItem(D.capItems, "ci", "溶接（TIG）", { desc: "TIG溶接で、薄板の突き合わせ溶接ができる。" });
  ensureItem(D.licItems, "li", "アーク溶接等の業務特別教育", { issuer: "登録教習機関" });
  /* data.extra.js: YAML(views)×DB のコメントに合わせて足す項目（コード・読み など） */
  const X = window.OD_EXTRA ?? { reading: {}, siteCode: {}, company: {}, licKind: {}, capScale: {} };
  const rd = (name) => X.reading[name] ?? "";
  const seq = (pfx, i, w = 3) => `${pfx}${String(i + 1).padStart(w, "0")}`;
  const YN = ["はい", "いいえ"];
  const DEPT_OFFICE = { d1: "hq", d2: "hq", d3: "kt", d4: "kt", d5: "kt", d6: "kt", d7: "kt", d8: "hq", d9: "hq", d10: "hq", d11: "hq", d12: "ch", d13: "ch", d14: "ch" };
  const CYCLE_INTERVAL = { "日": "1日", "月": "1か月", "年": "1年" };
  for (const [k, v] of Object.entries(X.company)) D.company[k] ??= v;
  D.sites.forEach((s) => { [s.code, s.reading] = X.siteCode[s.id] ?? ["", ""]; });
  D.departments.forEach((d, i) => { d.code ??= seq("DP", i); d.reading ??= rd(d.name); d.office ??= DEPT_OFFICE[d.id] ?? ""; });
  D.deptKinds.forEach((k) => { k.reading ??= rd(k.name); });
  D.positions.forEach((p, i) => { p.reading ??= rd(p.name); p.priority ??= String(i + 1); });
  D.employees.forEach((e) => { e.reading ??= rd(e.name); e.sex ??= ""; e.phone ??= ""; e.private_phone ??= ""; e.remarks ??= ""; });
  D.capItems.forEach((c, i) => { c.code ??= seq("CAP-", i); c.reading ??= rd(c.name); Object.entries(X.capScale).forEach(([k, v]) => { c[k] ??= v; }); c.remarks ??= ""; });
  D.licItems.forEach((l, i) => { const f = X.licKind[l.name] ?? [0, 0, 0]; l.code ??= seq("LIC-", i); l.reading ??= rd(l.name); l.public_license ??= YN[1 - f[0]]; l.customer_license ??= YN[1 - f[1]]; l.organization_license ??= YN[1 - f[2]]; l.remarks ??= ""; });
  D.locations.forEach((l, i) => { l.code ??= seq("LOC-", i); l.control_code ??= ""; l.reading ??= rd(l.name); l.available ??= "はい"; });
  D.eqCats.forEach((c, i) => { c.code ??= seq("EQC-", i); c.reading ??= rd(c.name); c.start_at ??= "2015-04-01"; c.stop_at ??= ""; });
  D.equipments.forEach((e, i) => { e.control_code ??= seq("CTL-", i, 4); e.label_code ??= e.code; });
  D.inspKinds.forEach((k, i) => { k.code ??= seq("IK-", i); k.reading ??= rd(k.name); });
  D.inspItems.forEach((it, i) => { const c = D.inspKinds.find((k) => k.id === it.kind)?.cycle; it.code ??= seq("INS-", i); it.reading ??= rd(it.name); it.base_date ??= "2026-04-01"; it.time_interval ??= CYCLE_INTERVAL[c] ?? ""; it.external ??= "いいえ"; });
  D.inspOps.forEach((o, i) => { const eq = D.equipments.find((e) => e.id === o.equip), k = D.inspKinds.find((x) => x.id === o.kind); o.code ??= seq("IO-", i); o.name ??= `${eq?.name ?? ""} ${k?.name ?? ""}`.trim(); });
  D.inspSchs.forEach((x, i) => { const o = D.inspOps.find((y) => y.id === x.op); x.code ??= seq("IS-", i); x.title ??= `${x.month} ${o?.name ?? ""}`.trim(); });
  D.apPatterns.forEach((a) => { a.reading ??= rd(a.name); });
  D.employees.forEach((e) => { e.id ||= e.no; e.dept ??= EMP_DEPT[e.no] ?? ""; e.updatedBy ||= "鈴木 一郎"; e.updatedAt ||= "2026年9月30日"; });
  D.offerings.forEach((o, i) => { o.id ||= `o${i + 1}`; o.code ??= `PV-${String(i + 1).padStart(3, "0")}`; o.updatedBy ||= "鈴木 一郎"; o.updatedAt ||= "2026年10月1日"; });
  const ROUTES = {
    home: "ダッシュボード",
    "maintenance-mode": "メンテナンス中",
    denied: "アクセスが拒否されました",
    barcode: "バーコード",
    wr: "実績登録",
    "wr/plan": "実績登録",
    manual: "マニュアル",
    "ap/list": "承認一覧",
    "manual/page": "マニュアル",
    customers: "顧客",
    orders: "出荷",
    production: "生産計画",
    mrp: "資材所要計算",
    stock: "在庫状況",
    organization: "組織",
    more: "その他",
    company: "会社情報",
    "company/edit": "会社情報の編集",
    "company/provision": "提供の編集",
    "company/position": "役職の編集",
    "company/assign": "割当の編集",
    "company/approval": "承認パターン",
    "company/approval/pattern": "承認パターンの編集",
    "company/approval/add": "役職の追加",
    sites: "事業所",
    "sites/edit": "事業所の編集",
    "sites/office": "事業所情報の編集",
    departments: "部署",
    "departments/edit": "部署の編集",
    "departments/dept": "部署情報の編集",
    "departments/kind": "部署区分の選択",
    "departments/kindedit": "部署区分の編集",
    resources: "資源",
    maintenance: "保全",
    locations: "場所",
    "locations/edit": "場所の編集",
    "locations/item": "場所情報の編集",
    equipment: "設備",
    "equipment/edit": "設備の編集",
    "equipment/cat": "設備の分類の編集",
    "equipment/item": "設備情報の編集",
    "maintenance/entity": "保全の編集",
    capabilities: "力量",
    "capabilities/edit": "力量の編集",
    "capabilities/item": "力量項目の編集",
    "capabilities/holder": "力量の保持者の編集",
    licenses: "資格",
    "licenses/edit": "資格の編集",
    "licenses/item": "資格項目の編集",
    "licenses/holder": "資格の保持者の編集",
    approval: "承認",
    "approval/edit": "承認の編集",
    "approval/pattern": "承認パターンの編集",
    "approval/scope": "承認範囲の編集",
    "approval/approver": "承認できる人の編集",
    staff: "作業者",
    "staff/edit": "作業者の編集",
    "staff/person": "作業者情報の編集",
    "staff/capability": "力量の編集",
    "staff/license": "資格の編集",
    offerings: "提供サービス・製品一覧",
    logout: "ログアウト",
    menu: "業務メニュー",
    settings: "設定",
    boot: "起動中",
    login: "ログイン",
    register: "新規登録",
    "register/code": "認証コードの入力",
    forgot: "パスワードを忘れた",
    "forgot/code": "認証コードの入力",
    "forgot/reset": "新しいパスワード",
    error: "エラー",
  };
  /* #/company/provision/<id|new>, #/company/position/<id|new>, #/company/position/<pid>/assign/<id|new> */
  const hashQuery = () => new URLSearchParams(location.hash.split("?")[1] ?? "");
  const parseRoute = () => {
    const r = location.hash.replace(/^#\//, "").split("?")[0];
    let m;
    if ((m = r.match(/^g\/e\/(\w+)\/([\w-]+)(?:\/([\w-]+))?$/))) return { name: "g/entity", ent: m[1], id: m[2], parentId: m[3] };
    if ((m = r.match(/^g\/(\w+)(?:\/(\w+))?(\/edit)?$/)) && m[1] !== "e") return { name: "g", sid: m[1], tab: m[2] === "edit" ? undefined : m[2], edit: !!m[3] || m[2] === "edit" };
    if ((m = r.match(/^company\/provision\/([\w-]+)$/))) return { name: "company/provision", id: m[1] };
    if ((m = r.match(/^company\/position\/([\w-]+)\/assign\/([\w-]+)$/))) return { name: "company/assign", pid: m[1], id: m[2] };
    if ((m = r.match(/^company\/position\/([\w-]+)$/))) return { name: "company/position", id: m[1] };
    if ((m = r.match(/^company\/approval\/([\w-]+)\/add$/))) return { name: "company/approval/add", pid: m[1] };
    if ((m = r.match(/^company\/approval\/([\w-]+)$/))) return { name: "company/approval/pattern", id: m[1] };
    if (!ROUTES[r] && (m = r.match(/^sites\/([\w-]+)$/))) return { name: "sites/office", id: m[1] };
    if ((m = r.match(/^approval\/([\w-]+)\/scope\/([\w-]+)\/approver\/([\w-]+)$/))) return { name: "approval/approver", pid: m[1], sid: m[2], id: m[3] };
    if ((m = r.match(/^approval\/([\w-]+)\/scope\/([\w-]+)$/))) return { name: "approval/scope", pid: m[1], id: m[2] };
    if (!ROUTES[r] && (m = r.match(/^approval\/([\w-]+)$/))) return { name: "approval/pattern", id: m[1] };
    if ((m = r.match(/^staff\/([\w-]+)\/capability\/([\w-]+)$/))) return { name: "staff/capability", pid: m[1], id: m[2] };
    if ((m = r.match(/^staff\/([\w-]+)\/license\/([\w-]+)$/))) return { name: "staff/license", pid: m[1], id: m[2] };
    if (!ROUTES[r] && (m = r.match(/^staff\/([\w-]+)$/))) return { name: "staff/person", id: m[1] };
    if ((m = r.match(/^departments\/([\w-]+)\/kind\/([\w-]+)$/))) return { name: "departments/kindedit", id: m[1], kid: m[2] };
    if ((m = r.match(/^departments\/([\w-]+)\/kind$/))) return { name: "departments/kind", id: m[1] };
    if (!ROUTES[r] && (m = r.match(/^departments\/([\w-]+)$/))) return { name: "departments/dept", id: m[1] };
    if ((m = r.match(/^manual\/([\w-]+)$/))) return { name: "manual/page", id: m[1] };
    if ((m = r.match(/^ap\/(\w+)$/))) return { name: "ap/list", gid: m[1] };
    if ((m = r.match(/^wr\/([\w-]+)$/))) return { name: "wr/plan", id: m[1] };
    if (!ROUTES[r] && (m = r.match(/^locations\/([\w-]+)$/))) return { name: "locations/item", id: m[1] };
    if ((m = r.match(/^equipment\/cat\/([\w-]+)$/))) return { name: "equipment/cat", id: m[1] };
    if (!ROUTES[r] && (m = r.match(/^equipment\/([\w-]+)$/))) return { name: "equipment/item", id: m[1] };
    if ((m = r.match(/^maintenance\/e\/(\w+)\/([\w-]+)(?:\/([\w-]+))?$/))) return { name: "maintenance/entity", ent: m[1], id: m[2], parentId: m[3] };
    if ((m = r.match(/^maintenance(?:\/(kinds|items|ops|schedule))?(\/edit)?$/))) return { name: "maintenance", tab: m[1] || "kinds", edit: !!m[2] };
    for (const k of ["capabilities", "licenses"]) {
      if ((m = r.match(new RegExp(`^${k}/([\\w-]+)/holder/([\\w-]+)$`)))) return { name: `${k}/holder`, pid: m[1], id: m[2] };
      if (!ROUTES[r] && (m = r.match(new RegExp(`^${k}/([\\w-]+)$`)))) return { name: `${k}/item`, id: m[1] };
    }
    return { name: ROUTES[r] ? r : "home" };
  };
  const currentRoute = () => parseRoute().name;
  const crumbOf = (route) => ({
    barcode: "作業実績",
    wr: "作業実績",
    "wr/plan": "作業実績 › 実績登録",
    manual: "品質管理文書",
    "manual/page": "品質管理文書",
    mrp: "生産計画",
    stock: "作業実績",
    "company/edit": "会社情報",
    "company/provision": "会社情報 › 編集",
    "company/position": "会社情報 › 編集",
    "company/assign": "会社情報 › 編集 › 役職",
    "company/approval": "会社情報",
    "company/approval/pattern": "会社情報 › 承認パターン",
    "company/approval/add": "会社情報 › 承認パターン › 役職の追加",
    "sites/edit": "事業所",
    "sites/office": "事業所 › 編集",
    locations: "資源",
    "locations/edit": "資源 › 場所",
    "locations/item": "資源 › 場所 › 編集",
    equipment: "資源",
    "equipment/edit": "資源 › 設備",
    "equipment/cat": "資源 › 設備 › 編集",
    "equipment/item": "資源 › 設備 › 編集",
    maintenance: "資源 › 保全",
    "maintenance/entity": "資源 › 保全 › 編集",
    capabilities: "資源",
    "capabilities/edit": "資源 › 力量",
    "capabilities/item": "資源 › 力量 › 編集",
    "capabilities/holder": "資源 › 力量 › 編集",
    licenses: "資源",
    "licenses/edit": "資源 › 資格",
    "licenses/item": "資源 › 資格 › 編集",
    "licenses/holder": "資源 › 資格 › 編集",
    "approval/edit": "承認",
    "approval/pattern": "承認 › 編集",
    "approval/scope": "承認 › 編集 › 範囲",
    "approval/approver": "承認 › 編集 › 範囲",
    "staff/edit": "作業者",
    "staff/person": "作業者 › 編集",
    "staff/capability": "作業者 › 編集 › 力量",
    "staff/license": "作業者 › 編集 › 資格",
    "departments/edit": "部署",
    "departments/dept": "部署 › 編集",
    "departments/kind": "部署 › 編集 › 区分",
    "departments/kindedit": "部署 › 編集 › 区分",
    g: gCrumb(),
    "g/entity": gCrumb(),
    menu: D.company.name,
    settings: D.company.name,
  }[route] ?? D.company.name);
  const TOP = ["home", "customers", "orders", "production", "organization", "more", "company"];
  const isTop = (r) => TOP.includes(r);
  let flash = "";
  let draft = null; // company form values kept while visiting provision / position pages
  const flashHtml = () => (flash ? `<div class="flash" role="status">${icon("check")}<span>${esc(flash)}</span></div>` : "");
  const icon = (n, extra = "") =>
    `<svg class="od-icon" viewBox="0 0 24 24" aria-hidden="true" ${extra}><path d="${PATHS[n]}"/></svg>`;

  /* ---------- PMS shared pieces ---------- */
  const chip = (label, ic, cls = "") => `<span class="chip ${cls}">${ic ? icon(ic) : ""}${label}</span>`;
  const custName = (id) => D.customerList.find((c) => c.id === id)?.name ?? "";
  const ORDER_CHIP = { "受注": ["orders", ""], "出荷準備": ["truck", "ship"], "出荷済": ["check", "mute"] };
  const orderChip = (s) => chip(s, ORDER_CHIP[s][0], ORDER_CHIP[s][1]);
  const LINE_CHIP = { "順調": ["check", "ok"], "注意": ["alert", "warn"], "遅延": ["alert", "bad"] };
  const lineChip = (s) => chip(s, LINE_CHIP[s][0], LINE_CHIP[s][1]);
  const CUST_CHIP = { "取引中": ["check", ""], "商談中": ["pencil", "line"], "休止": ["close", "mute"] };
  const custChip = (s) => chip(s, CUST_CHIP[s][0], CUST_CHIP[s][1]);
  const pctOf = (a, b) => (b ? Math.round((a / b) * 100) : 0);
  const filterBar = (label, group, items, cur) =>
    `<div class="filters" role="group" aria-label="${label}">${items
      .map((i) => `<button class="fchip" type="button" data-filter="${group}" data-value="${i}" aria-pressed="${i === cur}">${i}</button>`)
      .join("")}</div>`;
  const rowItem = (attrs, main, sub, right, tag = "button") =>
    `<${tag} class="rowi" ${tag === "button" ? 'type="button"' : ""} ${attrs}>
      <span class="rowi-main"><span class="rowi-name od-truncate">${esc(main)}</span><span class="rowi-sub od-truncate">${esc(sub)}</span></span>
      <span class="rowi-right">${right}${icon("chevron")}</span></${tag}>`;
  const orderRow = (o) =>
    rowItem(`data-order="${o.no}"`, `${custName(o.cust)}`, `${o.no} ・ ${o.item} ${fmt(o.qty)}${o.unit} ・ 納期 ${o.due}`, orderChip(o.status));
  const emptyState = (title, hint) => `<div class="empty" role="status"><p class="empty-title">${title}</p><p>${hint}</p></div>`;
  const lineItem = (l) => {
    const pct = pctOf(l.actual, l.plan);
    return `<article class="card line-item">
      <div class="od-row-top"><div class="od-fill"><h3 class="rowi-name od-truncate">${l.site} ${l.name}</h3><p class="rowi-sub od-truncate">${l.item}</p></div>${lineChip(l.state)}</div>
      <div class="prog" role="img" aria-label="${l.name} 進捗 ${pct}%（実績 ${fmt(l.actual)}${l.unit} / 計画 ${fmt(l.plan)}${l.unit}）"><span class="${LINE_CHIP[l.state][1]}" style="--p:${Math.min(pct, 100)}"></span></div>
      <div class="od-row line-nums"><span class="od-fill od-nowrap">実績 ${fmt(l.actual)}${l.unit}</span><span class="od-fill od-nowrap muted">計画 ${fmt(l.plan)}${l.unit}</span><strong class="od-fixed od-nowrap">${pct}%</strong></div>
      ${l.note ? `<p class="line-note">${l.note}</p>` : ""}
    </article>`;
  };

  /* ---------- PMS screens ---------- */
  const avatarImg = (cls = "") => `<img class="avatar ${cls}" src="${D.user.photo}" width="120" height="120" alt="">`;
  const userCard = () => `<div class="user">${avatarImg()}<span class="user-text"><span class="user-name od-truncate">${D.user.name}</span><span class="user-role od-truncate">${D.user.role}</span></span></div>`;

  function homeScreen() {
    const cnt = (s) => D.orders.filter((o) => o.status === s).length;
    const avg = Math.round(D.lines.reduce((a, l) => a + pctOf(l.actual, l.plan), 0) / D.lines.length);
    const late = D.lines.filter((l) => l.state === "遅延");
    const stat = (href, ic, cap, num, unit) => `<a class="card statc" href="${href}"><span class="od-stat"><span class="statc-cap">${icon(ic)}${cap}</span><span class="big-num">${num}<small>${unit}</small></span></span></a>`;
    const ship = D.orders.filter((o) => o.status === "出荷準備").sort((a, b) => a.due.localeCompare(b.due, "ja", { numeric: true }));
    const PIPE = [["受注", "seg-1"], ["出荷準備", "seg-2"], ["出荷済", "seg-3"]];
    const pipeBar = PIPE.map(([s, c]) => `<span class="${c}" style="flex:${cnt(s)}"></span>`).join("");
    const pipeLeg = PIPE.map(([s, c]) => `<span class="legend-label od-nowrap"><span class="dot ${c}"></span>${s} ${cnt(s)}件</span>`).join("");
    const sites = [...new Set(D.lines.map((l) => l.site))].map((site) => {
      const ls = D.lines.filter((l) => l.site === site);
      const p = Math.round(ls.reduce((a, l) => a + pctOf(l.actual, l.plan), 0) / ls.length);
      return `<li class="dept"><span class="dept-name od-fill">${site}</span><span class="prog dept-bar" role="img" aria-label="${site} 平均進捗 ${p}%"><span style="--p:${p}"></span></span><strong class="od-nowrap">${p}%</strong></li>`;
    }).join("");
    return `
      <section class="card dash-user" aria-label="ログインユーザー">
        ${avatarImg("avatar-lg")}
        <div class="od-fill"><p class="dash-hello">ログイン中</p><h2 class="dash-name od-truncate">${D.user.name}</h2><p class="muted od-truncate">${D.user.role} ・ ${D.asOf}</p></div>
      </section>
      ${apvAlert()}
      ${late.length ? `<div class="alert" role="alert">${icon("alert")}<div class="od-fill"><strong>遅延ラインが${late.length}本あります</strong><p>${late.map((l) => `${l.site} ${l.name}`).join("、")}。<a href="#/production">生産計画・進捗で確認する</a></p></div></div>` : ""}
      <section aria-label="本日の概況"><div class="grid-stats">
        ${stat("#/orders", "orders", "新規受注", cnt("受注"), "件")}
        ${stat("#/orders", "truck", "出荷準備中", cnt("出荷準備"), "件")}
        ${stat("#/production", "production", "生産進捗（平均）", avg, "%")}
        ${stat("#/production", "alert", "遅延ライン", late.length, "本")}
      </div></section>
      <div class="two-col">
        <section class="card dash-panel" aria-labelledby="h-pipe">
          <h2 class="sec-title" id="h-pipe">受注の進み具合</h2>
          <div class="bar" role="img" aria-label="${PIPE.map(([s]) => s + " " + cnt(s) + "件").join("、")}">${pipeBar}</div>
          <div class="od-cluster org-leg">${pipeLeg}</div>
        </section>
        <section class="card dash-panel" aria-labelledby="h-site">
          <h2 class="sec-title" id="h-site">拠点別の生産進捗</h2>
          <ul class="dept-list" aria-label="拠点別の平均進捗">${sites}</ul>
        </section>
      </div>
      <div class="two-col">
        <section aria-labelledby="h-ship">
          <div class="sec-head"><h2 class="sec-title" id="h-ship">出荷予定</h2><a class="sec-link" href="#/orders">出荷へ</a></div>
          <div class="card list-card">${ship.length ? ship.map(orderRow).join("") : emptyState("出荷予定はありません", "受注を出荷準備に進めると、ここに表示されます。")}</div>
        </section>
        <section aria-labelledby="h-line">
          <div class="sec-head"><h2 class="sec-title" id="h-line">生産ラインの進捗</h2><a class="sec-link" href="#/production">すべて見る</a></div>
          <div class="stack-list">${D.lines.slice(0, 4).map(lineItem).join("")}</div>
        </section>
      </div>`;
  }

  let custQuery = "", custStatus = "すべて";
  const custFiltered = () => D.customerList.filter((c) =>
    (custStatus === "すべて" || c.status === custStatus) &&
    (!custQuery || (c.name + c.industry + c.contact + c.area).includes(custQuery)));
  const custListHtml = () => {
    const l = custFiltered();
    return l.length
      ? l.map((c) => rowItem(`data-cust="${c.id}"`, c.name, `${c.industry} ・ ${c.area} ・ 担当 ${c.contact}`, custChip(c.status))).join("")
      : emptyState("該当する顧客がありません", "検索語を変えるか、状態の絞り込みを「すべて」に戻してください。");
  };
  function customersScreen() {
    return `
      <section class="card cust-tools" aria-label="検索と絞り込み">
        <div class="field-row"><label for="cust-q">顧客を検索</label>
          <div class="search-box">${icon("search")}<input id="cust-q" type="search" value="${esc(custQuery)}" placeholder="社名・業種・担当者・地域" autocomplete="off"></div></div>
        ${filterBar("取引状況", "cust", ["すべて", "取引中", "商談中", "休止"], custStatus)}
      </section>
      <section aria-labelledby="h-cust">
        <div class="sec-head"><h2 class="sec-title" id="h-cust">顧客一覧</h2><span class="sec-note od-nowrap" id="cust-count">${custFiltered().length}社</span></div>
        <p class="tbl-note-out">全${fmt(D.customers)}社のうち、サンプルとして${D.customerList.length}社を表示しています。</p>
        <div class="card list-card" id="cust-list">${custListHtml()}</div>
      </section>`;
  }

  let orderTab = "受注";
  const TABS = ["受注", "出荷準備", "出荷済"];
  function ordersScreen() {
    const list = D.orders.filter((o) => o.status === orderTab);
    const tabs = TABS.map((t) => `<button class="fchip" type="button" data-filter="order" data-value="${t}" aria-pressed="${t === orderTab}">${t}<span class="fchip-n od-nowrap">${D.orders.filter((o) => o.status === t).length}件</span></button>`).join("");
    return `
      ${flash ? `<div class="flash" role="status">${icon("check")}<span>${flash}</span></div>` : ""}
      <div class="filters" role="group" aria-label="ステータス">${tabs}</div>
      <section aria-labelledby="h-ord">
        <div class="sec-head"><h2 class="sec-title" id="h-ord">${orderTab}の一覧</h2><span class="sec-note od-nowrap">${list.length}件</span></div>
        <div class="card list-card">${list.length ? list.map(orderRow).join("") : emptyState(`${orderTab}の案件はありません`, "他のステータスを選ぶか、受注を進めてください。")}</div>
      </section>`;
  }

  let prodSite = "全拠点";
  function productionScreen() {
    const ls = D.lines.filter((l) => prodSite === "全拠点" || l.site === prodSite);
    const n = (s) => ls.filter((l) => l.state === s).length;
    const avg = ls.length ? Math.round(ls.reduce((a, l) => a + pctOf(l.actual, l.plan), 0) / ls.length) : 0;
    const stat = (cap, num, unit) => `<div class="card statc"><span class="od-stat"><span class="statc-cap">${cap}</span><span class="big-num">${num}<small>${unit}</small></span></span></div>`;
    return `
      ${filterBar("拠点", "prod", ["全拠点", "関東工場", "関西工場"], prodSite)}
      <section aria-label="サマリ"><div class="grid-stats grid-stats-3">
        ${stat("平均進捗", avg, "%")}${stat("注意", n("注意"), "本")}${stat("遅延", n("遅延"), "本")}
      </div></section>
      <section aria-labelledby="h-lines">
        <div class="sec-head"><h2 class="sec-title" id="h-lines">生産ライン（本日）</h2><span class="sec-note od-nowrap">${ls.length}本</span></div>
        ${ls.length ? `<div class="od-grid lines-grid">${ls.map(lineItem).join("")}</div>` : emptyState("ラインがありません", "拠点の絞り込みを変更してください。")}
      </section>`;
  }

  function organizationScreen() {
    const h = D.headcount;
    const total = h.employee + h.part + h.dispatch;
    const NAMES = [["社員", "seg-1"], ["パート", "seg-2"], ["派遣", "seg-3"]];
    const sites = D.sites.map((s) => {
      const o = D.org[s.id];
      const bar = o.seg.map((n, i) => `<span class="${NAMES[i][1]}" style="flex:${n}"></span>`).join("");
      const leg = o.seg.map((n, i) => `<span class="legend-label od-nowrap"><span class="dot ${NAMES[i][1]}"></span>${NAMES[i][0]} ${fmt(n)}名</span>`).join("");
      const depts = o.depts.map(([d, n]) => `<li class="dept"><span class="dept-name od-fill">${d}</span><span class="prog dept-bar" aria-hidden="true"><span style="--p:${pctOf(n, s.people)}"></span></span><strong class="od-nowrap">${fmt(n)}名</strong></li>`).join("");
      return `<details class="card org-site" ${s.id === "kt" ? "open" : ""}>
        <summary><span class="org-sum"><span class="chip">${icon(s.icon)}${s.type}</span><span class="tile-name od-keep">${s.name}</span></span><span class="org-count od-nowrap">${fmt(s.people)}名</span>${icon("chevron")}</summary>
        <div class="org-body"><div class="bar" role="img" aria-label="${NAMES.map(([l], i) => l + " " + o.seg[i] + "名").join("、")}">${bar}</div>
        <div class="od-cluster org-leg">${leg}</div>
        <ul class="dept-list" aria-label="${s.name}の部署別人数">${depts}</ul></div></details>`;
    }).join("");
    return `
      <section class="card" aria-label="全社の人員">
        <div class="card-stack"><div class="card-title">${icon("users")}全社の従業員数</div>
          <div class="big-num">${fmt(total)}<small>名</small></div>
          <div class="legend">${NAMES.map(([l, c], i) => `<div class="legend-item"><span class="legend-label"><span class="dot ${c}"></span>${l}</span><span class="legend-num">${fmt([h.employee, h.part, h.dispatch][i])}<small>名</small></span></div>`).join("")}</div></div>
      </section>
      <section aria-labelledby="h-org"><div class="sec-head"><h2 class="sec-title" id="h-org">事業所と部署</h2><span class="sec-note od-nowrap">${D.sites.length}拠点</span></div>
        <div class="org-list">${sites}</div></section>`;
  }

  function moreScreen() {
    const l = (href, ic, label, sub) => `<a class="rowi" href="${href}"><span class="rowi-main"><span class="rowi-name">${icon(ic)}${label}</span><span class="rowi-sub">${sub}</span></span><span class="rowi-right">${icon("chevron")}</span></a>`;
    return `<div class="card list-card">${l("#/menu", "list", "業務メニュー", "品目・工程・営業・購買・生産計画・作業実績・品質管理")}${l("#/resources", "box", "資源", "力量・資格・場所・設備・保全")}${l("#/company", "building", "会社情報", "概要・サマリ・提供サービス")}${l("#/settings", "gear", "設定", "テーマ・言語・画面の列")}${l("#/maintenance-mode", "wrench", "メンテナンス中", "確認用。フラグがオンのときは全画面でこの表示になります")}${l("#/denied", "alert", "アクセス拒否", "確認用。権限のないページを開いたときの表示です")}${l("#/logout", "logout", "ログアウト", `${esc(D.user.name)} さんとしてサインイン中`)}</div>`;
  }

  /* ---------- screens ---------- */
  function companyScreen() {
    const h = D.headcount;
    const total = h.employee + h.part + h.dispatch;
    const seg = [
      ["社員", h.employee, "seg-1"],
      ["パート", h.part, "seg-2"],
      ["派遣", h.dispatch, "seg-3"],
    ];
    const bar = seg.map(([, n, c]) => `<span class="${c}" style="flex:${n}"></span>`).join("");
    const legend = seg
      .map(([l, n, c]) => `<div class="legend-item"><span class="legend-label"><span class="dot ${c}"></span>${l}</span><span class="legend-num">${fmt(n)}<small>名</small></span></div>`)
      .join("");
    const tiles = D.sites
      .map(
        (s) => `<button class="tile" type="button" data-site="${s.id}" aria-haspopup="dialog">
          <span class="tile-top"><span class="chip">${icon(s.icon)}${s.type}</span></span>
          <span class="tile-name od-keep">${s.name}</span>
          <span class="tile-addr od-clamp-2">${s.address}</span>
          <span class="tile-foot"><span class="od-nowrap">在籍 ${fmt(s.people)}名</span><span class="more od-nowrap">詳細${icon("chevron")}</span></span>
        </button>`
      )
      .join("");
    const offers = D.offerings
      .map(
        (o) => `<article class="offer">
          <span class="chip">${icon(o.kind === "製品" ? "box" : "wrench")}${o.kind}</span>
          <h3 class="tile-name od-keep">${o.name}</h3>
          <p class="tile-addr od-clamp-3">${o.desc}</p>
        </article>`
      )
      .join("");
    const c = D.company;
    return `
      ${flash ? `<div class="flash" role="status">${icon("check")}<span>${flash}</span></div>` : ""}
      <section class="card profile" aria-labelledby="co-name">
        <div class="card-title has-action"><h2 class="card-title-main">${icon("building")}会社情報</h2>${editLink("#/company/edit", "会社情報")}</div>
        <p class="company-name od-keep" id="co-name">${esc(c.name)}</p>
        <dl class="profile-list">
          <div class="kv"><dt>会社名の読み</dt><dd>${esc(c.pronunciation || "―")}</dd></div>
          <div class="kv"><dt>略称</dt><dd>${esc(c.nickname || "―")}</dd></div>
          <div class="kv"><dt>代表者名</dt><dd>${esc(c.ceo)}（${esc(c.ceoTitle)}）</dd></div>
          <div class="kv"><dt>ホームページ</dt><dd class="od-keep">${c.web_page ? `<a href="${esc(c.web_page)}" target="_blank" rel="noopener">${esc(c.web_page)}</a>` : "―"}</dd></div>
          <div class="kv" style="grid-column: span ${mobile ? 1 : 2}"><dt>メインサイト（本社）所在地</dt><dd>${esc(c.address)}</dd></div>
          ${c.remarks ? `<div class="kv" style="grid-column: span ${mobile ? 1 : 2}"><dt>備考</dt><dd>${esc(c.remarks)}</dd></div>` : ""}
        </dl>
      </section>

      <section aria-labelledby="sum-title">
        <div class="sec-head"><h2 class="sec-title" id="sum-title">サマリ</h2></div>
        <div class="summary">
          <div class="card sum-emp">
            <div class="card-stack">
              <div class="card-title has-action"><h3 class="card-title-main">${icon("users")}従業員数</h3>${editLink("#/staff", "従業員数")}</div>
              <div class="big-num">${fmt(total)}<small>名</small></div>
              <div class="bar" role="img" aria-label="${seg.map(([l, n]) => l + " " + n + "名").join("、")}">${bar}</div>
              <div class="legend">${legend}</div>
            </div>
          </div>
          <div class="card sum-vendor">
            <div class="card-stack">
              <div class="card-title">${icon("briefcase")}外部委託業者</div>
              <div class="big-num">${fmt(D.vendors)}<small>社</small></div>
              <div class="cap">委託契約中</div>
            </div>
          </div>
          <div class="card sum-customer">
            <div class="card-stack">
              <div class="card-title">${icon("star")}顧客数</div>
              <div class="big-num">${fmt(D.customers)}<small>社</small></div>
              <div class="cap">取引先</div>
            </div>
          </div>
        </div>
      </section>

      <section aria-labelledby="site-title">
        <div class="sec-head"><div class="od-row sec-left"><h2 class="sec-title" id="site-title">事業所</h2>${editLink("#/sites", "事業所")}</div><span class="sec-note od-nowrap">${D.sites.length}拠点</span></div>
        <div class="od-grid tiles">${tiles}</div>
      </section>

      <section aria-labelledby="dept-title">
        <div class="sec-head"><div class="od-row sec-left"><h2 class="sec-title" id="dept-title">部署の構成</h2>${editLink("#/departments", "部署の構成")}<a class="edit-btn" href="#/approval">${icon("check")}<span>承認経路</span></a></div><span class="sec-note od-nowrap">${D.departments.length}部署</span></div>
        <div class="card dept-read"><ul class="dept-read-list" aria-label="部署の構成">${deptWalk().map(({ d, depth }) => `<li style="--depth:${depth}"><span class="dept-read-name">${esc(d.name)}</span><span class="tree-tags">${deptTags(d)}</span></li>`).join("")}</ul></div>
      </section>

      <section aria-labelledby="coap-title">
        <div class="sec-head"><div class="od-row sec-left"><h2 class="sec-title" id="coap-title">承認パターン</h2>${editLink("#/company/approval", "承認パターン")}</div><span class="sec-note od-nowrap">${D.apPatterns.length}件</span></div>
        <div class="card dept-read"><ul class="dept-read-list" aria-label="承認パターン">${D.apPatterns.map((p) => `<li><span class="dept-read-name">${esc(p.name)}</span><span class="tree-tags">${apSteps(p.id).map((s) => chip(posName(s.pos))).join("")}</span></li>`).join("") || `<li>${emptyState("承認パターンがありません", "「承認パターン」から登録してください。")}</li>`}</ul></div>
      </section>

      <section aria-labelledby="offer-title">
        <div class="sec-head"><div class="od-row sec-left"><h2 class="sec-title" id="offer-title">提供サービス・製品</h2>${editLink("#/company/edit", "提供サービス・製品")}</div><span class="sec-note od-nowrap">${D.offerings.length}件</span></div>
        <div class="od-grid tiles">${offers}</div>
      </section>`;
  }

  /* ---------- edit / list screens ---------- */
  const FIELDS = [
    ["name", "会社名", "input", 60],
    ["pronunciation", "会社名の読み", "input", 120, false],
    ["nickname", "略称", "input", 30, false],
    ["ceo", "代表者名", "input", 30],
    ["ceoTitle", "代表者の役職", "input", 30],
    ["web_page", "ホームページ", "input", 255, false],
    ["address", "メインサイト（本社）所在地", "textarea", 120],
    ["remarks", "備考", "textarea", 1024, false],
  ];
  /* ---------- edit structure helpers ---------- */
  const fieldRow = ({ id, label, kind = "input", max = 60, req = true, options = [], value = "", taken = null, blank = "選択してください", after = null, min = null, toggle = false, disabled = false, ge = null, gt = null, keepMsg = null, needUnless = null, disables = null, rule = null, attrs = "", le = null, xor = null, setsLe = null, leMap = null }) => {
    if (kind === "check") {
      return `<div class="field-row field-check ${toggle ? "is-switch" : ""}"><input type="checkbox" id="f-${id}" name="${id}" value="1" ${value ? "checked" : ""} ${toggle ? 'role="switch"' : ""} ${keepMsg ? `data-keep-msg="${esc(keepMsg)}"` : ""} ${disables ? `data-disables="${disables}"` : ""} aria-describedby="e-${id}"><label for="f-${id}">${label}</label><p class="field-err" id="e-${id}"></p></div>`;
    }
    const common = `id="f-${id}" name="${id}" ${req ? "required" : ""} aria-describedby="e-${id}" ${taken ? `data-taken="${esc(JSON.stringify(taken))}"` : ""} ${after ? `data-after="${after}"` : ""} ${min ? `data-min="${min}"` : ""} ${ge != null ? `data-ge="${ge}"` : ""} ${gt != null ? `data-gt="${gt}"` : ""} ${needUnless ? `data-need-unless="${needUnless}"` : ""} ${disabled ? "disabled" : ""} ${rule ? `data-rule="${rule}"` : ""} ${le != null ? `data-le="${le}"` : ""} ${xor ? `data-xor="${xor}"` : ""} ${setsLe ? `data-sets-le="${setsLe}" data-le-map="${esc(JSON.stringify(leMap ?? {}))}"` : ""} ${attrs}`;
    let ctl;
    if (kind === "textarea") ctl = `<textarea ${common} rows="3" maxlength="${max}">${esc(value)}</textarea>`;
    else if (kind === "select") ctl = `<select ${common}><option value="">${blank}</option>${options.map(([v, l]) => `<option value="${esc(v)}" ${v === value ? "selected" : ""}>${esc(l)}</option>`).join("")}</select>`;
    else ctl = `<input ${common} type="${{ date: "date", month: "month", number: "number", email: "email", password: "password" }[kind] ?? "text"}" ${kind === "number" ? 'step="any" inputmode="decimal"' : ""} maxlength="${max}" value="${esc(value)}">`;
    return `<div class="field-row"><label for="f-${id}">${label}${req ? '<span class="req">必須</span>' : ""}</label>${ctl}<p class="field-err" id="e-${id}"></p></div>`;
  };
  /* updatedBy / updatedAt are immutable: shown, never editable */
  const metaHtml = (r) => `<dl class="meta" aria-label="更新情報（編集できません）">
    <div class="kv"><dt>更新者</dt><dd>${esc(r.updatedBy ?? "―")}</dd></div>
    <div class="kv"><dt>更新日</dt><dd class="od-nowrap">${esc(r.updatedAt ?? "―")}</dd></div></dl>`;
  const notFound = (msg, href) => `${backLink(href)}<section class="card">${emptyState(msg, "一覧に戻って選び直してください。")}</section>`;
  const sectionHead = (id, title, addHref, addLabel, draftAttr = "data-draft") =>
    `<div class="sec-head"><h2 class="sec-title" id="${id}">${title}</h2><a class="btn" href="${addHref}" ${draftAttr}>${icon("plus")}<span>${addLabel}</span></a></div>`;
  const empOf = (no) => D.employees.find((e) => e.no === no);
  const assignsOf = (pid) => D.assignments.filter((a) => a.pos === pid);

  function companyEditScreen() {
    const c = draft || D.company;
    const fields = FIELDS.map(([id, label, kind, max, req = true]) => fieldRow({ id, label, kind, max, req, value: c[id] ?? "" })).join("");
    const provs = D.offerings.map((o) => rowItem(`href="#/company/provision/${o.id}" data-draft`, o.name, o.desc, chip(o.kind, o.kind === "製品" ? "box" : "wrench"), "a")).join("");
    const poss = D.positions.map((p) => {
      const n = assignsOf(p.id).length;
      const names = assignsOf(p.id).map((a) => empOf(a.emp)?.name).filter(Boolean).join("、");
      return rowItem(`href="#/company/position/${p.id}" data-draft`, p.name, n ? names : "未割当", chip(`${n}名`, "users", n ? "" : "mute"), "a");
    }).join("");
    return `${backLink("#/company", "閲覧に戻る")}${flashHtml()}
      <form class="card form" id="edit-form" data-kind="company" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${fields}
        ${metaHtml(D.company)}
        <div class="form-actions"><button class="btn btn-primary" type="submit">保存</button></div>
      </form>
      <section aria-labelledby="h-prov">
        ${sectionHead("h-prov", "提供の一覧", "#/company/provision/new", "提供を追加")}
        <div class="card list-card">${provs || emptyState("提供項目がありません", "「提供を追加」から登録してください。")}</div>
      </section>
      <section aria-labelledby="h-pos">
        ${sectionHead("h-pos", "役職の一覧", "#/company/position/new", "役職を追加")}
        <div class="card list-card">${poss || emptyState("役職がありません", "「役職を追加」から登録してください。")}</div>
      </section>`;
  }

  function provisionEditScreen(id) {
    const isNew = id === "new";
    const o = isNew ? { kind: "", code: "", name: "", desc: "" } : D.offerings.find((x) => x.id === id);
    if (!o) return notFound("提供項目が見つかりません", "#/company/edit");
    return `${backLink("#/company/edit", "編集に戻る")}
      <form class="card form" id="edit-form" data-kind="provision" data-id="${id}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${fieldRow({ id: "kind", label: "種別", kind: "select", options: [["製品", "製品"], ["サービス", "サービス"]], value: o.kind })}
        ${fieldRow({ id: "code", label: "提供コード", max: 20, value: o.code ?? "", taken: D.offerings.filter((x) => x.id !== id).map((x) => x.code) })}
        ${fieldRow({ id: "name", label: "名称", max: 40, value: o.name })}
        ${fieldRow({ id: "desc", label: "詳細", kind: "textarea", max: 120, value: o.desc })}
        ${isNew ? "" : metaHtml(o)}
        <div class="form-actions">${isNew ? "" : '<button class="btn btn-danger" type="button" id="del-btn">削除</button>'}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>`;
  }

  function positionEditScreen(id) {
    const isNew = id === "new";
    const p = isNew ? { name: "", reading: "", priority: "", desc: "" } : D.positions.find((x) => x.id === id);
    if (!p) return notFound("役職が見つかりません", "#/company/edit");
    const taken = D.positions.filter((x) => x.id !== id).map((x) => x.name);
    const as = isNew ? [] : assignsOf(id);
    const rows = as.map((a) => {
      const e = empOf(a.emp);
      return rowItem(`href="#/company/position/${id}/assign/${a.id}"`, e.name, `${e.no} ・ ${e.site}`, chip(e.type), "a");
    }).join("");
    return `${backLink("#/company/edit", "編集に戻る")}${flashHtml()}
      <form class="card form" id="edit-form" data-kind="position" data-id="${id}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${fieldRow({ id: "name", label: "役割名称", max: 30, value: p.name, taken })}
        ${fieldRow({ id: "reading", label: "読み", max: 60, req: false, value: p.reading ?? "" })}
        ${fieldRow({ id: "priority", label: "順位", kind: "number", max: 3, value: p.priority ?? "" })}
        ${fieldRow({ id: "desc", label: "備考", kind: "textarea", max: 120, req: false, value: p.desc })}
        ${isNew ? "" : metaHtml(p)}
        <div class="form-actions">${isNew ? "" : '<button class="btn btn-danger" type="button" id="del-btn">削除</button>'}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>
      ${isNew ? `<p class="tbl-note-out">役職を追加すると、続けて担当者を割り当てられます。</p>` : `<section aria-labelledby="h-asg">
        ${sectionHead("h-asg", "この役職を割り当てている人", `#/company/position/${id}/assign/new`, "担当を追加", "")}
        <div class="card list-card">${rows || emptyState("割り当てている人はいません", "「担当を追加」から従業員を割り当てます。")}</div>
      </section>`}`;
  }

  function assignEditScreen(pid, id) {
    const back = `#/company/position/${pid}`;
    const p = D.positions.find((x) => x.id === pid);
    const isNew = id === "new";
    const a = isNew ? { emp: "" } : D.assignments.find((x) => x.id === id && x.pos === pid);
    if (!p || !a) return notFound("割当が見つかりません", p ? back : "#/company/edit");
    const taken = assignsOf(pid).filter((x) => x.id !== id).map((x) => x.emp);
    const opts = D.employees.filter((e) => !taken.includes(e.no)).map((e) => [e.no, `${e.name}（${e.site}・${e.type}）`]);
    if (!opts.length) return `${backLink(back, "役職に戻る")}<section class="card">${emptyState("割り当てられる従業員がいません", "すべての従業員がこの役職に割り当て済みです。")}</section>`;
    return `${backLink(back, "役職に戻る")}
      <form class="card form" id="edit-form" data-kind="assign" data-id="${id}" data-pid="${pid}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        <dl><div class="kv"><dt>役職</dt><dd>${esc(p.name)}</dd></div></dl>
        ${fieldRow({ id: "emp", label: "担当者", kind: "select", options: opts, value: a.emp })}
        ${isNew ? "" : metaHtml(a)}
        <div class="form-actions">${isNew ? "" : '<button class="btn btn-danger" type="button" id="del-btn">割当を解除</button>'}<button class="btn btn-primary" type="submit">${isNew ? "割り当てる" : "保存"}</button></div>
      </form>`;
  }

  /* ---------- departments: tree structure / selection frame / kind editing ---------- */
  const deptById = (id) => D.departments.find((d) => d.id === id);
  const kindById = (id) => D.deptKinds.find((k) => k.id === id);
  const deptChildren = (pid) => D.departments.filter((d) => d.parent === pid);
  const deptDescendants = (id) => deptChildren(id).flatMap((c) => [c.id, ...deptDescendants(c.id)]);
  const deptWalk = (pid = null, depth = 0) => deptChildren(pid).flatMap((d) => [{ d, depth }, ...deptWalk(d.id, depth + 1)]);
  const deptView = { open: new Set(["d3", "d8"]), loaded: new Set(["d3", "d8"]), loading: new Set() };
  let deptDraft = null; // unsaved name / parent kept while visiting the kind pages
  const deptKindIds = (id) => (id === "new" ? (deptDraft?.id === "new" ? deptDraft.kinds ?? [] : []) : deptById(id)?.kinds ?? []);
  const setDeptKinds = (id, ks) => {
    if (id === "new") deptDraft = { ...(deptDraft?.id === "new" ? deptDraft : { id: "new", name: "", parent: null }), kinds: ks };
    else { const d = deptById(id); d.kinds = ks; d.updatedBy = D.user.name; d.updatedAt = TODAY; }
  };
  const deptTags = (d) => {
    const ks = d.kinds.map(kindById).filter(Boolean);
    return ks.length ? ks.map((k) => chip(esc(k.name))).join("") : `<span class="muted tag-none">区分なし</span>`;
  };
  /* visible rows only: children of a collapsed parent are not rendered (and, until first opened, not "loaded") */
  const deptVisible = (pid = null, depth = 0) => deptChildren(pid).flatMap((d) => {
    const out = [{ d, depth }];
    if (deptView.open.has(d.id)) out.push(...(deptView.loading.has(d.id) ? [{ loading: true, depth: depth + 1 }] : deptVisible(d.id, depth + 1)));
    return out;
  });
  function deptRow(it, editMode) {
    if (it.loading) return `<li class="trow skeleton" role="status" style="--depth:${it.depth}"><span class="skel-bar" aria-hidden="true"></span><span class="muted">読み込み中…</span></li>`;
    const { d, depth } = it;
    const n = deptChildren(d.id).length;
    const open = deptView.open.has(d.id);
    const toggle = n
      ? `<button class="tree-toggle" type="button" data-toggle="${d.id}" aria-expanded="${open}" aria-label="${esc(d.name)}を${open ? "縮小" : "展開"}">${icon("chevron")}</button>`
      : `<span class="tree-spacer" aria-hidden="true"></span>`;
    const handle = editMode ? `<button class="drag-handle" type="button" data-drag="${d.id}" aria-label="${esc(d.name)}をドラッグして親を付け替え（キーボードやタッチでは「親を変更」を使用）">${icon("grip")}</button>` : "";
    const name = editMode ? `<a class="cell-link" href="#/departments/${d.id}">${esc(d.name)}</a>` : `<span class="tree-name">${esc(d.name)}</span>`;
    return `<li class="trow" role="treeitem" aria-level="${depth + 1}" ${n ? `aria-expanded="${open}"` : ""} ${editMode ? `data-drop="${d.id}"` : ""} style="--depth:${depth}">
      ${handle}${toggle}<span class="tree-main"><span class="muted od-nowrap tree-code">${esc(d.code ?? "")}</span> ${name}</span><span class="tree-tags">${deptTags(d)}</span>${n ? `<span class="chip mute od-nowrap">配下 ${n}</span>` : ""}${editMode ? `<button class="btn tree-act" type="button" data-reparent="${d.id}">親を変更</button>` : ""}</li>`;
  }
  function deptScreen(editMode) {
    const rows = deptVisible();
    return `${backLink(editMode ? "#/departments" : "#/company", editMode ? "閲覧に戻る" : "会社情報に戻る")}${flashHtml()}
      <section class="card tbl-card" aria-labelledby="h-dept">
        <div class="sec-head tbl-head"><h2 class="sec-title" id="h-dept">部署のツリー</h2>${editMode ? `<a class="btn" href="#/departments/new">${icon("plus")}<span>部署を追加</span></a>` : editLink("#/departments/edit", "部署")}</div>
        <p class="tbl-note">全${D.departments.length}部署${editMode ? "。ハンドルをドラッグして親にしたい行へ重ねると付け替えられます。ドラッグできないときは「親を変更」を使ってください。部署名を選ぶと編集できます。" : "。"}</p>
        ${editMode ? `<div class="root-drop" data-drop="root">最上位にする場合は、ここにドロップ</div>` : ""}
        ${rows.length ? `<ul class="tree" role="tree" aria-label="部署のツリー">${rows.map((it) => deptRow(it, editMode)).join("")}</ul>` : emptyState("部署がありません", "「部署を追加」から登録してください。")}
      </section>`;
  }
  function moveDept(d, target) {
    d.parent = target;
    d.updatedBy = D.user.name;
    d.updatedAt = TODAY;
    if (target) { deptView.open.add(target); deptView.loaded.add(target); }
    flash = `「${d.name}」を「${target ? deptById(target).name : "最上位"}」の配下に移しました。`;
    render();
  }
  /* selection frame: no title bar / sidebar, pick one department */
  function openDeptPicker(trigger, d) {
    const banned = new Set([d.id, ...deptDescendants(d.id)]);
    const item = (id, label, depth, note, off) => `<button class="pick-item" type="button" data-pick="${id}" style="--depth:${depth}" ${off ? "disabled" : ""}><span>${esc(label)}</span>${note ? `<span class="note">${note}</span>` : ""}</button>`;
    const items = item("root", "最上位（親なし）", 0, d.parent === null ? "現在の親" : "", d.parent === null) +
      deptWalk().map(({ d: x, depth }) => item(x.id, x.name, depth + 1, x.id === d.parent ? "現在の親" : banned.has(x.id) ? "移動できません" : "", x.id === d.parent || banned.has(x.id))).join("");
    showSheet(trigger, {
      chip: chip("選択", "org"), title: `「${d.name}」の親部署を選ぶ`, rows: [],
      extra: `<div class="pick-list" role="group" aria-label="親部署">${items}</div>`,
      onMount: (root) => root.querySelectorAll("[data-pick]").forEach((b) => b.addEventListener("click", () => {
        closeSheet(false);
        moveDept(d, b.dataset.pick === "root" ? null : b.dataset.pick);
      })),
    });
  }

  function deptEditScreen(id) {
    const isNew = id === "new";
    const d = isNew ? { id: "new", code: "", name: "", reading: "", office: "", parent: null, kinds: [], updatedBy: "", updatedAt: "" } : deptById(id);
    if (!d) return notFound("部署が見つかりません", "#/departments/edit");
    const v = deptDraft && deptDraft.id === id ? { ...d, ...deptDraft } : d;
    const banned = new Set(isNew ? [] : [id, ...deptDescendants(id)]);
    const parentOpts = deptWalk().filter(({ d: x }) => !banned.has(x.id)).map(({ d: x, depth }) => [x.id, `${"　".repeat(depth)}${x.name}`]);
    const taken = D.departments.filter((x) => x.id !== id).map((x) => x.name);
    const hasChild = !isNew && deptChildren(id).length > 0;
    const ks = (isNew ? v.kinds ?? [] : d.kinds).map(kindById).filter(Boolean);
    const kinds = `<div class="field-row"><span class="label-like" id="kind-lbl">部署区分</span>
          <ul class="tags" aria-labelledby="kind-lbl">${ks.map((k) => `<li class="tag"><span>${esc(k.name)}</span><button class="tag-x" type="button" data-untag="${k.id}" aria-label="${esc(k.name)}を外す">${icon("close")}</button></li>`).join("") || '<li class="muted">区分は選ばれていません</li>'}</ul>
          <a class="btn kind-link" href="#/departments/${id}/kind" data-keep>${icon("pencil")}<span>区分を選択・編集</span></a></div>`;
    return `${backLink("#/departments/edit", "一覧に戻る")}${flashHtml()}
      <form class="card form" id="edit-form" data-kind="department" data-id="${id}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${fieldRow({ id: "code", label: "組織コード", max: 10, value: v.code ?? "", taken: D.departments.filter((x) => x.id !== id).map((x) => x.code) })}
        ${fieldRow({ id: "name", label: "組織名称", max: 30, value: v.name, taken })}
        ${fieldRow({ id: "reading", label: "読み", max: 60, req: false, value: v.reading ?? "" })}
        ${fieldRow({ id: "office", label: "事業所", kind: "select", req: false, blank: "指定なし", options: D.sites.map((x) => [x.id, x.name]), value: v.office ?? "" })}
        ${fieldRow({ id: "parent", label: "親部署", kind: "select", req: false, blank: "最上位（親なし）", options: parentOpts, value: v.parent ?? "" })}
        ${kinds}
        ${isNew ? "" : metaHtml(d)}
        ${hasChild ? `<p class="note" id="del-note">配下に部署があるため削除できません。先に配下の部署を移すか削除してください。</p>` : ""}
        <div class="form-actions">${isNew ? "" : `<button class="btn btn-danger" type="button" id="del-btn" ${hasChild ? 'disabled aria-describedby="del-note"' : ""}>削除</button>`}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>`;
  }

  const draftDept = (id) => (id === "new" ? { id: "new", name: (deptDraft?.id === "new" && deptDraft.name) || "新しい部署", kinds: deptKindIds("new") } : deptById(id));
  function deptKindScreen(id) {
    const d = draftDept(id);
    if (!d) return notFound("部署が見つかりません", "#/departments/edit");
    const rows = D.deptKinds.map((k) => {
      const used = D.departments.filter((x) => x.kinds.includes(k.id)).length;
      return `<li class="kind-row"><label class="kind-pick"><input type="checkbox" data-kind-pick="${k.id}" ${d.kinds.includes(k.id) ? "checked" : ""}><span class="kind-text"><span class="rowi-name">${esc(k.name)}</span><span class="rowi-sub">${used}部署で使用中</span></span></label><a class="btn" href="#/departments/${id}/kind/${k.id}" aria-label="${esc(k.name)}を変更">変更</a></li>`;
    }).join("");
    return `${backLink(`#/departments/${id}`, "部署に戻る")}${flashHtml()}
      <section aria-labelledby="h-kinds">
        <div class="sec-head"><h2 class="sec-title" id="h-kinds">「${esc(d.name)}」に付ける区分</h2><a class="btn" href="#/departments/${id}/kind/new">${icon("plus")}<span>区分を追加</span></a></div>
        <p class="tbl-note-out">チェックを付けると、この部署に区分が付きます。区分の名称は「変更」から編集できます。</p>
        <div class="card list-card">${rows ? `<ul class="kind-list">${rows}</ul>` : emptyState("区分がありません", "「区分を追加」から登録してください。")}</div>
      </section>`;
  }
  function deptKindEditScreen(did, kid) {
    const d = draftDept(did);
    if (!d) return notFound("部署が見つかりません", "#/departments/edit");
    const back = `#/departments/${did}/kind`;
    const isNew = kid === "new";
    const k = isNew ? { name: "" } : kindById(kid);
    if (!k) return notFound("区分が見つかりません", back);
    const used = isNew ? 0 : D.departments.filter((x) => x.kinds.includes(kid)).length;
    return `${backLink(back, "区分の選択に戻る")}
      <form class="card form" id="edit-form" data-kind="deptkind" data-id="${kid}" data-pid="${did}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${fieldRow({ id: "name", label: "区分名", max: 12, value: k.name, taken: D.deptKinds.filter((x) => x.id !== kid).map((x) => x.name) })}
        ${isNew ? `<p class="note">追加すると「${esc(d.name)}」にも付きます。</p>` : `${metaHtml(k)}<p class="note">${used}部署で使用中です。削除すると、すべての部署から外れます。</p>`}
        <div class="form-actions">${isNew ? "" : '<button class="btn btn-danger" type="button" id="del-btn">削除</button>'}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>`;
  }

  /* ---------- staff: table structure + edit structures (capabilities / licenses) ---------- */
  const STAFF_TYPES = ["社員", "パート", "派遣"];
  const LEVELS = ["見習い", "一人で作業可", "他者の指導可"];
  const LEVEL_ICON = { "見習い": "pencil", "一人で作業可": "check", "他者の指導可": "star" };
  const COLL = { caps: "capabilities", lics: "licenses" };
  const TODAY_ISO = "2026-10-19";
  const STAFF_COLS = [
    { key: "no", label: "担当者コード" },
    { key: "name", label: "名前", fixed: true },
    { key: "reading", label: "読み" },
    { key: "site", label: "所属事業所" },
    { key: "type", label: "区分" },
    { key: "dept", label: "部署" },
    { key: "caps", label: "力量", num: true },
    { key: "lics", label: "資格", num: true },
    { key: "updatedBy", label: "更新者" },
    { key: "updatedAt", label: "更新日" },
  ];
  const staffView = { sort: { key: null, dir: 1 }, q: "", type: "すべて", aff: "すべて", hidden: new Set(["updatedBy", "updatedAt"]), colsOpen: false };
  let staffDraft = null; // unsaved staff form (and, for a new person, its capabilities / licenses)
  let tmpSeq = 0;
  const fmtDate = (iso) => { const m = String(iso).match(/^(\d+)-(\d+)-(\d+)$/); return m ? `${+m[1]}年${+m[2]}月${+m[3]}日` : "―"; };
  const deptName = (id) => deptById(id)?.name ?? "未所属";
  const staffItems = (kind, sid) => (sid === "new" ? (staffDraft?.id === "new" ? staffDraft[kind] ?? [] : []) : D[COLL[kind]].filter((x) => x.staff === sid));
  const staffVal = (e, key) => (key === "dept" ? deptName(e.dept) : key === "caps" || key === "lics" ? staffItems(key, e.id).length : e[key]);
  const staffCmp = (key) => (a, b) => {
    if (key === "updatedAt") return dateNum(a.updatedAt) - dateNum(b.updatedAt);
    const x = staffVal(a, key), y = staffVal(b, key);
    return typeof x === "number" ? x - y : String(x).localeCompare(String(y), "ja", { numeric: true });
  };
  const staffRows = () => {
    const v = staffView;
    let list = D.employees.filter((e) => (v.type === "すべて" || e.type === v.type) && (v.aff === "すべて" || e.site === v.aff) && (!v.q || (e.name + e.no + (e.reading ?? "")).includes(v.q)));
    if (v.sort.key) list = [...list].sort((a, b) => v.sort.dir * staffCmp(v.sort.key)(a, b));
    return list;
  };
  function staffTableHtml(editMode) {
    const v = staffView;
    const cols = STAFF_COLS.filter((c) => c.fixed || !v.hidden.has(c.key));
    const list = staffRows();
    const head = cols.map((c) => {
      const on = v.sort.key === c.key;
      const aria = on ? (v.sort.dir === 1 ? "ascending" : "descending") : "none";
      const ic = on ? (v.sort.dir === 1 ? "sortAsc" : "sortDesc") : "sort";
      return `<th scope="col" aria-sort="${aria}" class="${c.num ? "num" : ""}"><button class="th-sort" type="button" data-sort="${c.key}">${c.label}${icon(ic)}</button></th>`;
    }).join("");
    const cell = (e, c) => {
      const lab = `data-label="${c.label}"`;
      if (c.key === "name") return `<th scope="row" ${lab} class="od-nowrap">${editMode ? `<a class="cell-link" href="#/staff/${e.id}" aria-label="${esc(e.name)}を編集">${esc(e.name)}</a>` : esc(e.name)}</th>`;
      if (c.key === "type") return `<td ${lab}>${typeBadge(e.type)}</td>`;
      if (c.key === "caps" || c.key === "lics") return `<td ${lab} class="num od-nowrap">${staffVal(e, c.key)}件</td>`;
      if (c.key === "updatedAt" || c.key === "no") return `<td ${lab} class="od-nowrap">${esc(e[c.key])}</td>`;
      return `<td ${lab}>${esc(staffVal(e, c.key))}</td>`;
    };
    const rows = list.map((e) => `<tr ${editMode ? `class="row-link" data-href="#/staff/${e.id}"` : ""}>${cols.map((c) => cell(e, c)).join("")}</tr>`).join("");
    const h = D.headcount;
    const total = h.employee + h.part + h.dispatch;
    const body = list.length
      ? `<div class="tbl-wrap"><table class="tbl"><caption class="sr-only">作業者の一覧テーブル</caption><thead><tr>${head}</tr></thead><tbody>${rows}</tbody></table></div>`
      : emptyState("該当する作業者がいません", "検索語を変えるか、絞り込みを「すべて」に戻してください。");
    return `<p class="tbl-note">全${fmt(total)}名（社員 ${fmt(h.employee)}・パート ${fmt(h.part)}・派遣 ${fmt(h.dispatch)}）のうち、サンプルとして${D.employees.length}名を登録しています。${list.length}件を表示${editMode ? "。行を選ぶと作業者情報を編集できます。" : "。"}</p>${body}`;
  }
  function staffScreen(editMode) {
    const v = staffView;
    const vis = STAFF_COLS.filter((c) => c.fixed || !v.hidden.has(c.key));
    const sortOpts = [`<option value="">指定なし</option>`].concat(vis.flatMap((c) =>
      [1, -1].map((d) => `<option value="${c.key}:${d}" ${v.sort.key === c.key && v.sort.dir === d ? "selected" : ""}>${c.label}（${d === 1 ? "昇順" : "降順"}）</option>`))).join("");
    const colOpts = STAFF_COLS.map((c) => `<label class="col-opt"><input type="checkbox" data-col="${c.key}" ${c.fixed || !v.hidden.has(c.key) ? "checked" : ""} ${c.fixed ? "disabled" : ""}>${c.label}</label>`).join("");
    const affOpts = ["すべて", ...D.sites.map((s) => s.name)].map((n) => `<option value="${esc(n)}" ${n === v.aff ? "selected" : ""}>${esc(n)}</option>`).join("");
    return `${backLink(editMode ? "#/staff" : "#/company", editMode ? "閲覧に戻る" : "会社情報に戻る")}${flashHtml()}
      <section class="card cust-tools" aria-label="検索と絞り込み">
        <div class="field-row"><label for="tbl-q">作業者を検索</label>
          <div class="search-box">${icon("search")}<input id="tbl-q" type="search" value="${esc(v.q)}" placeholder="名前・読み・担当者コード" autocomplete="off"></div></div>
        ${filterBar("区分", "tbl", ["すべて", ...STAFF_TYPES], v.type)}
        <div class="field-row"><label for="tbl-aff">所属事業所</label><select id="tbl-aff">${affOpts}</select></div>
        <div class="field-row sort-select"><label for="tbl-sort">並べ替え</label><select id="tbl-sort">${sortOpts}</select></div>
        <details class="col-menu" ${v.colsOpen ? "open" : ""}><summary class="btn">表示する列</summary><div class="col-list">${colOpts}</div></details>
      </section>
      <section class="card tbl-card" aria-labelledby="h-staff">
        <div class="sec-head tbl-head"><h2 class="sec-title" id="h-staff">作業者の一覧</h2>${editMode ? `<a class="btn" href="#/staff/new">${icon("plus")}<span>作業者を追加</span></a>` : editLink("#/staff/edit", "作業者")}</div>
        <div id="tbl-table">${staffTableHtml(editMode)}</div>
      </section>`;
  }

  const licStatus = (iso) => {
    if (!iso) return chip("期限なし", "check", "mute");
    const days = Math.round((new Date(iso) - new Date(TODAY_ISO)) / 86400000);
    if (days < 0) return chip("期限切れ", "alert", "bad");
    if (days <= 90) return chip(`あと${days}日`, "alert", "warn");
    return chip(`有効（${fmtDate(iso)}まで）`, "check", "ok");
  };
  function staffEditScreen(id) {
    const isNew = id === "new";
    const s = isNew ? { id: "new", no: "", name: "", reading: "", sex: "", phone: "", private_phone: "", remarks: "", site: "", type: "", dept: "" } : D.employees.find((x) => x.id === id);
    if (!s) return notFound("作業者が見つかりません", "#/staff/edit");
    const v = staffDraft?.id === id ? { ...s, ...staffDraft } : s;
    const deptOpts = deptWalk().map(({ d, depth }) => [d.id, `${"　".repeat(depth)}${d.name}`]);
    const held = assignsHeldBy(id);
    const caps = staffItems("caps", id).map((c) => rowItem(`href="#/staff/${id}/capability/${c.id}" data-keep`, c.name, c.level, chip(c.level, LEVEL_ICON[c.level], c.level === "見習い" ? "mute" : ""), "a")).join("");
    const lics = staffItems("lics", id).map((l) => rowItem(`href="#/staff/${id}/license/${l.id}" data-keep`, l.name, `適用開始 ${fmtDate(l.acquired)}`, licStatus(l.expires), "a")).join("");
    return `${backLink("#/staff/edit", "一覧に戻る")}${flashHtml()}
      <form class="card form" id="edit-form" data-kind="staff" data-id="${id}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${isNew
          ? fieldRow({ id: "no", label: "担当者コード", max: 10, value: v.no, taken: D.employees.map((e) => e.no) })
          : `<dl><div class="kv"><dt>担当者コード（変更できません）</dt><dd class="od-nowrap">${esc(s.no)}</dd></div></dl>`}
        ${fieldRow({ id: "name", label: "名前", max: 30, value: v.name })}
        ${fieldRow({ id: "reading", label: "読み", max: 60, req: false, value: v.reading ?? "" })}
        ${fieldRow({ id: "sex", label: "性別", kind: "select", req: false, blank: "未設定", options: ["男性", "女性", "その他"].map((x) => [x, x]), value: v.sex ?? "" })}
        ${fieldRow({ id: "phone", label: "電話", max: 30, req: false, value: v.phone ?? "" })}
        ${fieldRow({ id: "private_phone", label: "緊急電話", max: 30, req: false, value: v.private_phone ?? "" })}
        ${fieldRow({ id: "site", label: "所属事業所", kind: "select", options: D.sites.map((x) => [x.name, x.name]), value: v.site })}
        ${fieldRow({ id: "type", label: "区分", kind: "select", options: STAFF_TYPES.map((t) => [t, t]), value: v.type })}
        ${fieldRow({ id: "dept", label: "部署", kind: "select", req: false, blank: "未所属", options: deptOpts, value: v.dept ?? "" })}
        ${fieldRow({ id: "remarks", label: "備考", kind: "textarea", max: 1024, req: false, value: v.remarks ?? "" })}
        ${isNew ? "" : metaHtml(s)}
        ${held.length ? `<p class="note" id="del-note">役職「${esc(held.join("、"))}」に割り当てられているため削除できません。先に割当を解除してください。</p>` : ""}
        <div class="form-actions">${isNew ? "" : `<button class="btn btn-danger" type="button" id="del-btn" ${held.length ? 'disabled aria-describedby="del-note"' : ""}>削除</button>`}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>
      <section aria-labelledby="h-cap">
        ${sectionHead("h-cap", "力量", `#/staff/${id}/capability/new`, "力量を追加", "data-keep")}
        <div class="card list-card">${caps || emptyState("力量が登録されていません", "「力量を追加」から登録してください。")}</div>
      </section>
      <section aria-labelledby="h-lic">
        ${sectionHead("h-lic", "資格", `#/staff/${id}/license/new`, "資格を追加", "data-keep")}
        <div class="card list-card">${lics || emptyState("資格が登録されていません", "「資格を追加」から登録してください。")}</div>
      </section>`;
  }
  const assignsHeldBy = (no) => D.assignments.filter((a) => a.emp === no).map((a) => D.positions.find((p) => p.id === a.pos)?.name).filter(Boolean);
  function capEditScreen(sid, cid) {
    const back = `#/staff/${sid}`;
    const owner = sid === "new" ? { name: staffDraft?.id === "new" && staffDraft.name ? staffDraft.name : "新しい作業者" } : D.employees.find((x) => x.id === sid);
    if (!owner) return notFound("作業者が見つかりません", "#/staff/edit");
    const isNew = cid === "new";
    const c = isNew ? { item: "", name: "", level: "" } : staffItems("caps", sid).find((x) => x.id === cid);
    if (!c) return notFound("力量が見つかりません", back);
    return `${backLink(back, "作業者に戻る")}
      <form class="card form" id="edit-form" data-kind="cap" data-id="${cid}" data-pid="${sid}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        <dl><div class="kv"><dt>担当者</dt><dd>${esc(owner.name)}</dd></div></dl>
        ${fieldRow({ id: "item", label: "力量", kind: "select", options: D.capItems.map((x) => [x.id, x.name]), value: c.item, taken: staffItems("caps", sid).filter((x) => x.id !== cid).map((x) => x.item) })}
        ${fieldRow({ id: "level", label: "値（習熟度）", kind: "select", options: LEVELS.map((l) => [l, l]), value: c.level })}
        ${isNew ? "" : metaHtml(c)}
        <div class="form-actions">${isNew ? "" : '<button class="btn btn-danger" type="button" id="del-btn">削除</button>'}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>`;
  }
  function licEditScreen(sid, lid) {
    const back = `#/staff/${sid}`;
    const owner = sid === "new" ? { name: staffDraft?.id === "new" && staffDraft.name ? staffDraft.name : "新しい作業者" } : D.employees.find((x) => x.id === sid);
    if (!owner) return notFound("作業者が見つかりません", "#/staff/edit");
    const isNew = lid === "new";
    const l = isNew ? { item: "", name: "", number: "", acquired: "", expires: "" } : staffItems("lics", sid).find((x) => x.id === lid);
    if (!l) return notFound("資格が見つかりません", back);
    return `${backLink(back, "作業者に戻る")}
      <form class="card form" id="edit-form" data-kind="lic" data-id="${lid}" data-pid="${sid}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        <dl><div class="kv"><dt>担当者</dt><dd>${esc(owner.name)}</dd></div></dl>
        ${fieldRow({ id: "item", label: "資格", kind: "select", options: D.licItems.map((x) => [x.id, x.name]), value: l.item, taken: staffItems("lics", sid).filter((x) => x.id !== lid).map((x) => x.item) })}
        
        ${fieldRow({ id: "acquired", label: "適用開始", kind: "date", value: l.acquired })}
        ${fieldRow({ id: "expires", label: "適用終了", kind: "date", req: false, value: l.expires, after: "acquired" })}
        ${isNew ? "" : metaHtml(l)}
        <div class="form-actions">${isNew ? "" : '<button class="btn btn-danger" type="button" id="del-btn">削除</button>'}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>`;
  }
  /* capabilities / licenses of a person; a person who is not saved yet keeps them in staffDraft */
  function putStaffItem(kind, sid, cid, v, stamp) {
    if (cid !== "new") { Object.assign(staffItems(kind, sid).find((x) => x.id === cid), v, stamp); return; }
    if (sid === "new") {
      staffDraft = { ...(staffDraft?.id === "new" ? staffDraft : { id: "new", no: "", name: "", site: "", type: "", dept: "" }), caps: staffItems("caps", "new"), lics: staffItems("lics", "new") };
      staffDraft[kind].push({ id: `t${++tmpSeq}`, ...v, ...stamp });
    } else D[COLL[kind]].push({ id: nextId(kind === "caps" ? "c" : "l", D[COLL[kind]]), staff: sid, ...v, ...stamp });
  }
  function removeStaffItem(kind, sid, cid) {
    if (sid === "new") staffDraft[kind] = staffDraft[kind].filter((x) => x.id !== cid);
    else D[COLL[kind]] = D[COLL[kind]].filter((x) => x.id !== cid);
  }

  /* ---------- generic table structure (used by the approval tables) ---------- */
  const TABLES = {}; // every makeTable() result, looked up by key from the DOM (data-tkey)
  function makeTable({ key, cols, hidden = [], list, search, placeholder = "", filter = null, sort = null, href = null, pick = null, nest = null, always = false, noun = "件", rowNote = null, linkAria = "を編集" }) {
    const view = { sort: sort ? { ...sort } : { key: null, dir: 1 }, q: "", type: "すべて", hidden: new Set(hidden), colsOpen: false, limit: null, only: null };
    const shown = () => cols.filter((c) => c.fixed || !view.hidden.has(c.key));
    const rows = () => {
      let l = list().filter((r) => (!view.only || r.id === view.only) && (!filter || view.type === "すべて" || filter.get(r) === view.type) && (!view.q || search(r).includes(view.q)));
      const c = cols.find((x) => x.key === view.sort.key);
      if (c) l = [...l].sort((a, b) => { const x = c.val(a), y = c.val(b); return view.sort.dir * (typeof x === "number" ? x - y : String(x).localeCompare(String(y), "ja", { numeric: true })); });
      return l;
    };
    const cellHtml = (c, r) => (c.html ? c.html(r) : esc(c.val(r)));
    const html = (editMode) => {
      const cs = shown();
      const all = rows();
      const cap = view.limit ?? SETTINGS.pageSize;
      const l = all.slice(0, cap);
      const head = cs.map((c) => {
        const on = view.sort.key === c.key;
        const aria = on ? (view.sort.dir === 1 ? "ascending" : "descending") : "none";
        const ic = on ? (view.sort.dir === 1 ? "sortAsc" : "sortDesc") : "sort";
        return `<th scope="col" aria-sort="${aria}" class="${c.num ? "num" : ""}"><button class="th-sort" type="button" data-sort="${c.key}">${c.label}${icon(ic)}</button></th>`;
      }).join("");
      const link = editMode && href;
      const sel = pick && !editMode ? pick.get() : null;
      const tg = (r) => (nest ? `<button class="tree-toggle nest-toggle" type="button" data-nesttoggle="${r.id}" aria-expanded="${!nest.closed.has(r.id)}" aria-label="${esc(String(cols.find((c) => c.fixed).val(r)))}の${nest.label}を${nest.closed.has(r.id) ? "開く" : "閉じる"}">${icon("chevron")}</button>` : "");
      const body = l.map((r) => `<tr class="${link ? "row-link" : ""} ${sel === r.id ? "is-selected" : ""}" ${link ? `data-href="${href(r)}"` : ""}>${cs.map((c) => {
        const lab = `data-label="${c.label}"`;
        if (c.fixed && pick && !editMode) return `<th scope="row" ${lab} class="od-keep">${tg(r)}<button class="cell-link pick-btn" type="button" data-pickrow="${r.id}" aria-pressed="${sel === r.id}">${cellHtml(c, r)}</button></th>`;
        if (c.fixed) return `<th scope="row" ${lab} class="od-keep">${tg(r)}${link ? `<a class="cell-link" href="${href(r)}" aria-label="${esc(String(c.val(r)))}${linkAria}">${cellHtml(c, r)}</a>` : cellHtml(c, r)}</th>`;
        return `<td ${lab} class="${c.num ? "num od-nowrap" : ""}">${cellHtml(c, r)}</td>`;
      }).join("")}</tr>${nest && !nest.closed.has(r.id) ? `<tr class="nest-row"><td colspan="${cs.length}">${nest.html(r, editMode)}</td></tr>` : ""}`).join("");
      const total = list().length;
      const table = l.length
        ? `<div class="tbl-wrap"><table class="tbl"><caption class="sr-only">一覧テーブル</caption><thead><tr>${head}</tr></thead><tbody>${body}</tbody></table></div>`
        : emptyState(total ? "該当するデータがありません" : "まだ登録されていません", total ? "検索語や絞り込みを変えてください。" : "「追加」ボタンから登録してください。");
      const more = all.length > l.length ? `<div class="form-actions"><button class="btn" type="button" data-more="${key}">さらに読み込む（残り${all.length - l.length}${noun}）</button></div>` : "";
      return `<p class="tbl-note">全${total}${noun}のうち${all.length === total ? "" : `条件に合う${all.length}${noun}から`}${l.length}${noun}を表示${link ? (rowNote ?? "。行を選ぶと編集できます。") : pick && !editMode ? "。名称を選ぶと、下に詳細を表示します。" : "。"}</p>${table}${more}`;
    };
    const toolbar = () => {
      const sortOpts = [`<option value="">指定なし</option>`].concat(shown().flatMap((c) =>
        [1, -1].map((d) => `<option value="${c.key}:${d}" ${view.sort.key === c.key && view.sort.dir === d ? "selected" : ""}>${c.label}（${d === 1 ? "昇順" : "降順"}）</option>`))).join("");
      const colOpts = cols.map((c) => `<label class="col-opt"><input type="checkbox" data-tcol="${c.key}" data-tkey="${key}" ${c.fixed || !view.hidden.has(c.key) ? "checked" : ""} ${c.fixed ? "disabled" : ""}>${c.label}</label>`).join("");
      return `<section class="card cust-tools" aria-label="検索と絞り込み">
        <div class="field-row"><label for="tq-${key}">検索</label>
          <div class="search-box">${icon("search")}<input id="tq-${key}" data-tq="${key}" type="search" value="${esc(view.q)}" placeholder="${placeholder}" autocomplete="off"></div></div>
        ${filter ? filterBar(filter.label, `t:${key}`, ["すべて", ...filter.values], view.type) : ""}
        <div class="field-row sort-select"><label for="ts-${key}">並べ替え</label><select id="ts-${key}" data-tsort="${key}">${sortOpts}</select></div>
        <details class="col-menu" data-tmenu="${key}" ${view.colsOpen ? "open" : ""}><summary class="btn">表示する列</summary><div class="col-list">${colOpts}</div></details>
      </section>`;
    };
    const T = { key, view, html, toolbar, always, pick, nest };
    TABLES[key] = T;
    return T;
  }
  const tableCard = (T, editMode, id, title, action) => `${T.toolbar()}
    <section class="card tbl-card" aria-labelledby="${id}">
      <div class="sec-head tbl-head"><h2 class="sec-title" id="${id}">${title}</h2>${action}</div>
      <div class="tbl-host" data-tkey="${T.key}" data-edit="${editMode ? 1 : 0}">${T.html(editMode)}</div>
    </section>`;

  /* ---------- approval: pattern -> scope (step / position / organization) -> approvers ---------- */
  const AP_KINDS = ["承認者", "代理承認者"];
  const posName = (id) => D.positions.find((p) => p.id === id)?.name ?? "（削除済みの役職）";
  const staffName = (no) => D.employees.find((e) => e.no === no)?.name ?? no;
  const scopeApprovers = (sid) => D.apApprovers.filter((m) => m.scope === sid);
  const routeIds = () => parseRoute();
  const dateCol = { key: "updatedAt", label: "更新日", val: (r) => dateNum(r.updatedAt), html: (r) => `<span class="od-nowrap">${esc(r.updatedAt)}</span>` };
  const byCol = { key: "updatedBy", label: "更新者", val: (r) => r.updatedBy };
  const patternT = makeTable({
    key: "apPattern",
    list: () => D.apPatterns, search: (r) => r.name + r.desc, placeholder: "パターン名・説明", hidden: ["updatedBy", "updatedAt"],
    href: (r) => `#/approval/${r.id}`,
    cols: [
      { key: "name", label: "パターン名称", fixed: true, val: (r) => r.name },
      { key: "reading", label: "読み", val: (r) => r.reading || "―" },
      { key: "desc", label: "備考", val: (r) => r.desc },
      { key: "scopes", label: "承認の範囲", num: true, val: (r) => D.apScopes.filter((s) => s.ap === r.id).length, html: (r) => `${D.apScopes.filter((s) => s.ap === r.id).length}件` },
      { key: "people", label: "承認できる人", num: true, val: (r) => D.apApprovers.filter((m) => D.apScopes.some((s) => s.id === m.scope && s.ap === r.id)).length, html: (r) => `${D.apApprovers.filter((m) => D.apScopes.some((s) => s.id === m.scope && s.ap === r.id)).length}名` },
      byCol, dateCol,
    ],
  });
  const scopeT = makeTable({
    key: "apScope",
    always: true, sort: { key: "step", dir: 1 },
    list: () => D.apScopes.filter((s) => s.ap === routeIds().id), search: (r) => posName(r.pos) + deptName(r.dept), placeholder: "役職・組織", hidden: ["updatedBy", "updatedAt"],
    href: (r) => `#/approval/${r.ap}/scope/${r.id}`,
    cols: [
      { key: "pos", label: "役職", fixed: true, val: (r) => posName(r.pos) },
      { key: "step", label: "段階", num: true, val: (r) => r.step, html: (r) => `第${r.step}段階` },
      { key: "dept", label: "対象の組織", val: (r) => deptName(r.dept) },
      { key: "incl", label: "配下の部署", val: (r) => (r.incl ? "含む" : "含まない") },
      { key: "people", label: "承認できる人", num: true, val: (r) => scopeApprovers(r.id).length, html: (r) => `${scopeApprovers(r.id).length}名` },
      byCol, dateCol,
    ],
  });
  const heldChip = (m) => (assignsHeldBy(m.staff).includes(posName(D.apScopes.find((s) => s.id === m.scope)?.pos)) ? chip("割当あり", "check", "ok") : chip("割当なし", "alert", "warn"));
  const approverT = makeTable({
    key: "apApprover",
    always: true, noun: "名",
    list: () => scopeApprovers(routeIds().id), search: (r) => staffName(r.staff) + r.staff, placeholder: "名前・担当者コード", hidden: ["updatedBy", "updatedAt"],
    filter: { label: "種別", values: AP_KINDS, get: (r) => r.kind },
    href: (r) => { const s = D.apScopes.find((x) => x.id === r.scope); return `#/approval/${s.ap}/scope/${s.id}/approver/${r.id}`; },
    cols: [
      { key: "staff", label: "名前", fixed: true, val: (r) => staffName(r.staff) },
      { key: "no", label: "担当者コード", val: (r) => r.staff, html: (r) => `<span class="od-nowrap">${esc(r.staff)}</span>` },
      { key: "kind", label: "種別", val: (r) => r.kind, html: (r) => chip(r.kind, r.kind === "承認者" ? "check" : "users", r.kind === "承認者" ? "" : "line") },
      { key: "period", label: "有効期間", val: (r) => r.from, html: (r) => `<span class="od-nowrap">${fmtDate(r.from)}〜${r.to ? fmtDate(r.to) : "期限なし"}</span>` },
      { key: "held", label: "役職の割当", val: (r) => (assignsHeldBy(r.staff).includes(posName(D.apScopes.find((s) => s.id === r.scope)?.pos)) ? "割当あり" : "割当なし"), html: heldChip },
      byCol, dateCol,
    ],
  });
  const tableFor = (r) => (r.startsWith("staff") ? { view: staffView, html: staffTableHtml } : { view: siteView, html: siteTableHtml });

  function approvalScreen(editMode) {
    return `${backLink(editMode ? "#/approval" : "#/company", editMode ? "閲覧に戻る" : "会社情報に戻る")}${flashHtml()}
      ${tableCard(patternT, editMode, "h-ap", "承認パターンの一覧", editMode ? `<a class="btn" href="#/approval/new">${icon("plus")}<span>パターンを追加</span></a>` : editLink("#/approval/edit", "承認パターン"))}`;
  }
  function patternEditScreen(id) {
    const isNew = id === "new";
    const p = isNew ? { name: "", desc: "" } : D.apPatterns.find((x) => x.id === id);
    if (!p) return notFound("承認パターンが見つかりません", "#/approval/edit");
    return `${backLink("#/approval/edit", "一覧に戻る")}${flashHtml()}
      <form class="card form" id="edit-form" data-kind="apPattern" data-id="${id}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${fieldRow({ id: "name", label: "パターン名称", max: 30, value: p.name, taken: D.apPatterns.filter((x) => x.id !== id).map((x) => x.name) })}
        ${fieldRow({ id: "reading", label: "読み", max: 60, req: false, value: p.reading ?? "" })}
        ${fieldRow({ id: "desc", label: "備考", kind: "textarea", max: 120, req: false, value: p.desc })}
        ${isNew ? "" : metaHtml(p)}
        <div class="form-actions">${isNew ? "" : '<button class="btn btn-danger" type="button" id="del-btn">削除</button>'}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>
      ${isNew ? `<p class="tbl-note-out">パターンを追加すると、続けて承認の範囲を登録できます。</p>`
        : tableCard(scopeT, true, "h-scope", "承認の範囲", `<a class="btn" href="#/approval/${id}/scope/new">${icon("plus")}<span>範囲を追加</span></a>`)}`;
  }
  function scopeEditScreen(pid, id) {
    const p = D.apPatterns.find((x) => x.id === pid);
    if (!p) return notFound("承認パターンが見つかりません", "#/approval/edit");
    const back = `#/approval/${pid}`;
    const isNew = id === "new";
    const s = isNew ? { step: "", pos: "", dept: "", incl: true } : D.apScopes.find((x) => x.id === id && x.ap === pid);
    if (!s) return notFound("承認の範囲が見つかりません", back);
    const takenSteps = D.apScopes.filter((x) => x.ap === pid && x.id !== id).map((x) => String(x.step));
    return `${backLink(back, "パターンに戻る")}${flashHtml()}
      <form class="card form" id="edit-form" data-kind="apScope" data-id="${id}" data-pid="${pid}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        <dl><div class="kv"><dt>承認パターン</dt><dd>${esc(p.name)}</dd></div></dl>
        ${fieldRow({ id: "step", label: "段階", kind: "select", options: [1, 2, 3, 4, 5, 6, 7, 8, 9].map((n) => [String(n), `第${n}段階`]), value: String(s.step), taken: takenSteps })}
        ${fieldRow({ id: "pos", label: "承認する役職", kind: "select", options: D.positions.map((x) => [x.id, x.name]), value: s.pos })}
        ${fieldRow({ id: "dept", label: "対象の組織", kind: "select", options: deptWalk().map(({ d, depth }) => [d.id, `${"　".repeat(depth)}${d.name}`]), value: s.dept })}
        ${fieldRow({ id: "incl", label: "配下の部署", kind: "select", options: [["yes", "含む"], ["no", "含まない"]], value: s.incl ? "yes" : "no" })}
        ${isNew ? "" : metaHtml(s)}
        <div class="form-actions">${isNew ? "" : '<button class="btn btn-danger" type="button" id="del-btn">削除</button>'}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>
      ${isNew ? `<p class="tbl-note-out">範囲を追加すると、続けて承認できる人を登録できます。</p>`
        : tableCard(approverT, true, "h-appr", "この範囲で承認できる人", `<a class="btn" href="#/approval/${pid}/scope/${id}/approver/new">${icon("plus")}<span>承認できる人を追加</span></a>`)}`;
  }
  function approverEditScreen(pid, sid, id) {
    const s = D.apScopes.find((x) => x.id === sid && x.ap === pid);
    if (!s) return notFound("承認の範囲が見つかりません", `#/approval/${pid}`);
    const back = `#/approval/${pid}/scope/${sid}`;
    const isNew = id === "new";
    const m = isNew ? { staff: "", kind: "", from: "", to: "" } : D.apApprovers.find((x) => x.id === id && x.scope === sid);
    if (!m) return notFound("承認できる人が見つかりません", back);
    const taken = D.apApprovers.filter((x) => x.scope === sid && x.id !== id).map((x) => x.staff);
    return `${backLink(back, "承認の範囲に戻る")}
      <form class="card form" id="edit-form" data-kind="apApprover" data-id="${id}" data-pid="${pid}" data-sid="${sid}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        <dl><div class="kv"><dt>承認の範囲</dt><dd>${esc(posName(s.pos))}／${esc(deptName(s.dept))}（第${s.step}段階）</dd></div></dl>
        ${fieldRow({ id: "staff", label: "担当者", kind: "select", options: D.employees.map((e) => [e.no, `${e.name}（${e.no}）`]), value: m.staff, taken })}
        ${fieldRow({ id: "kind", label: "種別", kind: "select", options: AP_KINDS.map((k) => [k, k]), value: m.kind })}
        ${fieldRow({ id: "from", label: "有効開始日", kind: "date", value: m.from })}
        ${fieldRow({ id: "to", label: "有効終了日", kind: "date", req: false, value: m.to, after: "from" })}
        ${isNew ? "" : metaHtml(m)}
        <div class="form-actions">${isNew ? "" : '<button class="btn btn-danger" type="button" id="del-btn">削除</button>'}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>`;
  }

  /* ---------- company: 承認パターン（パターン名の一覧 → 承認順の編集）。承認順は apScopes.step で持つ ---------- */
  const coAp = { pid: null, sel: new Set(), pick: new Set() }; // 行の選択と役職の選択は、同じパターンの画面のあいだだけ保つ
  const COAP_DEL = 88; // モバイルのスワイプで現れる削除ボタンの幅(px)
  const apSteps = (pid) => D.apScopes.filter((s) => s.ap === pid).sort((a, b) => a.step - b.step);
  const apIncluded = (pid) => new Set(apSteps(pid).map((s) => s.pos));
  const coApRenumber = (arr) => arr.forEach((s, i) => { if (s.step !== i + 1) { s.step = i + 1; s.updatedBy = D.user.name; s.updatedAt = TODAY; } });
  const coApMove = (pid, sid, to) => {
    const arr = apSteps(pid);
    const [it] = arr.splice(arr.findIndex((s) => s.id === sid), 1);
    arr.splice(to, 0, it);
    coApRenumber(arr);
  };
  const coApT = makeTable({
    key: "coAp",
    list: () => D.apPatterns, search: (r) => r.name + (r.reading ?? "") + (r.desc ?? ""), placeholder: "パターン名・読み", hidden: ["updatedBy", "updatedAt", "desc"],
    href: (r) => `#/company/approval/${r.id}`,
    cols: [
      { key: "name", label: "パターン名称", fixed: true, val: (r) => r.name },
      { key: "reading", label: "読み", val: (r) => r.reading || "―" },
      { key: "chain", label: "承認の流れ", val: (r) => apSteps(r.id).map((s) => posName(s.pos)).join(" → ") || "未登録" },
      { key: "count", label: "段階数", num: true, val: (r) => apSteps(r.id).length, html: (r) => `${apSteps(r.id).length}段階` },
      { key: "desc", label: "備考", val: (r) => r.desc },
      byCol, dateCol,
    ],
  });
  function coApListScreen() {
    return `${backLink("#/company", "会社情報に戻る")}${flashHtml()}
      ${tableCard(coApT, true, "h-coap", "承認パターンの一覧", `<a class="btn" href="#/company/approval/new">${icon("plus")}<span>パターンを追加</span></a>`)}`;
  }
  function coApPatternScreen(id) {
    const isNew = id === "new";
    const p = isNew ? { name: "", reading: "", desc: "" } : D.apPatterns.find((x) => x.id === id);
    if (!p) return notFound("承認パターンが見つかりません", "#/company/approval");
    if (coAp.pid !== id) { coAp.pid = id; coAp.sel = new Set(); }
    return `${backLink("#/company/approval", "パターン一覧に戻る")}${flashHtml()}
      <form class="card form" id="edit-form" data-kind="coApPattern" data-id="${id}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${fieldRow({ id: "name", label: "パターン名称", max: 30, value: p.name, taken: D.apPatterns.filter((x) => x.id !== id).map((x) => x.name) })}
        ${fieldRow({ id: "reading", label: "読み", max: 60, req: false, value: p.reading ?? "" })}
        ${fieldRow({ id: "desc", label: "備考", kind: "textarea", max: 120, req: false, value: p.desc ?? "" })}
        ${isNew ? "" : metaHtml(p)}
        <div class="form-actions">${isNew ? "" : '<button class="btn btn-danger" type="button" id="del-btn">削除</button>'}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>
      ${isNew ? `<p class="tbl-note-out">パターンを追加すると、続けて役職の承認順を登録できます。</p>` : coApOrderSection(id)}`;
  }
  /* 承認順の表。上から 1, 2, … の順。行の選択・先頭/最後/選択行の後への追加・ドラッグ（PC/タブレット/モバイル共通）・モバイルはスワイプで削除 */
  function coApOrderSection(pid) {
    const steps = apSteps(pid);
    const ids = new Set(steps.map((s) => s.id));
    const picked = [...coAp.sel].filter((x) => ids.has(x));
    const single = picked.length === 1 ? picked[0] : null;
    const btn = (href, label, cls = "") => href
      ? `<a class="btn ${cls}" href="${href}">${icon("plus")}<span>${label}</span></a>`
      : `<span class="btn" aria-disabled="true">${icon("plus")}<span>${label}</span></span>`;
    const rows = steps.map((s, i) => {
      const nm = posName(s.pos);
      return `<div class="ap-row${coAp.sel.has(s.id) ? " is-selected" : ""}" data-ap-row="${s.id}">
        <div class="ap-front ap-grid" role="row">
          <span class="ap-cell ap-check" role="cell"><input type="checkbox" data-ap-sel="${s.id}" ${coAp.sel.has(s.id) ? "checked" : ""} aria-label="${esc(nm)}を選択"></span>
          <span class="ap-cell ap-step" role="cell" data-label="承認順">${i + 1}</span>
          <span class="ap-cell ap-pos" role="cell" data-label="役職"><strong>${esc(nm)}</strong></span>
          <span class="ap-cell ap-dept" role="cell" data-label="対象の組織">${esc(deptName(s.dept))}</span>
          <span class="ap-cell ap-incl" role="cell" data-label="配下の部署">${s.incl ? "含む" : "含まない"}</span>
          <span class="ap-cell ap-grip" role="cell"><button class="ap-handle" type="button" data-ap-drag="${s.id}" aria-label="${esc(nm)}の承認順をドラッグで変更">⋮⋮</button></span>
        </div>${mobile ? `<button class="ap-del" type="button" data-ap-del="${s.id}" aria-label="${esc(nm)}を承認順から外す">削除</button>` : ""}
      </div>`;
    }).join("");
    const head = `<div class="ap-thead ap-grid" role="row">
        <span class="ap-cell ap-check" role="columnheader"><span class="sr-only">選択</span></span>
        <span class="ap-cell ap-step" role="columnheader">承認順</span>
        <span class="ap-cell" role="columnheader">役職</span>
        <span class="ap-cell ap-dept" role="columnheader">対象の組織</span>
        <span class="ap-cell ap-incl" role="columnheader">配下の部署</span>
        <span class="ap-cell ap-grip" role="columnheader"><span class="sr-only">並べ替え</span></span>
      </div>`;
    return `<section class="card tbl-card" aria-labelledby="h-coap-ord">
      <div class="sec-head tbl-head"><h2 class="sec-title" id="h-coap-ord">承認順（上が1番目）</h2><span class="sec-note od-nowrap">${steps.length}段階</span></div>
      <div class="ap-tools" role="toolbar" aria-label="承認順の操作">
        ${btn(`#/company/approval/${pid}/add?at=head`, "先頭に追加")}
        ${btn(`#/company/approval/${pid}/add?at=tail`, "最後に追加")}
        ${btn(single ? `#/company/approval/${pid}/add?at=after&sid=${single}` : null, "選択行の後に挿入")}
        ${mobile ? "" : `<button class="btn btn-danger" type="button" data-ap-delsel ${picked.length ? "" : "disabled"}>選択した役職を削除${picked.length ? `（${picked.length}件）` : ""}</button>`}
      </div>
      <p class="tbl-note">${steps.length ? `行の左の欄で選ぶと、挿入や削除の対象になります（挿入は1件を選んだときに使えます）。${mobile ? "行を左にスワイプすると削除ボタンが出ます。" : ""}${mobile ? "" : "削除は選んだ行をまとめて外します。"}` : ""}</p>
      ${steps.length ? `<div class="ap-table" role="table" aria-label="承認順">${head}${rows}</div>` : emptyState("承認順がありません", "「先頭に追加」または「最後に追加」から役職を登録してください。")}
    </section>`;
  }
  function coApAddScreen(pid) {
    const p = D.apPatterns.find((x) => x.id === pid);
    if (!p) return notFound("承認パターンが見つかりません", "#/company/approval");
    const q = hashQuery();
    const at = ["head", "tail", "after"].includes(q.get("at")) ? q.get("at") : "tail";
    const anchor = apSteps(pid).find((s) => s.id === q.get("sid"));
    if (at === "after" && !anchor) return notFound("挿入位置の役職が見つかりません", `#/company/approval/${pid}`);
    const where = at === "head" ? "先頭" : at === "tail" ? "最後" : `「${posName(anchor.pos)}」の後`;
    const have = apIncluded(pid);
    const cands = D.positions.filter((x) => !have.has(x.id));
    const list = cands.map((x) => `<label class="ap-pick">
        <input type="checkbox" name="pos" value="${x.id}" ${coAp.pick.has(x.id) ? "checked" : ""}>
        <span><span class="ap-pick-name">${esc(x.name)}</span><span class="ap-pick-sub">${esc(x.desc ?? "")}</span></span>
      </label>`).join("");
    return `${backLink(`#/company/approval/${pid}`, "承認順に戻る")}${flashHtml()}
      <form class="card form" id="ap-pick" data-pid="${pid}" data-at="${at}" data-sid="${anchor?.id ?? ""}" novalidate>
        <dl><div class="kv"><dt>承認パターン</dt><dd>${esc(p.name)}</dd></div><div class="kv"><dt>追加する位置</dt><dd>${where}</dd></div></dl>
        <p class="tbl-note-out">役職を1つ以上選んで「追加して戻る」を押すと、役職の並び順で承認順に入ります。</p>
        ${cands.length ? `<div role="group" aria-label="役職">${list}</div>` : emptyState("追加できる役職がありません", "すべての役職がこのパターンに入っています。")}
        <div class="form-actions"><button class="btn btn-primary" type="submit" id="ap-pick-go" ${coAp.pick.size ? "" : "disabled"}>追加して戻る（${coAp.pick.size}件）</button></div>
      </form>`;
  }
  function coApCommitPick(form) {
    const { pid, at, sid } = form.dataset;
    const have = apIncluded(pid);
    const picks = D.positions.filter((x) => coAp.pick.has(x.id) && !have.has(x.id));
    if (!picks.length) return;
    const arr = apSteps(pid);
    const idx = at === "head" ? 0 : at === "after" ? arr.findIndex((s) => s.id === sid) + 1 : arr.length;
    const news = picks.map((x) => {
      const n = { id: nextId("s", D.apScopes), ap: pid, step: 0, pos: x.id, dept: deptWalk()[0]?.d.id ?? "", incl: true, updatedBy: D.user.name, updatedAt: TODAY };
      D.apScopes.push(n);
      return n;
    });
    arr.splice(idx, 0, ...news);
    coApRenumber(arr);
    coAp.pick = new Set();
    coAp.sel = new Set();
    flash = `役職を${picks.length}件、承認順に追加しました。`;
    location.hash = `#/company/approval/${pid}`;
  }
  /* 削除の確認。承認できる人の登録も一緒に外す（既存の承認の範囲の削除と同じ扱い） */
  function coApRemove(trigger, pid, ids) {
    const gone = D.apScopes.filter((s) => s.ap === pid && ids.includes(s.id));
    if (!gone.length) return;
    const names = gone.map((s) => posName(s.pos)).join("、");
    confirmSheet(trigger, { title: `${gone.length}件の役職を承認順から外しますか？`, text: `${esc(names)}。承認できる人の登録も削除されます。元に戻せません。`, okLabel: "削除する",
      onOk: () => {
        D.apApprovers = D.apApprovers.filter((m) => !ids.includes(m.scope));
        D.apScopes = D.apScopes.filter((s) => !ids.includes(s.id));
        coApRenumber(apSteps(pid));
        ids.forEach((x) => coAp.sel.delete(x));
        flash = `${gone.length}件の役職を承認順から外しました。`;
        render();
      } });
  }
  /* 行のドラッグ（ポインター操作で、マウスとタッチの両方に対応）。離した位置の順番に入れ替える */
  function coApDrag(handle, e) {
    e.preventDefault();
    const pid = coAp.pid, sid = handle.dataset.apDrag;
    const rows = [...document.querySelectorAll(".ap-table .ap-row")];
    const from = rows.findIndex((r) => r.dataset.apRow === sid);
    const row = rows[from];
    const centers = rows.map((r) => { const b = r.getBoundingClientRect(); return b.top + b.height / 2; });
    const startY = e.clientY;
    let to = from;
    row.classList.add("is-dragging");
    const move = (ev) => {
      const dy = ev.clientY - startY;
      row.style.transform = `translateY(${dy}px)`;
      const c = centers[from] + dy;
      to = centers.filter((y, i) => i !== from && y < c).length;
    };
    const stop = (apply) => {
      window.removeEventListener("pointermove", move);
      window.removeEventListener("pointerup", up);
      window.removeEventListener("pointercancel", cancel);
      window.removeEventListener("keydown", key);
      row.classList.remove("is-dragging");
      row.style.transform = "";
      if (apply && to !== from) {
        coApMove(pid, sid, to);
        flash = "承認順を変更しました。";
        const keep = scroller().scrollTop;
        render();
        scroller().scrollTop = keep;
      }
    };
    const up = () => stop(true);
    const cancel = () => stop(false);
    const key = (ev) => { if (ev.key === "Escape") stop(false); };
    window.addEventListener("pointermove", move);
    window.addEventListener("pointerup", up);
    window.addEventListener("pointercancel", cancel);
    window.addEventListener("keydown", key);
    move(e);
  }
  /* モバイル: 行を左にスワイプすると削除ボタンが現れる。半分以上開いたら開いたままにする */
  function coApSwipe(front, e) {
    if (e.button > 0 || e.target.closest("button, input, label")) return;
    const wrap = front.parentElement;
    delete wrap.dataset.swiped;
    const sx = e.clientX;
    const base = wrap.classList.contains("is-open") ? -COAP_DEL : 0;
    let dx = 0;
    const move = (ev) => {
      dx = ev.clientX - sx;
      if (Math.abs(dx) > 6) wrap.dataset.swiped = "1";
      front.classList.add("is-swiping");
      front.style.transform = `translateX(${Math.min(0, Math.max(-COAP_DEL, base + dx))}px)`;
    };
    const up = () => {
      window.removeEventListener("pointermove", move);
      window.removeEventListener("pointerup", up);
      window.removeEventListener("pointercancel", up);
      front.classList.remove("is-swiping");
      front.style.transform = "";
      const open = base + dx < -COAP_DEL / 2;
      if (open) document.querySelectorAll(".ap-row.is-open").forEach((r) => { if (r !== wrap) r.classList.remove("is-open"); });
      wrap.classList.toggle("is-open", open);
    };
    window.addEventListener("pointermove", move);
    window.addEventListener("pointerup", up);
    window.addEventListener("pointercancel", up);
  }
  function bindCoAp() {
    const refresh = (sel) => {
      const keep = scroller().scrollTop;
      render();
      scroller().scrollTop = keep;
      if (sel) document.querySelector(sel)?.focus();
    };
    document.querySelectorAll("[data-ap-sel]").forEach((cb) => cb.addEventListener("change", () => {
      if (cb.checked) coAp.sel.add(cb.dataset.apSel); else coAp.sel.delete(cb.dataset.apSel);
      refresh(`[data-ap-sel="${cb.dataset.apSel}"]`);
    }));
    document.querySelectorAll("[data-ap-drag]").forEach((h) => h.addEventListener("pointerdown", (e) => { if (e.button === 0) coApDrag(h, e); }));
    document.querySelector("[data-ap-delsel]")?.addEventListener("click", (e) => coApRemove(e.currentTarget, coAp.pid, [...coAp.sel]));
    document.querySelectorAll("[data-ap-del]").forEach((b) => b.addEventListener("click", () => coApRemove(b, coAp.pid, [b.dataset.apDel])));
    if (mobile) document.querySelectorAll(".ap-front").forEach((f) => {
      f.addEventListener("pointerdown", (e) => coApSwipe(f, e));
      f.addEventListener("click", (e) => {
        const w = f.parentElement;
        if (w.dataset.swiped) { delete w.dataset.swiped; e.preventDefault(); return; }
        if (w.classList.contains("is-open")) { w.classList.remove("is-open"); e.preventDefault(); }
      });
    });
    document.querySelectorAll("#ap-pick input[name=pos]").forEach((cb) => cb.addEventListener("change", () => {
      if (cb.checked) coAp.pick.add(cb.value); else coAp.pick.delete(cb.value);
      const go = document.getElementById("ap-pick-go");
      if (go) { go.disabled = !coAp.pick.size; go.textContent = `追加して戻る（${coAp.pick.size}件）`; }
    }));
    document.getElementById("ap-pick")?.addEventListener("submit", (e) => { e.preventDefault(); coApCommitPick(e.currentTarget); });
  }

  /* ---------- resources: capabilities / licenses (items + holders) ---------- */
  const RES = {
    capabilities: { label: "力量", items: "capItems", recs: "capabilities", itemPrefix: "ci", recPrefix: "c" },
    licenses: { label: "資格", items: "licItems", recs: "licenses", itemPrefix: "li", recPrefix: "l" },
  };
  const resSel = { capabilities: null, licenses: null };
  const resItemId = (kind) => {
    const P = routeIds();
    if (P.name === `${kind}/holder`) return P.pid;
    if (P.name === `${kind}/item`) return P.id;
    return resSel[kind];
  };
  const holderBase = () => [
    { key: "staff", label: "名前", fixed: true, val: (r) => staffName(r.staff) },
    { key: "no", label: "担当者コード", val: (r) => r.staff, html: (r) => `<span class="od-nowrap">${esc(r.staff)}</span>` },
  ];
  const capItemT = makeTable({
    key: "capItem", list: () => D.capItems, search: (r) => r.code + r.name + (r.reading ?? "") + r.desc, placeholder: "力量コード・力量名称・読み・詳細", hidden: ["updatedBy", "updatedAt"],
    href: (r) => `#/capabilities/${r.id}`, pick: { get: () => resSel.capabilities, set: (id) => { resSel.capabilities = id; } },
    cols: [
      { key: "code", label: "力量コード", val: (r) => r.code, html: (r) => `<span class="od-nowrap">${esc(r.code ?? "")}</span>` },
      { key: "name", label: "力量名称", fixed: true, val: (r) => r.name },
      { key: "reading", label: "読み", val: (r) => r.reading || "―" },
      { key: "desc", label: "詳細", val: (r) => r.desc || "―" },
      { key: "reference_value", label: "基準", num: true, val: (r) => Number(r.reference_value) || 0, html: (r) => esc(r.reference_value ?? "―") },
      { key: "min", label: "最小", num: true, val: (r) => Number(r.min) || 0, html: (r) => esc(r.min ?? "―") },
      { key: "max", label: "最大", num: true, val: (r) => Number(r.max) || 0, html: (r) => esc(r.max ?? "―") },
      { key: "step", label: "刻み", num: true, val: (r) => Number(r.step) || 0, html: (r) => esc(r.step ?? "―") },
      { key: "holders", label: "保持者", num: true, val: (r) => D.capabilities.filter((x) => x.item === r.id).length, html: (r) => `${D.capabilities.filter((x) => x.item === r.id).length}名` },
      byCol, dateCol,
    ],
  });
  const capHolderT = makeTable({
    key: "capHolder", noun: "名", list: () => D.capabilities.filter((x) => x.item === resItemId("capabilities")),
    search: (r) => staffName(r.staff) + r.staff, placeholder: "名前・担当者コード", hidden: ["updatedBy", "updatedAt"],
    filter: { label: "習熟度", values: LEVELS, get: (r) => r.level }, href: (r) => `#/capabilities/${r.item}/holder/${r.id}`,
    cols: [
      ...holderBase(),
      { key: "site", label: "所属事業所", val: (r) => empOf(r.staff)?.site ?? "―" },
      { key: "level", label: "値（習熟度）", val: (r) => LEVELS.indexOf(r.level), html: (r) => chip(r.level, LEVEL_ICON[r.level], r.level === "見習い" ? "mute" : "") },
      byCol, dateCol,
    ],
  });
  const licItemT = makeTable({
    key: "licItem", list: () => D.licItems, search: (r) => r.code + r.name + (r.reading ?? "") + (r.desc ?? ""), placeholder: "資格コード・資格名称・読み・詳細", hidden: ["updatedBy", "updatedAt"],
    href: (r) => `#/licenses/${r.id}`, pick: { get: () => resSel.licenses, set: (id) => { resSel.licenses = id; } },
    cols: [
      { key: "code", label: "資格コード", val: (r) => r.code, html: (r) => `<span class="od-nowrap">${esc(r.code ?? "")}</span>` },
      { key: "name", label: "資格名称", fixed: true, val: (r) => r.name },
      { key: "reading", label: "読み", val: (r) => r.reading || "―" },
      { key: "desc", label: "詳細", val: (r) => r.desc || "―" },
      { key: "public_license", label: "公的", val: (r) => r.public_license },
      { key: "customer_license", label: "顧客", val: (r) => r.customer_license },
      { key: "organization_license", label: "内部", val: (r) => r.organization_license },
      { key: "holders", label: "保持者", num: true, val: (r) => D.licenses.filter((x) => x.item === r.id).length, html: (r) => `${D.licenses.filter((x) => x.item === r.id).length}名` },
      byCol, dateCol,
    ],
  });
  const licHolderT = makeTable({
    key: "licHolder", noun: "名", list: () => D.licenses.filter((x) => x.item === resItemId("licenses")),
    search: (r) => staffName(r.staff) + r.staff, placeholder: "名前・担当者コード", hidden: ["updatedBy", "updatedAt"],
    href: (r) => `#/licenses/${r.item}/holder/${r.id}`,
    cols: [
      ...holderBase(),
      { key: "acquired", label: "適用開始", val: (r) => r.acquired, html: (r) => `<span class="od-nowrap">${fmtDate(r.acquired)}</span>` },
      { key: "expires", label: "適用終了", val: (r) => r.expires || "9999-12-31", html: (r) => licStatus(r.expires) },
      byCol, dateCol,
    ],
  });
  const RES_T = { capabilities: { item: capItemT, holder: capHolderT }, licenses: { item: licItemT, holder: licHolderT } };

  function resourcesScreen() {
    const row = (href, ic, label, sub) => `<a class="rowi" href="${href}"><span class="rowi-main"><span class="rowi-name">${icon(ic)}${label}</span><span class="rowi-sub">${sub}</span></span><span class="rowi-right">${icon("chevron")}</span></a>`;
    const soon = (ic, label) => `<div class="rowi soon" aria-disabled="true"><span class="rowi-main"><span class="rowi-name">${icon(ic)}${label}</span><span class="rowi-sub">画面は準備中です</span></span><span class="rowi-right">${chip("準備中", "", "mute")}</span></div>`;
    return `<div class="card list-card">
      ${row("#/capabilities", "briefcase", "力量", `${D.capItems.length}項目・保持 ${D.capabilities.length}件`)}
      ${row("#/licenses", "check", "資格", `${D.licItems.length}項目・保持 ${D.licenses.length}件`)}
      ${row("#/locations", "pin", "場所", `${D.locations.length}か所`)}${row("#/equipment", "factory", "設備", `${D.eqCats.length}分類・${D.equipments.length}台`)}${row("#/maintenance", "wrench", "保全", `${D.inspKinds.length}区分・${D.inspItems.length}項目・予定 ${D.inspSchs.length}件`)}</div>`;
  }
  function resScreen(kind, editMode) {
    const R = RES[kind];
    const { item: itemT, holder: holderT } = RES_T[kind];
    if (resSel[kind] && !D[R.items].some((x) => x.id === resSel[kind])) resSel[kind] = null;
    const sel = D[R.items].find((x) => x.id === resSel[kind]);
    const head = editMode ? `<a class="btn" href="#/${kind}/new">${icon("plus")}<span>${R.label}を追加</span></a>` : editLink(`#/${kind}/edit`, R.label);
    const holders = editMode ? "" : sel
      ? tableCard(holderT, false, "h-holders", `「${esc(sel.name)}」を保持している作業者`, "")
      : `<section class="card" aria-labelledby="h-holders"><h2 class="sr-only" id="h-holders">保持している作業者</h2>${emptyState(`${R.label}を選んでください`, `一覧の${R.label}名を選ぶと、保持している作業者がここに表示されます。`)}</section>`;
    return `${backLink(editMode ? `#/${kind}` : "#/resources", editMode ? "閲覧に戻る" : "資源に戻る")}${flashHtml()}
      ${tableCard(itemT, editMode, "h-items", `${R.label}項目の一覧`, head)}
      ${holders}`;
  }
  function resItemEditScreen(kind, id) {
    const R = RES[kind];
    const isNew = id === "new";
    const it = isNew ? { code: "", name: "", reading: "", desc: "", remarks: "", reference_value: "", min: "", max: "", step: "", public_license: "いいえ", customer_license: "いいえ", organization_license: "いいえ" } : D[R.items].find((x) => x.id === id);
    if (!it) return notFound(`${R.label}が見つかりません`, `#/${kind}/edit`);
    const yn = (id, label) => fieldRow({ id, label, kind: "select", options: [["はい", "はい"], ["いいえ", "いいえ"]], value: it[id] ?? "いいえ" });
    const num = (id, label, req) => fieldRow({ id, label, kind: "number", max: 8, req, value: it[id] ?? "" });
    const second = fieldRow({ id: "desc", label: "詳細", kind: "textarea", max: 120, req: false, value: it.desc ?? "" }) + (kind === "capabilities"
      ? num("reference_value", "基準", true) + num("max", "最大", false) + num("min", "最小", false) + num("step", "刻み", false)
      : yn("public_license", "公的") + yn("customer_license", "顧客") + yn("organization_license", "内部"));
    return `${backLink(`#/${kind}/edit`, "一覧に戻る")}${flashHtml()}
      <form class="card form" id="edit-form" data-kind="resItem" data-res="${kind}" data-id="${id}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${fieldRow({ id: "code", label: `${R.label}コード`, max: 20, value: it.code ?? "", taken: D[R.items].filter((x) => x.id !== id).map((x) => x.code) })}
        ${fieldRow({ id: "name", label: `${R.label}名称`, max: 40, value: it.name, taken: D[R.items].filter((x) => x.id !== id).map((x) => x.name) })}
        ${fieldRow({ id: "reading", label: "読み", max: 80, req: false, value: it.reading ?? "" })}
        ${second}
        ${fieldRow({ id: "remarks", label: "備考", kind: "textarea", max: 1024, req: false, value: it.remarks ?? "" })}
        ${isNew ? "" : metaHtml(it)}
        <div class="form-actions">${isNew ? "" : '<button class="btn btn-danger" type="button" id="del-btn">削除</button>'}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>
      ${isNew ? `<p class="tbl-note-out">${R.label}を追加すると、続けて保持している作業者を登録できます。</p>`
        : tableCard(RES_T[kind].holder, true, "h-holders", "保持している作業者", `<a class="btn" href="#/${kind}/${id}/holder/new">${icon("plus")}<span>保持者を追加</span></a>`)}`;
  }
  function resHolderEditScreen(kind, itemId, hid) {
    const R = RES[kind];
    const it = D[R.items].find((x) => x.id === itemId);
    if (!it) return notFound(`${R.label}が見つかりません`, `#/${kind}/edit`);
    const back = `#/${kind}/${itemId}`;
    const isNew = hid === "new";
    const blank = kind === "capabilities" ? { staff: "", level: "" } : { staff: "", number: "", acquired: "", expires: "" };
    const rec = isNew ? blank : D[R.recs].find((x) => x.id === hid && x.item === itemId);
    if (!rec) return notFound("保持の登録が見つかりません", back);
    const taken = D[R.recs].filter((x) => x.item === itemId && x.id !== hid).map((x) => x.staff);
    const fields = kind === "capabilities"
      ? fieldRow({ id: "level", label: "値（習熟度）", kind: "select", options: LEVELS.map((l) => [l, l]), value: rec.level })
      : `${fieldRow({ id: "acquired", label: "適用開始", kind: "date", value: rec.acquired })}${fieldRow({ id: "expires", label: "適用終了", kind: "date", req: false, value: rec.expires, after: "acquired" })}`;
    return `${backLink(back, `${R.label}に戻る`)}
      <form class="card form" id="edit-form" data-kind="resHolder" data-res="${kind}" data-id="${hid}" data-pid="${itemId}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        <dl><div class="kv"><dt>${R.label}</dt><dd>${esc(it.name)}</dd></div></dl>
        ${fieldRow({ id: "staff", label: "担当者", kind: "select", options: D.employees.map((e) => [e.no, `${e.name}（${e.no}）`]), value: rec.staff, taken })}
        ${fields}
        ${isNew ? "" : metaHtml(rec)}
        <div class="form-actions">${isNew ? "" : '<button class="btn btn-danger" type="button" id="del-btn">削除</button>'}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>`;
  }

  /* ---------- maintenance (保全): tabs + schema-driven entity chains ---------- */
  const M_TABS = [
    { id: "kinds", label: "点検整備区分", root: "inspKind" },
    { id: "items", label: "点検整備項目台帳", root: "inspItem" },
    { id: "ops", label: "設備点検整備運用台帳", root: "inspOp" },
    { id: "schedule", label: "点検予定", root: "inspSch" },
  ];
  const CYCLES = ["日", "週", "月", "3か月", "半年", "年"];
  const RESULTS = ["合格", "不合格", "要再点検"];
  const RESULT_CHIP = { "合格": ["check", "ok"], "不合格": ["alert", "bad"], "要再点検": ["alert", "warn"] };
  const SCH_STATUS = ["計画", "実施中", "完了"];
  const SCH_CHIP = { "計画": ["", "mute"], "実施中": ["pencil", "line"], "完了": ["check", "ok"] };
  const mGet = (coll, id) => D[coll].find((x) => x.id === id);
  const kindNm = (id) => mGet("inspKinds", id)?.name ?? "（削除済み）";
  const itemNm = (id) => mGet("inspItems", id)?.name ?? "（削除済み）";
  const eqNm = (id) => mGet("equipments", id)?.name ?? "（削除済み）";
  const opNm = (id) => { const o = mGet("inspOps", id); return o ? `${eqNm(o.equip)} / ${kindNm(o.kind)}` : "（削除済み）"; };
  const monthFmt = (m) => { const x = String(m).match(/^(\d+)-(\d+)$/); return x ? `${x[1]}年${+x[2]}月` : "―"; };
  const sameMonthCount = (coll, key, id) => D[coll].filter((x) => x[key] === id).length;
  const cnt = (coll, key) => (r) => D[coll].filter((x) => x[key] === r.id).length;
  const numCol = (key, label, coll, fk, unit) => ({ key, label, num: true, val: cnt(coll, fk), html: (r) => `${cnt(coll, fk)(r)}${unit}` });
  const mSel = {}; // selected row per entity (view mode master / detail chain)

  /* One entry per table. parent: { ent, key } links a row to its owner; children: the next level down the chain. */
  const ENT = {
    inspKind: {
      label: "点検整備区分", coll: "inspKinds", prefix: "ik", tab: "kinds", children: null, parent: null,
      name: (r) => r.name,
      usedBy: (r) => sameMonthCount("inspItems", "kind", r.id) + sameMonthCount("inspOps", "kind", r.id),
      usedNote: "この区分は点検整備項目か運用台帳で使われているため削除できません。",
      fields: (r) => [
        { id: "code", label: "点検整備区分コード", max: 12, taken: D.inspKinds.filter((x) => x.id !== r.id).map((x) => x.code) },
        { id: "name", label: "区分名称", max: 20, taken: D.inspKinds.filter((x) => x.id !== r.id).map((x) => x.name) },
        { id: "reading", label: "読み", max: 60, req: false },
        { id: "cycle", label: "周期の目安", kind: "select", options: CYCLES.map((c) => [c, c]) },
        { id: "desc", label: "備考", kind: "textarea", max: 120, req: false },
      ],
      cols: [
        { key: "code", label: "点検整備区分コード", val: (r) => r.code, html: (r) => `<span class="od-nowrap">${esc(r.code ?? "")}</span>` },
        { key: "name", label: "区分名称", fixed: true, val: (r) => r.name },
        { key: "reading", label: "読み", val: (r) => r.reading || "―" },
        { key: "cycle", label: "周期の目安", val: (r) => CYCLES.indexOf(r.cycle), html: (r) => esc(r.cycle) },
        { key: "desc", label: "備考", val: (r) => r.desc || "―" },
        numCol("items", "項目数", "inspItems", "kind", "件"),
      ],
    },
    inspItem: {
      label: "点検整備項目", coll: "inspItems", prefix: "ii", tab: "items", children: "inspFormula", parent: null,
      name: (r) => r.name,
      usedBy: (r) => sameMonthCount("inspLines", "item", r.id) + sameMonthCount("inspSchDets", "item", r.id),
      usedNote: "この項目は運用明細か点検予定で使われているため削除できません。",
      fields: (r) => [
        { id: "code", label: "点検コード", max: 16, taken: D.inspItems.filter((x) => x.id !== r.id).map((x) => x.code) },
        { id: "name", label: "点検名称", max: 30, taken: D.inspItems.filter((x) => x.id !== r.id).map((x) => x.name) },
        { id: "reading", label: "読み", max: 60, req: false },
        { id: "kind", label: "点検区分", kind: "select", options: D.inspKinds.map((k) => [k.id, k.name]) },
        { id: "base_date", label: "標準起算日", kind: "date", req: false },
        { id: "time_interval", label: "標準間隔", max: 12, req: false },
        { id: "external", label: "外部点検整備", kind: "select", options: [["はい", "はい"], ["いいえ", "いいえ"]] },
        { id: "part", label: "対象部位", max: 30 },
        { id: "criteria", label: "判定基準", kind: "textarea", max: 120, req: false },
      ],
      cols: [
        { key: "code", label: "点検コード", val: (r) => r.code, html: (r) => `<span class="od-nowrap">${esc(r.code ?? "")}</span>` },
        { key: "name", label: "点検名称", fixed: true, val: (r) => r.name },
        { key: "reading", label: "読み", val: (r) => r.reading || "―" },
        { key: "kind", label: "点検区分", val: (r) => kindNm(r.kind) },
        { key: "base_date", label: "標準起算日", val: (r) => r.base_date || "", html: (r) => `<span class="od-nowrap">${r.base_date ? fmtDate(r.base_date) : "―"}</span>` },
        { key: "time_interval", label: "標準間隔", val: (r) => r.time_interval || "―" },
        { key: "external", label: "外部点検整備", val: (r) => r.external || "いいえ" },
        { key: "part", label: "対象部位", val: (r) => r.part },
        numCol("formulas", "算式", "inspFormulas", "item", "件"),
      ],
    },
    inspFormula: {
      label: "点検整備算式", coll: "inspFormulas", prefix: "ifm", tab: "items", children: null, parent: { ent: "inspItem", key: "item" },
      name: (r) => r.name,
      fields: (r) => [
        { id: "name", label: "算式名", max: 30 },
        { id: "expr", label: "式", max: 60 },
        { id: "unit", label: "単位", max: 10, req: false },
        { id: "base", label: "基準値", kind: "number", req: false },
      ],
      cols: [
        { key: "name", label: "算式名", fixed: true, val: (r) => r.name },
        { key: "expr", label: "式", val: (r) => r.expr },
        { key: "unit", label: "単位", val: (r) => r.unit || "―" },
        { key: "base", label: "基準値", num: true, val: (r) => Number(r.base) || 0, html: (r) => (r.base === "" ? "―" : esc(r.base)) },
      ],
    },
    inspOp: {
      label: "設備点検整備運用", coll: "inspOps", prefix: "io", tab: "ops", children: "inspLine", parent: null,
      name: (r) => r.name || `${eqNm(r.equip)} / ${kindNm(r.kind)}`,
      usedBy: (r) => sameMonthCount("inspSchs", "op", r.id),
      usedNote: "この運用は点検予定で使われているため削除できません。",
      fields: (r) => [
        { id: "code", label: "点検整備運用コード", max: 12, taken: D.inspOps.filter((x) => x.id !== r.id).map((x) => x.code) },
        { id: "name", label: "運用名称", max: 40 },
        { id: "equip", label: "設備", kind: "select", options: D.equipments.map((e) => [e.id, `${e.name}（${locPath(e.loc)}）`]) },
        { id: "kind", label: "点検整備区分", kind: "select", options: D.inspKinds.map((k) => [k.id, k.name]) },
        { id: "cycle", label: "周期", kind: "select", options: CYCLES.map((c) => [c, c]) },
      ],
      cols: [
        { key: "code", label: "点検整備運用コード", val: (r) => r.code, html: (r) => `<span class="od-nowrap">${esc(r.code ?? "")}</span>` },
        { key: "opname", label: "運用名称", val: (r) => r.name || "―" },
        { key: "equip", label: "設備", fixed: true, val: (r) => eqNm(r.equip) },
        { key: "kind", label: "点検整備区分", val: (r) => kindNm(r.kind) },
        { key: "cycle", label: "周期", val: (r) => CYCLES.indexOf(r.cycle), html: (r) => esc(r.cycle) },
        numCol("lines", "明細", "inspLines", "op", "件"),
      ],
    },
    inspLine: {
      label: "点検整備運用明細", coll: "inspLines", prefix: "il", tab: "ops", children: null, parent: { ent: "inspOp", key: "op" },
      name: (r) => itemNm(r.item),
      fields: (r, p) => [
        { id: "item", label: "点検整備", kind: "select", options: D.inspItems.map((i) => [i.id, `${i.name}（${kindNm(i.kind)}）`]), taken: D.inspLines.filter((x) => x.op === p.id && x.id !== r.id).map((x) => x.item) },
        { id: "seq", label: "順", kind: "number", max: 3 },
        { id: "commencement_date", label: "起算日", kind: "date", req: false },
        { id: "time_interval", label: "間隔", max: 12, req: false },
        { id: "role", label: "担当の役職", kind: "select", req: false, blank: "指定なし", options: D.positions.map((x) => [x.id, x.name]) },
      ],
      cols: [
        { key: "item", label: "点検整備", fixed: true, val: (r) => itemNm(r.item) },
        { key: "seq", label: "順", num: true, val: (r) => Number(r.seq) || 0, html: (r) => esc(r.seq) },
        { key: "kind", label: "区分", val: (r) => kindNm(mGet("inspItems", r.item)?.kind) },
        { key: "commencement_date", label: "起算日", val: (r) => r.commencement_date || "", html: (r) => `<span class="od-nowrap">${r.commencement_date ? fmtDate(r.commencement_date) : "―"}</span>` },
        { key: "time_interval", label: "間隔", val: (r) => r.time_interval || "―" },
        { key: "role", label: "担当の役職", val: (r) => (r.role ? posName(r.role) : "―") },
      ],
    },
    inspSch: {
      label: "設備点検整備予定", coll: "inspSchs", prefix: "is", tab: "schedule", children: "inspSchDet", parent: null,
      name: (r) => r.title || `${opNm(r.op)} ${monthFmt(r.month)}`,
      fields: (r) => [
        { id: "code", label: "管理コード", max: 16, taken: D.inspSchs.filter((x) => x.id !== r.id).map((x) => x.code) },
        { id: "title", label: "予定名称", max: 40 },
        { id: "op", label: "点検整備運用", kind: "select", options: D.inspOps.map((o) => [o.id, opNm(o.id)]) },
        { id: "month", label: "予定月", kind: "month" },
        { id: "status", label: "状態", kind: "select", options: SCH_STATUS.map((x) => [x, x]) },
      ],
      cols: [
        { key: "code", label: "管理コード", val: (r) => r.code, html: (r) => `<span class="od-nowrap">${esc(r.code ?? "")}</span>` },
        { key: "title", label: "予定名称", val: (r) => r.title || "―" },
        { key: "op", label: "設備／区分", fixed: true, val: (r) => opNm(r.op) },
        { key: "month", label: "予定月", val: (r) => r.month, html: (r) => `<span class="od-nowrap">${monthFmt(r.month)}</span>` },
        { key: "status", label: "状態", val: (r) => SCH_STATUS.indexOf(r.status), html: (r) => chip(r.status, SCH_CHIP[r.status][0], SCH_CHIP[r.status][1]) },
        numCol("details", "予定明細", "inspSchDets", "sch", "件"),
      ],
    },
    inspSchDet: {
      label: "設備点検整備予定明細", coll: "inspSchDets", prefix: "sd", tab: "schedule", children: "inspRec", parent: { ent: "inspSch", key: "sch" },
      name: (r) => `${itemNm(r.item)}（${fmtDate(r.date)}）`,
      fields: (r, p) => {
        const op = D.inspLines.filter((l) => l.op === p.op).map((l) => l.item);
        const items = (op.length ? D.inspItems.filter((i) => op.includes(i.id)) : D.inspItems).map((i) => [i.id, i.name]);
        return [
          { id: "item", label: "点検整備項目", kind: "select", options: items },
          { id: "date", label: "開始予定日", kind: "date" },
          { id: "end_date", label: "終了予定日", kind: "date", req: false },
          { id: "staff", label: "担当者", kind: "select", options: D.employees.map((e) => [e.no, `${e.name}（${e.no}）`]) },
        ];
      },
      cols: [
        { key: "item", label: "点検整備項目", fixed: true, val: (r) => itemNm(r.item) },
        { key: "date", label: "開始予定日", val: (r) => r.date, html: (r) => `<span class="od-nowrap">${fmtDate(r.date)}</span>` },
        { key: "end_date", label: "終了予定日", val: (r) => r.end_date || "", html: (r) => `<span class="od-nowrap">${r.end_date ? fmtDate(r.end_date) : "―"}</span>` },
        { key: "staff", label: "担当者", val: (r) => staffName(r.staff) },
        { key: "done", label: "実施", val: (r) => cnt("inspRecs", "det")(r), html: (r) => (cnt("inspRecs", "det")(r) ? chip("実施済", "check", "ok") : chip("未実施", "", "mute")) },
      ],
    },
    inspRec: {
      label: "点検整備実施", coll: "inspRecs", prefix: "ir", tab: "schedule", children: "inspFile", parent: { ent: "inspSchDet", key: "det" },
      name: (r) => `${fmtDate(r.date)} ${staffName(r.staff)}`,
      fields: (r, p) => [
        { id: "date", label: "実施日", kind: "date", min: p.date },
        { id: "staff", label: "実施者", kind: "select", options: D.employees.map((e) => [e.no, `${e.name}（${e.no}）`]) },
        { id: "result", label: "結果", kind: "select", options: RESULTS.map((x) => [x, x]) },
        { id: "value", label: "測定値・所見", max: 60, req: false },
        { id: "note", label: "備考", kind: "textarea", max: 120, req: false },
      ],
      cols: [
        { key: "date", label: "実施日", fixed: true, val: (r) => r.date, html: (r) => `<span class="od-nowrap">${fmtDate(r.date)}</span>` },
        { key: "staff", label: "実施者", val: (r) => staffName(r.staff) },
        { key: "result", label: "結果", val: (r) => RESULTS.indexOf(r.result), html: (r) => chip(r.result, RESULT_CHIP[r.result][0], RESULT_CHIP[r.result][1]) },
        { key: "value", label: "測定値・所見", val: (r) => r.value || "―" },
        numCol("files", "結果ファイル", "inspFiles", "rec", "件"),
      ],
    },
    inspFile: {
      label: "点検結果ファイル", coll: "inspFiles", prefix: "ifl", tab: "schedule", children: null, parent: { ent: "inspRec", key: "rec" },
      name: (r) => r.fname,
      fields: () => [
        { id: "fname", label: "ファイル名", max: 60 },
        { id: "ftype", label: "種別", kind: "select", options: ["写真", "帳票", "測定データ"].map((x) => [x, x]) },
        { id: "regdate", label: "登録日", kind: "date" },
      ],
      cols: [
        { key: "fname", label: "ファイル名", fixed: true, val: (r) => r.fname },
        { key: "ftype", label: "種別", val: (r) => r.ftype },
        { key: "regdate", label: "登録日", val: (r) => r.regdate, html: (r) => `<span class="od-nowrap">${fmtDate(r.regdate)}</span>` },
      ],
    },
  };
  const mSelect = (ent, id) => {
    mSel[ent] = id;
    for (let c = ENT[ent].children; c; c = ENT[c].children) mSel[c] = null;
  };
  const mCtxParent = (E) => { const P = routeIds(); return P.name === "maintenance/entity" ? P.id : mSel[E.parent.ent]; };
  Object.entries(ENT).forEach(([k, E]) => {
    E.key = k;
    E.table = makeTable({
      key: `m_${k}`, hidden: ["updatedBy", "updatedAt"], placeholder: "名称などで検索",
      list: E.parent ? () => D[E.coll].filter((r) => r[E.parent.key] === mCtxParent(E)) : () => D[E.coll],
      search: (r) => E.name(r), href: (r) => `#/maintenance/e/${k}/${r.id}`,
      pick: E.children ? { get: () => mSel[k], set: (id) => mSelect(k, id) } : null,
      cols: [...E.cols, byCol, dateCol],
    });
  });
  const mBack = (E, r) => (E.parent ? `#/maintenance/e/${E.parent.ent}/${r[E.parent.key]}` : `#/maintenance/${E.tab}/edit`);
  const mRemove = (ent, id) => {
    const E = ENT[ent];
    if (E.children) {
      const C = ENT[E.children];
      D[C.coll].filter((c) => c[C.parent.key] === id).forEach((c) => mRemove(E.children, c.id));
    }
    D[E.coll] = D[E.coll].filter((x) => x.id !== id);
    if (mSel[ent] === id) mSelect(ent, null);
  };
  const mCountBelow = (ent, id) => {
    const E = ENT[ent];
    if (!E.children) return 0;
    const C = ENT[E.children];
    return D[C.coll].filter((c) => c[C.parent.key] === id).reduce((n, c) => n + 1 + mCountBelow(E.children, c.id), 0);
  };
  const mTabBar = (cur) => `<div class="tabs" role="tablist" aria-label="保全">${M_TABS.map((t) =>
    `<a role="tab" class="tab" id="tab-${t.id}" href="#/maintenance/${t.id}" aria-selected="${t.id === cur}" tabindex="${t.id === cur ? 0 : -1}">${t.label}</a>`).join("")}</div>`;

  function maintenanceScreen(tab, editMode) {
    const T = M_TABS.find((t) => t.id === tab) ?? M_TABS[0];
    const root = ENT[T.root];
    let body = "";
    if (editMode) {
      body = tableCard(root.table, true, "h-m-root", `${root.label}の一覧`, `<a class="btn" href="#/maintenance/e/${T.root}/new">${icon("plus")}<span>${root.label}を追加</span></a>`);
    } else {
      let prev = null;
      for (let k = T.root; k; k = ENT[k].children) {
        const E = ENT[k];
        if (prev && !mSel[prev.key]) {
          body += `<section class="card">${emptyState(`${prev.label}を選んでください`, `上の一覧で${prev.label}の名称を選ぶと、${E.label}がここに表示されます。`)}</section>`;
          break;
        }
        const sel = prev ? mGet(prev.coll, mSel[prev.key]) : null;
        if (prev && !sel) { mSelect(prev.key, null); continue; }
        const title = prev ? `「${esc(prev.name(sel))}」の${E.label}` : `${E.label}の一覧`;
        body += tableCard(E.table, false, `h-m-${k}`, title, prev ? "" : editLink(`#/maintenance/${T.id}/edit`, T.label));
        prev = E;
      }
    }
    return `${backLink(editMode ? `#/maintenance/${T.id}` : "#/resources", editMode ? "閲覧に戻る" : "資源に戻る")}${flashHtml()}
      ${mTabBar(T.id)}
      <div class="tab-panel" role="tabpanel" aria-labelledby="tab-${T.id}">${body}</div>`;
  }

  function maintenanceEntityScreen(ent, id, parentId) {
    const E = ENT[ent];
    if (!E) return notFound("画面が見つかりません", "#/maintenance");
    const isNew = id === "new";
    const rec = isNew ? { id: "new" } : mGet(E.coll, id);
    const tab = E.tab;
    if (!rec) return notFound(`${E.label}が見つかりません`, `#/maintenance/${tab}/edit`);
    const pid = E.parent ? (isNew ? parentId : rec[E.parent.key]) : null;
    const P = E.parent ? mGet(ENT[E.parent.ent].coll, pid) : null;
    if (E.parent && !P) return notFound(`${ENT[E.parent.ent].label}が見つかりません`, `#/maintenance/${tab}/edit`);
    const back = E.parent ? `#/maintenance/e/${E.parent.ent}/${pid}` : `#/maintenance/${tab}/edit`;
    const fields = E.fields(rec, P).map((f) => fieldRow({ ...f, value: isNew ? "" : String(rec[f.id] ?? "") })).join("");
    const used = !isNew && E.usedBy ? E.usedBy(rec) : 0;
    const C = E.children ? ENT[E.children] : null;
    const below = !isNew && C ? tableCard(C.table, true, `h-m-${C.key}`, `${C.label}の一覧`, `<a class="btn" href="#/maintenance/e/${C.key}/new/${id}">${icon("plus")}<span>${C.label}を追加</span></a>`) : "";
    return `${backLink(back, "一つ前に戻る")}${flashHtml()}
      ${mTabBar(tab)}
      <form class="card form" id="edit-form" data-kind="mEnt" data-ent="${ent}" data-id="${id}" data-pid="${pid ?? ""}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${P ? `<dl><div class="kv"><dt>${ENT[E.parent.ent].label}</dt><dd>${esc(ENT[E.parent.ent].name(P))}</dd></div></dl>` : ""}
        ${fields}
        ${isNew ? "" : metaHtml(rec)}
        ${used ? `<p class="note" id="del-note">${E.usedNote}</p>` : ""}
        <div class="form-actions">${isNew ? "" : `<button class="btn btn-danger" type="button" id="del-btn" ${used ? 'disabled aria-describedby="del-note"' : ""}>削除</button>`}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>
      ${isNew ? (C ? `<p class="tbl-note-out">${E.label}を追加すると、続けて${C.label}を登録できます。</p>` : "") : below}`;
  }

  /* ---------- locations (tree structure) ---------- */
  const LOC_TYPES = ["サイト", "エリア", "区画", "ライン", "その他"];
  const LOC_ICON = { "サイト": "building", "エリア": "office", "区画": "box", "ライン": "production", "その他": "pin" };
  const locById = (id) => D.locations.find((x) => x.id === id);
  const locKids = (pid) => D.locations.filter((x) => x.parent === pid);
  const locBelow = (id) => locKids(id).flatMap((c) => [c.id, ...locBelow(c.id)]);
  const locWalk = (pid = null, depth = 0) => locKids(pid).flatMap((l) => [{ l, depth }, ...locWalk(l.id, depth + 1)]);
  const locPath = (id) => { const out = []; for (let x = locById(id); x; x = locById(x.parent)) out.unshift(x.name); return out.join(" › ") || "（未設定）"; };
  const eqAt = (locId) => D.equipments.filter((e) => e.loc === locId).length;
  const locView = { open: new Set(["l1", "l2"]), loaded: new Set(["l1", "l2"]), loading: new Set() };
  const locVisible = (pid = null, depth = 0) => locKids(pid).flatMap((l) => {
    const out = [{ l, depth }];
    if (locView.open.has(l.id)) out.push(...(locView.loading.has(l.id) ? [{ loading: true, depth: depth + 1 }] : locVisible(l.id, depth + 1)));
    return out;
  });
  function locRow(it, editMode) {
    if (it.loading) return `<li class="trow skeleton" role="status" style="--depth:${it.depth}"><span class="skel-bar" aria-hidden="true"></span><span class="muted">読み込み中…</span></li>`;
    const { l, depth } = it;
    const n = locKids(l.id).length;
    const open = locView.open.has(l.id);
    const eq = eqAt(l.id);
    const toggle = n
      ? `<button class="tree-toggle" type="button" data-ltoggle="${l.id}" aria-expanded="${open}" aria-label="${esc(l.name)}を${open ? "縮小" : "展開"}">${icon("chevron")}</button>`
      : `<span class="tree-spacer" aria-hidden="true"></span>`;
    const handle = editMode ? `<button class="drag-handle" type="button" data-ldrag="${l.id}" aria-label="${esc(l.name)}をドラッグして親を付け替え（キーボードやタッチでは「親を変更」を使用）">${icon("grip")}</button>` : "";
    const name = `<span class="muted od-nowrap tree-code">${esc(l.code ?? "")}</span> ` + (editMode ? `<a class="cell-link" href="#/locations/${l.id}">${esc(l.name)}</a>` : `<span class="tree-name">${esc(l.name)}</span>`) + (l.reading ? ` <span class="muted tree-reading">${esc(l.reading)}</span>` : "") + (l.available === "いいえ" ? ` ${chip("使用停止", "alert", "mute")}` : "");
    return `<li class="trow" role="treeitem" aria-level="${depth + 1}" ${n ? `aria-expanded="${open}"` : ""} ${editMode ? `data-ldrop="${l.id}"` : ""} style="--depth:${depth}">
      ${handle}${toggle}<span class="tree-main">${name}</span><span class="tree-tags">${chip(l.type, LOC_ICON[l.type])}${eq ? chip(`設備 ${eq}`, "factory", "mute") : ""}</span>${n ? `<span class="chip mute od-nowrap">配下 ${n}</span>` : ""}${editMode ? `<button class="btn tree-act" type="button" data-lreparent="${l.id}">親を変更</button>` : ""}</li>`;
  }
  function locScreen(editMode) {
    const rows = locVisible();
    return `${backLink(editMode ? "#/locations" : "#/resources", editMode ? "閲覧に戻る" : "資源に戻る")}${flashHtml()}
      <section class="card tbl-card" aria-labelledby="h-loc">
        <div class="sec-head tbl-head"><h2 class="sec-title" id="h-loc">場所のツリー</h2>${editMode ? `<a class="btn" href="#/locations/new">${icon("plus")}<span>場所を追加</span></a>` : editLink("#/locations/edit", "場所")}</div>
        <p class="tbl-note">全${D.locations.length}か所${editMode ? "。ハンドルをドラッグして親にしたい行へ重ねると付け替えられます。ドラッグできないときは「親を変更」を使ってください。場所名を選ぶと編集できます。" : "。"}</p>
        ${editMode ? `<div class="root-drop" data-ldrop="root">最上位にする場合は、ここにドロップ</div>` : ""}
        ${rows.length ? `<ul class="tree" role="tree" aria-label="場所のツリー">${rows.map((it) => locRow(it, editMode)).join("")}</ul>` : emptyState("場所がありません", "「場所を追加」から登録してください。")}
      </section>`;
  }
  function moveLoc(l, target) {
    l.parent = target;
    l.updatedBy = D.user.name;
    l.updatedAt = TODAY;
    if (target) { locView.open.add(target); locView.loaded.add(target); }
    flash = `「${l.name}」を「${target ? locById(target).name : "最上位"}」の配下に移しました。`;
    render();
  }
  function openLocPicker(trigger, l) {
    const banned = new Set([l.id, ...locBelow(l.id)]);
    const item = (id, label, depth, note, off) => `<button class="pick-item" type="button" data-pick="${id}" style="--depth:${depth}" ${off ? "disabled" : ""}><span>${esc(label)}</span>${note ? `<span class="note">${note}</span>` : ""}</button>`;
    const items = item("root", "最上位（親なし）", 0, l.parent === null ? "現在の親" : "", l.parent === null) +
      locWalk().map(({ l: x, depth }) => item(x.id, x.name, depth + 1, x.id === l.parent ? "現在の親" : banned.has(x.id) ? "移動できません" : "", x.id === l.parent || banned.has(x.id))).join("");
    showSheet(trigger, {
      chip: chip("選択", "org"), title: `「${l.name}」の親の場所を選ぶ`, rows: [],
      extra: `<div class="pick-list" role="group" aria-label="親の場所">${items}</div>`,
      onMount: (root) => root.querySelectorAll("[data-pick]").forEach((b) => b.addEventListener("click", () => {
        closeSheet(false);
        moveLoc(l, b.dataset.pick === "root" ? null : b.dataset.pick);
      })),
    });
  }
  function locEditScreen(id) {
    const isNew = id === "new";
    const l = isNew ? { code: "", control_code: "", name: "", reading: "", type: "", parent: null, available: "はい", desc: "" } : locById(id);
    if (!l) return notFound("場所が見つかりません", "#/locations/edit");
    const banned = new Set(isNew ? [] : [id, ...locBelow(id)]);
    const parentOpts = locWalk().filter(({ l: x }) => !banned.has(x.id)).map(({ l: x, depth }) => [x.id, `${"　".repeat(depth)}${x.name}`]);
    const used = isNew ? 0 : locKids(id).length + eqAt(id);
    return `${backLink("#/locations/edit", "一覧に戻る")}${flashHtml()}
      <form class="card form" id="edit-form" data-kind="loc" data-id="${id}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${fieldRow({ id: "code", label: "場所コード", max: 12, value: l.code ?? "", taken: D.locations.filter((x) => x.id !== id).map((x) => x.code) })}
        ${fieldRow({ id: "control_code", label: "管理コード", max: 20, req: false, value: l.control_code ?? "" })}
        ${fieldRow({ id: "name", label: "場所名称", max: 30, value: l.name, taken: D.locations.filter((x) => x.id !== id).map((x) => x.name) })}
        ${fieldRow({ id: "reading", label: "読み", max: 60, req: false, value: l.reading ?? "" })}
        ${fieldRow({ id: "type", label: "種別", kind: "select", options: LOC_TYPES.map((t) => [t, t]), value: l.type })}
        ${fieldRow({ id: "parent", label: "親の場所", kind: "select", req: false, blank: "最上位（親なし）", options: parentOpts, value: l.parent ?? "" })}
        ${fieldRow({ id: "available", label: "使用", kind: "select", options: [["はい", "はい"], ["いいえ", "いいえ"]], value: l.available ?? "はい" })}
        ${fieldRow({ id: "desc", label: "備考", kind: "textarea", max: 120, req: false, value: l.desc })}
        ${isNew ? "" : metaHtml(l)}
        ${used ? `<p class="note" id="del-note">配下の場所か、置かれている設備があるため削除できません。先に移すか削除してください。</p>` : ""}
        <div class="form-actions">${isNew ? "" : `<button class="btn btn-danger" type="button" id="del-btn" ${used ? 'disabled aria-describedby="del-note"' : ""}>削除</button>`}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>`;
  }

  /* ---------- equipment: categories + equipment; operations / records are shared with maintenance ---------- */
  const EQ_STATUS = ["稼働中", "休止", "廃棄"];
  const EQ_CHIP = { "稼働中": ["check", "ok"], "休止": ["alert", "warn"], "廃棄": ["close", "mute"] };
  const eqSel = { cat: null, op: null, equip: null };
  const catNm = (id) => D.eqCats.find((c) => c.id === id)?.name ?? "（削除済み）";
  const recOp = (r) => { const d = mGet("inspSchDets", r.det); const s = d && mGet("inspSchs", d.sch); return s?.op; };
  const recEquip = (r) => mGet("inspOps", recOp(r))?.equip;
  const eqCatT = makeTable({
    key: "eqCat", list: () => D.eqCats, search: (r) => r.code + r.name + (r.reading ?? "") + r.desc, placeholder: "分類コード・分類名称・読み・備考", hidden: ["updatedBy", "updatedAt"],
    href: (r) => `#/equipment/cat/${r.id}`, pick: { get: () => eqSel.cat, set: (id) => { eqSel.cat = eqSel.cat === id ? null : id; } },
    cols: [
      { key: "code", label: "分類コード", val: (r) => r.code, html: (r) => `<span class="od-nowrap">${esc(r.code ?? "")}</span>` },
      { key: "name", label: "分類名称", fixed: true, val: (r) => r.name },
      { key: "reading", label: "読み", val: (r) => r.reading || "―" },
      { key: "start_at", label: "適用開始", val: (r) => r.start_at, html: (r) => `<span class="od-nowrap">${r.start_at ? fmtDate(r.start_at) : "―"}</span>` },
      { key: "stop_at", label: "適用終了", val: (r) => r.stop_at || "9999-12-31", html: (r) => `<span class="od-nowrap">${r.stop_at ? fmtDate(r.stop_at) : "―"}</span>` },
      { key: "desc", label: "備考", val: (r) => r.desc || "―" },
      numCol("n", "設備数", "equipments", "cat", "台"),
      byCol, dateCol,
    ],
  });
  const eqT = makeTable({
    key: "equip", noun: "台", list: () => D.equipments.filter((e) => !eqSel.cat || e.cat === eqSel.cat),
    search: (r) => r.code + (r.control_code ?? "") + r.name + locPath(r.loc), placeholder: "設備コード・管理コード・設備名・場所", hidden: ["updatedBy", "updatedAt"],
    filter: { label: "状態", values: EQ_STATUS, get: (r) => r.status }, href: (r) => `#/equipment/${r.id}`,
    cols: [
      { key: "code", label: "設備コード", val: (r) => r.code, html: (r) => `<span class="od-nowrap">${esc(r.code)}</span>` },
      { key: "control_code", label: "管理コード", val: (r) => r.control_code, html: (r) => `<span class="od-nowrap">${esc(r.control_code ?? "")}</span>` },
      { key: "label_code", label: "表示コード", val: (r) => r.label_code, html: (r) => `<span class="od-nowrap">${esc(r.label_code ?? "")}</span>` },
      { key: "name", label: "設備名（品目）", fixed: true, val: (r) => r.name },
      { key: "cat", label: "設備分類", val: (r) => catNm(r.cat) },
      { key: "loc", label: "場所", val: (r) => locPath(r.loc) },
      { key: "installed", label: "設置日", val: (r) => r.installed, html: (r) => `<span class="od-nowrap">${fmtDate(r.installed)}</span>` },
      { key: "status", label: "状態", val: (r) => EQ_STATUS.indexOf(r.status), html: (r) => chip(r.status, EQ_CHIP[r.status][0], EQ_CHIP[r.status][1]) },
      byCol, dateCol,
    ],
  });
  /* shared with maintenance: same entity definitions (columns, links), filtered to the equipment being edited */
  const eqOpT = makeTable({
    key: "eqOp", list: () => D.inspOps.filter((o) => o.equip === routeIds().id), search: (r) => ENT.inspOp.name(r), placeholder: "区分などで検索", hidden: ["updatedBy", "updatedAt"],
    href: (r) => `#/maintenance/e/inspOp/${r.id}`, pick: { get: () => eqSel.op, set: (id) => { eqSel.op = eqSel.op === id ? null : id; } },
    cols: [...ENT.inspOp.cols, byCol, dateCol],
  });
  const eqRecT = makeTable({
    key: "eqRec", list: () => D.inspRecs.filter((r) => recEquip(r) === routeIds().id && (!eqSel.op || recOp(r) === eqSel.op)),
    search: (r) => ENT.inspRec.name(r) + itemNm(mGet("inspSchDets", r.det)?.item), placeholder: "実施者・点検項目", hidden: ["updatedBy", "updatedAt"],
    href: (r) => `#/maintenance/e/inspRec/${r.id}`,
    cols: [
      { key: "date", label: "実施日", fixed: true, val: (r) => r.date, html: (r) => `<span class="od-nowrap">${fmtDate(r.date)}</span>` },
      { key: "op", label: "運用", val: (r) => kindNm(mGet("inspOps", recOp(r))?.kind) },
      { key: "item", label: "点検整備項目", val: (r) => itemNm(mGet("inspSchDets", r.det)?.item) },
      { key: "staff", label: "実施者", val: (r) => staffName(r.staff) },
      { key: "result", label: "結果", val: (r) => RESULTS.indexOf(r.result), html: (r) => chip(r.result, RESULT_CHIP[r.result][0], RESULT_CHIP[r.result][1]) },
      byCol, dateCol,
    ],
  });
  function equipmentScreen(editMode) {
    const selCat = D.eqCats.find((c) => c.id === eqSel.cat);
    if (eqSel.cat && !selCat) eqSel.cat = null;
    return `${backLink(editMode ? "#/equipment" : "#/resources", editMode ? "閲覧に戻る" : "資源に戻る")}${flashHtml()}
      ${tableCard(eqCatT, editMode, "h-ecat", "設備の分類の一覧", editMode ? `<a class="btn" href="#/equipment/cat/new">${icon("plus")}<span>分類を追加</span></a>` : editLink("#/equipment/edit", "設備"))}
      ${tableCard(eqT, editMode, "h-equip", selCat ? `「${esc(selCat.name)}」の設備の一覧` : "設備の一覧", editMode ? `<a class="btn" href="#/equipment/new">${icon("plus")}<span>設備を追加</span></a>` : "")}`;
  }
  function eqCatEditScreen(id) {
    const isNew = id === "new";
    const c = isNew ? { code: "", name: "", reading: "", start_at: "", stop_at: "", desc: "" } : D.eqCats.find((x) => x.id === id);
    if (!c) return notFound("設備の分類が見つかりません", "#/equipment/edit");
    const used = isNew ? 0 : D.equipments.filter((e) => e.cat === id).length;
    return `${backLink("#/equipment/edit", "一覧に戻る")}${flashHtml()}
      <form class="card form" id="edit-form" data-kind="eqCat" data-id="${id}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${fieldRow({ id: "code", label: "分類コード", max: 12, value: c.code ?? "", taken: D.eqCats.filter((x) => x.id !== id).map((x) => x.code) })}
        ${fieldRow({ id: "name", label: "分類名称", max: 20, value: c.name, taken: D.eqCats.filter((x) => x.id !== id).map((x) => x.name) })}
        ${fieldRow({ id: "reading", label: "読み", max: 60, req: false, value: c.reading ?? "" })}
        ${fieldRow({ id: "start_at", label: "適用開始", kind: "date", req: false, value: c.start_at ?? "" })}
        ${fieldRow({ id: "stop_at", label: "適用終了", kind: "date", req: false, value: c.stop_at ?? "", after: "start_at" })}
        ${fieldRow({ id: "desc", label: "備考", kind: "textarea", max: 120, req: false, value: c.desc })}
        ${isNew ? "" : metaHtml(c)}
        ${used ? `<p class="note" id="del-note">この分類の設備が${used}台あるため削除できません。</p>` : ""}
        <div class="form-actions">${isNew ? "" : `<button class="btn btn-danger" type="button" id="del-btn" ${used ? 'disabled aria-describedby="del-note"' : ""}>削除</button>`}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>`;
  }
  function equipmentEditScreen(id) {
    const isNew = id === "new";
    const e = isNew ? { code: "", control_code: "", label_code: "", name: "", cat: "", loc: "", installed: "", status: "" } : D.equipments.find((x) => x.id === id);
    if (!e) return notFound("設備が見つかりません", "#/equipment/edit");
    if (eqSel.equip !== id) { eqSel.equip = id; eqSel.op = null; }
    const used = isNew ? 0 : D.inspOps.filter((o) => o.equip === id).length;
    const selOp = D.inspOps.find((o) => o.id === eqSel.op && o.equip === id);
    if (eqSel.op && !selOp) eqSel.op = null;
    const below = isNew ? `<p class="tbl-note-out">設備を追加すると、点検の運用と点検実績をここに表示します。</p>`
      : `${tableCard(eqOpT, true, "h-eqop", "設備点検の運用", `<a class="btn" href="#/maintenance/e/inspOp/new">${icon("plus")}<span>運用を追加</span></a>`)}
         ${tableCard(eqRecT, true, "h-eqrec", selOp ? `「${esc(ENT.inspOp.name(selOp))}」の点検実績` : "点検実績", "")}`;
    return `${backLink("#/equipment/edit", "一覧に戻る")}${flashHtml()}
      <form class="card form" id="edit-form" data-kind="equip" data-id="${id}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${fieldRow({ id: "code", label: "設備コード", max: 12, value: e.code, taken: D.equipments.filter((x) => x.id !== id).map((x) => x.code) })}
        ${fieldRow({ id: "control_code", label: "管理コード", max: 20, req: false, value: e.control_code ?? "" })}
        ${fieldRow({ id: "label_code", label: "表示コード", max: 20, req: false, value: e.label_code ?? "" })}
        ${fieldRow({ id: "name", label: "設備名（品目）", max: 40, value: e.name })}
        ${fieldRow({ id: "cat", label: "設備分類", kind: "select", options: D.eqCats.map((c) => [c.id, c.name]), value: e.cat })}
        ${fieldRow({ id: "loc", label: "場所", kind: "select", options: locWalk().map(({ l, depth }) => [l.id, `${"　".repeat(depth)}${l.name}（${l.type}）`]), value: e.loc })}
        ${fieldRow({ id: "installed", label: "設置日", kind: "date", value: e.installed })}
        ${fieldRow({ id: "status", label: "状態", kind: "select", options: EQ_STATUS.map((s) => [s, s]), value: e.status })}
        ${isNew ? "" : metaHtml(e)}
        ${used ? `<p class="note" id="del-note">保全の運用台帳で${used}件使われているため削除できません。</p>` : ""}
        <div class="form-actions">${isNew ? "" : `<button class="btn btn-danger" type="button" id="del-btn" ${used ? 'disabled aria-describedby="del-note"' : ""}>削除</button>`}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>
      ${below}`;
  }

  /* ---------- 資材所要計算 (MRP / 再MRP) ----------
     DB の tests.mrp_execute(p_mode, …) に対応。p_mode=1 受注MRP / 2 再MRP。戻り値は MRP実行 + 提案の一覧、またはエラーコード。
     計算は重く、他のユーザーの処理にも影響するため、実行前に確認を出し、計算中は画面全体を操作できないようにする。
     プロトタイプでは数秒の待ちを模擬する。所要時間と結果は data.js の D.mrp (durationMs / outcome) で切り替える。 */
  D.mrp ??= { durationMs: 7000, outcome: "success" };
  D.mrpRows ??= [];
  const MRP_KIND = {
    PURCHASE_NEW: ["発注（新規）", "truck"], PRODUCTION_NEW: ["生産（新規）", "production"],
    PURCHASE_RESCHEDULE: ["発注の日程変更", "pencil"], PRODUCTION_RESCHEDULE: ["生産の日程変更", "pencil"],
    PURCHASE_CANCEL: ["発注の取消", "close"], PRODUCTION_CANCEL: ["生産の取消", "close"],
    OUTSOURCE_OPTION: ["外注への切替", "factory"], EXC_OVERLOAD: ["設備の過負荷", "alert"],
  };
  const MRP_DEC = { 0: ["要判断", "alert", "warn"], 1: ["採用", "check", "ok"], 2: ["却下", "close", "mute"], 9: ["情報", "", "mute"] };
  const MRP_ERR = { timeout: "57014", args: "MRP00" }; // DB処理中のタイムアウト / 引数エラー
  // issues: 調査(マスタの不備)の結果。targets: 再MRP の対象の受注明細(空 = すべての需要)。calc / nextCalc: 計算して確認する(確定は後で)
  const mrpState = { running: false, redo: false, result: null, error: null, t0: 0, issues: null, targets: [], calc: false, nextCalc: false };
  let mrpTick = null;
  const mrpDt = (iso) => (iso ? fmtDate(iso) : "―");
  const mrpT = makeTable({
    key: "mrpRes", noun: "件", list: () => mrpState.result?.rows ?? [],
    search: (r) => r.code + r.name + r.message, placeholder: "品目コード・品目名・メッセージ",
    filter: { label: "判断", values: ["要判断", "採用", "情報"], get: (r) => MRP_DEC[r.decision][0] },
    cols: [
      { key: "kind", label: "提案", fixed: true, val: (r) => MRP_KIND[r.kind][0], html: (r) => chip(MRP_KIND[r.kind][0], MRP_KIND[r.kind][1]) },
      { key: "code", label: "品目コード", val: (r) => r.code, html: (r) => `<span class="od-nowrap">${esc(r.code)}</span>` },
      { key: "name", label: "品目名", val: (r) => r.name },
      { key: "qty", label: "数量", num: true, val: (r) => r.qty, html: (r) => `${fmt(r.qty)}${esc(r.unit)}` },
      { key: "alloc", label: "在庫引当", num: true, val: (r) => r.alloc, html: (r) => `${fmt(r.alloc)}${esc(r.unit)}` },
      { key: "need", label: "必要日", val: (r) => r.need || "", html: (r) => `<span class="od-nowrap">${mrpDt(r.need)}</span>` },
      { key: "release", label: "発注日・着手日", val: (r) => r.release || "", html: (r) => `<span class="od-nowrap">${mrpDt(r.release)}</span>` },
      { key: "due", label: "納期", val: (r) => r.due || "", html: (r) => `<span class="od-nowrap">${mrpDt(r.due)}</span>${r.late ? ` ${chip("遅れ", "alert", "bad")}` : ""}` },
      { key: "decision", label: "判断", val: (r) => MRP_DEC[r.decision][0], html: (r) => chip(MRP_DEC[r.decision][0], MRP_DEC[r.decision][1], MRP_DEC[r.decision][2]) },
      { key: "message", label: "メッセージ", val: (r) => r.message || "―" },
    ],
  });

  /* 手続き: 1 調査(mrp_check_items)→ 2 評価(mrp_execute / mrp_run)→ 3 判断(mrp_set_decision)→ 4 確定・破棄(mrp_commit / mrp_discard) */
  D.mrpIssues ??= [
    { code: "S-3001", message: "品目工程運用明細の工程運用明細または工程が削除されています", sev: 1 },
    { code: "M-1002", message: "仕入先が登録されていません", sev: 2 },
  ];
  D.mrpTargets ??= [
    { id: "od-1", name: "受注 SO-0012 / 精密切削部品 A型" },
    { id: "od-2", name: "受注 SO-0015 / カバー部品 B型" },
    { id: "od-3", name: "受注 SO-0018 / SUS304丸棒 φ20" },
  ];
  const mrpPending = () => (mrpState.result?.rows ?? []).filter((r) => r.decision === 0).length;
  function mrpCheckCard() {
    const is = mrpState.issues;
    const list = is == null ? "" : is.length === 0
      ? `<p id="mrp-check-none">不備は見つかりませんでした。</p>`
      : `<p id="mrp-check-count"><strong>不備の件数：${is.length}件</strong></p>
         <ul class="warn-list">${[...is].sort((a, b) => a.sev - b.sev).map((i) => `<li>${icon("alert")}<span>${esc(i.code)}　${esc(i.message)}</span></li>`).join("")}</ul>`;
    return `<section class="card mrp-ctl" aria-labelledby="h-mrp-check">
        <h2 class="sec-title" id="h-mrp-check">1. 調査（マスタの不備）</h2>
        <p class="note">MRPの前に、品目のマスタの不備（工程・仕入先・カレンダーなど）を調べます。調べるだけで、何も変えません。不備があってもMRPは実行できますが、結果に「マスタ不備」の提案として出ます。</p>
        <div class="form-actions"><button class="btn" type="button" id="mrp-check">${icon("search")}<span>不備を調べる</span></button></div>
        ${list}
      </section>`;
  }
  function mrpTargetsBlock() {
    if (!mrpState.redo) return "";
    const t = mrpState.targets;
    const opts = D.mrpTargets.filter((x) => !t.some((y) => y.id === x.id)).map((x) => `<option value="${esc(x.id)}">${esc(x.name)}</option>`).join("");
    return `<div class="mrp-targets" id="mrp-targets">
        <h3 class="sec-sub">再MRPの対象の受注明細</h3>
        <p class="note">指定すると、その受注明細と、その下位の資材計画だけを作り直します。指定しないときは、すべての需要が対象です。</p>
        ${t.length === 0 ? `<p id="mrp-targets-all">指定なし（すべての需要）</p>`
          : `<div class="chip-row">${t.map((x) => `<span class="chip">${esc(x.name)} <button type="button" class="btn-icon" data-mrp-rm="${esc(x.id)}" aria-label="${esc(x.name)}を対象から外す">${icon("close")}</button></span>`).join("")}</div>`}
        <label class="field"><span>受注明細を選ぶ</span><select id="mrp-target-add"><option value="">選択してください</option>${opts}</select></label>
      </div>`;
  }
  function mrpAwaitingCard() {
    const r = mrpState.result;
    if (!r?.awaiting) return "";
    const pend = mrpPending();
    return `<section class="card mrp-ctl" id="mrp-awaiting" aria-labelledby="h-mrp-wait">
        <h2 class="sec-title" id="h-mrp-wait">確定待ちです</h2>
        <p>要判断の提案の採用・却下を決めてから、確定します。確定するまで、計画データは変わりません。確定しないで新しく計算すると、この結果は失効します。</p>
        <p><strong>判断が残っている提案：${pend}件</strong></p>
        <div class="form-actions">
          <button class="btn" type="button" id="mrp-adopt" ${pend ? "" : "disabled"}>表示中の要判断を採用</button>
          <button class="btn" type="button" id="mrp-reject" ${pend ? "" : "disabled"}>表示中の要判断を却下</button>
        </div>
        <div class="form-actions">
          <button class="btn btn-primary" type="button" id="mrp-commit" ${pend ? "disabled" : ""}>確定する</button>
          ${pend ? `<button class="btn" type="button" id="mrp-force">要判断を却下して確定</button>` : ""}
          <button class="btn" type="button" id="mrp-discard">破棄する</button>
        </div>
        <p class="note">確定すると、採用された提案が、資材計画・発注・生産計画・引当予約に反映されます。要判断を却下して確定すると、残っている提案はすべて却下として確定し、計算のあとにデータが更新されたかの確認を省きます。</p>
      </section>`;
  }

  function mrpScreen() {
    const st = mrpState;
    const err = st.error
      ? `<div class="alert" role="alert" id="mrp-status" tabindex="-1">${icon("alert")}<div class="od-fill"><strong>計算を完了できませんでした</strong>
          <p>いまは処理を終えられませんでした。しばらく時間をおいてから、もう一度実行してください。</p>
          <p class="note">お問い合わせの際は、エラーコード「${esc(st.error.code)}」をお伝えください。</p></div></div>` : "";
    const r = st.result;
    const ok = r ? `<div class="flash mrp-ok" role="status" id="mrp-status" tabindex="-1">${icon("check")}<div class="od-fill"><strong>MRPが成功しました</strong>
          <p>${esc(r.at)} に${r.mode === 2 ? "再MRP" : "受注MRP"}を実行し、${r.rows.length}件の提案を作成しました。${r.pending
            ? `要判断の提案が${r.pending}件あります。内容を確認して、採否を決めてください。` : "要判断の提案はなく、確定まで完了しました。"}${r.late ? `納期に遅れる提案が${r.late}件あります。` : ""}</p></div></div>
        ${mrpAwaitingCard()}${tableCard(mrpT, false, "h-mrp-res", "MRPの結果（提案の一覧）", "")}` : "";
    return `${mrpCheckCard()}<section class="card mrp-ctl" aria-labelledby="h-mrp">
        <h2 class="sec-title" id="h-mrp">資材所要計算（MRP）</h2>
        <p>受注と、在庫・発注残・生産残をもとに、必要な資材を計算し、発注や生産の提案を作ります。</p>
        <label class="col-opt mrp-redo"><input type="checkbox" id="mrp-redo" ${st.redo ? "checked" : ""}>再MRPとして実行する</label>
        <p class="note">チェックなし：まだ計画していない受注だけを計算します（受注MRP）。<br>チェックあり：受注を見直したあとに、すべての需要を作り直します（再MRP）。</p>
        ${mrpTargetsBlock()}
        <p class="note">処理が重く、他のユーザーの作業にも影響します。実行前に確認を表示します。</p>
        <div class="form-actions"><button class="btn btn-primary" type="button" id="mrp-run">${icon("production")}<span>MRPを実行</span></button>
          <button class="btn" type="button" id="mrp-calc">${icon("check")}<span>計算して確認する</span></button></div>
        <p class="note">「MRPを実行」は、要判断が無ければ、そのまま確定します。「計算して確認する」は、計算だけして、結果を確認・判断してから、確定または破棄します。</p>
      </section>
      ${err}${ok}
      ${!r && !err ? `<section class="card">${emptyState("まだ実行していません", "「MRPを実行」を押すと、計算の結果がここに表示されます。")}</section>` : ""}`;
  }

  function openMrpConfirm(trigger) {
    const redo = mrpState.redo;
    const li = (t) => `<li>${icon("alert")}<span>${t}</span></li>`;
    showSheet(trigger, {
      chip: chip("確認", "alert", "warn"), title: `${redo ? "再MRP" : "MRP"}を実行しますか？`, rows: [],
      extra: `<ul class="warn-list" aria-label="実行前にご確認ください">
          ${li("処理が重く、完了まで数分かかることがあります。")}
          ${li("<strong>影響が広範囲に及び、ほかのユーザーが行っている処理にも影響します。</strong>動作が遅くなったり、待たされたりすることがあります。")}
          ${redo && !mrpState.targets.length ? li("<strong>再MRPは、すべての需要を作り直します。</strong>通常のMRPよりも、影響がさらに大きくなります。") : ""}
          ${redo && mrpState.targets.length ? li(`<strong>指定した${mrpState.targets.length}件の受注明細と、その下位の資材計画だけを作り直します。</strong>`) : ""}
          ${li("実行中は、画面のどこも操作できません。途中で止めることもできません。")}
        </ul>
        <p>本当に実行してよろしいですか？</p>
        <div class="form-actions sheet-actions"><button class="btn" type="button" data-close>キャンセル</button><button class="btn btn-danger" type="button" id="mrp-go">実行する</button></div>`,
      onMount: (rootEl) => rootEl.querySelector("#mrp-go").addEventListener("click", () => { closeSheet(false); startMrp(mrpState.nextCalc); }),
    });
  }

  /* ---- running: full-screen overlay that blocks the page, the menus and the keyboard ---- */
  const MRP_STAGES = ["需要（受注・安全在庫）を集計しています", "部品表を展開しています", "在庫と発注残を差し引いています", "発注・生産の提案を作成しています"];
  const gearTeeth = (cx, cy, r, n) => Array.from({ length: n }, (_, i) => `<rect x="${cx - 4}" y="${cy - r - 7}" width="8" height="10" rx="2" transform="rotate(${(360 / n) * i} ${cx} ${cy})"/>`).join("");
  const mrpArt = () => `<svg class="mrp-art" viewBox="0 0 320 168" role="img" aria-label="歯車が回り、部材がベルトコンベアで運ばれて、帳票に計算結果が書き込まれていく様子">
      <rect class="art-sheet" x="206" y="12" width="104" height="84" rx="8"/>
      <rect class="art-line l1" x="218" y="28" width="70" height="6" rx="3"/><rect class="art-line l2" x="218" y="44" width="52" height="6" rx="3"/>
      <rect class="art-line l3" x="218" y="60" width="78" height="6" rx="3"/><rect class="art-line l4" x="218" y="76" width="40" height="6" rx="3"/>
      <g class="gear gear-a"><circle cx="62" cy="62" r="24"/>${gearTeeth(62, 62, 24, 8)}<circle class="hole" cx="62" cy="62" r="9"/></g>
      <g class="gear gear-b"><circle cx="124" cy="88" r="16"/>${gearTeeth(124, 88, 16, 6)}<circle class="hole" cx="124" cy="88" r="6"/></g>
      <rect class="art-belt" x="8" y="136" width="304" height="14" rx="7"/><circle class="art-wheel" cx="20" cy="143" r="5"/><circle class="art-wheel" cx="300" cy="143" r="5"/>
      <g class="art-box b1"><rect x="0" y="112" width="30" height="24" rx="3"/><path d="M15 112v24"/></g>
      <g class="art-box b2"><rect x="0" y="112" width="30" height="24" rx="3"/><path d="M15 112v24"/></g>
      <g class="art-box b3"><rect x="0" y="112" width="30" height="24" rx="3"/><path d="M15 112v24"/></g>
    </svg>`;
  const mrpBlocked = () => (mobile ? [document.querySelector(".m-app")] : [root, switcher]).filter(Boolean);
  function openMrpOverlay() {
    const ov = document.createElement("div");
    ov.className = "mrp-overlay";
    ov.id = "mrp-overlay";
    ov.tabIndex = -1;
    ov.setAttribute("role", "alertdialog");
    ov.setAttribute("aria-modal", "true");
    ov.setAttribute("aria-labelledby", "mrp-ov-title");
    ov.setAttribute("aria-describedby", "mrp-ov-desc");
    ov.innerHTML = `<div class="mrp-ov-card">
        ${mrpArt()}
        <h2 id="mrp-ov-title">${mrpState.redo ? "再MRP" : "MRP"}を計算しています</h2>
        <p class="mrp-stage" id="mrp-stage">${MRP_STAGES[0]}</p>
        <div class="mrp-bar" aria-hidden="true"><span></span></div>
        <p class="mrp-elapsed">経過時間 <strong id="mrp-elapsed" class="od-nowrap">0:00</strong></p>
        <p class="note" id="mrp-ov-desc">計算が終わるまで、画面は操作できません。このままお待ちください。他のユーザーへの影響を抑えるため、途中で止めることはできません。</p>
        <p class="sr-only" id="mrp-sr" role="status">${MRP_STAGES[0]}</p>
      </div>`;
    (mobile ? root.parentElement : document.body).appendChild(ov);
    mrpBlocked().forEach((el) => { el.inert = true; });
    ov.focus();
  }
  function closeMrpOverlay() {
    mrpBlocked().forEach((el) => { el.inert = false; });
    document.getElementById("mrp-overlay")?.remove();
  }
  function updateMrpOverlay() {
    const s = Math.floor((Date.now() - mrpState.t0) / 1000);
    const text = MRP_STAGES[Math.floor(s / 3) % MRP_STAGES.length];
    const stage = document.getElementById("mrp-stage");
    if (stage && stage.textContent !== text) { stage.textContent = text; document.getElementById("mrp-sr").textContent = text; }
    const el = document.getElementById("mrp-elapsed");
    if (el) el.textContent = `${Math.floor(s / 60)}:${String(s % 60).padStart(2, "0")}`;
  }
  function startMrp(calc = false) {
    mrpState.calc = calc;
    mrpState.running = true;
    mrpState.error = null;
    mrpState.result = null;
    mrpState.t0 = Date.now();
    openMrpOverlay();
    mrpTick = setInterval(updateMrpOverlay, 500);
    setTimeout(finishMrp, D.mrp.durationMs);
  }
  function finishMrp() {
    clearInterval(mrpTick);
    mrpState.running = false;
    closeMrpOverlay();
    const outcome = D.mrp.outcome;
    if (outcome === "success") {
      const rows = D.mrpRows.map((r) => ({ ...r }));
      const n = new Date();
      mrpState.result = {
        mode: mrpState.redo ? 2 : 1, rows,
        at: `${n.getFullYear()}年${n.getMonth() + 1}月${n.getDate()}日 ${String(n.getHours()).padStart(2, "0")}:${String(n.getMinutes()).padStart(2, "0")}`,
        pending: rows.filter((r) => r.decision === 0).length, late: rows.filter((r) => r.late).length,
        // 計算して確認する、または要判断が残るときは、確定待ち(計画データは変わらない)
        awaiting: mrpState.calc || rows.some((r) => r.decision === 0),
      };
    } else mrpState.error = { code: MRP_ERR[outcome] ?? "MRP00" };
    render();
    document.getElementById("mrp-status")?.focus();
  }
  window.addEventListener("keydown", (e) => {
    if (!mrpState.running) return;
    e.preventDefault();
    e.stopPropagation();
    document.getElementById("mrp-overlay")?.focus();
  }, true);
  window.addEventListener("beforeunload", (e) => { if (mrpState.running) { e.preventDefault(); e.returnValue = ""; } });

  /* ---------- save / delete for the edit structures ---------- */
  const nextId = (prefix, arr) => prefix + (Math.max(0, ...arr.map((x) => parseInt(String(x.id).slice(prefix.length), 10) || 0)) + 1);
  function saveForm(form) {
    const v = Object.fromEntries([...form.querySelectorAll("input, textarea, select")].map((el) => [el.name, el.type === "checkbox" ? (el.checked ? "1" : "") : el.value.trim()]));
    const stamp = { updatedBy: D.user.name, updatedAt: TODAY };
    const { kind, id, pid, sid, res, ent } = form.dataset;
    if (kind === "loc") {
      const parent = v.parent || null;
      if (parent) { locView.open.add(parent); locView.loaded.add(parent); }
      if (id === "new") D.locations.push({ id: nextId("l", D.locations), code: v.code, control_code: v.control_code, name: v.name, reading: v.reading, type: v.type, parent, available: v.available, desc: v.desc, ...stamp });
      else Object.assign(locById(id), { code: v.code, control_code: v.control_code, name: v.name, reading: v.reading, type: v.type, parent, available: v.available, desc: v.desc }, stamp);
      flash = `場所「${v.name}」を${id === "new" ? "追加" : "保存"}しました。`;
      return "#/locations/edit";
    }
    if (kind === "eqCat") {
      if (id === "new") D.eqCats.push({ id: nextId("ec", D.eqCats), ...v, ...stamp });
      else Object.assign(D.eqCats.find((x) => x.id === id), v, stamp);
      flash = `設備の分類「${v.name}」を${id === "new" ? "追加" : "保存"}しました。`;
      return "#/equipment/edit";
    }
    if (kind === "equip") {
      if (id === "new") D.equipments.push({ id: nextId("eq", D.equipments), ...v, ...stamp });
      else Object.assign(D.equipments.find((x) => x.id === id), v, stamp);
      flash = `設備「${v.name}」を${id === "new" ? "追加" : "保存"}しました。`;
      return "#/equipment/edit";
    }
    if (kind === "gEnt") {
      const E = G[ent];
      const back = form.dataset.back;
      if (ent === "complaint") Object.assign(v, ckDerive(v.kind));
      if (id === "new") {
        const n = { id: nextId(E.key, D[E.coll]), ...(E.parent ? { [E.parent.key]: pid || v[E.parent.key] } : {}), ...v, ...stamp };
        if (E.tree) { n.parent = v.parent || ""; if (n.parent) { gTree.open.add(n.parent); gTree.loaded.add(n.parent); } }
        D[E.coll].push(n);
        flash = `${E.label}「${gName(E, n)}」を追加しました。${E.children.length ? "続けて関連する情報を登録できます。" : ""}`;
        return E.children.length ? `#/g/e/${ent}/${n.id}` : back;
      }
      const r = gGet(ent, id);
      Object.assign(r, v, stamp);
      if (E.tree) r.parent = v.parent || "";
      flash = `${E.label}「${gName(E, r)}」を保存しました。`;
      return back;
    }
    if (kind === "mEnt") {
      const E = ENT[ent];
      if (id === "new") {
        const n = { id: nextId(E.prefix, D[E.coll]), ...(E.parent ? { [E.parent.key]: pid } : {}), ...v, ...stamp };
        D[E.coll].push(n);
        flash = `${E.label}「${E.name(n)}」を追加しました。${E.children ? `続けて${ENT[E.children].label}を登録できます。` : ""}`;
        return E.children ? `#/maintenance/e/${ent}/${n.id}` : mBack(E, n);
      }
      const r = mGet(E.coll, id);
      Object.assign(r, v, stamp);
      flash = `${E.label}「${E.name(r)}」を保存しました。`;
      return mBack(E, r);
    }
    if (kind === "resItem") {
      const R = RES[res];
      if (id === "new") {
        const n = { id: nextId(R.itemPrefix, D[R.items]), ...v, ...stamp };
        D[R.items].push(n);
        flash = `${R.label}「${v.name}」を追加しました。続けて保持している作業者を登録できます。`;
        return `#/${res}/${n.id}`;
      }
      Object.assign(D[R.items].find((x) => x.id === id), v, stamp);
      D[R.recs].forEach((r) => { if (r.item === id) r.name = v.name; });
      flash = `${R.label}「${v.name}」を保存しました。`;
      return `#/${res}/edit`;
    }
    if (kind === "resHolder") {
      const R = RES[res];
      const it = D[R.items].find((x) => x.id === pid);
      const base = res === "capabilities" ? { staff: v.staff, level: v.level } : { staff: v.staff, number: v.number, acquired: v.acquired, expires: v.expires };
      if (id === "new") D[R.recs].push({ id: nextId(R.recPrefix, D[R.recs]), item: pid, name: it.name, ...base, ...stamp });
      else Object.assign(D[R.recs].find((x) => x.id === id), base, stamp);
      flash = `${staffName(v.staff)} さんを「${it.name}」の保持者として${id === "new" ? "追加" : "保存"}しました。`;
      return `#/${res}/${pid}`;
    }
    if (kind === "apPattern") {
      if (id === "new") {
        const n = { id: nextId("ap", D.apPatterns), ...v, ...stamp };
        D.apPatterns.push(n);
        flash = `承認パターン「${v.name}」を追加しました。続けて承認の範囲を登録できます。`;
        return `#/approval/${n.id}`;
      }
      Object.assign(D.apPatterns.find((x) => x.id === id), v, stamp);
      flash = `承認パターン「${v.name}」を保存しました。`;
      return "#/approval/edit";
    }
    if (kind === "coApPattern") {
      if (id === "new") {
        const n = { id: nextId("ap", D.apPatterns), ...v, ...stamp };
        D.apPatterns.push(n);
        flash = `承認パターン「${v.name}」を追加しました。続けて役職の承認順を登録できます。`;
        return `#/company/approval/${n.id}`;
      }
      Object.assign(D.apPatterns.find((x) => x.id === id), v, stamp);
      flash = `承認パターン「${v.name}」を保存しました。`;
      return `#/company/approval/${id}`;
    }
    if (kind === "apScope") {
      const r = { step: Number(v.step), pos: v.pos, dept: v.dept, incl: v.incl === "yes" };
      if (id === "new") {
        const n = { id: nextId("s", D.apScopes), ap: pid, ...r, ...stamp };
        D.apScopes.push(n);
        flash = "承認の範囲を追加しました。続けて承認できる人を登録できます。";
        return `#/approval/${pid}/scope/${n.id}`;
      }
      Object.assign(D.apScopes.find((x) => x.id === id), r, stamp);
      flash = "承認の範囲を保存しました。";
      return `#/approval/${pid}`;
    }
    if (kind === "apApprover") {
      if (id === "new") D.apApprovers.push({ id: nextId("m", D.apApprovers), scope: sid, ...v, ...stamp });
      else Object.assign(D.apApprovers.find((x) => x.id === id), v, stamp);
      flash = `${staffName(v.staff)} さんを承認できる人として${id === "new" ? "追加" : "保存"}しました。`;
      return `#/approval/${pid}/scope/${sid}`;
    }
    if (kind === "company") {
      Object.assign(D.company, v, stamp);
      draft = null;
      flash = "会社情報を保存しました。";
      return "#/company";
    }
    if (kind === "provision") {
      if (id === "new") D.offerings.push({ id: nextId("o", D.offerings), ...v, ...stamp });
      else Object.assign(D.offerings.find((x) => x.id === id), v, stamp);
      flash = id === "new" ? `提供「${v.name}」を追加しました。` : `提供「${v.name}」を保存しました。`;
      return "#/company/edit";
    }
    if (kind === "position") {
      if (id === "new") {
        const n = { id: nextId("p", D.positions), ...v, ...stamp };
        D.positions.push(n);
        flash = `役職「${v.name}」を追加しました。続けて担当者を割り当てられます。`;
        return `#/company/position/${n.id}`;
      }
      Object.assign(D.positions.find((x) => x.id === id), v, stamp);
      flash = `役職「${v.name}」を保存しました。`;
      return "#/company/edit";
    }
    if (kind === "staff") {
      const person = { name: v.name, reading: v.reading, sex: v.sex, phone: v.phone, private_phone: v.private_phone, remarks: v.remarks, site: v.site, type: v.type, dept: v.dept || "" };
      if (id === "new") {
        const caps = staffItems("caps", "new");
        const lics = staffItems("lics", "new");
        staffDraft = null;
        D.employees.push({ id: v.no, no: v.no, ...person, ...stamp });
        caps.forEach(({ id: _t, ...r }) => D.capabilities.push({ id: nextId("c", D.capabilities), ...r, staff: v.no }));
        lics.forEach(({ id: _t, ...r }) => D.licenses.push({ id: nextId("l", D.licenses), ...r, staff: v.no }));
        flash = `作業者「${v.name}」を追加しました。`;
      } else {
        Object.assign(D.employees.find((x) => x.id === id), person, stamp);
        staffDraft = null;
        flash = `作業者「${v.name}」を保存しました。`;
      }
      return "#/staff/edit";
    }
    if (kind === "cap" || kind === "lic") {
      const k = kind === "cap" ? "caps" : "lics";
      const vv = { ...v, name: (kind === "cap" ? D.capItems : D.licItems).find((x) => x.id === v.item)?.name ?? "" };
      putStaffItem(k, pid, id, vv, stamp);
      flash = `${kind === "cap" ? "力量" : "資格"}「${vv.name}」を${id === "new" ? "追加" : "保存"}しました。`;
      return `#/staff/${pid}`;
    }
    if (kind === "department") {
      const parent = v.parent || null;
      const newKinds = id === "new" ? [...deptKindIds("new")] : null;
      deptDraft = null;
      if (parent) { deptView.open.add(parent); deptView.loaded.add(parent); }
      if (id === "new") {
        const n = { id: nextId("d", D.departments), code: v.code, name: v.name, reading: v.reading, office: v.office, parent, kinds: newKinds, ...stamp };
        D.departments.push(n);
        flash = `部署「${v.name}」を追加しました。`;
        return `#/departments/${n.id}`;
      }
      Object.assign(deptById(id), { code: v.code, name: v.name, reading: v.reading, office: v.office, parent }, stamp);
      flash = `部署「${v.name}」を保存しました。`;
      return "#/departments/edit";
    }
    if (kind === "deptkind") {
      if (id === "new") {
        const n = { id: nextId("k", D.deptKinds), name: v.name, ...stamp };
        D.deptKinds.push(n);
        setDeptKinds(pid, [...deptKindIds(pid), n.id]);
        flash = `区分「${v.name}」を追加しました。`;
      } else {
        Object.assign(kindById(id), { name: v.name }, stamp);
        flash = `区分「${v.name}」を保存しました。`;
      }
      return `#/departments/${pid}/kind`;
    }
    if (kind === "office" && id === "new") {
      const n = { id: nextId("s", D.sites), ...v, people: 0, icon: SITE_ICONS[v.type], ...stamp };
      D.sites.push(n);
      D.org[n.id] = { seg: [0, 0, 0], depts: [] };
      flash = `事業所「${v.name}」を追加しました。`;
      return "#/sites/edit";
    }
    if (kind === "office") {
      const s = D.sites.find((x) => x.id === id);
      D.employees.forEach((e) => { if (e.site === s.name) e.site = v.name; });
      Object.assign(s, v, stamp, { icon: SITE_ICONS[v.type] });
      flash = `事業所「${v.name}」を保存しました。`;
      return "#/sites/edit";
    }
    if (id === "new") D.assignments.push({ id: nextId("a", D.assignments), pos: pid, emp: v.emp, ...stamp });
    else Object.assign(D.assignments.find((x) => x.id === id), { emp: v.emp }, stamp);
    flash = `${empOf(v.emp).name} さんを割り当てました。`;
    return `#/company/position/${pid}`;
  }
  function confirmSheet(trigger, { title, text, okLabel, onOk }) {
    showSheet(trigger, {
      chip: chip("確認", "alert", "warn"), title, rows: [],
      extra: `<p>${text}</p><div class="form-actions sheet-actions"><button class="btn" type="button" data-close>キャンセル</button><button class="btn btn-danger" type="button" id="confirm-ok">${okLabel}</button></div>`,
      onMount: (root) => root.querySelector("#confirm-ok").addEventListener("click", () => { closeSheet(false); onOk(); }),
    });
  }
  function deleteRecord(form, trigger) {
    const { kind, id, pid, sid, res, ent } = form.dataset;
    if (kind === "loc") {
      const l = locById(id);
      confirmSheet(trigger, { title: `場所「${l.name}」を削除しますか？`, text: "元に戻せません。", okLabel: "削除する",
        onOk: () => { D.locations.splice(D.locations.indexOf(l), 1); flash = `場所「${l.name}」を削除しました。`; location.hash = "#/locations/edit"; } });
      return;
    }
    if (kind === "eqCat") {
      const c = D.eqCats.find((x) => x.id === id);
      confirmSheet(trigger, { title: `設備の分類「${c.name}」を削除しますか？`, text: "元に戻せません。", okLabel: "削除する",
        onOk: () => { D.eqCats.splice(D.eqCats.indexOf(c), 1); if (eqSel.cat === id) eqSel.cat = null; flash = `設備の分類「${c.name}」を削除しました。`; location.hash = "#/equipment/edit"; } });
      return;
    }
    if (kind === "equip") {
      const e = D.equipments.find((x) => x.id === id);
      confirmSheet(trigger, { title: `設備「${e.name}」を削除しますか？`, text: "元に戻せません。", okLabel: "削除する",
        onOk: () => { D.equipments.splice(D.equipments.indexOf(e), 1); flash = `設備「${e.name}」を削除しました。`; location.hash = "#/equipment/edit"; } });
      return;
    }
    if (kind === "gEnt") {
      const E = G[ent];
      const r = gGet(ent, id);
      const n = gCountBelow(ent, id);
      const nm = gName(E, r);
      confirmSheet(trigger, { title: `${E.label}「${nm}」を削除しますか？`, text: n ? `配下の関連情報${n}件も削除されます。元に戻せません。` : "元に戻せません。", okLabel: "削除する",
        onOk: () => { const back = form.dataset.back; gRemove(ent, id); flash = `${E.label}「${nm}」を削除しました。`; location.hash = back; } });
      return;
    }
    if (kind === "mEnt") {
      const E = ENT[ent];
      const r = mGet(E.coll, id);
      const n = mCountBelow(ent, id);
      const nm = E.name(r);
      confirmSheet(trigger, { title: `${E.label}「${nm}」を削除しますか？`, text: n ? `配下の${ENT[E.children].label}など${n}件も削除されます。元に戻せません。` : "元に戻せません。", okLabel: "削除する",
        onOk: () => { const back = mBack(E, r); mRemove(ent, id); flash = `${E.label}「${nm}」を削除しました。`; location.hash = back; } });
      return;
    }
    if (kind === "resItem") {
      const R = RES[res];
      const it = D[R.items].find((x) => x.id === id);
      const n = D[R.recs].filter((r) => r.item === id).length;
      confirmSheet(trigger, { title: `${R.label}「${it.name}」を削除しますか？`, text: n ? `保持している作業者${n}名の登録も削除されます。元に戻せません。` : "元に戻せません。", okLabel: "削除する",
        onOk: () => {
          D[R.recs] = D[R.recs].filter((r) => r.item !== id);
          D[R.items].splice(D[R.items].indexOf(it), 1);
          if (resSel[res] === id) resSel[res] = null;
          flash = `${R.label}「${it.name}」を削除しました。`;
          location.hash = `#/${res}/edit`;
        } });
      return;
    }
    if (kind === "resHolder") {
      const R = RES[res];
      const rec = D[R.recs].find((x) => x.id === id);
      confirmSheet(trigger, { title: `${staffName(rec.staff)} さんを保持者から外しますか？`, text: `「${rec.name}」の保持の登録が消えます。作業者の情報は変わりません。`, okLabel: "外す",
        onOk: () => { D[R.recs].splice(D[R.recs].indexOf(rec), 1); flash = `${staffName(rec.staff)} さんを保持者から外しました。`; location.hash = `#/${res}/${pid}`; } });
      return;
    }
    if (kind === "apPattern" || kind === "coApPattern") {
      const p = D.apPatterns.find((x) => x.id === id);
      const n = D.apScopes.filter((x) => x.ap === id).length;
      confirmSheet(trigger, { title: `「${p.name}」を削除しますか？`, text: n ? `承認の範囲${n}件と、登録されている承認できる人も削除されます。元に戻せません。` : "元に戻せません。", okLabel: "削除する",
        onOk: () => {
          const ids = D.apScopes.filter((x) => x.ap === id).map((x) => x.id);
          D.apApprovers = D.apApprovers.filter((m) => !ids.includes(m.scope));
          D.apScopes = D.apScopes.filter((x) => x.ap !== id);
          D.apPatterns.splice(D.apPatterns.indexOf(p), 1);
          flash = `承認パターン「${p.name}」を削除しました。`;
          location.hash = kind === "coApPattern" ? "#/company/approval" : "#/approval/edit";
        } });
      return;
    }
    if (kind === "apScope") {
      const sc = D.apScopes.find((x) => x.id === id);
      const n = scopeApprovers(id).length;
      confirmSheet(trigger, { title: "この承認の範囲を削除しますか？", text: n ? `承認できる人${n}名の登録も削除されます。元に戻せません。` : "元に戻せません。", okLabel: "削除する",
        onOk: () => {
          D.apApprovers = D.apApprovers.filter((m) => m.scope !== id);
          D.apScopes.splice(D.apScopes.indexOf(sc), 1);
          flash = "承認の範囲を削除しました。";
          location.hash = `#/approval/${pid}`;
        } });
      return;
    }
    if (kind === "apApprover") {
      const m = D.apApprovers.find((x) => x.id === id);
      confirmSheet(trigger, { title: `${staffName(m.staff)} さんを承認できる人から外しますか？`, text: "この範囲での承認権限がなくなります。", okLabel: "外す",
        onOk: () => { D.apApprovers.splice(D.apApprovers.indexOf(m), 1); flash = `${staffName(m.staff)} さんを承認できる人から外しました。`; location.hash = `#/approval/${pid}/scope/${sid}`; } });
      return;
    }
    if (kind === "provision") {
      const o = D.offerings.find((x) => x.id === id);
      confirmSheet(trigger, { title: `「${o.name}」を削除しますか？`, text: "この提供項目は一覧から消え、元に戻せません。", okLabel: "削除する",
        onOk: () => { D.offerings.splice(D.offerings.indexOf(o), 1); flash = `提供「${o.name}」を削除しました。`; location.hash = "#/company/edit"; } });
    } else if (kind === "position") {
      const p = D.positions.find((x) => x.id === id);
      const n = assignsOf(id).length;
      confirmSheet(trigger, { title: `「${p.name}」を削除しますか？`, text: n ? `この役職に割り当てている${n}名の割当も解除されます。元に戻せません。` : "この役職は一覧から消え、元に戻せません。", okLabel: "削除する",
        onOk: () => { D.positions.splice(D.positions.indexOf(p), 1); D.assignments = D.assignments.filter((a) => a.pos !== id); flash = `役職「${p.name}」を削除しました。`; location.hash = "#/company/edit"; } });
    } else if (kind === "staff") {
      const e = D.employees.find((x) => x.id === id);
      confirmSheet(trigger, { title: `「${e.name}」を削除しますか？`, text: "この作業者と、登録されている力量・資格が消え、元に戻せません。", okLabel: "削除する",
        onOk: () => {
          D.employees.splice(D.employees.indexOf(e), 1);
          D.capabilities = D.capabilities.filter((x) => x.staff !== id);
          D.licenses = D.licenses.filter((x) => x.staff !== id);
          staffDraft = null;
          flash = `作業者「${e.name}」を削除しました。`;
          location.hash = "#/staff/edit";
        } });
    } else if (kind === "cap" || kind === "lic") {
      const k = kind === "cap" ? "caps" : "lics";
      const it = staffItems(k, pid).find((x) => x.id === id);
      confirmSheet(trigger, { title: `${kind === "cap" ? "力量" : "資格"}「${it.name}」を削除しますか？`, text: "元に戻せません。", okLabel: "削除する",
        onOk: () => { removeStaffItem(k, pid, id); flash = `${kind === "cap" ? "力量" : "資格"}「${it.name}」を削除しました。`; location.hash = `#/staff/${pid}`; } });
    } else if (kind === "department") {
      const d = deptById(id);
      confirmSheet(trigger, { title: `「${d.name}」を削除しますか？`, text: "この部署は一覧から消え、元に戻せません。", okLabel: "削除する",
        onOk: () => { D.departments.splice(D.departments.indexOf(d), 1); deptDraft = null; flash = `部署「${d.name}」を削除しました。`; location.hash = "#/departments/edit"; } });
    } else if (kind === "deptkind") {
      const k = kindById(id);
      const used = D.departments.filter((x) => x.kinds.includes(id)).length;
      confirmSheet(trigger, { title: `区分「${k.name}」を削除しますか？`, text: used ? `${used}部署からこの区分が外れます。元に戻せません。` : "この区分は一覧から消え、元に戻せません。", okLabel: "削除する",
        onOk: () => { D.deptKinds.splice(D.deptKinds.indexOf(k), 1); D.departments.forEach((x) => { x.kinds = x.kinds.filter((z) => z !== id); });
          if (deptDraft?.kinds) deptDraft.kinds = deptDraft.kinds.filter((z) => z !== id); flash = `区分「${k.name}」を削除しました。`; location.hash = `#/departments/${pid}/kind`; } });
    } else if (kind === "office") {
      const s = D.sites.find((x) => x.id === id);
      confirmSheet(trigger, { title: `「${s.name}」を削除しますか？`, text: "この事業所は一覧から消え、元に戻せません。", okLabel: "削除する",
        onOk: () => { D.sites.splice(D.sites.indexOf(s), 1); delete D.org[id]; flash = `事業所「${s.name}」を削除しました。`; location.hash = "#/sites/edit"; } });
    } else if (kind === "assign") {
      const a = D.assignments.find((x) => x.id === id);
      const e = empOf(a.emp);
      const p = D.positions.find((x) => x.id === pid);
      confirmSheet(trigger, { title: `${e.name} さんの割当を解除しますか？`, text: `「${p.name}」から外れます。従業員の情報は変わりません。`, okLabel: "解除する",
        onOk: () => { D.assignments.splice(D.assignments.indexOf(a), 1); flash = `${e.name} さんの割当を解除しました。`; location.hash = `#/company/position/${pid}`; } });
    }
  }

  function tableScreen(note, table) {
    return `${backLink()}<section class="card tbl-card"><p class="tbl-note">${note}</p><div class="tbl-wrap">${table}</div></section>`;
  }
  const typeBadge = (t) => `<span class="chip">${t}</span>`;
  /* ---------- office table structure (OfficePage / OfficePageEdit) ---------- */
  const SITE_TYPES = ["本社", "工場", "物流", "営業所"];
  const SITE_ICONS = { "本社": "building", "工場": "factory", "物流": "truck", "営業所": "office" };
  const SITE_COLS = [
    { key: "code", label: "事業所コード" },
    { key: "name", label: "事業所名称", fixed: true },
    { key: "reading", label: "読み" },
    { key: "type", label: "種別" },
    { key: "address", label: "所在地" },
    { key: "people", label: "在籍人数", num: true },
    { key: "updatedBy", label: "更新者" },
    { key: "updatedAt", label: "更新日" },
  ];
  const siteView = { sort: { key: null, dir: 1 }, q: "", type: "すべて", hidden: new Set(["updatedBy", "updatedAt"]), colsOpen: false };
  const dateNum = (s) => { const m = String(s).match(/(\d+)年(\d+)月(\d+)日/); return m ? +m[1] * 10000 + +m[2] * 100 + +m[3] : 0; };
  const siteCmp = (key) => (a, b) => {
    if (key === "people") return a.people - b.people;
    if (key === "updatedAt") return dateNum(a.updatedAt) - dateNum(b.updatedAt);
    return String(a[key]).localeCompare(String(b[key]), "ja");
  };
  const siteRows = () => {
    const v = siteView;
    let list = D.sites.filter((s) => (v.type === "すべて" || s.type === v.type) && (!v.q || (s.name + s.address + s.code + s.reading).includes(v.q)));
    if (v.sort.key) list = [...list].sort((a, b) => v.sort.dir * siteCmp(v.sort.key)(a, b));
    return list;
  };
  function siteTableHtml(editMode) {
    const v = siteView;
    const cols = SITE_COLS.filter((c) => c.fixed || !v.hidden.has(c.key));
    const list = siteRows();
    const head = cols.map((c) => {
      const on = v.sort.key === c.key;
      const aria = on ? (v.sort.dir === 1 ? "ascending" : "descending") : "none";
      const ic = on ? (v.sort.dir === 1 ? "sortAsc" : "sortDesc") : "sort";
      return `<th scope="col" aria-sort="${aria}" class="${c.num ? "num" : ""}"><button class="th-sort" type="button" data-sort="${c.key}">${c.label}${icon(ic)}</button></th>`;
    }).join("");
    const cell = (s, c) => {
      const lab = `data-label="${c.label}"`;
      if (c.key === "name") return `<th scope="row" ${lab} class="od-keep">${editMode ? `<a class="cell-link" href="#/sites/${s.id}" aria-label="${esc(s.name)}を編集">${esc(s.name)}</a>` : esc(s.name)}</th>`;
      if (c.key === "type") return `<td ${lab}>${chip(s.type, s.icon)}</td>`;
      if (c.key === "people") return `<td ${lab} class="num od-nowrap">${fmt(s.people)}名</td>`;
      if (c.key === "updatedAt") return `<td ${lab} class="od-nowrap">${esc(s.updatedAt)}</td>`;
      return `<td ${lab}>${esc(s[c.key])}</td>`;
    };
    const rows = list.map((s) => `<tr ${editMode ? `class="row-link" data-href="#/sites/${s.id}"` : ""}>${cols.map((c) => cell(s, c)).join("")}</tr>`).join("");
    const body = list.length
      ? `<div class="tbl-wrap"><table class="tbl"><caption class="sr-only">事業所のテーブル</caption><thead><tr>${head}</tr></thead><tbody>${rows}</tbody></table></div>`
      : emptyState("該当する事業所がありません", "検索語を変えるか、種別の絞り込みを「すべて」に戻してください。");
    return `<p class="tbl-note">全${D.sites.length}拠点のうち${list.length}件を表示${editMode ? "。行を選ぶと事業所情報を編集できます。" : "。"}</p>${body}`;
  }
  function officeScreen(editMode) {
    const v = siteView;
    const sortOpts = [`<option value="">指定なし</option>`].concat(SITE_COLS.filter((c) => c.fixed || !v.hidden.has(c.key)).flatMap((c) =>
      [1, -1].map((d) => `<option value="${c.key}:${d}" ${v.sort.key === c.key && v.sort.dir === d ? "selected" : ""}>${c.label}（${d === 1 ? "昇順" : "降順"}）</option>`))).join("");
    const colOpts = SITE_COLS.map((c) => `<label class="col-opt"><input type="checkbox" data-col="${c.key}" ${c.fixed || !v.hidden.has(c.key) ? "checked" : ""} ${c.fixed ? "disabled" : ""}>${c.label}</label>`).join("");
    return `${backLink(editMode ? "#/sites" : "#/company", editMode ? "閲覧に戻る" : "会社情報に戻る")}${flashHtml()}
      <section class="card cust-tools" aria-label="検索と絞り込み">
        <div class="field-row"><label for="tbl-q">事業所を検索</label>
          <div class="search-box">${icon("search")}<input id="tbl-q" type="search" value="${esc(v.q)}" placeholder="事業所コード・事業所名称・読み・所在地" autocomplete="off"></div></div>
        ${filterBar("種別", "tbl", ["すべて", ...SITE_TYPES], v.type)}
        <div class="field-row sort-select"><label for="tbl-sort">並べ替え</label><select id="tbl-sort">${sortOpts}</select></div>
        <details class="col-menu" ${v.colsOpen ? "open" : ""}><summary class="btn">表示する列</summary><div class="col-list">${colOpts}</div></details>
      </section>
      <section class="card tbl-card" aria-labelledby="h-office">
        <div class="sec-head tbl-head"><h2 class="sec-title" id="h-office">事業所のテーブル</h2>${editMode ? `<a class="btn" href="#/sites/new">${icon("plus")}<span>事業所を追加</span></a>` : editLink("#/sites/edit", "事業所")}</div>
        <div id="tbl-table">${siteTableHtml(editMode)}</div>
      </section>`;
  }
  function officeEditScreen(id) {
    const isNew = id === "new";
    const s = isNew ? { code: "", name: "", reading: "", type: "", address: "", people: 0 } : D.sites.find((x) => x.id === id);
    if (!s) return notFound("事業所が見つかりません", "#/sites/edit");
    const locked = s.people > 0;
    return `${backLink("#/sites/edit", "一覧に戻る")}
      <form class="card form" id="edit-form" data-kind="office" data-id="${id}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${fieldRow({ id: "code", label: "事業所コード", max: 10, value: s.code ?? "", taken: D.sites.filter((x) => x.id !== id).map((x) => x.code) })}
        ${fieldRow({ id: "name", label: "事業所名称", max: 30, value: s.name, taken: D.sites.filter((x) => x.id !== id).map((x) => x.name) })}
        ${fieldRow({ id: "reading", label: "読み", max: 60, req: false, value: s.reading ?? "" })}
        ${fieldRow({ id: "type", label: "種別", kind: "select", options: SITE_TYPES.map((t) => [t, t]), value: s.type })}
        ${fieldRow({ id: "address", label: "所在地", kind: "textarea", max: 120, value: s.address })}
        ${isNew ? "" : `<dl class="meta" aria-label="編集できない項目">
          <div class="kv"><dt>在籍人数</dt><dd class="od-nowrap">${fmt(s.people)}名</dd></div>
          <div class="kv"><dt>更新者</dt><dd>${esc(s.updatedBy)}</dd></div>
          <div class="kv"><dt>更新日</dt><dd class="od-nowrap">${esc(s.updatedAt)}</dd></div>
        </dl>`}
        ${!isNew && locked ? `<p class="note" id="del-note">在籍人数が0名の事業所だけ削除できます。先に従業員の所属を移してください。</p>` : ""}
        <div class="form-actions">${isNew ? "" : `<button class="btn btn-danger" type="button" id="del-btn" ${locked ? 'disabled aria-describedby="del-note"' : ""}>削除</button>`}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>`;
  }
  function offeringsScreen() {
    const rows = D.offerings.map((o) => `<tr>
      <td data-label="種別">${typeBadge(o.kind)}</td>
      <th scope="row" data-label="名称" class="od-keep">${o.name}</th>
      <td data-label="説明">${o.desc}</td></tr>`).join("");
    return tableScreen(`全${D.offerings.length}件`, `<table class="tbl"><caption class="sr-only">提供サービス・製品一覧</caption>
      <thead><tr><th scope="col">種別</th><th scope="col">名称</th><th scope="col">説明</th></tr></thead><tbody>${rows}</tbody></table>`);
  }

  function logoutScreen(state) {
    let inner;
    if (state === "loading") {
      inner = `<div class="spinner" role="status" aria-label="処理中"></div>
        <h1>ログアウトしています…</h1>
        <p>セッションを終了しています。しばらくお待ちください。</p>
        <div class="progress" aria-hidden="true"><span></span></div>`;
    } else if (state === "done") {
      inner = `<div class="logout-icon">${icon("check")}</div>
        <h1>ログアウトしました</h1>
        <p>再度ご利用の際は、外部認証（OAuth）でサインインしてください。</p>
        <p class="note" aria-live="polite"><span id="lo-count">5</span>秒後にログイン画面へ移動します。</p>
        <div class="logout-actions"><button class="btn btn-primary" type="button" id="resignin">今すぐログイン画面へ</button></div>
        <p class="note">セッションが切れたときも、この画面を表示します。</p>`;
    } else {
      inner = `<div class="logout-icon">${icon("logout")}</div>
        <h1>ログアウトしますか？</h1>
        <p>${D.user.name} さんとしてサインインしています。未保存の入力は失われます。</p>
        <div class="logout-actions">
          <button class="btn" type="button" id="cancel-logout">キャンセル</button>
          <button class="btn btn-primary" type="button" id="do-logout">ログアウト</button>
        </div>`;
    }
    return `<div class="logout-wrap"><section class="card logout-card" aria-live="polite">${inner}</section></div>`;
  }

  /* ---------- generic domain screens (declared in domains.js) ----------
     Every ledger is one entity: a table (テーブル構造) or tree (ツリー構造) page, plus an edit page (編集構造)
     whose child entities are listed below the form. Routes: #/g/<screen>[/<tab>][/edit], #/g/e/<entity>/<id|new>[/<parentId>] */
  const DOM = window.OD_DOMAINS ?? { entities: [], screens: [], groups: [], menuGroups: [] };
  /* メニューの見せ方。品質共通・品質管理文書・品質管理は、「運用と改善」の 1 つにまとめる(画面の生成 tools/entity_gen/gen.js は、元の groups を使う)。
     流れの順(異常 → 処置 → リスク → 監査 → 文書)に並べ、親の画面から開く画面(監査チーム・監査標準項目)は出さない。 */
  const MENU_GROUPS = (() => {
    const OPS = ["qcommon", "qdoc", "quality"];
    const HIDDEN = ["auditteam", "auditstdcheck"];
    const ORDER = ["complaint", "disposal", "recur", "observe", "qrisk", "risk", "auditstd", "audit", "doc", "report", "doctier"];
    const rank = (sid) => { const i = ORDER.indexOf(sid); return i < 0 ? ORDER.length : i; };
    const ops = DOM.groups.filter((g) => OPS.includes(g.id));
    if (!ops.length) return DOM.groups;
    const screens = [...new Set(ops.flatMap((g) => g.screens))].filter((sid) => !HIDDEN.includes(sid)).map((sid, i) => [sid, i]).sort((x, y) => rank(x[0]) - rank(y[0]) || x[1] - y[1]).map((x) => x[0]);
    const merged = { id: "ops", label: "運用と改善", icon: "check", screens };
    const out = [];
    for (const g of DOM.groups) {
      if (!OPS.includes(g.id)) out.push(g);
      else if (!out.includes(merged)) out.push(merged);
    }
    return out;
  })();
  const G = {};
  const GS = {};
  const gSel = {}; // selected row per entity in view mode (master -> detail chain)
  const FK = { t: "input", x: "textarea", n: "number", d: "date", s: "select", r: "select", b: "check" };
  const G_CHIP = { "高": "bad", "中": "warn", "低": "mute", "受付": "mute", "対応中": "line", "完了": "ok", "有効": "ok", "継続監視": "warn", "無効": "mute" };
  DOM.entities.forEach((e) => {
    G[e.key] = { ...e, coll: `g_${e.key}`, children: [],
      fields: e.fields.map(([id, label, kind = "t", x = {}]) => ({ id, label, kind, req: x.req !== false, opts: x.opts, ref: x.ref, toggle: x.toggle, ge: x.ge, gt: x.gt, uniq: x.uniq, lockedBy: x.lockedBy, disables: x.disables, needUnless: x.needUnless, le: x.le, after: x.after, calc: x.calc, xor: x.xor, limit: x.limit, setsLe: x.setsLe })) };
  });
  DOM.entities.forEach((e) => { if (e.parent) G[e.parent.ent].children.push(e.key); });
  DOM.screens.forEach((s) => {
    GS[s.id] = { ...s, tabs: s.tabs.map(([id, label, root, o = {}]) => ({ id, label, root, ...o })) };
    GS[s.id].tabs.forEach((t) => {
      const E = G[t.root];
      if (!E.screen) { E.screen = s.id; E.tab = t.id; }
      if (t.nest) { G[t.nest].screen = s.id; G[t.nest].tab = t.id; } // the nested table is edited from this screen
    });
  });
  const gTree = { open: new Set(), loaded: new Set(), loading: new Set() };
  Object.values(G).forEach((E) => {
    D[E.coll] = (E.rows ?? []).map((row, i) => {
      const a = [...row];
      const r = { id: `${E.key}${i + 1}` };
      if (E.parent) r[E.parent.key] = a.shift();
      E.fields.forEach((f) => { if (f.kind !== "c") r[f.id] = a.shift() ?? ""; });
      if (E.tree) r.parent = a.shift() ?? "";
      return { ...r, updatedBy: "鈴木 一郎", updatedAt: "2026年9月30日" };
    });
    if (E.tree) D[E.coll].filter((r) => !r.parent).forEach((r) => { gTree.open.add(r.id); gTree.loaded.add(r.id); });
  });
  const gGet = (k, id) => D[G[k].coll].find((x) => x.id === id);
  const gRefOpts = (f) => {
    if (f.ref.startsWith("@")) { const [c, i, l] = f.ref.slice(1).split(":"); return D[c].map((r) => [r[i], r[l]]); }
    const R = G[f.ref];
    return D[R.coll].map((r) => [r.id, gName(R, r)]);
  };
  const gShow = (f, v) => {
    if (f.kind === "r") return v ? gRefOpts(f).find(([i]) => i === v)?.[1] ?? "（削除済み）" : "―";
    if (f.kind === "d") return v ? fmtDate(v) : "―";
    if (f.kind === "b") return v ? "はい" : "いいえ";
    if (f.kind === "n") return v === "" || v == null ? "―" : fmt(Number(v));
    return v || "―";
  };
  const gName = (E, r) => { const k = E.fields.filter((f) => ["code", "no", "name", "title"].includes(f.id)).slice(0, 2); return (k.length ? k : [E.fields[0]]).map((f) => String(gShow(f, r[f.id]))).filter((x) => x && x !== "―").join(" ") || "―"; };
  const gScr = (E) => E.screen ?? (E.parent ? gScr(G[E.parent.ent]) : "");
  const gTab = (E) => E.tab ?? (E.parent ? gTab(G[E.parent.ent]) : "");
  const gGroupOf = (sid) => MENU_GROUPS.find((g) => g.screens.includes(sid));
  function gCrumb() {
    const P = parseRoute();
    const sid = P.name === "g" ? P.sid : P.name === "g/entity" && G[P.ent] ? gScr(G[P.ent]) : null;
    if (!sid || !GS[sid]) return D.company.name;
    return `${gGroupOf(sid)?.label ?? ""}${P.name === "g/entity" ? ` › ${GS[sid].label} › 編集` : P.edit ? ` › ${GS[sid].label} › 編集` : ""}`;
  }
  const gCurScreen = () => {
    const P = parseRoute();
    return P.name === "g" ? P.sid : P.name === "g/entity" && G[P.ent] ? gScr(G[P.ent]) : null;
  };
  const gCtx = (E) => { const P = parseRoute(); return P.name === "g/entity" && P.ent === E.parent.ent ? P.id : gSel[E.parent.ent]; };
  function gSelect(k, id) { gSel[k] = id; G[k].children.forEach((c) => gSelect(c, null)); }
  const gCols = (E) => [
    ...E.fields.map((f, i) => ({
      key: f.id, label: f.label, fixed: i === 0, num: f.kind === "n" || f.kind === "c",
      val: (r) => (f.kind === "c" ? Number(f.calc(r)) : f.kind === "b" ? (r[f.id] ? 1 : 0) : f.kind === "n" ? Number(r[f.id]) || 0 : f.kind === "s" ? f.opts.indexOf(r[f.id]) : f.kind === "d" ? r[f.id] : String(gShow(f, r[f.id]))),
      html: (r) => (f.kind === "c" ? `<span class="od-nowrap">${f.calc(r)}%</span>` : f.kind === "b" ? (r[f.id] ? chip("はい", "check", "ok") : chip("いいえ", "", "mute")) : f.kind === "s" && r[f.id] ? chip(esc(r[f.id]), "", G_CHIP[r[f.id]] ?? "") : f.kind === "d" ? `<span class="od-nowrap">${esc(gShow(f, r[f.id]))}</span>` : esc(gShow(f, r[f.id]))),
    })),
    ...E.children.map((c) => numCol(`c_${c}`, G[c].label, G[c].coll, G[c].parent.key, "件")),
    ...(E.action ? [{ key: "_act", label: "操作", val: () => "", html: (r) => `<a class="btn tree-act" href="#/g/e/${E.action.to ?? "stockrez"}/new?${E.action.query ? `${E.action.query}&` : ""}${E.action.param}=${r.id}">${E.action.label}</a>` }] : []),
    byCol, dateCol,
  ];
  Object.values(G).forEach((E) => {
    if (E.tree) return;
    const mk = (root) => makeTable({
      key: `${root ? "gr" : "g"}_${E.key}`, hidden: ["updatedBy", "updatedAt"], placeholder: "名称などで検索",
      list: root || !E.parent ? () => D[E.coll] : () => D[E.coll].filter((r) => r[E.parent.key] === gCtx(E)),
      search: (r) => E.fields.map((f) => gShow(f, r[f.id])).join(" "),
      href: (r) => `#/g/e/${E.key}/${r.id}`,
      pick: E.children.length ? { get: () => gSel[E.key], set: (id) => gSelect(E.key, id) } : null,
      cols: gCols(E),
    });
    E.table = mk(false);
    E.rootTable = mk(true);
  });

  /* table in table: each row of the root table carries the child entity's table underneath (declared with tab option { nest, where }) */
  function gNestHtml(t, item, edit) {
    const SE = G[t.nest];
    const rows = D[SE.coll].filter((r) => r[SE.parent.key] === item.id);
    const sf = SE.fields.find((f) => f.id === "supplier");
    const body = rows.map((r) => {
      const nm = esc(String(gShow(sf, r.supplier)));
      const href = `#/g/e/${SE.key}/${r.id}`;
      return `<tr ${edit ? `class="row-link" data-href="${href}"` : ""}>
        <th scope="row" data-label="サプライヤー">${edit ? `<a class="cell-link" href="${href}" aria-label="${nm}を編集">${nm}</a>` : nm}</th>
        <td data-label="デリバリータイム" class="num od-nowrap">${r.days === "" ? "―" : `${fmt(Number(r.days))}日`}</td>
        <td data-label="最小発注ロット" class="num od-nowrap">${r.lot === "" ? "―" : fmt(Number(r.lot))}</td>
        <td data-label="単価" class="num od-nowrap">${r.asking ? "言い値（都度確認）" : r.cost === "" ? "―" : `${fmt(Number(r.cost))}円`}</td>
        <td data-label="言い値区分">${r.asking ? chip("言い値", "alert", "warn") : chip("固定単価", "check", "ok")}</td></tr>`;
    }).join("");
    const add = edit ? `<a class="btn" href="#/g/e/${SE.key}/new/${item.id}">${icon("plus")}<span>サプライヤーを追加</span></a>` : "";
    return `<div class="nest"><div class="nest-head"><h3 class="nest-title">${esc(gName(G[t.root], item))} のサプライヤー</h3>${add}</div>
      ${rows.length ? `<div class="tbl-wrap"><table class="tbl nest-tbl"><caption class="sr-only">サプライヤーの表</caption>
        <thead><tr><th scope="col">サプライヤー</th><th scope="col" class="num">デリバリータイム</th><th scope="col" class="num">最小発注ロット</th><th scope="col" class="num">単価</th><th scope="col">言い値区分</th></tr></thead><tbody>${body}</tbody></table></div>`
        : emptyState("サプライヤーが登録されていません", edit ? "「サプライヤーを追加」から登録してください。" : "編集モードで登録できます。")}</div>`;
  }
  Object.values(GS).forEach((S) => S.tabs.forEach((t) => {
    if (!t.nest) return;
    const E = G[t.root];
    const cols = gCols(E);
    const shown = new Set(["code", "name", "mstr_item_kind_id", "shared_unit_id", `c_${t.nest}`]);
    t.table = makeTable({
      key: `gn_${S.id}_${t.id}`, noun: "品目", placeholder: "品目コード・品目名", cols,
      hidden: cols.map((c) => c.key).filter((k) => !shown.has(k)),
      list: () => D[E.coll].filter((r) => Object.entries(t.where ?? {}).every(([k, v]) => r[k] === v)),
      search: (r) => E.fields.map((f) => gShow(f, r[f.id])).join(" "),
      nest: { closed: new Set(), label: G[t.nest].label, html: (r, edit) => gNestHtml(t, r, edit) },
    });
  }));

  /* tabs with a row filter (tab option { where, hide }): the same entity shown as separate tables, e.g. 外部の異常 / 内部の異常 */
  Object.values(GS).forEach((S) => S.tabs.forEach((t) => {
    if (t.nest || !t.where) return;
    const E = G[t.root];
    if (E.tree) return;
    t.rtable = makeTable({
      key: `gt_${S.id}_${t.id}`, hidden: ["updatedBy", "updatedAt", ...(t.hide ?? [])], placeholder: "名称などで検索",
      list: () => D[E.coll].filter((r) => Object.entries(t.where).every(([k, v]) => (r[k] ?? "") === v)),
      search: (r) => E.fields.map((f) => gShow(f, r[f.id])).join(" "),
      href: (r) => `#/g/e/${E.key}/${r.id}`,
      pick: E.children.length ? { get: () => gSel[E.key], set: (id) => gSelect(E.key, id) } : null,
      cols: gCols(E),
    });
  }));

  /* 異常(complaint): 種類は 6 つで固定。種類から、外部か・クレームかが決まる(DB のビュー v_complaint_kind と同じ)。
     どの画面から開いても同じ登録の画面(complaintRegister)を使う。種類で入力項目が変わる */
  const CK = window.OD_COMPLAINT_KINDS ?? [];
  const ckOf = (v) => CK.find((k) => k.key === v || k.label === v);
  const ckDerive = (kind) => { const k = ckOf(kind); return k ? { external: k.ext ? "1" : "", claim: k.claim ? "クレーム" : k.ext ? "苦情" : "" } : {}; };
  /* 関連する画面から開いたときの初期値(kind=種類の記号、order=受注、purchaserec=受入、customer=顧客) */
  function ckPreset(qs) {
    const k = ckOf(qs.get("kind"));
    const out = k ? { kind: k.label, ...ckDerive(k.key) } : {};
    const od = qs.get("order") ? gGet("order", qs.get("order")) : null;
    if (od) { const cf = G.order.fields.find((f) => f.kind === "r" && f.ref === "customer"); out.target = `受注 ${od.no}`; if (cf) out.party = String(gShow(cf, od[cf.id])); }
    const pr = qs.get("purchaserec") ? gGet("purchaserec", qs.get("purchaserec")) : null;
    if (pr) out.target = `受入 ${pr.no}`;
    const cu = qs.get("customer") ? gGet("customer", qs.get("customer")) : null;
    if (cu) out.party = cu.name;
    return out;
  }
  const ckAddHref = (key) => `#/g/e/complaint/new?kind=${key}`;
  /* 種類の選択(異常の画面から追加するとき)。選ぶと、種類を決めた登録の画面へ進む */
  const ckSheetBody = () => `<ul class="ck-kinds" aria-label="異常の種類">${CK.map((k) => `<li><a class="btn ck-kind" href="${ckAddHref(k.key)}" data-ck-go>
      <span class="ck-kind-name">${esc(k.label)}</span><span class="ck-kind-sub">${k.ext ? "外部の異常" : "内部の異常"}${k.claim ? "・クレーム" : k.ext ? "・苦情" : ""}</span></a></li>`).join("")}</ul>`;
  function ckOpenSheet(trigger) {
    showSheet(trigger, { chip: chip("異常", "alert"), title: "異常の種類を選んでください", rows: [], extra: ckSheetBody() });
    sheetRoot().querySelectorAll("[data-ck-go]").forEach((a) => a.addEventListener("click", () => closeSheet(false)));
  }
  document.addEventListener("click", (e) => {
    const b = e.target.closest("[data-ck-add]");
    if (!b) return;
    e.preventDefault();
    ckOpenSheet(b);
  });
  /* 「異常の登録」タブ: 種類ごとの入口と、関連する画面からの登録の案内 */
  const ckRegisterPanel = () => `<section class="card" aria-labelledby="h-ck-reg">
      <div class="sec-head"><h2 class="sec-title" id="h-ck-reg">異常の登録</h2></div>
      <p class="tbl-note">登録する異常の種類を選んでください。異常の種類は 6 つで、どの画面から登録しても、同じ登録の画面(種類で入力項目が変わります)を使います。</p>
      <ul class="ck-kinds">${CK.map((k) => `<li><a class="btn ck-kind" href="${ckAddHref(k.key)}"><span class="ck-kind-name">${esc(k.label)}</span>
        <span class="ck-kind-sub">${k.ext ? "外部の異常" : "内部の異常"}${k.claim ? "・クレーム" : k.ext ? "・苦情" : ""}　対象: ${esc(k.target || "なし")}　関連する画面: ${esc(k.from)}</span></a></li>`).join("")}</ul>
      <p class="tbl-note-out">関連する画面からも登録できます: 受注の行の「クレームを登録」(顧客クレーム)、受入の行の「異常を登録」(受入で発見された異常)、顧客の行の「苦情を登録」(利害関係者の苦情)。バーコード・設備点検・実績登録の不適合は、それぞれの画面から同じ登録の画面へ進みます。</p>
    </section>`;

  /* tree structure: parent / child indent, lazy expand, drag & drop re-parenting (edit mode) */
  const gKids = (E, id, owner) => D[E.coll].filter((r) => (r.parent || "") === id && (owner == null || !E.parent || r[E.parent.key] === owner));
  const gBelow = (E, id) => gKids(E, id).flatMap((c) => [c.id, ...gBelow(E, c.id)]);
  const gVisible = (E, owner, pid = "", depth = 0) => gKids(E, pid, owner).flatMap((r) => {
    const out = [{ r, depth }];
    if (gTree.open.has(r.id)) out.push(...(gTree.loading.has(r.id) ? [{ loading: true, depth: depth + 1 }] : gVisible(E, owner, r.id, depth + 1)));
    return out;
  });
  const gWalkAll = (E, owner, pid = "", depth = 0) => gKids(E, pid, owner).flatMap((r) => [{ r, depth }, ...gWalkAll(E, owner, r.id, depth + 1)]);
  function gTreeRow(E, it, edit, owner) {
    if (it.loading) return `<li class="trow skeleton" role="status" style="--depth:${it.depth}"><span class="skel-bar" aria-hidden="true"></span><span class="muted">読み込み中…</span></li>`;
    const { r, depth } = it;
    const nm = gName(E, r);
    const n = gKids(E, r.id, owner).length;
    const open = gTree.open.has(r.id);
    const toggle = n
      ? `<button class="tree-toggle" type="button" data-gtoggle="${r.id}" data-gent="${E.key}" aria-expanded="${open}" aria-label="${esc(nm)}を${open ? "縮小" : "展開"}">${icon("chevron")}</button>`
      : `<span class="tree-spacer" aria-hidden="true"></span>`;
    const handle = edit ? `<button class="drag-handle" type="button" data-gdrag="${r.id}" data-gent="${E.key}" aria-label="${esc(nm)}をドラッグして親を付け替え（キーボードやタッチでは編集ページの「親」を使用）">${icon("grip")}</button>` : "";
    const sel = !edit && gSel[E.key] === r.id;
    const name = edit ? `<a class="cell-link" href="#/g/e/${E.key}/${r.id}">${esc(nm)}</a>`
      : E.children.length ? `<button class="pick-btn" type="button" data-gpick="${r.id}" data-gent="${E.key}" aria-pressed="${sel}">${esc(nm)}</button>` : `<span class="tree-name">${esc(nm)}</span>`;
    const tags = E.fields.slice(1, 3).filter((f) => f.kind === "r" || f.kind === "s").map((f) => chip(esc(String(gShow(f, r[f.id]))), "", f.kind === "s" ? G_CHIP[r[f.id]] ?? "" : "")).join("");
    return `<li class="trow ${sel ? "is-sel" : ""}" role="treeitem" aria-level="${depth + 1}" ${n ? `aria-expanded="${open}"` : ""} ${edit ? `data-gdrop="${r.id}"` : ""} style="--depth:${depth}">
      ${handle}${toggle}<span class="tree-main">${name}</span><span class="tree-tags">${tags}</span>${n ? `<span class="chip mute od-nowrap">配下 ${n}</span>` : ""}</li>`;
  }
  const gTreeCard = (E, edit, title, action, owner) => {
    const rows = gVisible(E, owner);
    const total = D[E.coll].filter((r) => owner == null || !E.parent || r[E.parent.key] === owner).length;
    return `<section class="card tbl-card" aria-labelledby="h-g-${E.key}" data-gtree="${E.key}">
      <div class="sec-head tbl-head"><h2 class="sec-title" id="h-g-${E.key}">${title}</h2>${action}</div>
      <p class="tbl-note">全${total}件${edit ? "。ハンドルをドラッグして親にしたい行へ重ねると付け替えられます。名称を選ぶと編集できます。" : E.children.length ? "。名称を選ぶと、下に関連する情報を表示します。" : "。"}</p>
      ${edit ? `<div class="root-drop" data-gdrop="root">最上位にする場合は、ここにドロップ</div>` : ""}
      ${rows.length ? `<ul class="tree" role="tree" aria-label="${esc(E.label)}のツリー">${rows.map((it) => gTreeRow(E, it, edit, owner)).join("")}</ul>` : emptyState(`${E.label}がありません`, "「追加」ボタンから登録してください。")}
    </section>`;
  };
  const gBlock = (E, edit, title, action, root) => (E.tree
    ? gTreeCard(E, edit, title, action, root || !E.parent ? null : gCtx(E))
    : tableCard(root ? E.rootTable : E.table, edit, `h-g-${E.key}`, title, action));
  const gTabBar = (S, cur, edit) => (S.tabs.length < 2 ? "" : `<div class="tabs" role="tablist" aria-label="${esc(S.label)}">${S.tabs.map((t) =>
    `<a role="tab" class="tab" id="tab-${t.id}" href="#/g/${S.id}/${t.id}${edit ? "/edit" : ""}" aria-selected="${t.id === cur}" tabindex="${t.id === cur ? 0 : -1}">${esc(t.label)}</a>`).join("")}</div>`);
  function gWalk(k) {
    const E = G[k];
    const rec = gSel[k] ? gGet(k, gSel[k]) : null;
    if (!rec) { gSel[k] = null; return ""; }
    return E.children.map((c) => gBlock(G[c], false, `「${esc(gName(E, rec))}」の${G[c].label}`, "") + gWalk(c)).join("");
  }
  function gScreen(sid, tabId, edit) {
    const S = GS[sid];
    if (!S) return notFound("画面が見つかりません", "#/menu");
    const tab = S.tabs.find((t) => t.id === tabId) ?? S.tabs[0];
    const E = G[tab.root];
    const base = `#/g/${sid}/${tab.id}`;
    /* 承認一覧などから ?id=<行ID> で開いたときは、そのレコード 1 件に絞り込んで選択する */
    const onlyId = hashQuery().get("id");
    [E.table, E.rootTable].forEach((T) => { if (T) T.view.only = onlyId && D[E.coll].some((r) => r.id === onlyId) ? onlyId : null; });
    if (E.table?.view.only) gSelect(E.key, onlyId);
    if (tab.nest) {
      return `${backLink(edit ? base : "#/menu", edit ? "閲覧に戻る" : "メニューに戻る")}${flashHtml()}
        ${gTabBar(S, tab.id, edit)}
        <div class="tab-panel">${tableCard(tab.table, edit, `h-g-${tab.id}`, "購入品の品目", edit ? "" : editLink(`${base}/edit`, tab.label))}</div>`;
    }
    if (tab.page === "complaint-register") {
      return `${backLink("#/menu", "メニューに戻る")}${flashHtml()}
        ${gTabBar(S, tab.id, false)}
        <div class="tab-panel" role="tabpanel" aria-labelledby="tab-${tab.id}">${ckRegisterPanel()}</div>`;
    }
    const addBtn = E.key === "complaint"
      ? `<button class="btn" type="button" data-ck-add>${icon("plus")}<span>異常を追加</span></button>`
      : `<a class="btn" href="#/g/e/${E.key}/new">${icon("plus")}<span>${E.label}を追加</span></a>`;
    const block = (ed, action) => (tab.rtable ? tableCard(tab.rtable, ed, `h-g-${tab.id}`, `${tab.label}の一覧`, action) : gBlock(E, ed, `${E.label}の一覧`, action, true));
    const body = edit
      ? block(true, addBtn)
      : block(false, editLink(`${base}/edit`, tab.label)) +
        (gSel[E.key] ? gWalk(E.key) : E.children.length ? `<section class="card">${emptyState(`${E.label}を選んでください`, `上の一覧で${E.label}の名称を選ぶと、${E.children.map((c) => G[c].label).join("・")}がここに表示されます。`)}</section>` : "");
    return `${backLink(edit ? base : "#/menu", edit ? "閲覧に戻る" : "メニューに戻る")}${flashHtml()}${E.table?.view.only ? `<p class="tbl-note-out">承認一覧から開いたレコード1件に絞り込んでいます。<a href="${base}">絞り込みを解除</a></p>` : ""}
      ${gTabBar(S, tab.id, edit)}
      <div class="tab-panel" ${S.tabs.length > 1 ? `role="tabpanel" aria-labelledby="tab-${tab.id}"` : ""}>${body}</div>`;
  }
  let gPrev = "";
  function gEntityScreen(ent, id, parentId) {
    const E = G[ent];
    if (!E) return notFound("画面が見つかりません", "#/menu");
    const isNew = id === "new";
    const rec = isNew ? { id: "new" } : gGet(ent, id);
    const home = `#/g/${gScr(E)}/${gTab(E)}/edit`;
    if (!rec) return notFound(`${E.label}が見つかりません`, home);
    const pid = E.parent ? (isNew ? parentId : rec[E.parent.key]) : null;
    const P = pid ? gGet(E.parent.ent, pid) : null;
    if (pid && !P) return notFound(`${G[E.parent.ent].label}が見つかりません`, home);
    const qs = hashQuery();
    const back = ent === "stockrez" && isNew && gPrev.includes("#/stock") ? "#/stock" : P && (!E.screen || gPrev.includes(`#/g/e/${E.parent.ent}/${pid}`)) ? `#/g/e/${E.parent.ent}/${pid}` : home;
    const rows = [];
    if (E.parent && !pid) rows.push(fieldRow({ id: E.parent.key, label: G[E.parent.ent].label, kind: "select", options: gRefOpts({ ref: E.parent.ent }), value: "" }));
    const lim = E.limit ? E.limit(rec, qs) : null;
    const ckPre = ent === "complaint" && isNew ? ckPreset(qs) : {};
    const ckKind = ent === "complaint" ? ckOf(isNew ? ckPre.kind : rec.kind) : null;
    // 種類が決まっているとき、その種類に関係する項目だけを出す(外部: 利害関係者。内部: 対象。外部か・クレームか苦情かは、種類から決まるため出さない)
    const ckHide = (f) => ent === "complaint" && ckKind && (f.id === "external" || f.id === "claim" || (ckKind.ext ? f.id === "target" : f.id === "party"));
    E.fields.filter((f) => f.kind !== "c" && !ckHide(f)).forEach((f) => rows.push(fieldRow({
      id: f.id, label: f.label, kind: FK[f.kind], max: f.kind === "x" ? 200 : 60, req: f.req,
      options: f.kind === "s" ? f.opts.map((o) => [o, o]) : f.kind === "r" ? (E.opts?.[f.id] ? E.opts[f.id](rec, qs) : gRefOpts(f)) : [], value: isNew ? (ckPre[f.id] ?? qs.get(f.id) ?? "") : String(rec[f.id] ?? ""),
      after: f.after, xor: f.xor, setsLe: f.setsLe, leMap: f.setsLe ? lim?.byStock : null, le: f.limit ? lim?.max : f.le,
      toggle: f.toggle, ge: f.ge, gt: f.gt, needUnless: f.needUnless, disables: f.disables, disabled: !!(f.needUnless && rec[f.needUnless]) || !!(isNew && f.xor && (qs.get(f.id) || qs.get(f.xor))),
      taken: f.uniq && E.parent && pid ? D[E.coll].filter((r) => r[E.parent.key] === pid && r.id !== id).map((r) => r[f.id]) : null,
      keepMsg: f.lockedBy && !isNew && D[G[f.lockedBy].coll].some((r) => r[G[f.lockedBy].parent.key] === id)
        ? `${G[f.lockedBy].label}が登録されているため、チェックは外せません。先に${G[f.lockedBy].label}を削除してください。` : null,
    })));
    if (E.tree) {
      const owner = E.parent ? pid : null;
      const banned = new Set(isNew ? [] : [id, ...gBelow(E, id)]);
      const opts = gWalkAll(E, owner).filter(({ r }) => !banned.has(r.id)).map(({ r, depth }) => [r.id, `${"　".repeat(depth)}${gName(E, r)}`]);
      rows.push(fieldRow({ id: "parent", label: "親", kind: "select", req: false, blank: "最上位（親なし）", options: opts, value: String(rec.parent ?? "") }));
    }
    const kids = isNew ? "" : E.children.map((c) => {
      const C = G[c];
      return gBlock(C, true, `${C.label}の一覧`, `<a class="btn" href="#/g/e/${c}/new/${id}">${icon("plus")}<span>${C.label}を追加</span></a>`);
    }).join("");
    return `${backLink(back, "一つ前に戻る")}${flashHtml()}
      <form class="card form" id="edit-form" data-kind="gEnt" data-ent="${ent}" data-id="${id}" data-pid="${pid ?? ""}" data-back="${back}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${P ? `<dl><div class="kv"><dt>${G[E.parent.ent].label}</dt><dd>${esc(gName(G[E.parent.ent], P))}</dd></div></dl>` : ""}
        ${rows.join("")}
        ${!isNew && E.fields.some((f) => f.kind === "c") ? `<dl class="meta" aria-label="自動で計算される項目（編集できません）">${E.fields.filter((f) => f.kind === "c").map((f) => `<div class="kv"><dt>${f.label}</dt><dd class="od-nowrap">${f.calc(rec)}%</dd></div>`).join("")}</dl>` : ""}
        ${isNew ? "" : metaHtml(rec)}
        <div class="form-actions">${isNew ? "" : `<button class="btn btn-danger" type="button" id="del-btn">削除</button>`}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>
      ${isNew ? (E.children.length ? `<p class="tbl-note-out">${E.label}を追加すると、続けて${E.children.map((c) => G[c].label).join("・")}を登録できます。</p>` : "") : kids}`;
  }
  function gRemove(k, id) {
    const E = G[k];
    if (E.tree) gBelow(E, id).forEach((c) => gRemove(k, c));
    E.children.forEach((c) => D[G[c].coll].filter((x) => x[G[c].parent.key] === id).forEach((x) => gRemove(c, x.id)));
    D[E.coll] = D[E.coll].filter((x) => x.id !== id);
    if (gSel[k] === id) gSelect(k, null);
  }
  const gCountBelow = (k, id) => {
    const E = G[k];
    const sub = E.tree ? gBelow(E, id).length : 0;
    return sub + E.children.reduce((n, c) => n + D[G[c].coll].filter((x) => x[G[c].parent.key] === id).reduce((m, x) => m + 1 + gCountBelow(c, x.id), 0), 0);
  };
  function moveG(E, r, target) {
    r.parent = target || "";
    r.updatedBy = D.user.name;
    r.updatedAt = TODAY;
    if (target) { gTree.open.add(target); gTree.loaded.add(target); }
    flash = `「${gName(E, r)}」を「${target ? gName(E, gGet(E.key, target)) : "最上位"}」の配下に移しました。`;
    render();
  }
  /* entry list of every business screen (used by the 業務メニュー page, mainly for phones) */
  function menuScreen() {
    const row = (href, ic, label, sub) => `<a class="rowi" href="${href}"><span class="rowi-main"><span class="rowi-name">${icon(ic)}${label}</span><span class="rowi-sub">${sub}</span></span><span class="rowi-right">${icon("chevron")}</span></a>`;
    return MENU_GROUPS.map((g) => `<section class="card list-card" aria-labelledby="mg-${g.id}"><h2 class="sec-title menu-title" id="mg-${g.id}">${icon(g.icon)}${g.label}</h2>${g.screens.map((sid) => {
      const S = GS[sid];
      if (sid === "doc") return row("#/manual", "list", "マニュアル", "品質管理文書のWiki（管理者は編集できます）");
      return row(`#/g/${sid}`, S.icon, S.label, S.tabs.map((t) => t.label).join("・"));
    }).join("")}${APV_GROUPS[g.id] ? row(`#/ap/${g.id}`, "check", "承認一覧", `未承認 ${apvCount(g.id)}件`) : ""}${g.id === "result" ? row("#/wr", "wrench", "実績登録", "生産計画の工程計画明細と、対になる実績の登録") : ""}${g.id === "result" ? row("#/barcode", "barcode", "バーコード", "作業実績・受入検品・棚移動・設備点検") + row("#/stock", "box", "在庫状況", "場所・コンテナ別の在庫と出庫可能数") : ""}${g.id === "plan" ? row("#/mrp", "box", "資材所要計算", "MRP・再MRPの実行") : ""}</section>`).join("") +
      `<section class="card list-card" aria-label="アプリケーション">${row("#/settings", "gear", "設定", "自分のイメージ・読込件数・テーマ・言語・画面の列")}</section>`;
  }

  /* ---------- AppCore: boot / login / error / settings ---------- */
  let loginMsg = "";
  let gErr = { title: "認証サーバーに接続できません", msg: "ネットワークの状態を確認して、もう一度お試しください。", code: "KC-503" };
  /* ---------- 作業実績 › 在庫状況（読み取り専用の台帳）と、引当予約 ----------
     在庫の行 = 場所 × コンテナ × 品目。出庫可能数 = 在庫数 − 安全在庫 − 引当予約済み（0を下回らない）。
     行を選ぶと、棚と品目を引数にバーコード画面（棚移動）へ移る。「引当予約」ボタンで引当予約の画面を開く。 */
  const stockReserved = (id) => (D.g_stockrez ?? []).filter((r) => r.stock === id).reduce((n, r) => n + (Number(r.qty) || 0), 0);
  const stockAvail = (s) => Math.max(0, s.qty - s.safety - stockReserved(s.id));
  const locNm = (id) => locById(id)?.name ?? "―";
  const conNm = (id) => { const c = gGet("container", id); return c ? gName(G.container, c) : "―"; };
  const stItemNm = (id) => { const i = gGet("item", id); return i ? gName(G.item, i) : "―"; };
  D.stock.forEach((s) => { s.label = `${locNm(s.loc)}／${conNm(s.container)}／${stItemNm(s.item)}`; });
  /* 引当予約の「引当先」の選択肢（発注明細・生産計画）。台帳の増減に追随するよう、参照のたびに作る */
  Object.defineProperty(D, "srcPur", { get: () => D.g_purdetail.map((r) => ({ id: r.id, label: `${gName(G.purchase, gGet("purchase", r.purchase) ?? {})} 明細（数量 ${fmt(Number(r.quantity) || 0)}）` })) });
  Object.defineProperty(D, "srcOps", { get: () => D.g_opsplan.map((r) => ({ id: r.id, label: `${gName(G.resplan, gGet("resplan", r.resplan) ?? {})}／完了期限 ${r.deadline ? fmtDate(r.deadline) : "―"}` })) });
  G.stockrez.opts = { stock: () => D.stock.map((s) => [s.id, `${s.label}（出庫可能 ${fmt(stockAvail(s))}）`]) };
  /* 引当数量の上限 = 選んだ在庫の出庫可能数 と 購買注文明細の未引当数量 の小さいほう */
  G.stockrez.limit = (rec, qs) => {
    const p = rec.purdetail || qs.get("purdetail") || "";
    const need = p ? (Number(gGet("purdetail", p)?.quantity) || 0) - D.g_stockrez.filter((r) => r.purdetail === p && r.id !== rec.id).reduce((n, r) => n + (Number(r.qty) || 0), 0) : Infinity;
    const cap = Number.isFinite(need) ? Math.max(0, need) : Infinity;
    const own = (s) => (rec.id && rec.stock === s.id ? Number(rec.qty) || 0 : 0);
    const byStock = Object.fromEntries(D.stock.map((s) => [s.id, Math.min(stockAvail(s) + own(s), cap)]));
    const st = rec.stock || qs.get("stock") || "";
    return { byStock, max: st && st in byStock ? byStock[st] : undefined };
  };
  const stockT = makeTable({
    key: "stock", noun: "件", list: () => D.stock, placeholder: "場所・コンテナ・品目",
    search: (r) => r.label, rowNote: "。行を選ぶと、その棚と品目を引数にバーコード画面（棚移動）を開きます。", linkAria: "の棚と品目でバーコード画面を開く",
    filter: { label: "場所", values: [...new Set(D.stock.map((r) => locNm(r.loc)))], get: (r) => locNm(r.loc) },
    href: (r) => `#/barcode?shelf=${encodeURIComponent(r.shelf)}&item=${encodeURIComponent(r.sym)}`,
    cols: [
      { key: "loc", label: "場所", fixed: true, val: (r) => locNm(r.loc) },
      { key: "container", label: "コンテナ", val: (r) => conNm(r.container) },
      { key: "item", label: "品目", val: (r) => stItemNm(r.item) },
      { key: "qty", label: "在庫数", num: true, val: (r) => r.qty, html: (r) => `${fmt(r.qty)}${esc(r.unit ?? "")}` },
      { key: "safety", label: "安全在庫", num: true, val: (r) => r.safety, html: (r) => `${fmt(r.safety)}${esc(r.unit ?? "")}` },
      { key: "avail", label: "出庫可能数", num: true, val: (r) => stockAvail(r), html: (r) => `${fmt(stockAvail(r))}${esc(r.unit ?? "")}${stockAvail(r) ? "" : ` ${chip("出庫不可", "alert", "warn")}`}` },
      { key: "rez", label: "引当予約済", num: true, val: (r) => stockReserved(r.id), html: (r) => `${fmt(stockReserved(r.id))}${esc(r.unit ?? "")}` },
      { key: "act", label: "操作", val: () => "", html: (r) => `<a class="btn tree-act" href="#/g/e/stockrez/new?stock=${r.id}">引当予約</a>` },
    ],
  });
  function stockScreen() {
    return `${flashHtml()}<section class="card" aria-label="説明"><p>場所・コンテナごとの在庫です（読み取り専用）。出庫可能数は、在庫数から安全在庫と引当予約済みの数量を引いた数です。</p></section>
      ${tableCard(stockT, true, "h-stock", "在庫の台帳", "")}`;
  }

  /* ---------- 作業実績 › 実績登録（生産計画が中心） ----------
     生産計画（親）→ 生産計画明細（子）を閲覧し、明細ごとに「対になる実績」だけを登録する。計画・明細は変更も追加もできない。
       開始: 担当者・開始数量・取り出すコンテナを決めて、コンテナから払い出す。
             コンテナの既定は 引当あり → 最初の工程は「同じ注文に紐づく材料のコンテナ」/ 2工程目以降は「同じ生産計画で前工程の完了品を入庫したコンテナ」。
             別のコンテナは、生産計画を引数にした検索つきの選択（同じダイアログ内）で選ぶ。
       終了: 完了数量とコンテナ（既定は払出元）を入れて登録し、コンテナへ払い出す。
             取り出した数量より完了数量が少ないときは、意図的（日またぎ・引き継ぎなど。残りは払出元へ返す）か
             不適合（工程異常。数量・理由・コンテナが揃ったら登録し、そのコンテナへ払い出す）かを判定する。
       登録の完了時に DB の更新結果を取得して表示する（プロトタイプでは応答を模擬。X.wr.outcome = "error" で失敗の表示を確認できる）。 */
  const WR = JSON.parse(JSON.stringify(X.wr ?? { plans: [], works: [], records: [], stock: [], containers: [], abnormal: [] }));
  const WR_ST = { "未着手": ["", "mute"], "実施中": ["pencil", "line"], "完了": ["check", "ok"] };
  const WR_SHORT = ["日またぎ", "交代の引き継ぎ", "段取り替え", "その他"];
  const WR_NG = ["寸法不良", "外観不良", "材料不良", "設備不具合", "その他"];
  const wrDlg = { kind: null, s: {}, busy: false, err: "" };
  const wrPlan = (id) => WR.plans.find((p) => p.id === id);
  const wrWork = (id) => WR.works.find((w) => w.id === id);
  const wrWorksOf = (pid) => WR.works.filter((w) => w.plan === pid).sort((a, b) => a.seq - b.seq);
  const wrRecs = (wid) => WR.records.filter((r) => r.work === wid);
  const wrOpen = (wid) => wrRecs(wid).find((r) => !r.end);
  const wrDone = (wid) => wrRecs(wid).filter((r) => r.end).reduce((n, r) => n + r.done, 0);
  const wrNeed = (w) => Math.max(0, wrPlan(w.plan).qty - wrDone(w.id) - wrRecs(w.id).filter((r) => !r.end).reduce((n, r) => n + r.pulled, 0));
  const wrStatus = (w) => (wrOpen(w.id) ? "実施中" : wrDone(w.id) >= wrPlan(w.plan).qty ? "完了" : wrRecs(w.id).length ? "実施中" : "未着手");
  const wrCont = (code) => WR.containers.find((c) => c.code === code);
  const wrContName = (code) => { const c = wrCont(code); return c ? `${c.name}（${c.code}）` : code; };
  const wrStaffName = (no) => D.employees.find((e) => e.no === no)?.name ?? no;
  const wrNow = () => { const d = new Date(), p = (n) => String(n).padStart(2, "0"); return `${d.getFullYear()}-${p(d.getMonth() + 1)}-${p(d.getDate())} ${p(d.getHours())}:${p(d.getMinutes())}`; };
  const wrDt = (s) => (s ? s.slice(5).replace("-", "/") : "―");
  const wrTag = (s) => (s.reserved ? "引当" : s.tag ? s.tag : s.seq === 0 ? "材料" : "前工程の完了品");

  /* 取り出せる在庫。優先順: 引当あり → 数量の多い順 */
  function wrCands(w) {
    const p = wrPlan(w.plan);
    return WR.stock.filter((s) => s.qty > 0 && (w.seq === 1 ? s.seq === 0 && s.order === p.order : s.plan === p.id && s.seq === w.seq - 1))
      .sort((a, b) => Number(!!b.reserved) - Number(!!a.reserved) || b.qty - a.qty);
  }
  /* コンテナ検索用: 検索語で絞り、取り出せない理由も添える（生産計画 = 引数） */
  function wrSearch(w, q) {
    const p = wrPlan(w.plan), ok = new Set(wrCands(w).map((s) => s.id));
    const key = String(q ?? "").trim().toLowerCase();
    return WR.stock.filter((s) => s.qty > 0 && s.seq !== "NG" && (!key || `${s.container} ${wrContName(s.container)} ${s.item} ${wrCont(s.container)?.loc ?? ""}`.toLowerCase().includes(key)))
      .map((s) => ({ s, ok: ok.has(s.id), why: s.order !== p.order && s.plan !== p.id ? "別の注文・生産計画の在庫" : w.seq === 1 ? "材料ではありません" : "前工程の完了品ではありません" }))
      .sort((a, b) => Number(b.ok) - Number(a.ok) || Number(!!b.s.reserved) - Number(!!a.s.reserved));
  }

  /* DB 更新の模擬: 数秒待ち、結果（または失敗）を返す */
  const wrCall = (fn) => new Promise((res, rej) => setTimeout(() => {
    if ((X.wr?.outcome ?? "success") === "error") rej(new Error("DB の更新に失敗しました（接続がタイムアウトしました）。登録内容は保存されていません。"));
    else res(fn());
  }, 900));
  const wrNext = (list, prefix) => `${prefix}${String(list.length + 1).padStart(4, "0")}`;

  function wrApplyStart(w, s) {
    const src = WR.stock.find((x) => x.id === s.stockId);
    src.qty -= s.qty;
    const r = { id: `r${WR.records.length + 1}`, no: wrNext(WR.records, "WRC-"), work: w.id, nth: wrRecs(w.id).length + 1, start: wrNow(), end: "", staff: s.staff, container: src.container, srcStock: src.id, pulled: s.qty, done: 0, ng: 0 };
    WR.records.push(r);
    WR.lastStaff = s.staff;
    return { title: "開始を登録しました", rows: [["実績", `${r.no}（${r.nth}回目）`], ["開始", wrDt(r.start)], ["担当者", wrStaffName(r.staff)], ["払出", `${wrContName(src.container)} から ${r.pulled}${wrPlan(w.plan).unit}`], ["コンテナの残り", `${src.qty}${wrPlan(w.plan).unit}`]], db: "作業実績 +1／コンテナ受払 +1（払出）" };
  }
  function wrApplyEnd(w, s) {
    const p = wrPlan(w.plan), r = s.rec, u = p.unit, rows = [];
    const put = (container, seq, qty, item, extra = {}) => WR.stock.push({ id: `s${WR.stock.length + 1}`, container, plan: p.id, order: p.order, seq, qty, item, ...extra });
    let db = 2;
    r.end = wrNow();
    r.done = s.done;
    put(s.container, w.seq, s.done, `${w.task}の完了品`);
    rows.push(["実績", `${r.no}（${r.nth}回目）`], ["終了", wrDt(r.end)], ["完了", `${s.done}${u} → ${wrContName(s.container)} へ払出`]);
    const gap = r.pulled - s.done;
    if (gap > 0 && s.kind === "ng") {
      r.ng = s.ngQty;
      put(s.ngContainer, "NG", s.ngQty, `${w.task}の不適合品`, { reason: s.reason });
      const ab = { no: wrNext(WR.abnormal, "AB-"), work: w.id, qty: s.ngQty, reason: s.reason, container: s.ngContainer, at: r.end };
      WR.abnormal.push(ab);
      rows.push(["工程異常", `${ab.no}（${s.reason}・${s.ngQty}${u}）→ ${wrContName(s.ngContainer)} へ払出`]);
      db += 2;
      const back = gap - s.ngQty;
      if (back > 0) { put(r.container, w.seq === 1 ? 0 : w.seq - 1, back, w.seq === 1 ? "材料（返却）" : "前工程の完了品（返却）", { tag: "返却" }); rows.push(["返却", `${back}${u} → ${wrContName(r.container)}`]); db += 1; }
    } else if (gap > 0) {
      r.carry = gap;
      r.reason = s.reason;
      put(r.container, w.seq === 1 ? 0 : w.seq - 1, gap, w.seq === 1 ? "材料（引継ぎ）" : "前工程の完了品（引継ぎ）", { tag: "引継ぎ", reserved: false });
      rows.push(["意図的な差", `${s.reason}（${gap}${u}を ${wrContName(r.container)} へ返却。次の開始で取り出せます）`]);
      db += 1;
    }
    const st = wrStatus(w);
    rows.push(["明細の状態", `${st}（完了 ${wrDone(w.id)} ／ 計画 ${p.qty}${u}）`]);
    return { title: "終了を登録しました", rows, db: `作業実績 更新／コンテナ受払 +${db - 1}${s.kind === "ng" ? "／工程異常 +1" : ""}` };
  }

  /* ---- 画面: 生産計画のテーブルが親、その計画の工程計画明細のテーブルが子（明細を選ぶと、対になる実績のテーブルを表示） ---- */
  const WRSEL = { plan: null, work: null, applied: null };
  const wrPlanDone = (p) => { const ws = wrWorksOf(p.id), last = ws[ws.length - 1]; return last ? wrDone(last.id) : 0; };
  const wrLast = (wid) => wrRecs(wid).slice(-1)[0];
  const wrNw = (s) => `<span class="od-nowrap">${s}</span>`;
  const wrPlanT = makeTable({
    key: "wrPlan", list: () => WR.plans, search: (r) => `${r.no} ${r.item} ${r.order} ${r.cust}`, placeholder: "計画番号・品目・注文・顧客",
    pick: { get: () => WRSEL.plan, set: (id) => { WRSEL.plan = id; WRSEL.work = null; } },
    cols: [
      { key: "no", label: "計画番号", fixed: true, val: (r) => r.no },
      { key: "item", label: "品目", val: (r) => r.item },
      { key: "order", label: "注文", val: (r) => r.order },
      { key: "cust", label: "顧客", val: (r) => r.cust },
      { key: "qty", label: "生産数量", num: true, val: (r) => r.qty, html: (r) => `${r.qty}${esc(r.unit)}` },
      { key: "done", label: "最終工程の完了", num: true, val: (r) => wrPlanDone(r), html: (r) => `${wrPlanDone(r)} ／ ${r.qty}${esc(r.unit)}` },
      { key: "deadline", label: "完了期限", val: (r) => r.deadline, html: (r) => wrNw(fmtDate(r.deadline)) },
      { key: "run", label: "状態", val: (r) => wrWorksOf(r.id).filter((w) => wrStatus(w) === "実施中").length, html: (r) => { const n = wrWorksOf(r.id).filter((w) => wrStatus(w) === "実施中").length; return n ? chip(`実施中 ${n}工程`, "pencil", "line") : chip("着手前", "", "mute"); } },
    ],
  });
  const wrActBtn = (w) => {
    const open = wrOpen(w.id), st = wrStatus(w);
    if (open) return `<button class="btn btn-primary wr-act" type="button" data-wr-end="${open.id}">${icon("check")}<span>終了</span></button>`;
    if (st === "完了") return `<span class="muted">完了</span>`;
    return wrCands(w).length
      ? `<button class="btn btn-primary wr-act" type="button" data-wr-start="${w.id}">${icon("pencil")}<span>開始</span></button>`
      : `<button class="btn wr-act" type="button" data-wr-start="${w.id}">${icon("search")}<span>探して開始</span></button>`;
  };
  const wrWorkT = makeTable({
    key: "wrWork", noun: "工程", list: () => wrWorksOf(WRSEL.plan), search: (r) => `${r.task} ${r.equip}`, placeholder: "工程・設備", hidden: ["start", "end", "equip"],
    pick: { get: () => WRSEL.work, set: (id) => { WRSEL.work = WRSEL.work === id ? null : id; } },
    cols: [
      { key: "seq", label: "工程順", num: true, val: (r) => r.seq },
      { key: "task", label: "工程", fixed: true, val: (r) => r.task },
      { key: "st", label: "状態", val: (r) => ["未着手", "実施中", "完了"].indexOf(wrStatus(r)), html: (r) => { const st = wrStatus(r); return chip(st, WR_ST[st][0], WR_ST[st][1]); } },
      { key: "interval", label: "予定作業時間", val: (r) => r.interval },
      { key: "start", label: "開始予定", val: (r) => r.start, html: (r) => wrNw(wrDt(r.start)) },
      { key: "end", label: "完了予定", val: (r) => r.end, html: (r) => wrNw(wrDt(r.end)) },
      { key: "equip", label: "設備", val: (r) => r.equip },
      { key: "n", label: "実績", num: true, val: (r) => wrRecs(r.id).length, html: (r) => `${wrRecs(r.id).length}回` },
      { key: "staff", label: "担当者", val: (r) => wrStaffName(wrLast(r.id)?.staff ?? ""), html: (r) => esc(wrLast(r.id) ? wrStaffName(wrLast(r.id).staff) : "―") },
      { key: "cont", label: "コンテナ", val: (r) => wrLast(r.id)?.container ?? "", html: (r) => esc(wrLast(r.id) ? wrContName(wrLast(r.id).container) : "―") },
      { key: "qty", label: "開始 / 完了", num: true, val: (r) => wrLast(r.id)?.pulled ?? 0, html: (r) => { const l = wrLast(r.id); return l ? wrNw(`${l.pulled} ／ ${l.end ? l.done : "―"}${esc(wrPlan(r.plan).unit)}`) : "―"; } },
      { key: "act", label: "実績登録", val: (r) => wrStatus(r), html: wrActBtn },
    ],
  });
  const wrRecT = makeTable({
    key: "wrRec", noun: "回", list: () => wrRecs(WRSEL.work), search: (r) => `${r.no} ${wrStaffName(r.staff)} ${wrContName(r.container)}`, placeholder: "実績番号・担当者・コンテナ",
    cols: [
      { key: "nth", label: "回数", fixed: true, num: true, val: (r) => r.nth, html: (r) => `${r.nth}回目` },
      { key: "no", label: "実績番号", val: (r) => r.no, html: (r) => wrNw(esc(r.no)) },
      { key: "start", label: "開始", val: (r) => r.start, html: (r) => wrNw(wrDt(r.start)) },
      { key: "end", label: "終了", val: (r) => r.end || "9999", html: (r) => (r.end ? wrNw(wrDt(r.end)) : chip("実施中", "pencil", "line")) },
      { key: "staff", label: "担当者", val: (r) => wrStaffName(r.staff) },
      { key: "cont", label: "コンテナ（払出元）", val: (r) => r.container, html: (r) => esc(wrContName(r.container)) },
      { key: "pulled", label: "開始数量", num: true, val: (r) => r.pulled },
      { key: "done", label: "完了数量", num: true, val: (r) => r.done, html: (r) => (r.end ? r.done : "―") },
      { key: "ng", label: "不適合", num: true, val: (r) => r.ng ?? 0, html: (r) => (r.ng ? `${r.ng}` : "―") },
      { key: "carry", label: "引継ぎ", num: true, val: (r) => r.carry ?? 0, html: (r) => (r.carry ? `${r.carry}（${esc(r.reason ?? "")}）` : "―") },
    ],
  });
  function wrScreen(pid) {
    if (pid !== WRSEL.applied) { WRSEL.applied = pid; if (pid && wrPlan(pid)) { WRSEL.plan = pid; WRSEL.work = null; } }
    if (!wrPlan(WRSEL.plan)) { WRSEL.plan = WR.plans[0]?.id ?? null; WRSEL.work = null; }
    if (WRSEL.work && wrWork(WRSEL.work)?.plan !== WRSEL.plan) WRSEL.work = null;
    const p = wrPlan(WRSEL.plan), w = wrWork(WRSEL.work);
    return `<p class="tbl-note-out">生産計画の名称を選ぶと、その計画の工程計画明細を下に表示します。計画と明細は変更も追加もできません。登録できるのは、明細と対になる実績だけです（右端の「実績登録」）。</p>
      ${tableCard(wrPlanT, false, "h-wrp", "生産計画", "")}
      ${p ? tableCard(wrWorkT, false, "h-wrw", `「${esc(p.no)}　${esc(p.item)}」の工程計画明細`, "") : ""}
      ${w ? tableCard(wrRecT, false, "h-wrr", `「工程${w.seq} ${esc(w.task)}」の実績`, "") : (p ? `<p class="tbl-note-out">工程の名称を選ぶと、その明細の実績（回ごとの記録）を表示します。</p>` : "")}`;
  }
  document.addEventListener("click", (e) => {
    const b = e.target.closest("[data-wr-start],[data-wr-end]");
    if (!b) return;
    if (b.dataset.wrStart) wrOpenDlg("start", b.dataset.wrStart, b);
    else wrOpenDlg("end", b.dataset.wrEnd, b);
  });

  /* ---- ダイアログ（開始／終了／コンテナ検索／不適合／結果）。同じダイアログの中で表示を切り替える ---- */
  const wrOpenDlg = (kind, id, trigger) => {
    wrDlg.kind = kind;
    wrDlg.busy = false;
    wrDlg.err = "";
    if (kind === "start") {
      const w = wrWork(id), c = wrCands(w)[0];
      wrDlg.s = { view: "start", wid: id, staff: WR.lastStaff ?? D.employees[0]?.no ?? "", stockId: c?.id ?? "", qty: c ? Math.min(c.qty, wrNeed(w)) : "", q: "" };
    } else {
      const r = WR.records.find((x) => x.id === id), w = wrWork(r.work);
      wrDlg.s = { view: "end", wid: w.id, rid: id, rec: r, done: r.pulled, container: r.container, kind: "", reason: "", ngQty: "", ngContainer: WR.containers.find((c) => c.kind === "不良品")?.code ?? "" };
    }
    const w = wrWork(wrDlg.s.wid);
    showSheet(trigger, { chip: chip(kind === "start" ? "開始" : "終了", kind === "start" ? "pencil" : "check"), title: `${wrPlan(w.plan).no}　工程${w.seq} ${w.task}`, rows: [], extra: `<div id="wr-dlg" class="wr-dlg"></div>`, onMount: () => wrPaint() });
    setTimeout(() => document.querySelector("#wr-dlg #wr-qty, #wr-dlg #wr-done, #wr-dlg .wr-big")?.focus(), 80);
  };
  const wrCloseDlg = () => { wrDlg.kind = null; closeSheet(); render(); };
  function wrView() {
    const s = wrDlg.s, w = wrWork(s.wid), p = wrPlan(w.plan), u = esc(p.unit);
    const err = wrDlg.err ? `<p class="bc-msg is-err" role="alert">${icon("alert")}<span>${esc(wrDlg.err)}</span></p>` : "";
    const stepper = (id, label, val, max, hint) => `<div class="field-row"><label for="${id}">${label}</label>
      <div class="wr-stepper"><button class="btn" type="button" data-wr-d="dec" data-for="${id}" aria-label="1減らす">−</button><input id="${id}" data-f="${id}" type="number" inputmode="numeric" min="1" max="${max}" step="1" value="${val}" aria-describedby="${id}-h"><button class="btn" type="button" data-wr-d="inc" data-for="${id}" aria-label="1増やす">＋</button><button class="btn" type="button" data-wr-d="full" data-for="${id}" data-max="${max}">全量</button></div>
      <p class="note" id="${id}-h">${hint}</p></div>`;
    const opts = (list, sel) => list.map(([v, l]) => `<option value="${esc(v)}" ${v === sel ? "selected" : ""}>${esc(l)}</option>`).join("");
    if (wrDlg.busy) return `<div class="wr-busy" role="status" aria-busy="true"><span class="spinner" aria-hidden="true"></span><p>DB に登録して、更新結果を取得しています…</p></div>`;
    if (s.view === "result") {
      const r = s.result;
      return `<div class="wr-result" role="status"><p class="wr-ok">${icon("check")}<strong>${esc(r.title)}</strong></p>
        <dl class="wr-info">${r.rows.map(([k, v]) => `<div class="kv"><dt>${k}</dt><dd>${esc(v)}</dd></div>`).join("")}</dl>
        <p class="note">DB の更新結果: ${esc(r.db)}</p>
        <div class="form-actions"><button class="btn btn-primary wr-big" type="button" data-wr-d="close">閉じる</button></div></div>`;
    }
    if (s.view === "pick") {
      const list = wrSearch(w, s.q);
      const item = ({ s: st, ok, why }) => `<li><button class="wr-cand ${ok ? "" : "is-off"}" type="button" ${ok ? `data-wr-d="sel" data-id="${st.id}"` : "disabled"} aria-pressed="${st.id === s.stockId}">
        <span class="od-fill"><strong class="od-truncate">${esc(wrContName(st.container))}</strong><span class="muted od-truncate">${esc(st.item)}${ok ? "" : ` ・ ${esc(why)}`}</span></span>
        ${ok ? chip(wrTag(st), st.reserved ? "star" : "", st.reserved ? "ok" : "line") : ""}<span class="od-nowrap wr-q">${st.qty}${u}</span></button></li>`;
      const ok = list.filter((x) => x.ok), ng = list.filter((x) => !x.ok);
      return `<div class="wr-pick"><button class="btn" type="button" data-wr-d="back">${icon("back")}<span>戻る</span></button>
        <p class="note">生産計画 ${esc(p.no)}（注文 ${esc(p.order)}）の${w.seq === 1 ? "材料" : `工程${w.seq - 1}の完了品`}が入っているコンテナを探します。</p>
        <div class="search-box">${icon("search")}<input id="wr-q" data-f="q" type="search" value="${esc(s.q)}" placeholder="コンテナ・品目・場所で検索" autocomplete="off" aria-label="コンテナを検索"></div>
        <ul class="wr-cands" aria-label="取り出せるコンテナ">${ok.map(item).join("") || `<li class="muted">取り出せるコンテナがありません。</li>`}</ul>
        ${ng.length ? `<details class="wr-others"><summary>取り出せないコンテナ（${ng.length}件）</summary><ul class="wr-cands">${ng.map(item).join("")}</ul></details>` : ""}</div>`;
    }
    if (wrDlg.kind === "start") {
      const st = WR.stock.find((x) => x.id === s.stockId), need = wrNeed(w), max = st ? Math.min(st.qty, need) : 0;
      return `<form class="wr-form" data-wr-form novalidate>${err}
        <p class="wr-line">残り ${need}${u}（計画 ${p.qty}${u}）</p>
        <div class="field-row"><label for="wr-staff">担当者</label><select id="wr-staff" data-f="staff">${opts(D.employees.map((e) => [e.no, `${e.name}（${e.no}）`]), s.staff)}</select></div>
        ${stepper("wr-qty", "開始数量", s.qty, max || 1, st ? `最大 ${max}${u}（コンテナの在庫 ${st.qty}${u}、計画の残り ${need}${u}）` : "コンテナを選ぶと入力できます")}
        <div class="field-row"><span class="label-like">取り出すコンテナ</span>
          ${st ? `<div class="wr-sel"><span class="od-fill"><strong class="od-truncate">${esc(wrContName(st.container))}</strong><span class="muted od-truncate">${esc(st.item)} ・ 在庫 ${st.qty}${u}</span></span>${chip(wrTag(st), st.reserved ? "star" : "", st.reserved ? "ok" : "line")}</div>`
            : `<p class="wr-why">${icon("alert")}<span>取り出せるコンテナがありません。探して選んでください。</span></p>`}
          <button class="btn" type="button" data-wr-d="pick">${icon("search")}<span>${st ? "コンテナを変更・検索" : "コンテナを探す"}</span></button></div>
        <div class="form-actions"><button class="btn btn-primary wr-big" type="submit" ${st ? "" : "disabled"}>開始（コンテナ払出）</button></div></form>`;
    }
    /* 終了 */
    const r = s.rec, gap = r.pulled - (Number(s.done) || 0);
    if (s.view === "short") {
      return `<div class="wr-form">${err}<p class="wr-line">取り出した ${r.pulled}${u} に対して、完了は ${s.done}${u}（差 ${gap}${u}）です。</p>
        <p class="bc-ask">この差は、どちらですか？</p>
        <div class="bc-choices"><button class="btn bc-big" type="button" data-wr-d="intent">${icon("pencil")}<span>意図的（日またぎ・引き継ぎなど）</span></button><button class="btn btn-danger bc-big" type="button" data-wr-d="ng">${icon("alert")}<span>不適合（工程異常）</span></button></div>
        <div class="form-actions"><button class="btn" type="button" data-wr-d="back">${icon("back")}<span>数量を直す</span></button></div></div>`;
    }
    if (s.view === "intent") {
      return `<form class="wr-form" data-wr-form novalidate>${err}<p class="wr-line">差 ${gap}${u} は、${esc(wrContName(r.container))} へ戻します（次の開始で取り出せます）。</p>
        <div class="field-row"><label for="wr-reason">理由</label><select id="wr-reason" data-f="reason">${opts(WR_SHORT.map((x) => [x, x]), s.reason || WR_SHORT[0])}</select></div>
        <div class="form-actions"><button class="btn" type="button" data-wr-d="short">戻る</button><button class="btn btn-primary wr-big" type="submit">意図的として終了を登録</button></div></form>`;
    }
    if (s.view === "ng") {
      return `<form class="wr-form" data-wr-form novalidate>${err}<p class="wr-line">不適合は工程異常として登録し、選んだコンテナへ払い出します。</p>
        ${stepper("wr-ngqty", "不適合の数量", s.ngQty || gap, gap, `最大 ${gap}${u}（残りは ${esc(wrContName(r.container))} へ戻します）`)}
        <div class="field-row"><label for="wr-reason">不適合の理由</label><select id="wr-reason" data-f="reason">${opts(WR_NG.map((x) => [x, x]), s.reason || WR_NG[0])}</select></div>
        <div class="field-row"><label for="wr-ngc">払い出すコンテナ</label><select id="wr-ngc" data-f="ngContainer">${opts(WR.containers.map((c) => [c.code, wrContName(c.code)]), s.ngContainer)}</select></div>
        <div class="form-actions"><button class="btn" type="button" data-wr-d="short">戻る</button><button class="btn btn-danger wr-big" type="submit">不適合として終了を登録</button></div></form>`;
    }
    return `<form class="wr-form" data-wr-form novalidate>${err}
      <p class="wr-line">${wrDt(r.start)} 開始 ・ ${esc(wrStaffName(r.staff))} ・ 取り出し ${r.pulled}${u}</p>
      ${stepper("wr-done", "完了数量", s.done, r.pulled, `取り出した数量（${r.pulled}${u}）まで。少ないときは、次で意図的か不適合かを選びます`)}
      <div class="field-row"><label for="wr-cont">コンテナ（払出先）</label><select id="wr-cont" data-f="container">${opts(WR.containers.filter((c) => c.kind !== "不良品").map((c) => [c.code, wrContName(c.code)]), s.container)}</select></div>
      <div class="form-actions"><button class="btn btn-primary wr-big" type="submit">終了を登録（コンテナ払出）</button></div></form>`;
  }
  function wrSync(el) {
    const s = wrDlg.s;
    el.querySelectorAll("[data-f]").forEach((i) => {
      const k = { "wr-qty": "qty", "wr-done": "done", "wr-ngqty": "ngQty", "wr-staff": "staff", "wr-cont": "container", "wr-reason": "reason", "wr-ngc": "ngContainer", "wr-q": "q" }[i.id];
      if (k) s[k] = i.type === "number" ? (i.value === "" ? "" : Number(i.value)) : i.value;
    });
  }
  async function wrRegister(el) {
    const s = wrDlg.s, w = wrWork(s.wid);
    wrSync(el);
    wrDlg.err = "";
    if (wrDlg.kind === "start") {
      const st = WR.stock.find((x) => x.id === s.stockId), max = st ? Math.min(st.qty, wrNeed(w)) : 0;
      if (!Number.isInteger(s.qty) || s.qty < 1) { wrDlg.err = "開始数量は1以上の整数で入力してください。"; return wrPaint(); }
      if (s.qty > max) { wrDlg.err = `開始数量は最大 ${max}${wrPlan(w.plan).unit} までです。`; return wrPaint(); }
    } else {
      const r = s.rec, done = s.done;
      if (!Number.isInteger(done) || done < 0) { wrDlg.err = "完了数量は0以上の整数で入力してください。"; return wrPaint(); }
      if (done > r.pulled) { wrDlg.err = `完了数量は取り出した数量（${r.pulled}）以下にしてください。`; return wrPaint(); }
      if (done < r.pulled && !s.kind) { s.view = "short"; return wrPaint(); }
      if (s.kind === "ng") {
        const gap = r.pulled - done;
        if (!Number.isInteger(s.ngQty) || s.ngQty < 1 || s.ngQty > gap) { wrDlg.err = `不適合の数量は1〜${gap}で入力してください。`; return wrPaint(); }
        if (!s.reason || !s.ngContainer) { wrDlg.err = "不適合の理由と、払い出すコンテナを選んでください。"; return wrPaint(); }
      }
    }
    wrDlg.busy = true;
    wrPaint();
    try {
      const res = await wrCall(() => (wrDlg.kind === "start" ? wrApplyStart(w, s) : wrApplyEnd(w, s)));
      wrDlg.busy = false;
      s.result = res;
      s.view = "result";
      render();
    } catch (e) {
      wrDlg.busy = false;
      wrDlg.err = e.message;
    }
    wrPaint();
  }
  function wrPaint() {
    const el = document.getElementById("wr-dlg");
    if (!el) return;
    el.innerHTML = wrView();
    const s = wrDlg.s;
    el.querySelectorAll("[data-wr-form]").forEach((f) => f.addEventListener("submit", (e) => { e.preventDefault(); wrRegister(el); }));
    el.querySelectorAll("[data-wr-d]").forEach((b) => b.addEventListener("click", () => {
      const a = b.dataset.wrD;
      wrSync(el);
      if (a === "close") return wrCloseDlg();
      if (a === "pick") s.view = "pick";
      else if (a === "back") { s.view = wrDlg.kind === "start" ? "start" : "end"; s.kind = ""; }
      else if (a === "sel") { const st = WR.stock.find((x) => x.id === b.dataset.id); s.stockId = st.id; s.qty = Math.min(st.qty, wrNeed(wrWork(s.wid))); s.view = "start"; }
      else if (a === "short") s.view = "short";
      else if (a === "intent") { s.kind = "intent"; s.reason = ""; s.view = "intent"; }
      else if (a === "ng") { s.kind = "ng"; s.reason = ""; s.view = "ng"; }
      else if (["inc", "dec", "full"].includes(a)) {
        const i = el.querySelector(`#${b.dataset.for}`), cur = Number(i.value) || 0, max = Number(i.max) || cur;
        i.value = a === "full" ? Number(b.dataset.max) : Math.max(1, Math.min(max, cur + (a === "inc" ? 1 : -1)));
        wrSync(el);
        return;
      }
      wrDlg.err = "";
      wrPaint();
    }));
    const q = el.querySelector("#wr-q");
    if (q) q.addEventListener("input", () => { s.q = q.value; const pos = q.selectionStart; wrPaint(); const n = document.getElementById("wr-q"); n?.focus(); n?.setSelectionRange(pos, pos); });
    const first = el.querySelector("#wr-qty, #wr-done, #wr-ngqty, #wr-q, .wr-big");
    if (first && !q) first.focus?.();
  }
  function bindWr() { /* ボタンは document の委譲（表の再描画で消えないように） */ }

  /* ---------- 承認一覧（メニューごと）と、ダッシュボードの承認待ち通知 ----------
     ログインユーザーが承認者になっている「未承認」のレコードだけを、区分ごとのタブで表示する。
       運用と改善 → 文書・異常・再発防止 / 営業 → 受注 / 購買 → 発注・非計上発注 / 出荷管理 → 出荷
     「参照」を押すと、該当するレコードの画面へ移り、そのレコード 1 件に絞り込む（?id=）。
     行を押して複数を選び、まとめて承認する。承認の前に内容を確認し、担当者のパスワードでアカウントを照合する
     （プロトタイプのパスワードは、ログインと同じ demo-password）。承認すると、DB の更新結果を表示する（模擬）。 */
  const APV = JSON.parse(JSON.stringify(X.approval ?? { items: [] }));
  const APV_GROUPS = {
    ops: [{ kind: "doc", label: "文書" }, { kind: "disposal", label: "異常" }, { kind: "recur", label: "再発防止" }],
    sales: [{ kind: "order", label: "受注" }],
    ship: [{ kind: "shipplan", label: "出荷" }],
    purchasing: [{ kind: "purchase", label: "発注" }, { kind: "unrec", label: "非計上発注" }],
  };
  const APV_KIND = { doc: "文書", order: "受注", shipplan: "出荷", purchase: "発注", unrec: "非計上発注", disposal: "異常", recur: "再発防止" };
  const apvState = { tab: {}, sel: new Set(), dlg: { items: [], err: "", busy: false, result: null } };
  const apvMine = (kind) => APV.items.filter((x) => x.kind === kind && x.status === "未承認" && x.approver === D.user.name);
  const apvGroupLabel = (gid) => MENU_GROUPS.find((g) => g.id === gid)?.label ?? gid;
  const apvRoute = (it) => (it.kind === "doc" ? `#/manual/${it.ref}` : `#/g/${it.kind}/main?id=${it.ref}`);
  const apvCount = (gid) => APV_GROUPS[gid].reduce((n, t) => n + apvMine(t.kind).length, 0);
  const apvTotal = () => Object.keys(APV_GROUPS).reduce((n, g) => n + apvCount(g), 0);
  /* ダッシュボードの通知（遅延ラインと同じ注意レベルの表示） */
  const apvAlert = () => {
    const total = apvTotal();
    if (!total) return "";
    const links = Object.keys(APV_GROUPS).filter((g) => apvCount(g)).map((g) => `<a href="#/ap/${g}">${esc(apvGroupLabel(g))}の承認一覧（${APV_GROUPS[g].filter((t) => apvMine(t.kind).length).map((t) => `${t.label} ${apvMine(t.kind).length}件`).join("・")}）</a>`);
    return `<div class="alert" role="alert">${icon("alert")}<div class="od-fill"><strong>承認待ちが${total}件あります</strong><p>${links.join("、")}。</p></div></div>`;
  };
  const apvTables = {};
  const apvTable = (kind) => (apvTables[kind] ??= makeTable({
    key: `apv_${kind}`, noun: "件", list: () => apvMine(kind), search: (r) => `${r.refLabel} ${r.title} ${r.applicant} ${r.detail}`, placeholder: "番号・件名・申請者",
    cols: [
      { key: "sel", label: "選択", val: (r) => (apvState.sel.has(r.id) ? 0 : 1), html: (r) => `<input type="checkbox" class="ap-chk" data-ap-sel="${r.id}" ${apvState.sel.has(r.id) ? "checked" : ""} aria-label="${esc(r.refLabel)}を選択">` },
      { key: "ref", label: "参照", fixed: true, val: (r) => r.refLabel, html: (r) => `<a class="wk" href="${apvRoute(r)}" title="該当するレコードの画面を開きます">${esc(r.refLabel)}</a>` },
      { key: "title", label: "件名", val: (r) => r.title },
      { key: "detail", label: "内容", val: (r) => r.detail },
      { key: "applicant", label: "申請者", val: (r) => r.applicant },
      { key: "at", label: "申請日", val: (r) => r.at, html: (r) => `<span class="od-nowrap">${fmtDate(r.at)}</span>` },
      { key: "step", label: "承認の段階", val: (r) => r.step },
    ],
  }));
  function apvScreen(gid) {
    const tabs = APV_GROUPS[gid];
    if (!tabs) return notFound("承認一覧が見つかりません", "#/menu");
    const tab = tabs.find((t) => t.kind === apvState.tab[gid]) ?? tabs[0];
    apvState.tab[gid] = tab.kind;
    const ids = new Set(apvMine(tab.kind).map((x) => x.id));
    [...apvState.sel].forEach((i) => { if (!ids.has(i)) apvState.sel.delete(i); });
    const tabBar = `<div class="filters" role="tablist" aria-label="承認の区分">${tabs.map((t) => `<button class="fchip" type="button" role="tab" data-ap-tab="${t.kind}" aria-selected="${t.kind === tab.kind}" aria-pressed="${t.kind === tab.kind}">${t.label}<span class="fchip-n od-nowrap">${apvMine(t.kind).length}件</span></button>`).join("")}</div>`;
    return `${backLink("#/menu", "メニューに戻る")}
      <p class="tbl-note-out">${esc(D.user.name)} さんが承認者になっている、未承認のものです。参照を押すと、該当するレコードの画面を開きます。行を押して選ぶと、複数をまとめて承認できます。</p>
      ${tabBar}
      <div class="ap-bar" data-ap-bar role="region" aria-label="選択と承認"></div>
      ${tableCard(apvTable(tab.kind), false, "h-apv", `${esc(apvGroupLabel(gid))} › ${tab.label}の未承認`, "")}`;
  }
  function apvPaintBar() {
    const bar = document.querySelector("[data-ap-bar]");
    if (!bar) return;
    const n = apvState.sel.size;
    bar.innerHTML = `<span class="ap-count" role="status">選択中 <strong>${n}</strong>件</span>
      <button class="btn" type="button" data-ap-all>すべて選択</button><button class="btn" type="button" data-ap-none ${n ? "" : "disabled"}>選択を解除</button>
      <button class="btn btn-primary" type="button" data-ap-go ${n ? "" : "disabled"}>${icon("check")}<span>承認する（${n}件）</span></button>`;
    bar.querySelector("[data-ap-all]").addEventListener("click", () => { const k = document.querySelector("[data-ap-tab][aria-selected='true']").dataset.apTab; apvMine(k).forEach((x) => apvState.sel.add(x.id)); apvSyncRows(); });
    bar.querySelector("[data-ap-none]").addEventListener("click", () => { apvState.sel.clear(); apvSyncRows(); });
    bar.querySelector("[data-ap-go]").addEventListener("click", (e) => apvOpenDlg(e.currentTarget));
  }
  function apvSyncRows() {
    document.querySelectorAll("[data-ap-sel]").forEach((cb) => { cb.checked = apvState.sel.has(cb.dataset.apSel); cb.closest("tr")?.classList.toggle("is-selected", cb.checked); });
    apvPaintBar();
  }
  function bindApv() {
    const tabs = document.querySelectorAll("[data-ap-tab]");
    if (!tabs.length) return;
    tabs.forEach((b) => b.addEventListener("click", () => {
      const gid = Object.keys(APV_GROUPS).find((g) => APV_GROUPS[g].some((t) => t.kind === b.dataset.apTab));
      apvState.tab[gid] = b.dataset.apTab;
      apvState.sel.clear();
      render();
    }));
    apvSyncRows();
  }
  /* 行を押して選ぶ（リンク・ボタンは除く）。表の再描画で消えないよう、document で受ける */
  document.addEventListener("click", (e) => {
    const tr = e.target.closest(".tbl-host[data-tkey^='apv_'] tbody tr");
    if (!tr || e.target.closest("a, button")) return;
    const cb = tr.querySelector("[data-ap-sel]");
    if (!cb) return;
    if (e.target !== cb) cb.checked = !cb.checked;
    if (cb.checked) apvState.sel.add(cb.dataset.apSel); else apvState.sel.delete(cb.dataset.apSel);
    tr.classList.toggle("is-selected", cb.checked);
    apvPaintBar();
  });

  /* ---- 承認のダイアログ（内容の確認 → パスワードの照合 → 結果） ---- */
  function apvDlgHtml() {
    const d = apvState.dlg;
    const list = (items) => `<ul class="apv-list">${items.map((x) => `<li><strong class="od-nowrap">${esc(APV_KIND[x.kind])}　${esc(x.refLabel)}</strong><span>${esc(x.title)}</span><span class="muted">${esc(x.detail)} ・ 申請者 ${esc(x.applicant)}（${fmtDate(x.at)}）</span></li>`).join("")}</ul>`;
    if (d.busy) return `<div class="wr-busy" role="status" aria-busy="true"><span class="spinner" aria-hidden="true"></span><p>アカウントを照合して、DB に承認を登録しています…</p></div>`;
    if (d.result) {
      return `<div class="wr-result" role="status"><p class="wr-ok">${icon("check")}<strong>${d.result.items.length}件を承認しました</strong></p>${list(d.result.items)}
        <dl class="wr-info"><div class="kv"><dt>承認者</dt><dd>${esc(D.user.name)}</dd></div><div class="kv"><dt>承認日時</dt><dd class="od-nowrap">${esc(d.result.at)}</dd></div></dl>
        <p class="note">DB の更新結果: 承認 ${d.result.items.length}件を更新／承認履歴 +${d.result.items.length}件</p>
        <div class="form-actions"><button class="btn btn-primary wr-big" type="button" data-apv-close>閉じる</button></div></div>`;
    }
    return `<form class="wr-form" data-apv-form novalidate>
      <p class="wr-line">次の${d.items.length}件を承認します。内容を確認してください。</p>${list(d.items)}
      <div class="field-row"><label for="apv-pw">担当者のパスワード<span class="req">必須</span></label>
        <input id="apv-pw" type="password" autocomplete="current-password" aria-describedby="apv-note apv-err" ${d.err ? 'aria-invalid="true"' : ""}>
        <p class="note" id="apv-note">${esc(D.user.name)} さんのアカウントを照合します。</p><p class="field-err" id="apv-err" role="alert">${esc(d.err)}</p></div>
      <div class="form-actions"><button class="btn" type="button" data-close>キャンセル</button><button class="btn btn-primary wr-big" type="submit">承認する（${d.items.length}件）</button></div></form>`;
  }
  function apvPaint() {
    const el = document.getElementById("apv-dlg");
    if (!el) return;
    el.innerHTML = apvDlgHtml();
    el.querySelectorAll("[data-close]").forEach((b) => b.addEventListener("click", () => closeSheet()));
    el.querySelector("[data-apv-close]")?.addEventListener("click", () => { closeSheet(); render(); });
    el.querySelector("[data-apv-form]")?.addEventListener("submit", (e) => { e.preventDefault(); apvSubmit(el.querySelector("#apv-pw").value); });
    el.querySelector("#apv-pw")?.focus();
  }
  function apvSubmit(pw) {
    const d = apvState.dlg;
    d.err = "";
    if (!pw) { d.err = "パスワードを入力してください。"; return apvPaint(); }
    d.busy = true;
    apvPaint();
    setTimeout(() => {
      d.busy = false;
      if (pw !== "demo-password") { d.err = "パスワードが正しくありません。もう一度入力してください。承認はまだ登録されていません。"; return apvPaint(); }
      const at = `${manNowStr()} ${new Date().toTimeString().slice(0, 5)}`;
      d.items.forEach((x) => { x.status = "承認済"; x.approvedAt = at; x.approvedBy = D.user.name; });
      d.items.forEach((x) => apvState.sel.delete(x.id));
      d.result = { items: d.items, at };
      apvPaint();
      render();
    }, 900);
  }
  function apvOpenDlg(trigger) {
    const kind = document.querySelector("[data-ap-tab][aria-selected='true']")?.dataset.apTab;
    const items = apvMine(kind).filter((x) => apvState.sel.has(x.id));
    if (!items.length) return;
    Object.assign(apvState.dlg, { items, err: "", busy: false, result: null });
    showSheet(trigger, { chip: chip("承認", "check"), title: "承認の確認", rows: [], extra: `<div id="apv-dlg" class="wr-dlg"></div>`, onMount: () => apvPaint() });
  }

  /* ---------- マニュアル（Wiki）: 品質管理文書 › マニュアル ----------
     ページの正本は Markdown（body_md＝本文。ページ名は別項目）。表示は MD → HTML（HTML は無効化）、編集は MD / ビジュアル(WYSIWYG)を切り替え。
     ページ間リンクは [[ページ名]] / [[ページ名|表示文字]]。存在しないページへのリンクは破線で示し、管理者は押して作成できる（書きながら育てる）。
     管理者だけが編集・追加・履歴の復元ができ、それ以外は閲覧・印刷・MD の書き出しのみ。
     印刷は専用レイアウト（表紙・目次・章ごとの改ページ・ページ番号）。リンクは文字だけを残し、リンク先のページは範囲に含めない限り印刷しない。 */
  const MN = JSON.parse(JSON.stringify(X.manual ?? { pages: [] }));
  const MAN = { sel: null, applied: undefined, edit: false, mode: "visual", draft: null, q: "", err: "", range: null };
  const manAdmin = () => SETTINGS.admin === true;
  const manPage = (id) => MN.pages.find((p) => p.id === id);
  const manKids = (id) => MN.pages.filter((p) => (p.parent ?? null) === (id ?? null)).sort((a, b) => (a.order ?? 0) - (b.order ?? 0));
  const manByTitle = (t) => { const k = String(t).trim().toLowerCase(); return MN.pages.find((p) => p.title.trim().toLowerCase() === k); };
  const manPath = (p) => { const out = []; for (let x = p; x; x = manPage(x.parent)) out.unshift(x); return out; };
  const manWalk = (pid = null, depth = 0, num = "") => manKids(pid).flatMap((p, i) => { const n = `${num}${num ? "." : ""}${i + 1}`; return [{ p, depth, num: n }, ...manWalk(p.id, depth + 1, n)]; });
  const manBelow = (id) => manKids(id).flatMap((c) => [c, ...manBelow(c.id)]);
  const manSlug = (s) => String(s).trim().toLowerCase().replace(/[^\p{L}\p{N}]+/gu, "-").replace(/^-+|-+$/g, "") || "page";
  const manNowStr = () => { const d = new Date(); return `${d.getFullYear()}年${d.getMonth() + 1}月${d.getDate()}日`; };

  /* ---- Markdown → HTML（すべて escape してから組み立てる） ---- */
  function manLinkHtml(title, text, o) {
    const pg = manByTitle(title);
    if (o.print) return `<span>${esc(text)}</span>`;
    if (o.edit) return `<a class="wk ${pg ? "" : "wk-new"}" data-wiki="${esc(title)}">${esc(text)}</a>`;
    if (pg) return `<a class="wk" href="#/manual/${pg.id}">${esc(text)}</a>`;
    return manAdmin()
      ? `<button class="wk wk-new" type="button" data-man-create="${esc(title)}" title="未作成のページです。押して作成します">${esc(text)}</button>`
      : `<span class="wk wk-new" title="未作成のページです">${esc(text)}</span>`;
  }
  function manUrlHtml(text, url, o) {
    if (o.print) return `<span>${esc(text)}</span>`;
    if (/^#\/manual\/[\w-]+$/.test(url)) return `<a class="wk" href="${esc(url)}">${esc(text)}</a>`;
    if (/^(https?:\/\/|mailto:)/i.test(url)) return `<a href="${esc(url)}" target="_blank" rel="noopener">${esc(text)}</a>`;
    return esc(text);
  }
  function mdInline(raw, o = {}) {
    const tok = [];
    const put = (h) => `\u0001${tok.push(h) - 1}\u0001`;
    let s = String(raw);
    s = s.replace(/\\([\\`*_[\]|~#])/g, (_, c) => put(esc(c)));
    s = s.replace(/`([^`]+)`/g, (_, c) => put(`<code>${esc(c)}</code>`));
    s = s.replace(/\[\[([^\]|]+?)(?:\|([^\]]+?))?\]\]/g, (_, t, x) => put(manLinkHtml(t.trim(), (x ?? t).trim(), o)));
    s = s.replace(/\[([^\]]+)\]\(([^)\s]+)\)/g, (_, x, u) => put(manUrlHtml(x, u, o)));
    s = esc(s);
    s = s.replace(/\*\*([^*]+)\*\*/g, "<strong>$1</strong>").replace(/(^|[^*])\*([^*\s][^*]*)\*/g, "$1<em>$2</em>").replace(/~~([^~]+)~~/g, "<del>$1</del>");
    return s.replace(/\u0001(\d+)\u0001/g, (_, i) => tok[i]);
  }
  function mdList(items, o) {
    let p = 0;
    const build = (ind) => {
      const tag = items[p].ord ? "ol" : "ul";
      let h = `<${tag}>`;
      while (p < items.length && items[p].ind >= ind) {
        if (items[p].ind > ind) { h = h.slice(0, -5) + build(items[p].ind) + "</li>"; continue; }
        h += `<li>${mdInline(items[p].text, o)}</li>`;
        p++;
      }
      return `${h}</${tag}>`;
    };
    return build(items[0].ind);
  }
  function mdToHtml(md, o = {}) {
    const lines = String(md ?? "").replace(/\r\n?/g, "\n").split("\n");
    const out = [], heads = [];
    const LI = /^\s*([-*+]|\d+\.)\s+/, TB = /^\s*\|?\s*:?-{2,}:?\s*(\|\s*:?-{2,}:?\s*)*\|?\s*$/;
    const startsBlock = (l, nx) => /^```/.test(l) || /^#{1,6}\s/.test(l) || /^(-{3,}|\*{3,}|_{3,})\s*$/.test(l) || /^>\s?/.test(l) || LI.test(l) || (l.includes("|") && TB.test(nx ?? ""));
    let i = 0;
    while (i < lines.length) {
      const l = lines[i];
      if (!l.trim()) { i++; continue; }
      let m;
      if (/^```/.test(l)) { const buf = []; i++; while (i < lines.length && !/^```\s*$/.test(lines[i])) buf.push(lines[i++]); i++; out.push(`<pre><code>${esc(buf.join("\n"))}</code></pre>`); continue; }
      if ((m = l.match(/^(#{1,6})\s+(.*?)\s*#*\s*$/))) { const id = `${o.idp ?? ""}h${heads.length}`; heads.push({ lv: m[1].length, text: m[2], id }); out.push(`<h${m[1].length} id="${id}">${mdInline(m[2], o)}</h${m[1].length}>`); i++; continue; }
      if (/^(-{3,}|\*{3,}|_{3,})\s*$/.test(l)) { out.push("<hr>"); i++; continue; }
      if (/^>\s?/.test(l)) { const buf = []; while (i < lines.length && /^>\s?/.test(lines[i])) buf.push(lines[i++].replace(/^>\s?/, "")); out.push(`<blockquote>${mdToHtml(buf.join("\n"), o).html}</blockquote>`); continue; }
      if (l.includes("|") && TB.test(lines[i + 1] ?? "")) {
        const cells = (r) => r.trim().replace(/^\|/, "").replace(/\|$/, "").split("|").map((c) => c.trim());
        const head = cells(l);
        i += 2;
        const rows = [];
        while (i < lines.length && lines[i].trim() && lines[i].includes("|")) rows.push(cells(lines[i++]));
        out.push(`<table><thead><tr>${head.map((c) => `<th>${mdInline(c, o)}</th>`).join("")}</tr></thead><tbody>${rows.map((r) => `<tr>${head.map((_, k) => `<td>${mdInline(r[k] ?? "", o)}</td>`).join("")}</tr>`).join("")}</tbody></table>`);
        continue;
      }
      if (LI.test(l)) {
        const items = [];
        while (i < lines.length && LI.test(lines[i])) { const mm = lines[i].match(/^(\s*)([-*+]|\d+\.)\s+(.*)$/); items.push({ ind: mm[1].length, ord: /\d/.test(mm[2]), text: mm[3] }); i++; }
        out.push(mdList(items, o));
        continue;
      }
      const buf = [];
      while (i < lines.length && lines[i].trim() && !(buf.length && startsBlock(lines[i], lines[i + 1]))) buf.push(lines[i++]);
      out.push(`<p>${buf.map((x) => mdInline(x.replace(/\s+$/, ""), o)).join(" ")}</p>`);
    }
    return { html: out.join("\n"), heads };
  }

  /* ---- HTML（ビジュアル編集の DOM）→ Markdown ---- */
  function htmlToMd(root) {
    const esc2 = (t) => t.replace(/ /g, " ").replace(/([\\`*[\]~])/g, "\\$1");
    const inline = (n) => {
      if (n.nodeType === 3) return esc2(n.textContent);
      if (n.nodeType !== 1) return "";
      const t = n.tagName, kids = () => [...n.childNodes].map(inline).join("");
      if (t === "BR") return "  \n";
      if (t === "STRONG" || t === "B") return kids().trim() ? `**${kids()}**` : "";
      if (t === "EM" || t === "I") return kids().trim() ? `*${kids()}*` : "";
      if (t === "DEL" || t === "S" || t === "STRIKE") return `~~${kids()}~~`;
      if (t === "CODE") return `\`${n.textContent}\``;
      if (t === "A") {
        const text = kids(), w = n.getAttribute("data-wiki");
        if (w) return text.replace(/\\/g, "") === w ? `[[${w}]]` : `[[${w}|${text.replace(/\\/g, "")}]]`;
        const h = n.getAttribute("href");
        return h ? `[${text}](${h})` : text;
      }
      return kids();
    };
    const list = (n, d) => [...n.children].filter((c) => c.tagName === "LI").map((li, i) => {
      let text = "", nested = "";
      li.childNodes.forEach((c) => { if (c.nodeType === 1 && /^(UL|OL)$/.test(c.tagName)) nested += list(c, d + 1); else text += inline(c); });
      return `${"  ".repeat(d)}${n.tagName === "OL" ? `${i + 1}. ` : "- "}${text.trim()}\n${nested}`;
    }).join("");
    const table = (n) => {
      const rows = [...n.querySelectorAll("tr")].map((tr) => [...tr.children].map((c) => inline(c).replace(/\n/g, " ").replace(/\|/g, "\\|").trim()));
      if (!rows.length) return "";
      const w = Math.max(...rows.map((r) => r.length));
      const line = (r) => `| ${Array.from({ length: w }, (_, k) => r[k] ?? "").join(" | ")} |`;
      return [line(rows[0]), `| ${Array(w).fill("---").join(" | ")} |`, ...rows.slice(1).map(line)].join("\n");
    };
    const block = (n) => {
      if (n.nodeType === 3) return n.textContent.trim() ? esc2(n.textContent.trim()) : "";
      if (n.nodeType !== 1) return "";
      const t = n.tagName;
      if (/^H[1-6]$/.test(t)) return `${"#".repeat(+t[1])} ${inline(n).trim()}`;
      if (t === "UL" || t === "OL") return list(n, 0).trimEnd();
      if (t === "BLOCKQUOTE") return blocks(n).split("\n").map((x) => `> ${x}`.trimEnd()).join("\n");
      if (t === "PRE") return `\`\`\`\n${n.textContent.replace(/\n$/, "")}\n\`\`\``;
      if (t === "HR") return "---";
      if (t === "TABLE") return table(n);
      if (t === "DIV" && [...n.children].some((c) => /^(H[1-6]|UL|OL|BLOCKQUOTE|PRE|TABLE|P|DIV)$/.test(c.tagName))) return blocks(n);
      return [...n.childNodes].map(inline).join("").trim();
    };
    const blocks = (n) => [...n.childNodes].map(block).filter((x) => x !== "").join("\n\n");
    return blocks(root).replace(/\n{3,}/g, "\n\n").trim();
  }

  /* ---- 画面（閲覧） ---- */
  const manBody = (md) => String(md ?? "");
  const manTreeHtml = () => {
    const q = MAN.q.trim().toLowerCase();
    if (q) {
      const hits = MN.pages.filter((p) => `${p.title} ${p.md}`.toLowerCase().includes(q));
      return hits.length ? `<ul class="mn-tree">${hits.map((p) => `<li><a class="mn-hit" href="#/manual/${p.id}"><strong>${esc(p.title)}</strong><span class="muted od-truncate">${esc(manPath(p).slice(0, -1).map((x) => x.title).join(" › ") || "最上位")}</span></a></li>`).join("")}</ul>` : `<p class="muted">「${esc(MAN.q)}」に当てはまるページがありません。</p>`;
    }
    const li = (p, depth, num) => {
      const cur = p.id === MAN.sel;
      const inner = MAN.edit ? `<span class="mn-link ${cur ? "is-cur" : ""}" ${cur ? 'aria-current="page"' : ""}>${esc(p.title)}</span>` : `<a class="mn-link ${cur ? "is-cur" : ""}" href="#/manual/${p.id}" ${cur ? 'aria-current="page"' : ""}>${esc(p.title)}</a>`;
      return `<li style="--depth:${depth}"><span class="mn-num">${num}</span>${inner}${p.draft ? `<span class="chip mute">下書き</span>` : ""}</li>`;
    };
    return `<ul class="mn-tree">${manWalk().map(({ p, depth, num }) => li(p, depth, num)).join("")}</ul>`;
  };
  function manScreen(pid) {
    manClearPrint();
    if (pid !== MAN.applied) { MAN.applied = pid; if (pid && manPage(pid)) { MAN.sel = pid; MAN.edit = false; MAN.draft = null; } }
    if (!manPage(MAN.sel)) { MAN.sel = manKids(null)[0]?.id ?? null; MAN.edit = false; }
    const p = manPage(MAN.sel);
    if (!p) return `<section class="card">${emptyState("マニュアルがありません", "管理者がページを追加すると、ここに表示されます。")}</section>`;
    const wide = device === "pc";
    const side = `<aside class="mn-side"><details class="mn-side-d" ${wide ? "open" : ""}><summary class="btn">目次・検索</summary>
        <div class="search-box">${icon("search")}<input type="search" data-man-q value="${esc(MAN.q)}" placeholder="ページを検索" autocomplete="off" aria-label="マニュアルを検索"></div>
        <nav class="mn-nav" aria-label="マニュアルの目次" data-man-tree>${manTreeHtml()}</nav></details></aside>`;
    return `<div class="mn">${side}${MAN.edit && manAdmin() ? manEditHtml(p) : manViewHtml(p)}</div>`;
  }
  function manViewHtml(p) {
    const r = mdToHtml(manBody(p.md));
    const path = manPath(p), kids = manKids(p.id);
    const back = MN.pages.filter((x) => x.id !== p.id && [...String(x.md).matchAll(/\[\[([^\]|]+?)(?:\|[^\]]+?)?\]\]/g)].some((m) => m[1].trim().toLowerCase() === p.title.trim().toLowerCase()));
    const toc = r.heads.filter((h) => h.lv >= 2 && h.lv <= 3);
    const admin = manAdmin();
    const btn = (a, label, ic, cls = "btn") => `<button class="${cls}" type="button" data-man-act="${a}">${icon(ic)}<span>${label}</span></button>`;
    return `<article class="card mn-main" aria-labelledby="mn-h">
      <nav class="mn-crumb" aria-label="パンくず">${path.map((x, i) => (i === path.length - 1 ? `<span aria-current="page">${esc(x.title)}</span>` : `<a href="#/manual/${x.id}">${esc(x.title)}</a>`)).join(" › ")}</nav>
      <div class="mn-bar"><h2 class="mn-title" id="mn-h">${esc(p.title)}</h2>
        <div class="mn-actions">${admin ? btn("edit", "編集", "pencil", "btn btn-primary") + btn("new", "子ページを追加", "plus") : chip("閲覧のみ", "", "mute")}${btn("md", "Markdown", "list")}${btn("print", "印刷", "orders")}${admin ? btn("hist", "履歴", "refresh") : ""}</div></div>
      ${toc.length >= 3 ? `<nav class="mn-toc card-inset" aria-label="このページの目次"><strong>このページの目次</strong><ul>${toc.map((h) => `<li style="--l:${h.lv - 2}"><a href="#${h.id}" data-man-jump="${h.id}">${esc(h.text)}</a></li>`).join("")}</ul></nav>` : ""}
      <div class="md mn-body">${r.html || `<p class="muted">このページはまだ書かれていません。${admin ? "「編集」から書き始められます。" : ""}</p>`}</div>
      ${kids.length ? `<section class="mn-rel" aria-label="子ページ"><h3>このページの下</h3><ul>${kids.map((c) => `<li><a class="wk" href="#/manual/${c.id}">${esc(c.title)}</a></li>`).join("")}</ul></section>` : ""}
      ${back.length ? `<section class="mn-rel" aria-label="このページへのリンク"><h3>このページへのリンク</h3><ul>${back.map((c) => `<li><a class="wk" href="#/manual/${c.id}">${esc(c.title)}</a></li>`).join("")}</ul></section>` : ""}
      <p class="muted mn-meta">更新: ${esc(p.updatedAt ?? "―")} ・ ${esc(p.updatedBy ?? "―")}　改訂 ${p.rev ?? 1}</p></article>`;
  }
  function manEditHtml(p) {
    const d = MAN.draft ?? (MAN.draft = { title: p.title, md: manBody(p.md) });
    const tb = [["h2", "見出し2", "H2"], ["h3", "見出し3", "H3"], ["bold", "太字", "B"], ["italic", "斜体", "I"], ["ul", "箇条書き", "・"], ["ol", "番号付き", "1."], ["quote", "引用", "”"], ["code", "コード", "<>"], ["table", "表", "表"], ["hr", "区切り線", "―"]];
    const editor = MAN.mode === "visual"
      ? `<div class="mn-visual md" id="mn-editor" contenteditable="true" role="textbox" aria-multiline="true" aria-label="本文（ビジュアル）">${mdToHtml(d.md, { edit: true }).html}</div>`
      : `<textarea class="mn-md" id="mn-editor" rows="18" spellcheck="false" aria-label="本文（Markdown）">${esc(d.md)}</textarea>`;
    return `<form class="card mn-main mn-edit" data-man-form novalidate aria-labelledby="mn-eh">
      <h2 class="sec-title" id="mn-eh">「${esc(p.title)}」を編集</h2>
      <div class="field-row"><label for="mn-title">ページ名<span class="req">必須</span></label><input id="mn-title" type="text" maxlength="60" value="${esc(d.title)}" autocomplete="off"></div>
      <div class="mn-modebar"><div class="od-cluster" role="group" aria-label="編集方法">
        <button class="fchip" type="button" data-man-mode="visual" aria-pressed="${MAN.mode === "visual"}">ビジュアル</button>
        <button class="fchip" type="button" data-man-mode="md" aria-pressed="${MAN.mode === "md"}">Markdown</button></div>
        <span class="muted">切り替えても内容は変わりません。</span></div>
      <div class="mn-toolbar" role="toolbar" aria-label="書式">${tb.map(([c, l, t]) => `<button class="btn mn-tb" type="button" data-man-cmd="${c}" title="${l}" aria-label="${l}">${t}</button>`).join("")}
        <button class="btn mn-tb mn-tb-link" type="button" data-man-cmd="link">${icon("search")}<span>リンク</span></button></div>
      ${editor}
      <p class="note">リンクは、ツールバーの「リンク」でページを選ぶか、新しいページを作ります。Markdown では <code>[[ページ名]]</code> と書きます。</p>
      <p class="field-err" id="mn-err" role="alert">${esc(MAN.err)}</p>
      <div class="form-actions"><button class="btn" type="button" data-man-act="cancel">キャンセル</button><button class="btn btn-primary" type="submit">保存</button></div></form>`;
  }

  /* ---- 編集の操作 ---- */
  const manEditorMd = () => {
    const ed = document.getElementById("mn-editor");
    if (!ed) return MAN.draft?.md ?? "";
    return MAN.mode === "visual" ? htmlToMd(ed) : ed.value;
  };
  const manSyncDraft = () => {
    if (!MAN.draft) return;
    MAN.draft.md = manEditorMd();
    const t = document.getElementById("mn-title");
    if (t) MAN.draft.title = t.value;
  };
  function manMdCmd(ta, cmd) {
    const s = ta.selectionStart, e = ta.selectionEnd, v = ta.value, sel = v.slice(s, e);
    const wrap = (a, b = a, ph = "テキスト") => ta.setRangeText(a + (sel || ph) + b, s, e, "select");
    const lines = (pfx) => {
      const ls = v.lastIndexOf("\n", s - 1) + 1, le = (v.indexOf("\n", e) + 1 || v.length + 1) - 1;
      const t = v.slice(ls, le).split("\n").map((x, i) => (pfx === "1." ? `${i + 1}. ` : pfx) + x).join("\n");
      ta.setRangeText(t, ls, le, "select");
    };
    if (cmd === "h2") lines("## "); else if (cmd === "h3") lines("### "); else if (cmd === "quote") lines("> "); else if (cmd === "ul") lines("- "); else if (cmd === "ol") lines("1.");
    else if (cmd === "bold") wrap("**"); else if (cmd === "italic") wrap("*"); else if (cmd === "code") wrap("`");
    else if (cmd === "hr") ta.setRangeText("\n\n---\n\n", s, e, "end");
    else if (cmd === "table") ta.setRangeText("\n\n| 項目 | 内容 |\n| --- | --- |\n|  |  |\n\n", s, e, "end");
    ta.focus();
  }
  function manVisualCmd(ed, cmd) {
    ed.focus();
    const ex = (c, a) => document.execCommand(c, false, a);
    try { document.execCommand("defaultParagraphSeparator", false, "p"); } catch { /* ignore */ }
    if (cmd === "h2" || cmd === "h3") ex("formatBlock", cmd);
    else if (cmd === "quote") ex("formatBlock", "blockquote");
    else if (cmd === "bold") ex("bold"); else if (cmd === "italic") ex("italic");
    else if (cmd === "ul") ex("insertUnorderedList"); else if (cmd === "ol") ex("insertOrderedList");
    else if (cmd === "hr") ex("insertHorizontalRule");
    else if (cmd === "code") { const t = String(getSelection()).trim(); ex("insertHTML", `<code>${esc(t || "コード")}</code>&nbsp;`); }
    else if (cmd === "table") ex("insertHTML", `<table><thead><tr><th>項目</th><th>内容</th></tr></thead><tbody><tr><td><br></td><td><br></td></tr></tbody></table><p><br></p>`);
  }
  function manNewPage(title, parent) {
    const n = MN.pages.reduce((m, x) => Math.max(m, parseInt(String(x.id).slice(1), 10) || 0), 0) + 1;
    const pg = { id: `m${n}`, parent, order: manKids(parent).length + 1, title, md: "このページはまだ書かれていません。", draft: true, updatedBy: D.user.name, updatedAt: manNowStr(), rev: 1, history: [] };
    MN.pages.push(pg);
    return pg;
  }
  function manLinkDialog(trigger) {
    const ed = document.getElementById("mn-editor");
    let saved = null, selText = "";
    if (MAN.mode === "visual") { const sel = getSelection(); if (sel.rangeCount && ed.contains(sel.anchorNode)) { saved = sel.getRangeAt(0).cloneRange(); selText = String(sel); } }
    else saved = { s: ed.selectionStart, e: ed.selectionEnd }, selText = ed.value.slice(ed.selectionStart, ed.selectionEnd);
    manSyncDraft();
    const cur = manPage(MAN.sel);
    const insert = (title) => {
      const text = selText.trim() || title;
      if (MAN.mode === "visual") {
        const e2 = document.getElementById("mn-editor");
        e2.focus();
        const sel = getSelection();
        if (saved) { sel.removeAllRanges(); sel.addRange(saved); }
        document.execCommand("insertHTML", false, `<a class="wk" data-wiki="${esc(title)}">${esc(text)}</a>&nbsp;`);
      } else {
        const t2 = document.getElementById("mn-editor");
        t2.focus();
        t2.setRangeText(text === title ? `[[${title}]]` : `[[${title}|${text}]]`, saved.s, saved.e, "end");
      }
      manSyncDraft();
      closeSheet();
      render();
    };
    showSheet(trigger, {
      chip: chip("リンク", "search"), title: "ページへのリンクを作る", rows: [],
      extra: `<div class="mn-ldlg"><div class="search-box">${icon("search")}<input id="mn-lq" type="search" placeholder="ページ名で検索" autocomplete="off" aria-label="リンク先を検索"></div>
        <ul class="wr-cands" id="mn-lres"></ul>
        <div class="field-row"><label for="mn-new">新しいページを作ってリンクする</label><div class="bc-row"><input id="mn-new" type="text" maxlength="60" placeholder="新しいページ名" autocomplete="off"><button class="btn btn-primary" type="button" id="mn-newgo">作成してリンク</button></div></div>
        <p class="field-err" id="mn-lerr" role="alert"></p></div>`,
      onMount: (root) => {
        const res = root.querySelector("#mn-lres"), q = root.querySelector("#mn-lq");
        const paint = () => {
          const k = q.value.trim().toLowerCase();
          const hit = MN.pages.filter((x) => !k || x.title.toLowerCase().includes(k));
          res.innerHTML = hit.length ? hit.map((x) => `<li><button class="wr-cand" type="button" data-pg="${x.id}"><span class="od-fill"><strong class="od-truncate">${esc(x.title)}</strong><span class="muted od-truncate">${esc(manPath(x).slice(0, -1).map((y) => y.title).join(" › ") || "最上位")}</span></span></button></li>`).join("") : `<li class="muted">当てはまるページがありません。下で新しく作れます。</li>`;
          res.querySelectorAll("[data-pg]").forEach((b) => b.addEventListener("click", () => insert(manPage(b.dataset.pg).title)));
        };
        q.addEventListener("input", paint);
        paint();
        root.querySelector("#mn-newgo").addEventListener("click", () => {
          const t = root.querySelector("#mn-new").value.trim(), er = root.querySelector("#mn-lerr");
          if (!t) { er.textContent = "新しいページ名を入力してください。"; return; }
          if (manByTitle(t)) { er.textContent = "同じ名前のページがあります。上の一覧から選んでください。"; return; }
          manNewPage(t, cur.id);
          insert(t);
        });
        q.focus();
      },
    });
  }
  function manSave() {
    const p = manPage(MAN.sel);
    manSyncDraft();
    const d = MAN.draft, t = d.title.trim();
    MAN.err = "";
    if (!t) MAN.err = "ページ名を入力してください。";
    else if (MN.pages.some((x) => x.id !== p.id && x.title.trim().toLowerCase() === t.toLowerCase())) MAN.err = "同じ名前のページがあります。別の名前にしてください。";
    if (MAN.err) { render(); return; }
    (p.history ??= []).unshift({ at: manNowStr(), by: p.updatedBy, title: p.title, md: p.md, rev: p.rev ?? 1 });
    p.history = p.history.slice(0, 10);
    p.title = t;
    p.md = d.md;
    p.rev = (p.rev ?? 1) + 1;
    p.updatedBy = D.user.name;
    p.updatedAt = manNowStr();
    p.draft = false;
    MAN.edit = false;
    MAN.draft = null;
    render();
  }

  /* ---- Markdown の書き出し ---- */
  function manExportMd(scope) {
    const cur = manPage(MAN.sel), root = manPath(cur)[0];
    const set = scope === "all" ? [root, ...manBelow(root.id)] : [cur];
    const inSet = new Map(set.map((p) => [p.title.trim().toLowerCase(), p]));
    const base = scope === "all" ? manPath(root).length : manPath(cur).length;
    const fix = (md, shift) => {
      let fence = false;
      return String(md).split("\n").map((l) => {
        if (/^```/.test(l)) fence = !fence;
        if (!fence && /^#{1,6}\s/.test(l)) return `${"#".repeat(Math.min(6, l.match(/^#+/)[0].length + shift))}${l.replace(/^#+/, "")}`;
        return l;
      }).join("\n").replace(/\[\[([^\]|]+?)(?:\|([^\]]+?))?\]\]/g, (_, t, x) => {
        const target = inSet.get(t.trim().toLowerCase()), text = (x ?? t).trim();
        return target ? (scope === "all" ? `[${text}](#${manSlug(target.title)})` : text) : text;
      });
    };
    return set.map((p) => {
      const depth = manPath(p).length - base;
      const head = `${"#".repeat(Math.min(6, depth + 1))} ${p.title}`;
      return `${scope === "all" ? `<a id="${manSlug(p.title)}"></a>\n\n` : ""}${head}\n\n${fix(manBody(p.md), depth)}`.trim();
    }).join("\n\n") + "\n";
  }
  function manMdDialog(trigger) {
    const cur = manPage(MAN.sel);
    showSheet(trigger, {
      chip: chip("Markdown", "list"), title: "Markdown を書き出す", rows: [],
      extra: `<div class="wr-form"><div class="od-cluster" role="group" aria-label="範囲"><button class="fchip" type="button" data-sc="page" aria-pressed="true">このページ</button><button class="fchip" type="button" data-sc="all" aria-pressed="false">文書全体</button></div>
        <textarea class="mn-md" id="mn-out" rows="12" readonly aria-label="生成した Markdown"></textarea>
        <p class="note" id="mn-outn"></p>
        <div class="form-actions"><button class="btn" type="button" id="mn-copy">${icon("list")}<span>コピー</span></button><button class="btn btn-primary" type="button" id="mn-dl">${icon("plus")}<span>ダウンロード（.md）</span></button></div></div>`,
      onMount: (root) => {
        let sc = "page";
        const out = root.querySelector("#mn-out"), n = root.querySelector("#mn-outn");
        const paint = () => { out.value = manExportMd(sc); n.textContent = sc === "all" ? "文書全体を、章の順に 1 つの Markdown にまとめています。ページ間のリンクは文書内のリンクに直しています。" : "このページだけです。他のページへのリンクは、文字だけにしています。"; root.querySelectorAll("[data-sc]").forEach((b) => b.setAttribute("aria-pressed", String(b.dataset.sc === sc))); };
        root.querySelectorAll("[data-sc]").forEach((b) => b.addEventListener("click", () => { sc = b.dataset.sc; paint(); }));
        root.querySelector("#mn-copy").addEventListener("click", async () => { try { await navigator.clipboard.writeText(out.value); n.textContent = "コピーしました。"; } catch { out.select(); document.execCommand("copy"); n.textContent = "コピーしました。"; } });
        root.querySelector("#mn-dl").addEventListener("click", () => {
          const a = document.createElement("a");
          a.href = URL.createObjectURL(new Blob([out.value], { type: "text/markdown;charset=utf-8" }));
          a.download = `${manSlug(sc === "all" ? manPath(cur)[0].title : cur.title)}.md`;
          document.body.appendChild(a);
          a.click();
          a.remove();
        });
        paint();
      },
    });
  }
  function manHistDialog(trigger) {
    const p = manPage(MAN.sel), h = p.history ?? [];
    showSheet(trigger, {
      chip: chip("履歴", "refresh"), title: `「${p.title}」の履歴`, rows: [["現在の版", `改訂 ${p.rev ?? 1}（${esc(p.updatedAt ?? "―")}・${esc(p.updatedBy ?? "―")}）`]],
      extra: h.length ? `<ul class="wr-cands">${h.map((x, i) => `<li><div class="wr-cand"><span class="od-fill"><strong>改訂 ${x.rev}　${esc(x.at)}</strong><span class="muted od-truncate">${esc(x.by ?? "")} ・ ${esc(x.title)}</span></span><button class="btn" type="button" data-restore="${i}">この版に戻す</button></div></li>`).join("")}</ul>` : `<p class="muted">まだ履歴がありません。保存すると、直前の版が残ります。</p>`,
      onMount: (root) => root.querySelectorAll("[data-restore]").forEach((b) => b.addEventListener("click", () => {
        const x = h[Number(b.dataset.restore)];
        p.history.unshift({ at: manNowStr(), by: p.updatedBy, title: p.title, md: p.md, rev: p.rev ?? 1 });
        p.history = p.history.slice(0, 10);
        p.title = x.title; p.md = x.md; p.rev = (p.rev ?? 1) + 1; p.updatedBy = D.user.name; p.updatedAt = manNowStr();
        closeSheet();
        render();
      })),
    });
  }

  /* ---- 印刷（PDF の冊子） ---- */
  function manClearPrint() { document.getElementById("print-root")?.remove(); document.getElementById("mn-print-style")?.remove(); }
  function manBuildPrint(opt) {
    manClearPrint();
    const cur = manPage(MAN.sel), root = manPath(cur)[0];
    const pages = opt.range === "page" ? [cur] : opt.range === "branch" ? [cur, ...manBelow(cur.id)] : [root, ...manBelow(root.id)];
    const nums = new Map(manWalk().map((x) => [x.p.id, x.num]));
    const baseDepth = manPath(pages[0]).length;
    const title = opt.range === "all" ? root.title : pages[0].title;
    const sec = pages.map((p, k) => {
      const depth = manPath(p).length - baseDepth;
      const body = mdToHtml(manBody(p.md), { print: true, idp: `p${p.id}-` }).html;
      return `<section class="pr-sec d${Math.min(depth, 2)}"><h1 class="pr-title"><span class="pr-num">${nums.get(p.id) ?? ""}</span>${esc(p.title)}</h1><div class="md">${body}</div></section>`;
    }).join("");
    const toc = opt.toc && pages.length > 1 ? `<section class="pr-toc"><h2>目次</h2><ol>${pages.map((p) => `<li style="--d:${manPath(p).length - baseDepth}"><span class="pr-num">${nums.get(p.id) ?? ""}</span>${esc(p.title)}</li>`).join("")}</ol></section>` : "";
    const cover = opt.cover ? `<section class="pr-cover"><p class="pr-kind">品質管理文書</p><h1>${esc(title)}</h1><p>${esc(D.company.name)}</p><p class="pr-ver">${manNowStr()} 版 ／ 改訂 ${pages[0].rev ?? 1}</p></section>` : "";
    const el = document.createElement("div");
    el.id = "print-root";
    el.innerHTML = cover + toc + sec;
    document.body.appendChild(el);
    const st = document.createElement("style");
    st.id = "mn-print-style";
    const q = (s) => String(s).replace(/["\\\n]/g, " ");
    st.textContent = `@page { size: ${opt.paper}; margin: ${opt.paper === "A5" ? "14mm 12mm 16mm" : "18mm 16mm 20mm"}; @top-center { content: "${q(title)}"; font-size: 8.5pt; color: #555; } @bottom-center { content: counter(page); font-size: 9pt; color: #333; } }${opt.cover ? " @page :first { @top-center { content: none; } @bottom-center { content: none; } }" : ""}`;
    document.head.appendChild(st);
    return el;
  }
  function manPrintDialog(trigger) {
    const opt = { range: "all", paper: "A4", cover: true, toc: true };
    showSheet(trigger, {
      chip: chip("印刷", "orders"), title: "冊子として印刷（PDF）", rows: [],
      extra: `<form class="wr-form" id="mn-pform" novalidate>
        <div class="field-row"><label for="mn-range">範囲</label><select id="mn-range"><option value="page">このページだけ</option><option value="branch">このページと、その下のページ</option><option value="all" selected>文書全体（最上位のページから）</option></select></div>
        <div class="field-row"><label for="mn-paper">用紙</label><select id="mn-paper"><option>A4</option><option>A5</option></select></div>
        <label class="col-opt"><input type="checkbox" id="mn-cover" checked>表紙をつける</label>
        <label class="col-opt"><input type="checkbox" id="mn-toc" checked>目次をつける</label>
        <p class="note">リンクは文字だけを印刷します。リンク先のページは、範囲に含めたものだけが印刷されます。PDF にするには、印刷画面の送信先を「PDF に保存」にしてください。</p>
        <div class="form-actions"><button class="btn btn-primary wr-big" type="submit">${icon("orders")}<span>印刷（PDF で保存）</span></button></div></form>`,
      onMount: (root) => root.querySelector("#mn-pform").addEventListener("submit", (e) => {
        e.preventDefault();
        opt.range = root.querySelector("#mn-range").value; opt.paper = root.querySelector("#mn-paper").value; opt.cover = root.querySelector("#mn-cover").checked; opt.toc = root.querySelector("#mn-toc").checked;
        closeSheet(false);
        manBuildPrint(opt);
        window.addEventListener("afterprint", manClearPrint, { once: true });
        setTimeout(() => window.print(), 50);
      }),
    });
  }

  /* ---- 結線（画面を描くたびに呼ぶ） ---- */
  function bindMan() {
    const scr = document.querySelector(".mn");
    if (!scr) return;
    scr.querySelector("[data-man-q]")?.addEventListener("input", (e) => { MAN.q = e.target.value; scr.querySelector("[data-man-tree]").innerHTML = manTreeHtml(); });
    scr.querySelectorAll("[data-man-jump]").forEach((a) => a.addEventListener("click", (e) => { e.preventDefault(); document.getElementById(a.dataset.manJump)?.scrollIntoView({ block: "start" }); }));
    scr.querySelectorAll("[data-man-create]").forEach((b) => b.addEventListener("click", () => { const pg = manNewPage(b.dataset.manCreate, MAN.sel); MAN.applied = pg.id; MAN.sel = pg.id; MAN.edit = true; MAN.draft = null; location.hash = `#/manual/${pg.id}`; }));
    scr.querySelectorAll("[data-man-act]").forEach((b) => b.addEventListener("click", () => {
      const a = b.dataset.manAct;
      if (a === "edit") { MAN.edit = true; MAN.draft = null; MAN.err = ""; render(); }
      else if (a === "new") { const pg = manNewPage("新しいページ", MAN.sel); MAN.applied = pg.id; MAN.sel = pg.id; MAN.edit = true; MAN.draft = null; location.hash = `#/manual/${pg.id}`; render(); }
      else if (a === "md") manMdDialog(b);
      else if (a === "print") manPrintDialog(b);
      else if (a === "hist") manHistDialog(b);
      else if (a === "cancel") {
        const p = manPage(MAN.sel);
        manSyncDraft();
        const dirty = MAN.draft && (MAN.draft.md !== manBody(p.md) || MAN.draft.title !== p.title);
        const leave = () => { MAN.edit = false; MAN.draft = null; MAN.err = ""; render(); };
        if (dirty) confirmSheet(b, { title: "編集を破棄しますか？", text: "保存していない変更は消えます。", okLabel: "破棄する", onOk: leave }); else leave();
      }
    }));
    const form = scr.querySelector("[data-man-form]");
    if (form) {
      form.addEventListener("submit", (e) => { e.preventDefault(); manSave(); });
      form.querySelectorAll(".mn-toolbar .btn").forEach((b) => b.addEventListener("mousedown", (e) => e.preventDefault()));
      form.querySelectorAll("[data-man-cmd]").forEach((b) => b.addEventListener("click", () => {
        const ed = document.getElementById("mn-editor"), c = b.dataset.manCmd;
        if (c === "link") return manLinkDialog(b);
        if (MAN.mode === "visual") manVisualCmd(ed, c); else manMdCmd(ed, c);
      }));
      form.querySelectorAll("[data-man-mode]").forEach((b) => b.addEventListener("click", () => {
        if (b.dataset.manMode === MAN.mode) return;
        manSyncDraft();
        MAN.mode = b.dataset.manMode;
        render();
      }));
      const ed = document.getElementById("mn-editor");
      ed?.addEventListener("click", (e) => { const a = e.target.closest?.("a"); if (a) e.preventDefault(); });
      document.getElementById("mn-title")?.focus({ preventScroll: true });
    }
  }

  /* ---------- barcode: 作業実績 › バーコード（フロー図から作り直した画面） ----------
     バーコードリーダー（キーボード入力として届く。末尾の Enter で確定）・スマートフォン・タブレットのカメラから symbol を読み込み、
     入力回数を減らして、入庫・出庫の処理を「処理待ち」にためてから、まとめて登録する。
     流れ（フロー図）:
       待機 → 担当者のバーコード（担当者以外から始めたら警告し、処理待ちを消去）
       担当者あり → 読み取り: コンテナ / 作業指示書 / 工程 / 注文書 / 注文書明細 / 出荷オーダー / 出荷明細 / ビジター(ロット)。該当なしは「対象外」
         コンテナ: 選択コンテナとして残す（以降はコンテナ選択を飛ばす）。保持アイテム・入れ子のコンテナを表示
         工程: 完了 →「済み」/ 未着手 → 出庫（開始数量）/ 取り出し済みで未完了 → 入庫（合格数量。差があれば 不合格のコンテナ・数量・理由）
         注文書明細: 受入済み →「済み」/ 未受入 → 入庫（合格数量。差があれば 不合格のコンテナ・数量・理由）
         出荷明細: 出荷済み →「済み」/ 未出荷 → 出庫（出荷数量）
         ビジター: 選択コンテナのリストに無い → 入庫 / ある → 製品を選んで出庫
       数量入力: 超過・0以下は再入力、キャンセルで 1つ前のリードに戻る。入力できたら処理待ち(queue)へ
       処理待ちを順番に登録 → 正常: まとめを表示して待機へ / 失敗: ここまでのメッセージを消して、エラーを表示して待機へ
       30秒操作がなければ、処理待ちを登録してトップ（待機）へ戻る。すべての入力画面に「トップに戻る」
     スマートフォンは画面遷移、PC・タブレットはダイアログ（判定は今までと同じ画面サイズ）。状態はこの画面の中だけで更新する（プロトタイプ）。 */
  const BXD = JSON.parse(JSON.stringify(X.bcx ?? { staff: [], containers: [], workOrders: [], purchases: [], shipments: [], lots: [], items: [], idleSeconds: 30 }));
  const BX = { staff: null, container: null, queue: [], msgs: [], step: null, flow: null, hist: [], pc: { sel: "" }, reg: null, busy: false, last: Date.now(), cam: false, argKey: null, seq: 0, msg: "", err: false };
  const BC = BX; // router (render) が使う名前: BC.cam / BC.argKey
  const BX_NG = ["寸法不良", "外観不良", "材料不良", "数量不足", "その他"];
  const BX_KIND = { in: ["入庫", "truck", "ok"], out: ["出庫", "box", "line"], done: ["済み", "check", "mute"], none: ["対象外", "alert", "warn"], info: ["情報", "", "mute"] };
  const bxNow = () => new Date().toTimeString().slice(0, 8);
  const bxTouch = () => { BX.last = Date.now(); };
  const bxSay = (msg, err = false) => { BX.msg = msg; BX.err = err; };
  const bxMsg = (kind, text) => { BX.msgs = [{ id: ++BX.seq, t: bxNow(), kind, text }, ...BX.msgs].slice(0, 30); };
  const bxCont = (sym) => BXD.containers.find((c) => c.sym === sym);
  const bxStockOf = (c, item) => (c?.items.find((i) => i.item === item)?.qty ?? 0);
  const bxStock = (c, item, unit, n) => {
    let r = c.items.find((i) => i.item === item);
    if (!r) { r = { item, unit, qty: 0 }; c.items.push(r); }
    r.qty = Math.max(0, r.qty + n);
  };
  const bxTaskState = (t) => ((t.done ?? 0) >= t.qty ? "完了" : (t.started ?? 0) > 0 ? "実施中" : "未着手");
  const bxFind = (raw) => {
    const s = String(raw).trim().toUpperCase();
    const staff = BXD.staff.find((x) => x.sym === s);
    if (staff) return { kind: "staff", rec: staff };
    const cont = bxCont(s);
    if (cont) return { kind: "cont", rec: cont };
    for (const wo of BXD.workOrders) { if (wo.sym === s) return { kind: "wo", rec: wo }; const t = wo.tasks.find((x) => x.sym === s); if (t) return { kind: "task", rec: t, parent: wo }; }
    for (const po of BXD.purchases) { if (po.sym === s) return { kind: "po", rec: po }; const l = po.lines.find((x) => x.sym === s); if (l) return { kind: "line", rec: l, parent: po }; }
    for (const so of BXD.shipments) { if (so.sym === s) return { kind: "so", rec: so }; const l = so.lines.find((x) => x.sym === s); if (l) return { kind: "sline", rec: l, parent: so }; }
    const lot = BXD.lots.find((x) => x.sym === s);
    if (lot) return { kind: "lot", rec: lot };
    const item = BXD.items.find((x) => x.sym === s);
    return item ? { kind: "item", rec: item } : null;
  };

  /* ---- step navigation: 戻る(キャンセル)は 1つ前のリードへ、トップに戻るは読み取りの最初へ ---- */
  function bxGo(step, flow = BX.flow) {
    if (BX.step && BX.step !== "register") BX.hist.push({ step: BX.step, flow: BX.flow, pc: { ...BX.pc } });
    BX.step = step;
    BX.flow = flow;
    BX.pc = { sel: "" };
    bxSay("");
  }
  function bxBack() {
    const h = BX.hist.pop();
    if (h) { BX.step = h.step; BX.flow = h.flow; BX.pc = h.pc; } else { BX.step = null; BX.flow = null; }
    bxSay("");
  }
  function bxTop() { BX.step = null; BX.flow = null; BX.hist = []; BX.pc = { sel: "" }; bxSay(""); }
  function bxResetAll() { Object.assign(BX, { staff: null, container: null, queue: [], msgs: [], step: null, flow: null, hist: [], pc: { sel: "" }, reg: null, busy: false }); bxSay(""); bxTouch(); }

  /* ---- 読み取り（リーディングトップ） ---- */
  function bxRead(raw) {
    bxTouch();
    const v = String(raw ?? "").trim();
    bxSay("");
    if (!v) return bxSay("バーコードを読み取るか、文字を入力してください。", true);
    const f = bxFind(v);
    if (!BX.staff) {
      /* サンプル画面: 担当者の入力は、何を入れても有効（登録済みの担当者のバーコードなら、その名前。それ以外は入力した文字を担当者名にする） */
      BX.staff = f?.kind === "staff" ? f.rec : { sym: v.toUpperCase(), no: "", name: v };
      bxMsg("info", `担当者：${BX.staff.name}`);
      return bxSay(`${BX.staff.name} さんで始めます。次のバーコードを読み取ってください。`);
    }
    if (!f) { bxMsg("none", `「${v}」は対象外のバーコードです。`); return bxSay(`「${v}」は対象外のバーコードです。`, true); }
    switch (f.kind) {
      case "staff": BX.staff = f.rec; bxMsg("info", `担当者を ${f.rec.name} に変更しました。`); return bxSay(`担当者を ${f.rec.name} さんに変更しました。`);
      case "cont": BX.container = f.rec; bxMsg("info", `選択コンテナ：${f.rec.name}`); return bxSay(`選択コンテナ「${f.rec.name}」。続けて、工程・明細・ロットのバーコードを読み取ってください。`);
      case "wo": return bxGo("pickTask", { wo: f.rec });
      case "task": return bxTarget("task", f.rec, f.parent);
      case "po": return bxGo("pickLine", { po: f.rec });
      case "line": return bxTarget("line", f.rec, f.parent);
      case "so": return bxGo("pickShip", { so: f.rec });
      case "sline": return bxTarget("sline", f.rec, f.parent);
      default: return bxLot(f.rec, f.kind);
    }
  }
  const bxDone = (text) => { bxMsg("done", text); bxSay(text); };
  /* 判定: 済み → 済みメッセージ / 未・不足 → コンテナ(未選択なら選ぶ) → 数量 */
  function bxTarget(kind, rec, parent) {
    if (kind === "task") {
      const st = bxTaskState(rec), open = (rec.started ?? 0) - (rec.done ?? 0) - (rec.ng ?? 0);
      if (st === "完了") return bxDone(`${parent.item}／${rec.task} は完了済みです。`);
      if (open > 0) return bxStart({ act: "complete", dir: "in", target: { kind, rec, parent }, label: `${parent.item}／${rec.task}（完了）`, item: parent.item, unit: parent.unit, limit: open, diff: true, qtyLabel: "合格数量" });
      return bxStart({ act: "issue", dir: "out", target: { kind, rec, parent }, label: `${parent.item}／${rec.task}（開始）`, item: rec.material, unit: rec.materialUnit, limit: rec.qty - (rec.started ?? 0), qtyLabel: "開始数量" });
    }
    if (kind === "line") {
      if (rec.received >= rec.qty) return bxDone(`${rec.item}（${parent.sym}）は受入済みです。`);
      return bxStart({ act: "receive", dir: "in", target: { kind, rec, parent }, label: `${rec.item}（受入 ${parent.sym}）`, item: rec.item, unit: rec.unit, limit: rec.qty - rec.received, diff: true, qtyLabel: "合格数量" });
    }
    if (rec.shipped >= rec.qty) return bxDone(`${rec.item}（${parent.sym}）は出荷済みです。`);
    return bxStart({ act: "ship", dir: "out", target: { kind, rec, parent }, label: `${rec.item}（出荷 ${parent.sym}）`, item: rec.item, unit: rec.unit, limit: rec.qty - rec.shipped, qtyLabel: "出荷数量" });
  }
  function bxLot(rec, kind) {
    const item = kind === "lot" ? rec.item : rec.name;
    const held = BX.container?.items.find((i) => i.item === item && i.qty > 0);
    if (held) return bxGo("pickLot", { lot: rec, kind, item });
    return bxStart({ act: "lotIn", dir: "in", target: { kind, rec }, label: kind === "lot" ? `${item}（ロット ${rec.sym}）` : item, item, unit: rec.unit, limit: kind === "lot" ? rec.qty : 99999, qtyLabel: "入庫数量" });
  }
  function bxStart(f) {
    if (!BX.container) return bxGo("pickContainer", f);
    f.container = BX.container;
    return bxGo("qty", f);
  }
  const bxMax = (f) => (f.dir === "out" ? Math.min(f.limit, bxStockOf(f.container, f.item)) : f.limit);

  /* ---- ステップ内の操作 ---- */
  function bxChoose(c) {
    BX.pc.sel = c.sym;
    bxSay("");
  }
  function bxProceedContainer() {
    const c = bxCont(BX.pc.sel);
    if (!c) return bxSay("コンテナを選んでください。", true);
    const f = BX.flow;
    if (f.pcPurpose === "ng") { f.ngContainer = c; return bxGo("ng", f); }
    BX.container = c;
    f.container = c;
    bxMsg("info", `選択コンテナ：${c.name}`);
    return bxGo("qty", f);
  }
  function bxPickLotItem(item) {
    const lot = BX.flow.lot, held = BX.container.items.find((i) => i.item === item);
    return bxStart({ act: "lotOut", dir: "out", target: { kind: BX.flow.kind, rec: lot }, label: `${item}${BX.flow.kind === "lot" ? `（ロット ${lot.sym}）` : ""}`, item, unit: held.unit, limit: held.qty, qtyLabel: "出庫数量" });
  }
  function bxQty(raw) {
    const f = BX.flow, max = bxMax(f), n = Number(raw);
    if (!Number.isInteger(n) || n <= 0) return bxSay(`${f.qtyLabel}は1以上の整数で入力してください。`, true);
    if (max <= 0) return bxSay(f.dir === "out" ? `「${f.container.name}」に「${f.item}」の在庫がありません。コンテナを変えてください。` : "処理できる数量がありません。", true);
    if (n > max) return bxSay(`${f.qtyLabel}は ${fmt(max)}${f.unit} までです。（数量超過）`, true);
    f.qty = n;
    if (f.diff && f.limit - n > 0) {
      f.ngLimit = f.limit - n;
      f.pcPurpose = "ng";
      return bxGo("pickContainer", f);
    }
    return bxEnqueue(f);
  }
  function bxNg(qtyRaw, reason) {
    const f = BX.flow, n = Number(qtyRaw);
    if (!Number.isInteger(n) || n <= 0 || n > f.ngLimit) return bxSay(`不合格の数量は 1〜${fmt(f.ngLimit)}${f.unit} の整数で入力してください。`, true);
    f.ng = { qty: n, reason };
    return bxEnqueue(f);
  }
  function bxEnqueue(f) {
    const q = { id: ++BX.seq, act: f.act, dir: f.dir, label: f.label, item: f.item, unit: f.unit, qty: f.qty, container: f.container.sym, ng: f.ng ?? null, ngContainer: f.ngContainer?.sym ?? null, target: f.target };
    BX.queue.push(q);
    const text = `${BX_KIND[f.dir][0]}：${f.label} ${fmt(f.qty)}${f.unit}（${f.container.name}）${q.ng ? `／不合格 ${fmt(q.ng.qty)}${f.unit}（${q.ng.reason}）` : ""}`;
    bxMsg(f.dir, text);
    bxSay(`処理待ちに入れました。${text}`);
    bxTop();
  }
  function bxUndo(id) { BX.queue = BX.queue.filter((q) => q.id !== id); bxSay("処理待ちから取り消しました。"); }

  /* ---- 登録（処理待ちを順番に）。失敗したら、ここまでのメッセージを消す ---- */
  function bxApply() {
    const rows = [];
    for (const q of BX.queue) {
      const c = bxCont(q.container), T = q.target.rec;
      if (q.act === "issue") { bxStock(c, q.item, q.unit, -q.qty); T.started = (T.started ?? 0) + q.qty; }
      else if (q.act === "complete") { bxStock(c, q.item, q.unit, q.qty); T.done = (T.done ?? 0) + q.qty; if (q.ng) T.ng = (T.ng ?? 0) + q.ng.qty; }
      else if (q.act === "receive") { bxStock(c, q.item, q.unit, q.qty); T.received += q.qty + (q.ng?.qty ?? 0); }
      else if (q.act === "ship") { bxStock(c, q.item, q.unit, -q.qty); T.shipped += q.qty; }
      else if (q.act === "lotIn") bxStock(c, q.item, q.unit, q.qty);
      else bxStock(c, q.item, q.unit, -q.qty);
      if (q.ng) bxStock(bxCont(q.ngContainer), q.item, q.unit, q.ng.qty);
      rows.push(`${BX_KIND[q.dir][0]}：${q.label} ${fmt(q.qty)}${q.unit}→${c.name}${q.ng ? `（不合格 ${fmt(q.ng.qty)}${q.unit}→${bxCont(q.ngContainer).name}）` : ""}`);
    }
    const counts = { in: BX.queue.filter((q) => q.dir === "in").length, out: BX.queue.filter((q) => q.dir === "out").length };
    return { rows, counts, done: BX.msgs.filter((m) => m.kind === "done").length, none: BX.msgs.filter((m) => m.kind === "none").length, updated: BX.queue.length + BX.queue.filter((q) => q.ng).length };
  }
  async function bxRegister(auto = false) {
    if (!BX.queue.length || BX.busy) return;
    BX.busy = true;
    BX.step = "register";
    BX.hist = [];
    BX.reg = { phase: "busy", auto };
    render();
    try {
      BX.reg = { phase: "ok", auto, ...(await wrCall(bxApply)) };
    } catch (e) {
      BX.reg = { phase: "ng", auto, error: e.message };
      BX.queue = [];
      BX.msgs = [];
    }
    BX.busy = false;
    render();
  }
  function bxFinish() { bxResetAll(); }

  /* ---- 30秒の無操作 ---- */
  let bxTimer = null;
  const bxIdleLeft = () => BXD.idleSeconds - Math.floor((Date.now() - BX.last) / 1000);
  function bxTick() {
    if (BX.busy || BX.step === "register" || !(BX.staff || BX.queue.length || BX.step || BX.container)) return;
    const left = bxIdleLeft(), el = document.getElementById("bx-idle");
    if (left <= 0) { if (BX.queue.length) bxRegister(true); else { bxResetAll(); render(); } return; }
    if (el) el.textContent = left <= 10 && (BX.staff || BX.queue.length) ? `あと ${left} 秒操作がないと、${BX.queue.length ? `処理待ち ${BX.queue.length} 件を登録して、` : ""}トップに戻ります。` : "";
  }
  function bxLeave() { clearInterval(bxTimer); bxTimer = null; bxModalClose(); }

  /* ---- カメラ（ブラウザが BarcodeDetector に対応しているときだけ） ---- */
  let bcStream = null, bcTimer = null;
  const bcCamOk = () => "BarcodeDetector" in window && !!navigator.mediaDevices?.getUserMedia;
  function bcCamStop() {
    clearInterval(bcTimer);
    bcTimer = null;
    bcStream?.getTracks().forEach((t) => t.stop());
    bcStream = null;
  }
  async function bcCamStart() {
    const v = document.getElementById("bx-video");
    if (!v || bcStream) return;
    try {
      bcStream = await navigator.mediaDevices.getUserMedia({ video: { facingMode: "environment" }, audio: false });
      v.srcObject = bcStream;
      await v.play();
      const det = new BarcodeDetector();
      bcTimer = setInterval(async () => {
        try {
          const r = await det.detect(v);
          if (r[0]) { const raw = r[0].rawValue; bcCamStop(); BX.cam = false; bxRead(raw); render(); }
        } catch { /* 読めるまで続ける */ }
      }, 300);
    } catch {
      bcCamStop();
      BX.cam = false;
      bxSay("カメラを開けませんでした。権限を確認するか、文字で入力してください。", true);
      render();
    }
  }

  /* ---- 在庫状況などからの引数: #/barcode?shelf=<コンテナのバーコード>&item=<製品のバーコード> ---- */
  function bcApplyArgs() {
    const q = hashQuery();
    const sh = q.get("shelf"), it = q.get("item");
    if ((!sh && !it) || BX.argKey === location.hash) return;
    BX.argKey = location.hash;
    bxResetAll();
    BX.staff = BXD.staff.find((s) => s.name === D.user.name) ?? BXD.staff[0] ?? null;
    if (sh) bxRead(sh);
    if (it) bxRead(it);
  }

  /* ---- 画面 ---- */
  const bxBtn = (a, label, { cls = "btn", arg = "", ic = "", dis = false } = {}) => `<button class="${cls}" type="button" data-bx="${a}" data-arg="${esc(arg)}" ${dis ? "disabled" : ""}>${ic ? icon(ic) : ""}<span>${label}</span></button>`;
  const bxStateChip = (s) => chip(s, s === "完了" ? "check" : s === "実施中" ? "pencil" : "", s === "完了" ? "ok" : s === "実施中" ? "line" : "mute");
  const bxMsgHtml = () => `<p class="bx-msg ${BX.err ? "is-err" : ""}" role="${BX.err ? "alert" : "status"}">${BX.err ? icon("alert") : ""}<span>${esc(BX.msg)}</span></p>`;
  const bxContLine = () => `<dl class="bx-ctx"><div class="kv"><dt>担当者</dt><dd>${BX.staff ? esc(BX.staff.name) : "未読込"}</dd></div><div class="kv"><dt>選択コンテナ</dt><dd>${BX.container ? esc(BX.container.name) : "なし"}</dd></div></dl>`;
  const bxHeld = (c) => (c.items.filter((i) => i.qty > 0).length
    ? `<ul class="bx-held">${c.items.filter((i) => i.qty > 0).map((i) => `<li><span>${esc(i.item)}</span><strong class="od-nowrap">${fmt(i.qty)}${esc(i.unit)}</strong></li>`).join("")}${(c.nested ?? []).map((n) => `<li><span>${icon("box")}${esc(n)}</span><span class="muted">入れ子のコンテナ</span></li>`).join("")}</ul>`
    : `<p class="note">保持しているアイテムはありません。${(c.nested ?? []).length ? `入れ子のコンテナ：${esc(c.nested.join("、"))}` : ""}</p>`);
  const bxStepper = (id, label, val, max, hint) => `<div class="field-row"><label for="${id}">${label}</label>
      <div class="wr-stepper"><button class="btn" type="button" data-bx="dec" data-for="${id}" aria-label="1減らす">−</button><input id="${id}" name="${id}" type="number" inputmode="numeric" min="1" max="${max}" step="1" value="${val}" aria-describedby="${id}-h"><button class="btn" type="button" data-bx="inc" data-for="${id}" aria-label="1増やす">＋</button><button class="btn" type="button" data-bx="all" data-for="${id}" data-max="${max}">全量</button></div>
      <p class="note" id="${id}-h">${hint}</p></div>`;
  const bxRows = (rows) => `<ul class="bx-list">${rows.join("")}</ul>`;
  const bxRow = (act, arg, main, sub, state, disabled) => `<li><button class="bx-row" type="button" data-bx="${act}" data-arg="${esc(arg)}" ${disabled ? "disabled" : ""}><span class="bx-row-main"><strong>${main}</strong><span class="muted">${sub}</span></span>${state}</button></li>`;
  const bxRecContainers = (f, purpose) => {
    const list = BXD.containers;
    if (purpose === "ng") return list.filter((c) => c.kind === "不良品").map((c) => c.sym);
    if (f.dir === "out") return list.filter((c) => bxStockOf(c, f.item) > 0).map((c) => c.sym);
    return list.filter((c) => bxStockOf(c, f.item) > 0 || c.kind === "受入" || c.kind === "完成品").map((c) => c.sym);
  };

  /* 入力要求の本体（スマートフォンは画面、PC・タブレットはダイアログに入れる） */
  function bxStepView() {
    const f = BX.flow, st = BX.step;
    const target = f?.label ? `<p class="bx-target">${icon(BX_KIND[f.dir]?.[1] || "box")}<strong>${esc(f.label)}</strong></p>` : "";
    if (st === "pickTask") {
      const wo = f.wo;
      return { title: `${wo.sym} 工程を選ぶ`, body: `<p class="note">${esc(wo.item)}（指示 ${fmt(wo.qty)}${esc(wo.unit)}）。完了した工程は灰色です。工程のバーコードを読み取ってもかまいません。</p>${bxRows(wo.tasks.map((t) => {
        const s = bxTaskState(t);
        return bxRow("task", t.sym, `${t.seq} ${esc(t.task)}`, `指示 ${fmt(t.qty)}${esc(wo.unit)}・完了 ${fmt(t.done ?? 0)}${esc(wo.unit)}`, bxStateChip(s), s === "完了");
      }))}` };
    }
    if (st === "pickLine") {
      const po = f.po;
      return { title: `${po.sym} 明細を選ぶ`, body: `<p class="note">${esc(po.supplier)}。受入済みは灰色です。明細のバーコードを読み取ってもかまいません。</p>${bxRows(po.lines.map((l) => {
        const done = l.received >= l.qty;
        return bxRow("line", l.sym, esc(l.item), `発注 ${fmt(l.qty)}${esc(l.unit)}・受入済 ${fmt(l.received)}${esc(l.unit)}`, chip(done ? "受入済み" : l.received ? "受入中" : "未受入", done ? "check" : "", done ? "mute" : "line"), done);
      }))}` };
    }
    if (st === "pickShip") {
      const so = f.so;
      return { title: `${so.sym} 明細を選ぶ`, body: `<p class="note">${esc(so.customer)}。出荷済みは灰色です。明細のバーコードを読み取ってもかまいません。</p>${bxRows(so.lines.map((l) => {
        const done = l.shipped >= l.qty;
        return bxRow("sline", l.sym, esc(l.item), `出荷 ${fmt(l.qty)}${esc(l.unit)}・出荷済 ${fmt(l.shipped)}${esc(l.unit)}`, chip(done ? "出荷済み" : l.shipped ? "出荷中" : "未出荷", done ? "check" : "", done ? "mute" : "line"), done);
      }))}` };
    }
    if (st === "pickLot") {
      return { title: "製品を選ぶ", body: `<p class="note">「${esc(BX.container.name)}」にあるアイテムです。出庫する製品を選んでください。</p>${bxRows(BX.container.items.filter((i) => i.qty > 0).map((i) =>
        bxRow("lotitem", i.item, esc(i.item), `在庫 ${fmt(i.qty)}${esc(i.unit)}`, i.item === f.item ? chip("読み取った製品", "check", "ok") : "", false)))}` };
    }
    if (st === "pickContainer") {
      const purpose = f.pcPurpose === "ng" ? "ng" : "main", rec = bxRecContainers(f, purpose), sel = bxCont(BX.pc.sel);
      const rows = BXD.containers.map((c) => bxRow("cpick", c.sym, esc(c.name), `${esc(c.kind)}・${esc(c.sym)}`, rec.includes(c.sym) ? chip("おすすめ", "check", "ok") : "", false));
      return { title: purpose === "ng" ? "不合格品を入れるコンテナ" : "コンテナを選ぶ",
        body: `${target}<form class="bx-form" data-bx-form="container" novalidate><label for="bx-c-in">コンテナのバーコード</label>
          <div class="bx-row-in"><input id="bx-c-in" name="v" type="text" autocapitalize="characters" spellcheck="false" autocomplete="off" enterkeyhint="done" aria-describedby="bx-c-h"><button class="btn btn-primary" type="submit">読み取る</button></div>
          <p class="note" id="bx-c-h">${purpose === "ng" ? "不合格品を入れるコンテナのバーコードを読み取るか、一覧から選びます。" : "このコンテナは、以降の読み取りでも使います。バーコードを読み取るか、一覧から選びます。"}</p></form>
          ${sel ? `<section class="bx-sel" aria-label="選択したコンテナ"><h3>${esc(sel.name)}<span class="muted">（${esc(sel.sym)}）</span></h3>${bxHeld(sel)}${bxBtn("cgo", "このコンテナで進む", { cls: "btn btn-primary bx-big", ic: "check" })}</section>` : ""}
          ${bxRows(rows)}` };
    }
    if (st === "qty") {
      const max = bxMax(f);
      return { title: f.qtyLabel, body: `${target}<form class="bx-form" data-bx-form="qty" novalidate>
          ${bxStepper("bx-qty", f.qtyLabel, Math.max(1, max), Math.max(1, max), `${max > 0 ? `最大 ${fmt(max)}${esc(f.unit)} まで（初期値は最大）。` : "処理できる数量がありません。"}コンテナ：${esc(f.container.name)}${f.dir === "out" ? `（「${esc(f.item)}」の在庫 ${fmt(bxStockOf(f.container, f.item))}${esc(f.unit)}）` : ""}`)}
          <div class="form-actions">${bxBtn("changec", "コンテナを変える", { ic: "box" })}<button class="btn btn-primary bx-big" type="submit">${icon("check")}<span>処理待ちに入れる</span></button></div></form>` };
    }
    if (st === "ng") {
      return { title: "不合格の数量と理由", body: `${target}<p class="note">合格 ${fmt(f.qty)}${esc(f.unit)}、差の ${fmt(f.ngLimit)}${esc(f.unit)} までを不合格にできます。コンテナ：${esc(f.ngContainer.name)}</p>
        <form class="bx-form" data-bx-form="ng" novalidate>
          ${bxStepper("bx-ng", "不合格の数量", f.ngLimit, f.ngLimit, `1〜${fmt(f.ngLimit)}${esc(f.unit)}（初期値は差の全量）。`)}
          <div class="field-row"><label for="bx-reason">不合格の理由</label><select id="bx-reason" name="reason">${BX_NG.map((r) => `<option>${r}</option>`).join("")}</select></div>
          <div class="form-actions"><button class="btn btn-danger bx-big" type="submit">${icon("check")}<span>処理待ちに入れる</span></button></div></form>` };
    }
    if (st === "register") {
      const r = BX.reg ?? { phase: "busy" };
      if (r.phase === "busy") return { title: "登録しています", busy: true, body: `<div class="wr-busy" role="status" aria-busy="true"><span class="spinner" aria-hidden="true"></span><p>処理待ち ${BX.queue.length} 件を、順番に登録しています…</p></div>` };
      if (r.phase === "ok") return { title: "登録しました", body: `<div class="wr-result" role="status"><p class="wr-ok">${icon("check")}<strong>${r.auto ? "30秒操作がなかったため、" : ""}処理待ち ${r.rows.length} 件を登録しました。</strong></p>
        <dl class="wr-info"><div class="kv"><dt>入庫</dt><dd>${r.counts.in}件</dd></div><div class="kv"><dt>出庫</dt><dd>${r.counts.out}件</dd></div><div class="kv"><dt>済み・対象外</dt><dd>${r.done}件・${r.none}件</dd></div><div class="kv"><dt>更新件数</dt><dd>${r.updated}件</dd></div></dl>
        <ul class="bx-log">${r.rows.map((x) => `<li>${esc(x)}</li>`).join("")}</ul><div class="form-actions">${bxBtn("finish", "閉じて、担当者の読み取りへ戻る", { cls: "btn btn-primary bx-big" })}</div></div>` };
      return { title: "登録できませんでした", body: `<p class="bx-msg is-err" role="alert">${icon("alert")}<span>${esc(r.error)}</span></p><p class="note">ここまでのメッセージと処理待ちを消しました。最初から読み取ってください。</p><div class="form-actions">${bxBtn("finish", "閉じて、担当者の読み取りへ戻る", { cls: "btn btn-primary bx-big" })}</div>` };
    }
    return { title: "", body: "" };
  }
  function bxFrame() {
    const v = bxStepView(), busy = v.busy;
    return `<section class="card bx-step" aria-labelledby="bx-h">
      <header class="bx-head">${bxBtn("back", "戻る", { ic: "back", dis: busy || BX.step === "register" })}<h2 id="bx-h">${esc(v.title)}</h2>${bxBtn("top", "トップに戻る", { ic: "home", dis: busy })}</header>
      ${BX.step === "register" ? "" : bxContLine()}
      ${BX.msg ? bxMsgHtml() : ""}
      ${v.body}</section>`;
  }

  /* リーディングトップ */
  function bxTopHtml() {
    const cam = bcCamOk() ? bxBtn("cam", BX.cam ? "カメラを止める" : "カメラで読む", { ic: "camera" }) : "";
    const label = BX.staff ? "バーコードの読込" : "担当者のバーコードを読み取る";
    const hint = BX.staff ? "コンテナを先に読み取ると、以降はコンテナの選択を省けます。続けて、作業指示書・工程・注文書・明細・出荷オーダー・ロットを読み取ります。" : "最初に、担当者のバーコードを読み取ってください。（サンプル画面のため、何を入力しても担当者として受け付けます）";
    const queue = BX.queue.length
      ? `<ul class="bx-queue">${BX.queue.map((q) => `<li><span class="bx-q-main">${chip(BX_KIND[q.dir][0], BX_KIND[q.dir][1], BX_KIND[q.dir][2])}<span>${esc(q.label)}</span></span><span class="od-nowrap">${fmt(q.qty)}${esc(q.unit)}</span><button class="btn" type="button" data-bx="undo" data-arg="${q.id}" aria-label="${esc(q.label)}を取り消す">取り消し</button></li>`).join("")}</ul>`
      : `<p class="note">処理待ちはありません。数量を入力すると、ここにたまります。</p>`;
    const msgs = BX.msgs.length
      ? `<ul class="bc-log bx-msgs">${BX.msgs.map((m) => `<li class="${m.kind === "none" ? "is-ng" : ""}"><span class="od-nowrap muted">${m.t}</span><span>${chip(BX_KIND[m.kind][0], BX_KIND[m.kind][1], BX_KIND[m.kind][2])} ${esc(m.text)}</span></li>`).join("")}</ul>`
      : emptyState("まだメッセージがありません", "読み取った内容が、ここに新しい順で残ります。");
    const sample = (k, label, list) => `<li><span class="muted">${label}</span><span class="bc-chips">${list.map((s) => `<button class="fchip" type="button" data-bx="sample" data-arg="${esc(s.sym)}" title="${esc(s.name ?? s.item ?? "")}">${esc(s.sym)}</button>`).join("")}</span></li>`;
    const samples = [
      sample("s", "担当者", BXD.staff), sample("c", "コンテナ", BXD.containers), sample("w", "作業指示書", BXD.workOrders),
      sample("t", "工程", BXD.workOrders.flatMap((w) => w.tasks)), sample("p", "注文書", BXD.purchases), sample("l", "注文書明細", BXD.purchases.flatMap((p) => p.lines)),
      sample("o", "出荷オーダー", BXD.shipments), sample("d", "出荷明細", BXD.shipments.flatMap((s) => s.lines)), sample("v", "ビジター（ロット）", BXD.lots), sample("i", "製品", BXD.items),
    ].join("");
    return `<div class="bx">
      <section class="card bx-main" aria-labelledby="bx-top-h">
        <h2 class="sr-only" id="bx-top-h">バーコードの読込</h2>
        ${bxContLine()}
        <form class="bx-form" data-bx-form="top" novalidate><label for="bx-input">${label}</label>
          <div class="bx-row-in"><input id="bx-input" name="v" type="text" autocapitalize="characters" spellcheck="false" autocomplete="off" enterkeyhint="done" aria-describedby="bx-hint"><button class="btn btn-primary" type="submit">問い合わせ</button>${cam}</div>
          <p class="note" id="bx-hint">${hint}</p>
          ${BX.cam ? `<video id="bx-video" class="bc-video" playsinline muted aria-label="カメラの映像"></video>` : ""}</form>
        ${BX.msg ? bxMsgHtml() : `<p class="bx-msg" role="status"><span></span></p>`}
        ${BX.container ? `<section class="bx-sel" aria-label="選択コンテナの保持アイテム"><h3>${esc(BX.container.name)}<span class="muted">（${esc(BX.container.sym)}）の保持アイテム</span></h3>${bxHeld(BX.container)}<div class="form-actions">${bxBtn("clearc", "コンテナの選択を解除")}</div></section>` : ""}
        <p class="note" id="bx-idle" aria-live="off"></p>
      </section>
      <section class="card bx-queue-card" aria-labelledby="bx-q-h"><h2 class="sec-title" id="bx-q-h">処理待ち（${BX.queue.length}件）</h2>${queue}
        <div class="bx-bar">${bxBtn("register", `まとめて登録（${BX.queue.length}件）`, { cls: "btn btn-primary bx-big", ic: "check", dis: !BX.queue.length })}${BX.staff ? bxBtn("end", "終了（担当者を外す）") : ""}</div></section>
      <aside class="bx-side" aria-label="補助情報">
        <section class="card" aria-labelledby="bx-m-h"><h2 class="sec-title" id="bx-m-h">メッセージ</h2>${msgs}</section>
        <!-- DEV-ONLY: 開発者向けのパネル。実際の APP には含めない（実装では、サンプルの取得元のときだけ出す） -->
        <details class="card bc-samples dev-only" data-dev-only="true"><summary><span class="dev-badge">開発者向け</span>試すためのバーコード（プロトタイプ用）</summary><ul>${samples}</ul><p class="note">押すと、そのバーコードを読み取ったことになります。コンテナと製品は、在庫の動きに使われます。</p></details>
      </aside></div>`;
  }
  function barcodeScreen() {
    if (BX.step && mobile) return `<div class="bx bx-mobile">${bxFrame()}</div>`;
    return bxTopHtml();
  }

  /* PC・タブレット: 入力要求をダイアログで出す */
  let bxModalEl = null;
  function bxModalClose() { bxModalEl?.remove(); bxModalEl = null; document.getElementById("app")?.removeAttribute("inert"); }
  function bxModalPaint() {
    if (mobile || !BX.step) return bxModalClose();
    if (!bxModalEl) {
      bxModalEl = document.createElement("div");
      bxModalEl.className = "bx-modal";
      bxModalEl.setAttribute("role", "dialog");
      bxModalEl.setAttribute("aria-modal", "true");
      bxModalEl.setAttribute("aria-labelledby", "bx-h");
      document.body.appendChild(bxModalEl);
      root.inert = true;
    }
    bxModalEl.innerHTML = `<div class="bx-scrim" data-bx="${BX.step === "register" ? "noop" : "back"}"></div><div class="bx-modal-card">${bxFrame()}</div>`;
    return bxModalEl;
  }
  function bxFocus() {
    const scope = bxModalEl ?? document.querySelector(".bx");
    scope?.querySelector("input:not([type=hidden]), .bx-big:not([disabled]), button:not([disabled])")?.focus({ preventScroll: true });
  }

  function bxClick(a, arg, el, scope) {
    bxTouch();
    switch (a) {
      case "back": return bxBack();
      case "top": return bxTop();
      case "cam": BX.cam = !BX.cam; if (!BX.cam) bcCamStop(); return;
      case "sample": return bxRead(arg);
      case "undo": return bxUndo(Number(arg));
      case "clearc": BX.container = null; return bxSay("コンテナの選択を解除しました。");
      case "end": return bxResetAll();
      case "register": return void bxRegister(false);
      case "finish": return bxFinish();
      case "task": { const t = BX.flow.wo.tasks.find((x) => x.sym === arg); return bxTarget("task", t, BX.flow.wo); }
      case "line": { const l = BX.flow.po.lines.find((x) => x.sym === arg); return bxTarget("line", l, BX.flow.po); }
      case "sline": { const l = BX.flow.so.lines.find((x) => x.sym === arg); return bxTarget("sline", l, BX.flow.so); }
      case "lotitem": return bxPickLotItem(arg);
      case "cpick": return bxChoose(bxCont(arg));
      case "cgo": return bxProceedContainer();
      case "changec": BX.flow.pcPurpose = "main"; return bxGo("pickContainer", BX.flow);
      case "dec": case "inc": { const i = scope.querySelector(`#${el.dataset.for}`); const n = Number(i.value) || 1; i.value = String(Math.max(1, n + (a === "inc" ? 1 : -1))); return "keep"; }
      case "all": scope.querySelector(`#${el.dataset.for}`).value = el.dataset.max; return "keep";
      default: return undefined;
    }
  }
  function bxSubmit(form) {
    bxTouch();
    const k = form.dataset.bxForm, v = form.elements.v?.value;
    if (k === "top") return bxRead(v);
    if (k === "container") {
      const c = bxFind(v ?? "");
      if (!String(v ?? "").trim()) return bxSay("コンテナのバーコードを読み取るか、一覧から選んでください。", true);
      if (c?.kind !== "cont") return bxSay(`「${String(v).trim()}」はコンテナのバーコードではありません。もう一度読み取ってください。`, true);
      return bxChoose(c.rec);
    }
    if (k === "qty") return bxQty(form.elements["bx-qty"].value);
    if (k === "ng") return bxNg(form.elements["bx-ng"].value, form.elements.reason.value);
  }
  function bindBarcode() {
    const scope = (el) => el.closest(".bx-modal, .bx") ?? document;
    const redo = () => { const keep = scroller().scrollTop; render(); scroller().scrollTop = keep; };
    if (!document.querySelector(".bx")) { bxModalClose(); return; }
    const modal = bxModalPaint();
    const roots = [document.querySelector(".bx"), modal].filter(Boolean);
    roots.forEach((r) => {
      r.querySelectorAll("[data-bx-form]").forEach((f) => f.addEventListener("submit", (e) => { e.preventDefault(); bxSubmit(f); redo(); }));
      r.querySelectorAll("[data-bx]").forEach((b) => b.addEventListener("click", (e) => {
        if (b.dataset.bx === "noop") return;
        const res = bxClick(b.dataset.bx, b.dataset.arg, b, scope(b));
        if (res !== "keep") redo();
      }));
    });
    if (modal && !modal.dataset.bound) {
      modal.dataset.bound = "1";
      modal.addEventListener("keydown", (e) => {
        bxTouch();
        if (e.key === "Escape" && BX.step !== "register") { e.preventDefault(); bxBack(); redo(); }
        if (e.key === "Tab") {
          const f = [...modal.querySelectorAll("button:not([disabled]), input, select, a[href]")];
          const first = f[0], last = f[f.length - 1];
          if (e.shiftKey && document.activeElement === first) { e.preventDefault(); last.focus(); }
          else if (!e.shiftKey && document.activeElement === last) { e.preventDefault(); first.focus(); }
        }
      });
    }
    document.querySelector(".bx")?.addEventListener("input", bxTouch);
    if (!bxTimer) bxTimer = setInterval(bxTick, 1000);
    bxFocus();
    if (BX.cam && !BX.step) bcCamStart();
  }

  /* ---------- maintenance mode ----------
     メンテナンスフラグがオンのあいだは、どの画面でも「メンテナンス中」だけを表示する（サインイン前も同じ）。
     フラグ: data.extra.js の maintenance.enabled / localStorage "od.maintenance"="1" / URL の ?maintenance=1。
     フラグがオフのときは通常表示されないため、確認用にメニューから開ける（サイドバーとモバイルの「その他」）。 */
  const MNT = { enabled: false, from: "", to: "", scope: "", message: "", ...(X.maintenance ?? {}) };
  const maintenanceOn = () => {
    try { if (localStorage.getItem("od.maintenance") === "1") return true; } catch { /* storage unavailable */ }
    return MNT.enabled === true || /[?&]maintenance=1(&|$)/.test(location.search);
  };
  /* アクセス拒否: 権限のないページへ直接移動したときの単独画面。ACCESS.deniedRoutes に入ったルートで、URLはそのまま画面だけ置き換える。
     確認用に #/denied?from=<ルート名> でも開ける。実際の権限判定は認可の結果に置き換える。 */
  const ACCESS = { deniedRoutes: [], ...(D.access ?? {}) };
  let deniedFrom = "";
  const deniedScreen = () => {
    const from = deniedFrom ? (ROUTES[deniedFrom] ?? deniedFrom) : "";
    return `<div class="mnt-wrap"><section class="card mnt-card" role="alert" aria-labelledby="den-h">
      <img class="mnt-img" src="access-denied.svg" width="480" height="360" alt="工場の通路にある、黄と黒の縞模様の枠で囲まれた鋼鉄のドア。かんぬきに南京錠がかかり、左には「WARNING ACCESS DENIED」の赤い警告板があるイラスト。">
      <h1 id="den-h" class="od-keep" tabindex="-1">この操作は<wbr>許可されていません</h1>
      <p class="mnt-msg">このページを表示する権限がありません。権限が必要な場合は、管理者に連絡してください。</p>
      <p class="note">エラーコード：<span class="od-nowrap">403</span>${from ? ` ・ 移動しようとしたページ：${esc(from)}` : ""}</p>
      <div class="logout-actions">
        <a class="btn btn-primary" href="#/home">${icon("home")}<span>ダッシュボードへ戻る</span></a>
        ${history.length > 1 ? `<button class="btn" type="button" data-den-back>${icon("back")}<span>前の画面に戻る</span></button>` : ""}
        <a class="btn" href="#/login">別のユーザーでサインインする</a>
      </div></section></div>`;
  };
  const downtimeScreen = (live) => `<div class="mnt-wrap"><section class="card mnt-card" role="status" aria-labelledby="mnt-h">
      <img class="mnt-img" src="maintenance.svg" width="480" height="360" alt="歯車とレンチ、縞模様の通行止めバリケードのイラスト。システムのメンテナンス作業中を表しています。">
      ${live ? `<h1 id="mnt-h" class="od-keep" tabindex="-1">ただいま<wbr>メンテナンス中です</h1>` : `<h2 id="mnt-h" class="od-keep">ただいま<wbr>メンテナンス中です</h2>`}
      <p class="mnt-msg">${esc(MNT.message)}</p>
      <dl class="mnt-info">
        <div class="kv"><dt>作業の時間帯</dt><dd class="od-nowrap">${esc(MNT.from)}</dd><dd class="od-nowrap mnt-to">〜 ${esc(MNT.to)}（予定）</dd></div>
        <div class="kv"><dt>ご利用いただけない範囲</dt><dd>${esc(MNT.scope)}</dd></div>
      </dl>
      <p class="note">作業が終わると、自動で通常の画面に戻ります。終了予定を過ぎても戻らないときは、再読み込みしてください。</p>
      <div class="logout-actions"><button class="btn btn-primary" type="button" data-mnt-reload>${icon("refresh")}<span>再読み込みして確認</span></button></div>
      ${live ? "" : `<!-- DEV-ONLY: 確認用の注記。実際の APP には含めない --><p class="note mnt-preview dev-only" data-dev-only="true"><span class="dev-badge">開発者向け</span>確認用の表示です。メンテナンスフラグがオンのときは、サインイン前を含むすべての画面でこの表示になります。</p>`}
    </section></div>`;
  const bootScreen = () => `<div class="logout-wrap"><section class="card logout-card" aria-live="polite">
      <div class="spinner" role="status" aria-label="読み込み中"></div><h1>生産管理を起動しています…</h1><p>データと設定を読み込んでいます。</p>
      <div class="progress" aria-hidden="true"><span></span></div></section></div>`;
  const loginScreen = () => `<div class="logout-wrap"><section class="card logout-card login-card" aria-labelledby="login-h">
      <div class="logout-icon">${icon("emblem")}</div>
      <h1 id="login-h">生産管理にサインイン</h1>
      ${flashHtml()}
      <div class="kc-frame" role="group" aria-label="認証サーバーの画面（内部ブラウザ）">
        <div class="kc-bar"><span class="kc-lock" aria-hidden="true">${icon("check")}</span><span class="kc-url od-truncate">https://auth.example.test/realms/pms</span></div>
        <form class="kc-form" id="login-form" novalidate>
          ${loginMsg ? `<p class="login-err" role="alert" id="login-err">${icon("alert")}<span>${esc(loginMsg)}</span></p>` : ""}
          <div class="field-row"><label for="lg-user">ユーザー名<span class="req">必須</span></label><input id="lg-user" name="user" autocomplete="username" value="suzuki.ichiro" required></div>
          <div class="field-row"><label for="lg-pass">パスワード<span class="req">必須</span></label><input id="lg-pass" name="pass" type="password" autocomplete="current-password" value="${AUTH.changed ? "" : esc(AUTH.password)}" required></div>
          <button class="btn btn-primary" type="submit" id="login-btn">ログイン</button>
        </form>
        <div class="login-links"><a href="#/forgot">パスワードを忘れた</a><a href="#/register">新規登録</a></div>
      </div>
      <p class="note">プロトタイプでは、初期値のまま「ログイン」で進めます。パスワードを変えると、ログイン失敗の表示を確認できます。</p>
      <a class="btn" href="#/error" data-err="conn">認証サーバーに接続できないときの画面</a>
    </section></div>`;
  const errorScreen = () => `<div class="logout-wrap"><section class="card logout-card" role="alert">
      <div class="logout-icon err">${icon("alert")}</div><h1>${esc(gErr.title)}</h1><p>${esc(gErr.msg)}</p>
      <p class="note">エラーコード：<span class="od-nowrap">${esc(gErr.code)}</span></p>
      <div class="logout-actions"><a class="btn btn-primary" href="#/login">ログイン画面へ</a></div></section></div>`;
  /* ---------- account: register / forgot password (bare screens in the same frame as the login) ----------
     新規登録: 入力(必須4項目) → 6桁コード → ログイン。 パスワードを忘れた: ID/メール → 6桁コード → 新しいパスワード → ログイン。
     コードは実際には送らない。プロトタイプでは data.js の auth.code (123456) が届いた想定。 */
  D.auth ??= { code: "123456", takenIds: ["suzuki.ichiro", "yamada.taro"], maxTries: 5 };
  const AUTH = { password: "demo-password", changed: false };
  const acct = { flow: null, who: "", tries: 0, verified: false, values: null, note: "" };
  const acctReset = () => Object.assign(acct, { flow: null, who: "", tries: 0, verified: false, values: null, note: "" });
  const RULES = {
    uid: (v) => (!/^[A-Za-z0-9._-]{4,32}$/.test(v) ? "ユーザーIDは、半角の英数字と . _ - で、4〜32文字にしてください。"
      : D.auth.takenIds.includes(v.toLowerCase()) ? `「${v}」は既に使われています。別のユーザーIDにしてください。` : ""),
    email: (v) => (/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(v) ? "" : "メールアドレスの形式が正しくありません。（例：name@example.com）"),
    kana: (v) => (/^[ぁ-ゖァ-ヺー・\s]+$/.test(v) ? "" : "ふりがなは、ひらがな・カタカナで入力してください。英語の名前は、読みを入力します。"),
    code: (v) => (/^\d{6}$/.test(v) ? "" : "6桁の数字を入力してください。"),
    pw: (v) => (v.length >= 8 ? "" : "パスワードは8文字以上にしてください。"),
    pw2: (v, f) => (v === f.elements.pw.value ? "" : "新しいパスワードと同じ値を入力してください。"),
  };
  const maskEmail = (m) => { const [l, d] = m.split("@"); return `${l.slice(0, 1)}***@${d}`; };
  const acctShell = (id, title, url, inner, foot) => `<div class="logout-wrap"><section class="card logout-card login-card" aria-labelledby="${id}-h">
      <div class="logout-icon">${icon("emblem")}</div>
      <h1 id="${id}-h">${title}</h1>
      <div class="kc-frame" role="group" aria-label="認証サーバーの画面（内部ブラウザ）">
        <div class="kc-bar"><span class="kc-lock" aria-hidden="true">${icon("check")}</span><span class="kc-url od-truncate">https://auth.example.test/realms/pms/${url}</span></div>
        ${inner}
      </div>${foot}</section></div>`;
  const registerScreen = () => {
    const v = acct.values ?? {};
    return acctShell("reg", "新規登録", "registrations", `<form class="kc-form" id="acct-form" data-step="register" novalidate>
        ${fieldRow({ id: "uid", label: "ユーザーID", max: 32, rule: "uid", value: v.uid ?? "", attrs: 'autocomplete="username" autocapitalize="none"' })}
        ${fieldRow({ id: "email", label: "メールアドレス", kind: "email", max: 80, rule: "email", value: v.email ?? "", attrs: 'autocomplete="email"' })}
        ${fieldRow({ id: "name", label: "名前", max: 40, value: v.name ?? "", attrs: 'autocomplete="name"' })}
        ${fieldRow({ id: "ruby", label: "ふりがな（英語の名前は読み）", max: 60, rule: "kana", value: v.ruby ?? "" })}
        <button class="btn btn-primary" type="submit">送信</button>
      </form>`, `<p class="note">送信すると、ご入力のメールアドレスに6桁のコードを送ります。</p><a class="btn" href="#/login">ログインに戻る</a>`);
  };
  const forgotScreen = () => acctShell("fgt", "パスワードを忘れた", "reset-credentials", `<form class="kc-form" id="acct-form" data-step="forgot" novalidate>
      <p>ユーザーIDまたはメールアドレスを入力してください。登録されている場合は、6桁のコードをメールでお送りします。</p>
      ${fieldRow({ id: "who", label: "ユーザーIDまたはメールアドレス", max: 80, value: acct.who ?? "", attrs: 'autocomplete="username" autocapitalize="none"' })}
      <button class="btn btn-primary" type="submit">送信</button>
    </form>`, `<a class="btn" href="#/login">ログインに戻る</a>`);
  const codeScreen = (flow) => {
    const locked = acct.tries >= D.auth.maxTries;
    const to = acct.who.includes("@") ? `${maskEmail(acct.who)} に` : "登録されている場合は、ご登録のメールアドレスに";
    return acctShell("code", "認証コードの入力", `${flow === "register" ? "registrations" : "reset-credentials"}/code`, `<form class="kc-form" id="acct-form" data-step="code" novalidate>
        <p>${esc(to)}6桁のコードを送りました。コードを入力してください。（有効時間：10分）</p>
        ${acct.note ? `<p class="flash" role="status">${icon("check")}<span>${esc(acct.note)}</span></p>` : ""}
        ${locked ? `<p class="login-err" role="alert">${icon("alert")}<span>続けて間違えたため、入力を止めました。しばらく時間をおいてから、最初からやり直してください。</span></p>` : ""}
        ${fieldRow({ id: "code", label: "認証コード（6桁）", max: 6, rule: "code", disabled: locked, attrs: 'inputmode="numeric" autocomplete="one-time-code"' })}
        <button class="btn btn-primary" type="submit" ${locked ? "disabled" : ""}>確認</button>
        <button class="btn" type="button" data-resend ${locked ? "disabled" : ""}>コードを再送する</button>
      </form>`, `<!-- DEV-ONLY: 開発者向けの注記（実際のメールは APP が送る）。実際の APP には含めない --><p class="note dev-only" data-dev-only="true"><span class="dev-badge">開発者向け</span>プロトタイプ用の表示：実際のメールは送られません。届いたコードは ${esc(D.auth.code)} の想定です。</p><a class="btn" href="#/${flow === "register" ? "register" : "forgot"}">前の画面に戻る</a>`);
  };
  const resetScreen = () => acctShell("rst", "新しいパスワード", "reset-credentials/password", `<form class="kc-form" id="acct-form" data-step="reset" novalidate>
      ${fieldRow({ id: "pw", label: "新しいパスワード", kind: "password", max: 64, rule: "pw", attrs: 'autocomplete="new-password"' })}
      ${fieldRow({ id: "pw2", label: "新しいパスワード（確認）", kind: "password", max: 64, rule: "pw2", attrs: 'autocomplete="new-password"' })}
      <p class="note">8文字以上で入力してください。2つの入力が同じでないと、再設定できません。</p>
      <button class="btn btn-primary" type="submit">パスワードを再設定</button>
    </form>`, `<a class="btn" href="#/login">ログインに戻る</a>`);

  const acctCheck = (el, form) => {
    let msg = validateField(el);
    if (!msg && el.dataset.rule && !el.disabled) {
      msg = RULES[el.dataset.rule](el.type === "password" ? el.value : el.value.trim(), form);
      el.setAttribute("aria-invalid", msg ? "true" : "false");
      document.getElementById("e-" + el.name).textContent = msg;
    }
    return msg;
  };
  function acctSubmit(form) {
    const val = (n) => form.elements[n].value.trim();
    const step = form.dataset.step;
    if (step === "register") {
      acct.flow = "register";
      acct.values = { uid: val("uid"), email: val("email"), name: val("name"), ruby: val("ruby") };
      acct.who = acct.values.email;
      acct.tries = 0;
      acct.note = "";
      location.hash = "#/register/code";
    } else if (step === "forgot") {
      Object.assign(acct, { flow: "forgot", who: val("who"), tries: 0, verified: false, note: "" });
      location.hash = "#/forgot/code";
    } else if (step === "code") {
      if (acct.tries >= D.auth.maxTries) return;
      if (val("code") !== D.auth.code) {
        acct.tries += 1;
        const left = D.auth.maxTries - acct.tries;
        if (left <= 0) { render(); return; }
        const el = form.elements.code;
        el.setAttribute("aria-invalid", "true");
        document.getElementById("e-code").textContent = `コードが一致しません。もう一度確認してください。（あと${left}回）`;
        el.focus();
        return;
      }
      if (acct.flow === "register") {
        D.auth.takenIds.push(acct.values.uid.toLowerCase());
        flash = `登録が完了しました。ユーザーID「${acct.values.uid}」でログインできます。`;
        acctReset();
        location.hash = "#/login";
      } else {
        acct.verified = true;
        location.hash = "#/forgot/reset";
      }
    } else if (step === "reset") {
      AUTH.password = form.elements.pw.value;
      AUTH.changed = true;
      flash = "パスワードを再設定しました。新しいパスワードでログインしてください。";
      acctReset();
      location.hash = "#/login";
    }
  }
  function bindAcct(form) {
    const fields = () => [...form.querySelectorAll("input")];
    fields().forEach((el) => el.addEventListener("blur", () => acctCheck(el, form)));
    form.addEventListener("submit", (e) => {
      e.preventDefault();
      const bad = fields().filter((el) => acctCheck(el, form));
      if (bad.length) { bad[0].focus(); return; }
      acctSubmit(form);
    });
    form.querySelector("[data-resend]")?.addEventListener("click", () => {
      acct.note = "コードを再送しました。";
      render();
      document.getElementById("f-code")?.focus();
    });
  }

  const SETTINGS = { theme: "system", lang: "ja-JP", pageSize: 50, admin: X.manual?.admin ?? true };
  const DEFAULT_PHOTO = D.user.photo;
  const PAGE_SIZE = { min: 10, max: 500, step: 10, std: 50 };
  const PHOTO_TYPES = ["image/png", "image/jpeg", "image/gif", "image/webp"];
  const PHOTO_MAX = 2 * 1024 * 1024;
  try {
    const ph = localStorage.getItem("od.photo");
    if (ph) D.user.photo = ph;
    const n = Number(localStorage.getItem("od.pageSize"));
    if (Number.isInteger(n) && n >= PAGE_SIZE.min && n <= PAGE_SIZE.max) SETTINGS.pageSize = n;
    const ad = localStorage.getItem("od.admin");
    if (ad !== null) SETTINGS.admin = ad === "1";
  } catch { /* storage unavailable: keep the defaults */ }
  const LANGS = [["ja-JP", "日本語（日本）"], ["en-US", "English (US)"], ["zh-CN", "中文（简体）"], ["ko-KR", "한국어"]];
  const applyTheme = () => { if (SETTINGS.theme === "system") delete document.documentElement.dataset.theme; else document.documentElement.dataset.theme = SETTINGS.theme; };
  function settingsScreen() {
    const radio = ([v, l]) => `<label class="col-opt"><input type="radio" name="theme" value="${v}" data-theme-pick ${SETTINGS.theme === v ? "checked" : ""}>${l}</label>`;
    const tbl = Object.values(G).filter((E) => !E.tree && E.screen).map((E) => {
      const T = E.rootTable;
      const sortOpts = [`<option value="">指定なし</option>`].concat(T.view.hidden ? E.fields.concat([]).flatMap((f) => [1, -1].map((d) =>
        `<option value="${f.id}:${d}" ${T.view.sort.key === f.id && T.view.sort.dir === d ? "selected" : ""}>${f.label}（${d === 1 ? "昇順" : "降順"}）</option>`)) : []).join("");
      const cols = gCols(E).map((c) => `<label class="col-opt"><input type="checkbox" data-tcol="${c.key}" data-tkey="${T.key}" ${c.fixed || !T.view.hidden.has(c.key) ? "checked" : ""} ${c.fixed ? "disabled" : ""}>${c.label}</label>`).join("");
      return `<details class="col-menu set-tbl" data-tmenu="${T.key}" ${T.view.colsOpen ? "open" : ""}><summary class="btn">${esc(E.label)}</summary>
        <div class="col-list">${cols}</div>
        <div class="field-row sort-select"><label for="ts-${T.key}">標準の並べ替え</label><select id="ts-${T.key}" data-tsort="${T.key}">${sortOpts}</select></div></details>`;
    }).join("");
    return `<div class="set-grid">
      <section class="card" aria-labelledby="h-set-photo"><h2 class="sec-title" id="h-set-photo">自分のイメージ</h2>
        <div class="od-row set-photo"><img class="avatar avatar-lg" id="set-photo-prev" src="${esc(D.user.photo)}" width="120" height="120" alt="現在の自分のイメージ">
          <div class="od-fill"><p class="dash-name od-truncate">${esc(D.user.name)}</p><p class="muted od-truncate">${esc(D.user.role)}</p></div></div>
        <div class="field-row"><label for="set-photo">画像ファイルを選ぶ</label>
          <input id="set-photo" type="file" accept="image/png,image/jpeg,image/gif,image/webp,.png,.jpg,.jpeg,.gif,.webp" data-photo-input aria-describedby="photo-note photo-msg"></div>
        <p class="note" id="photo-note">PNG・JPEG・GIF・WebP、2MBまで。アプリバーとダッシュボードの顔写真が変わります。</p>
        <p class="field-err" id="photo-msg" role="alert"></p>
        <div class="form-actions"><button class="btn" type="button" data-photo-reset ${D.user.photo === DEFAULT_PHOTO ? "disabled" : ""}>初期のイメージに戻す</button></div></section>
      <section class="card" aria-labelledby="h-set-page"><h2 class="sec-title" id="h-set-page">データの読込件数</h2>
        <div class="field-row"><label for="set-page">一覧に一度に読み込む件数</label>
          <input id="set-page" type="number" inputmode="numeric" min="${PAGE_SIZE.min}" max="${PAGE_SIZE.max}" step="${PAGE_SIZE.step}" value="${SETTINGS.pageSize}" data-pagesize aria-describedby="page-note page-msg"></div>
        <p class="note" id="page-note">標準は${PAGE_SIZE.std}件（${PAGE_SIZE.min}〜${PAGE_SIZE.max}件）。超える分は、一覧の下の「さらに読み込む」で追加します。</p>
        <p class="field-err" id="page-msg" role="alert"></p>
        <div class="form-actions"><button class="btn" type="button" data-pagesize-reset ${SETTINGS.pageSize === PAGE_SIZE.std ? "disabled" : ""}>標準（${PAGE_SIZE.std}件）に戻す</button></div></section>
      <section class="card" aria-labelledby="h-set-adm"><h2 class="sec-title" id="h-set-adm">マニュアルの権限（確認用）</h2>
        <label class="col-opt"><input type="checkbox" data-admin-toggle ${SETTINGS.admin ? "checked" : ""}>管理者として表示する</label>
        <p class="note">管理者だけが、マニュアルの編集・ページの追加・履歴の復元をできます。オフにすると、閲覧・印刷・Markdown の書き出しだけの表示を確認できます。実運用では、サインインしたユーザーの権限で決まります。</p></section>
      <section class="card" aria-labelledby="h-set-ver"><h2 class="sec-title" id="h-set-ver">バージョン情報</h2>
        <dl><div class="kv"><dt>アプリケーション</dt><dd class="od-nowrap">生産管理 0.1.0</dd></div><div class="kv"><dt>ビルド</dt><dd class="od-nowrap">2026.10.24</dd></div></dl>
        <p class="note">ライブラリではなく、アプリケーションのバージョンを表示します。</p></section>
      <section class="card" aria-labelledby="h-set-theme"><h2 class="sec-title" id="h-set-theme">テーマ</h2>
        <fieldset class="set-fs"><legend class="sr-only">テーマの選択</legend>${[["system", "実行環境に合わせる"], ["light", "ライト"], ["dark", "ダーク"]].map(radio).join("")}</fieldset>
        <p class="note">この設定は、サインインしている本人にだけ反映されます。</p></section>
      <section class="card" aria-labelledby="h-set-lang"><h2 class="sec-title" id="h-set-lang">使用言語</h2>
        <div class="field-row"><label for="set-lang">言語（ISO 3166）</label><select id="set-lang" data-lang>${LANGS.map(([v, l]) => `<option value="${v}" ${SETTINGS.lang === v ? "selected" : ""}>${l}</option>`).join("")}</select></div>
        <p class="note">初期値は実行環境の言語です。プロトタイプの画面文言は日本語のみです。</p></section>
      <section class="card set-wide" aria-labelledby="h-set-cols"><h2 class="sec-title" id="h-set-cols">各画面の列</h2>
        <p class="note">表示する列と標準の並べ替えを、画面ごとに選べます。名称の列は常に表示されます。</p>
        <div class="set-tbls">${tbl}</div></section></div>`;
  }
  let cdTimer = null;
  function startCountdown() {
    clearInterval(cdTimer);
    let n = 5;
    cdTimer = setInterval(() => {
      n -= 1;
      const el = document.getElementById("lo-count");
      if (el) el.textContent = n;
      if (n <= 0) { clearInterval(cdTimer); logoutState = "confirm"; location.hash = "#/login"; }
    }, 1000);
  }
  function bindG() {
    document.querySelectorAll("[data-gtoggle]").forEach((b) => b.addEventListener("click", () => {
      const id = b.dataset.gtoggle;
      if (gTree.open.has(id)) gTree.open.delete(id);
      else {
        gTree.open.add(id);
        if (!gTree.loaded.has(id)) {
          gTree.loading.add(id);
          setTimeout(() => {
            gTree.loading.delete(id);
            gTree.loaded.add(id);
            if (currentRoute().startsWith("g")) { const keep = scroller().scrollTop; render(); scroller().scrollTop = keep; }
          }, 350);
        }
      }
      const keep = scroller().scrollTop;
      render();
      scroller().scrollTop = keep;
      document.querySelector(`[data-gtoggle="${id}"]`)?.focus();
    }));
    document.querySelectorAll("[data-gpick]").forEach((b) => b.addEventListener("click", () => {
      gSelect(b.dataset.gent, b.dataset.gpick);
      const keep = scroller().scrollTop;
      render();
      scroller().scrollTop = keep;
      document.querySelector(`[data-gpick="${b.dataset.gpick}"]`)?.focus();
    }));
    document.querySelectorAll("[data-gdrag]").forEach((h) => h.addEventListener("pointerdown", (e) => {
      if (e.button > 0) return;
      e.preventDefault();
      const E = G[h.dataset.gent];
      const r = gGet(E.key, h.dataset.gdrag);
      const banned = new Set([r.id, ...gBelow(E, r.id)]);
      const ghost = document.createElement("div");
      ghost.className = "drag-ghost";
      ghost.textContent = gName(E, r);
      document.body.appendChild(ghost);
      let target; // undefined = no valid target, "" = top level, string = parent id
      const clear = () => document.querySelectorAll(".drop-ok, .drop-bad").forEach((x) => x.classList.remove("drop-ok", "drop-bad"));
      const move = (ev) => {
        ghost.style.transform = `translate(${ev.clientX + 12}px, ${ev.clientY + 12}px)`;
        clear();
        target = undefined;
        const el = document.elementFromPoint(ev.clientX, ev.clientY)?.closest("[data-gdrop]");
        if (!el) return;
        const t = el.dataset.gdrop === "root" ? "" : el.dataset.gdrop;
        if (t === (r.parent || "")) return;
        if (t && banned.has(t)) { el.classList.add("drop-bad"); return; }
        el.classList.add("drop-ok");
        target = t;
      };
      const stop = (apply) => {
        window.removeEventListener("pointermove", move);
        window.removeEventListener("pointerup", up);
        window.removeEventListener("pointercancel", cancel);
        window.removeEventListener("keydown", key);
        clear();
        ghost.remove();
        if (apply && target !== undefined) moveG(E, r, target);
      };
      const up = () => stop(true);
      const cancel = () => stop(false);
      const key = (ev) => { if (ev.key === "Escape") stop(false); };
      window.addEventListener("pointermove", move);
      window.addEventListener("pointerup", up);
      window.addEventListener("pointercancel", cancel);
      window.addEventListener("keydown", key);
      move(e);
    }));
    document.querySelectorAll("[data-theme-pick]").forEach((r) => r.addEventListener("change", () => { SETTINGS.theme = r.value; applyTheme(); }));
    bindBarcode();
    bindWr();
    bindMan();
    bindApv();
    document.querySelector("[data-admin-toggle]")?.addEventListener("change", (e) => {
      SETTINGS.admin = e.target.checked;
      try { localStorage.setItem("od.admin", SETTINGS.admin ? "1" : "0"); } catch { /* session only */ }
    });
    document.querySelector("[data-mnt-reload]")?.addEventListener("click", () => location.reload());
    document.querySelector("[data-lang]")?.addEventListener("change", (e) => { SETTINGS.lang = e.target.value; });
    const setPhoto = (url) => {
      D.user.photo = url;
      try { if (url === DEFAULT_PHOTO) localStorage.removeItem("od.photo"); else localStorage.setItem("od.photo", url); } catch { /* too large for storage: applies to this session only */ }
      document.querySelectorAll("img.avatar").forEach((img) => { img.src = url; });
      const rb = document.querySelector("[data-photo-reset]");
      if (rb) rb.disabled = url === DEFAULT_PHOTO;
    };
    document.querySelector("[data-photo-input]")?.addEventListener("change", (e) => {
      const msg = document.getElementById("photo-msg");
      const f = e.target.files?.[0];
      if (!f) return;
      const ext = (f.name.match(/\.(\w+)$/)?.[1] ?? "").toLowerCase();
      const okType = PHOTO_TYPES.includes(f.type) || (!f.type && ["png", "jpg", "jpeg", "gif", "webp"].includes(ext));
      if (!okType) { msg.textContent = "PNG・JPEG・GIF・WebP の画像ファイルを選んでください。"; e.target.value = ""; return; }
      if (f.size > PHOTO_MAX) { msg.textContent = `ファイルが大きすぎます（${(f.size / 1048576).toFixed(1)}MB）。2MB以下の画像を選んでください。`; e.target.value = ""; return; }
      const rd = new FileReader();
      rd.onerror = () => { msg.textContent = "画像を読み込めませんでした。別のファイルを選んでください。"; };
      rd.onload = () => {
        const img = new Image();
        img.onerror = () => { msg.textContent = "画像として開けないファイルです。別のファイルを選んでください。"; };
        img.onload = () => { msg.textContent = ""; setPhoto(String(rd.result)); flash = ""; };
        img.src = String(rd.result);
      };
      rd.readAsDataURL(f);
    });
    document.querySelector("[data-photo-reset]")?.addEventListener("click", () => {
      setPhoto(DEFAULT_PHOTO);
      const inp = document.querySelector("[data-photo-input]"); if (inp) inp.value = "";
      document.getElementById("photo-msg").textContent = "";
    });
    const applyPageSize = (n) => {
      SETTINGS.pageSize = n;
      try { if (n === PAGE_SIZE.std) localStorage.removeItem("od.pageSize"); else localStorage.setItem("od.pageSize", String(n)); } catch { /* session only */ }
      Object.values(TABLES).forEach((T) => { T.view.limit = null; });
      const rb = document.querySelector("[data-pagesize-reset]");
      if (rb) rb.disabled = n === PAGE_SIZE.std;
    };
    document.querySelector("[data-pagesize]")?.addEventListener("change", (e) => {
      const msg = document.getElementById("page-msg");
      const n = Number(e.target.value);
      if (!Number.isInteger(n) || n < PAGE_SIZE.min || n > PAGE_SIZE.max) {
        msg.textContent = `${PAGE_SIZE.min}〜${PAGE_SIZE.max}の整数で入力してください。${SETTINGS.pageSize}件のままにしています。`;
        e.target.setAttribute("aria-invalid", "true");
        return;
      }
      msg.textContent = "";
      e.target.removeAttribute("aria-invalid");
      applyPageSize(n);
    });
    document.querySelector("[data-pagesize-reset]")?.addEventListener("click", () => {
      applyPageSize(PAGE_SIZE.std);
      const inp = document.querySelector("[data-pagesize]"); if (inp) { inp.value = String(PAGE_SIZE.std); inp.removeAttribute("aria-invalid"); }
      document.getElementById("page-msg").textContent = "";
    });
    document.querySelector("[data-den-back]")?.addEventListener("click", () => history.back());
    document.querySelector("[data-err=conn]")?.addEventListener("click", () => { gErr = { title: "認証サーバーに接続できません", msg: "ネットワークの状態を確認して、もう一度お試しください。", code: "KC-503" }; });
    const af = document.getElementById("acct-form");
    if (af) { bindAcct(af); document.querySelector("input:not([disabled])")?.focus(); }
    const lf = document.getElementById("login-form");
    if (lf) lf.addEventListener("submit", (e) => {
      e.preventDefault();
      const u = lf.elements.user.value.trim();
      const p = lf.elements.pass.value;
      if (!u || !p) { loginMsg = "ユーザー名とパスワードを入力してください。"; render(); document.getElementById(u ? "lg-pass" : "lg-user").focus(); return; }
      if (p !== AUTH.password) { loginMsg = "ユーザー名またはパスワードが正しくありません。"; render(); document.getElementById("lg-pass").focus(); return; }
      const btn = document.getElementById("login-btn");
      btn.disabled = true;
      btn.textContent = "サインインしています…";
      loginMsg = "";
      clearTimeout(timer);
      timer = setTimeout(() => { location.hash = "#/home"; }, 700);
    });
    if (currentRoute() === "boot") { clearTimeout(timer); timer = setTimeout(() => { location.hash = "#/login"; }, 1500); }
  }

  /* ---------- shell ---------- */
  /* Side navigation: plain items and groups. A group has children; "soon" children are reserved entries without a screen yet. */
  const NAV = [
    { id: "home", icon: "home", label: "ダッシュボード" },
    { group: "resources", icon: "box", label: "資源", children: [
      { id: "capabilities", icon: "briefcase", label: "力量" },
      { id: "licenses", icon: "check", label: "資格" },
      { id: "locations", icon: "pin", label: "場所" },
      { id: "equipment", icon: "factory", label: "設備" },
      { id: "maintenance", icon: "wrench", label: "保全" },
    ] },
    ...MENU_GROUPS.map((g) => ({ group: `g_${g.id}`, icon: g.icon, label: g.label,
      children: [...(g.id === "result" ? [{ id: "wr", icon: "wrench", label: "実績登録" }, { id: "barcode", icon: "barcode", label: "バーコード" }] : []), ...g.screens.map((sid) => (sid === "doc" ? { id: "manual", icon: "list", label: "マニュアル" } : { id: `g/${sid}`, icon: GS[sid].icon, label: GS[sid].label })), ...(APV_GROUPS[g.id] ? [{ id: `ap/${g.id}`, icon: "check", label: "承認一覧" }] : [])] })),
    { id: "company", icon: "building", label: "会社情報" },
    /* DEV-ONLY: 確認用のメニュー（メンテナンス中・アクセス拒否）。実際の APP には含めない（フラグ・権限の結果で表示される） */
    { id: "maintenance-mode", icon: "wrench", label: "メンテナンス中", devOnly: true },
    { id: "denied", icon: "alert", label: "アクセス拒否（確認用）", devOnly: true },
  ];
  NAV.find((n) => n.group === "g_plan")?.children.push({ id: "mrp", icon: "box", label: "資材所要計算" });
  NAV.find((n) => n.group === "g_result")?.children.push({ id: "stock", icon: "box", label: "在庫状況" });
  const navOpen = new Set(); // expanded groups (PC / drawer)
  let navPop = null; // group whose fly-out is open (icon-only tablet sidebar)
  const isCurNav = (id, r) => (id.startsWith("ap/") ? (r === "ap/list" && parseRoute().gid === id.slice(3)) : id.startsWith("g/") ? gCurScreen() === id.slice(2) : id === "company" ? /^(company|sites|departments|staff|approval|offerings)/.test(r) : id === "home" ? ["home", "orders", "production"].includes(r) : r === id || r.startsWith(id + "/"));
  const navHtml = () => {
    const r = currentRoute();
    const link = (n, cls = "") =>
      `<a class="nav-item ${cls}" href="#/${n.id}" ${isCurNav(n.id, r) ? 'aria-current="page"' : ""}>${icon(n.icon)}<span>${n.label}</span></a>`;
    return NAV.map((n) => {
      if (!n.group) return link(n);
      const here = n.children.some((c) => c.id && isCurNav(c.id, r)) || r === "resources";
      const open = device === "tablet" ? navPop === n.group : navOpen.has(n.group);
      const kids = n.children.map((c) => (c.soon
        ? `<span class="nav-item nav-child soon" aria-disabled="true">${icon(c.icon)}<span>${c.label}</span><small class="soon-tag">準備中</small></span>`
        : link(c, "nav-child"))).join("");
      return `<div class="nav-group ${here ? "has-current" : ""}"><button class="nav-item nav-group-btn" type="button" data-navgroup="${n.group}" aria-expanded="${open}">${icon(n.icon)}<span>${n.label}</span>${icon("chevron")}</button><div class="nav-sub" ${open ? "" : "hidden"}>${kids}</div></div>`;
    }).join("");
  };
  function refreshNav(focusGroup) {
    document.querySelectorAll(".nav").forEach((n) => { n.innerHTML = navHtml(); });
    if (focusGroup) [...document.querySelectorAll(`[data-navgroup="${focusGroup}"]`)].find((x) => x.offsetParent !== null)?.focus();
  }
  /* mobile bottom navigation: 5 items, 組織 / 会社情報 / ログアウト live under その他 */
  const mobileNavHtml = () => {
    const r = currentRoute();
    const cur = ["home", "orders", "production"].includes(r) ? "home" : "more";
    const item = (id, ic, label) =>
      `<a class="m-nav-item" href="#/${id}" ${cur === id ? 'aria-current="page"' : ""}>${icon(ic)}<span>${label}</span></a>`;
    return item("home", "home", "ダッシュボード") + item("more", "more", "その他");
  };

  const root = document.getElementById("app");
  const scroller = () => (mobile ? document.getElementById("screen") : document.scrollingElement);
  function buildShell() {
    const hamburger = `<button class="icon-btn menu-btn" type="button" id="menu-btn" aria-label="メニューを開く" aria-expanded="false" aria-controls="drawer">${icon("menu")}</button>`;
    const drawer = `<div class="drawer-root" id="drawer-root">
        <div class="scrim" data-drawer-close></div>
        <div class="drawer" id="drawer" role="dialog" aria-modal="true" aria-label="メニュー">
          <div class="drawer-head"><div class="brand"><span class="brand-mark">${icon("emblem")}</span><span class="brand-name">生産管理</span></div>
            <button class="icon-btn" type="button" id="drawer-close" data-drawer-close aria-label="メニューを閉じる">${icon("close")}</button></div>
          ${userCard()}<nav class="nav" aria-label="メイン"></nav>
          
        </div>
      </div>`;
    if (mobile) {
      root.innerHTML = `<div class="m-app od-screen">
        <header class="appbar" role="banner">${hamburger}<span class="appbar-title od-truncate">生産管理</span><div class="user-menu"><button class="appbar-user" type="button" id="user-menu-btn" aria-haspopup="menu" aria-expanded="false" aria-controls="user-menu-list">${avatarImg()}<span class="appbar-name od-truncate">${D.user.name}</span>${icon("chevron")}</button><div class="user-menu-list" id="user-menu-list" role="menu" aria-label="${D.user.name}のメニュー" hidden><a role="menuitem" class="user-menu-item" href="#/settings">${icon("gear")}<span>設定</span></a><a role="menuitem" class="user-menu-item" href="#/logout">${icon("logout")}<span>ログアウト</span></a></div></div></header>
        <div class="m-head"><div class="m-head-text"><div class="crumb"></div><h1 id="page-title" tabindex="-1">ダッシュボード</h1></div></div>
        <main class="od-scroll" id="screen" tabindex="-1"></main>
        <nav class="m-nav" id="m-nav" aria-label="メイン"></nav>
        <div class="sheet-root" id="sheet-root"></div>
        ${drawer}
      </div>`;
    } else {
      const side = `<aside class="side">
          <div class="brand"><span class="brand-mark">${icon("emblem")}</span><span class="brand-name">生産管理</span></div>
          ${userCard()}<nav class="nav" aria-label="メイン"></nav>
          
        </aside>`;
      root.innerHTML = `<div class="app">
        ${side}
        <div class="main-col">
          <div class="topbar"><header class="appbar" role="banner">${hamburger}<span class="appbar-title od-truncate">生産管理</span><div class="user-menu"><button class="appbar-user" type="button" id="user-menu-btn" aria-haspopup="menu" aria-expanded="false" aria-controls="user-menu-list">${avatarImg()}<span class="appbar-name od-truncate">${D.user.name}</span>${icon("chevron")}</button><div class="user-menu-list" id="user-menu-list" role="menu" aria-label="${D.user.name}のメニュー" hidden><a role="menuitem" class="user-menu-item" href="#/settings">${icon("gear")}<span>設定</span></a><a role="menuitem" class="user-menu-item" href="#/logout">${icon("logout")}<span>ログアウト</span></a></div></div></header></div>
          <main class="main" id="screen" tabindex="-1"></main>
        </div>
      </div>
      <div class="sheet-root" id="sheet-root"></div>
      ${device === "pc" ? drawer : ""}`;
    }
  }

  const dashTabs = (route) => `<nav class="dash-tabs" aria-label="ダッシュボード">${[["home", "概要"], ["orders", "出荷"], ["production", "生産計画"]].map(([id, l]) => `<a class="dash-tab" href="#/${id}" ${route === id ? 'aria-current="page"' : ""}>${l}</a>`).join("")}</nav>`;

  function pageHead(title, crumb = D.company.name) {
    if (mobile) return "";
    return `<header class="page-head"><div><div class="crumb">${esc(crumb)}</div><h1 id="page-title" tabindex="-1">${title}</h1></div><span class="asof">${D.asOf}</span></header>`;
  }

  let logoutState = "confirm";
  let timer = null;

  function render() {
    const P = parseRoute();
    const mntLive = maintenanceOn();
    if (!/^manual/.test(P.name)) { MAN.edit = false; MAN.draft = null; }
    if (P.name !== "barcode" || mntLive) { BC.cam = false; bcCamStop(); BC.argKey = null; bxLeave(); }
    const blocked = !mntLive && ACCESS.deniedRoutes.includes(P.name);
    deniedFrom = P.name === "denied" ? hashQuery().get("from") ?? "" : blocked ? P.name : "";
    const route = mntLive ? "maintenance-mode" : blocked ? "denied" : P.name;
    const isLogout = route === "logout";
    const title = route === "maintenance/entity" ? `${ENT[P.ent]?.label ?? "保全"}の編集`
      : route === "g" ? GS[P.sid]?.label ?? "業務画面"
      : route === "g/entity" ? `${G[P.ent]?.label ?? "業務"}の編集`
      : ROUTES[route];
    const need = { "register/code": acct.flow === "register", "forgot/code": acct.flow === "forgot", "forgot/reset": acct.flow === "forgot" && acct.verified };
    if (route in need && !need[route]) { location.hash = route.startsWith("register") ? "#/register" : "#/forgot"; return; }
    const bare = ["boot", "login", "error", "register", "register/code", "forgot", "forgot/code", "forgot/reset", "denied"].includes(route) || mntLive;
    navPop = null;
    NAV.forEach((n) => { if (n.group && (n.children.some((c) => c.id && isCurNav(c.id, route)) || route === "resources")) navOpen.add(n.group); });
    if (route === "company") draft = null;
    if (route !== "company/approval/add") coAp.pick = new Set();
    if (!["departments/dept", "departments/kind", "departments/kindedit"].includes(route)) deptDraft = null;
    if (!["staff/person", "staff/capability", "staff/license"].includes(route)) staffDraft = null;
    document.body.classList.toggle("signed-out", (isLogout && logoutState === "done") || bare);
    const screen = document.getElementById("screen");
    closeDrawer(false);
    document.querySelectorAll(".nav").forEach((n) => { n.innerHTML = navHtml(); });
    if (mobile) document.getElementById("m-nav").innerHTML = mobileNavHtml();
    if (mobile) {
      document.getElementById("page-title").textContent = title;
      document.querySelector(".m-head .crumb").textContent = crumbOf(route);
    }
    if (isLogout) {
      screen.innerHTML = (!mobile ? pageHead(title) : "") + logoutScreen(logoutState);
    } else if (bare) {
      screen.innerHTML = mntLive ? downtimeScreen(true) : { boot: bootScreen, login: loginScreen, error: errorScreen, denied: deniedScreen, register: registerScreen, "register/code": () => codeScreen("register"), forgot: forgotScreen, "forgot/code": () => codeScreen("forgot"), "forgot/reset": resetScreen }[route]();
    } else {
      const body = {
        home: homeScreen,
        customers: customersScreen,
        orders: ordersScreen,
        production: productionScreen,
        mrp: mrpScreen,
        stock: stockScreen,
        organization: organizationScreen,
        more: moreScreen,
        company: companyScreen,
        "company/edit": companyEditScreen,
        "company/provision": () => provisionEditScreen(P.id),
        "company/position": () => positionEditScreen(P.id),
        "company/assign": () => assignEditScreen(P.pid, P.id),
        "company/approval": coApListScreen,
        "company/approval/pattern": () => coApPatternScreen(P.id),
        "company/approval/add": () => coApAddScreen(P.pid),
        sites: () => officeScreen(false),
        "sites/edit": () => officeScreen(true),
        "sites/office": () => officeEditScreen(P.id),
        departments: () => deptScreen(false),
        "departments/edit": () => deptScreen(true),
        "departments/dept": () => deptEditScreen(P.id),
        "departments/kind": () => deptKindScreen(P.id),
        "departments/kindedit": () => deptKindEditScreen(P.id, P.kid),
        resources: () => resourcesScreen(),
        locations: () => locScreen(false),
        "locations/edit": () => locScreen(true),
        "locations/item": () => locEditScreen(P.id),
        equipment: () => equipmentScreen(false),
        "equipment/edit": () => equipmentScreen(true),
        "equipment/cat": () => eqCatEditScreen(P.id),
        "equipment/item": () => equipmentEditScreen(P.id),
        maintenance: () => maintenanceScreen(P.tab, P.edit),
        "maintenance/entity": () => maintenanceEntityScreen(P.ent, P.id, P.parentId),
        capabilities: () => resScreen("capabilities", false),
        "capabilities/edit": () => resScreen("capabilities", true),
        "capabilities/item": () => resItemEditScreen("capabilities", P.id),
        "capabilities/holder": () => resHolderEditScreen("capabilities", P.pid, P.id),
        licenses: () => resScreen("licenses", false),
        "licenses/edit": () => resScreen("licenses", true),
        "licenses/item": () => resItemEditScreen("licenses", P.id),
        "licenses/holder": () => resHolderEditScreen("licenses", P.pid, P.id),
        approval: () => approvalScreen(false),
        "approval/edit": () => approvalScreen(true),
        "approval/pattern": () => patternEditScreen(P.id),
        "approval/scope": () => scopeEditScreen(P.pid, P.id),
        "approval/approver": () => approverEditScreen(P.pid, P.sid, P.id),
        staff: () => staffScreen(false),
        "staff/edit": () => staffScreen(true),
        "staff/person": () => staffEditScreen(P.id),
        "staff/capability": () => capEditScreen(P.pid, P.id),
        "staff/license": () => licEditScreen(P.pid, P.id),
        offerings: offeringsScreen,
        g: () => (P.sid === "doc" ? ((location.hash = "#/manual"), "") : gScreen(P.sid, P.tab, P.edit)),
        "g/entity": () => gEntityScreen(P.ent, P.id, P.parentId),
        menu: menuScreen,
        "maintenance-mode": () => downtimeScreen(false),
        barcode: () => { bcApplyArgs(); return barcodeScreen(); },
        wr: () => wrScreen(null),
        "wr/plan": () => wrScreen(P.id),
        manual: () => manScreen(null),
        "manual/page": () => manScreen(P.id),
        "ap/list": () => apvScreen(P.gid),
        settings: settingsScreen,
      }[route]();
      screen.innerHTML = pageHead(title, crumbOf(route)) + `<div class="${mobile ? "m-body" : "page-body"}">${["home", "orders", "production"].includes(route) ? dashTabs(route) : ""}${body}</div>`;
    }
    document.title = `${title} | 生産管理`;
    flash = "";
    bind();
  }

  /* ---------- drawer (hamburger menu) ---------- */
  const drawerRoot = () => document.getElementById("drawer-root");
  function openDrawer() {
    const r = drawerRoot();
    if (!r) return;
    r.classList.add("open");
    document.querySelectorAll(".menu-btn").forEach((b) => { b.setAttribute("aria-expanded", "true"); });
    requestAnimationFrame(() => document.getElementById("drawer-close").focus());
  }
  function closeDrawer(restore = true) {
    const r = drawerRoot();
    if (!r || !r.classList.contains("open")) return;
    r.classList.remove("open");
    const btns = document.querySelectorAll(".menu-btn");
    btns.forEach((b) => { b.setAttribute("aria-expanded", "false"); });
    if (restore) [...btns].find((b) => b.offsetParent !== null)?.focus();
  }

  /* ---------- company edit form ---------- */
  function validateField(el) {
    const label = el.closest(".field-row").querySelector("label").firstChild.textContent;
    const out = (msg) => {
      el.setAttribute("aria-invalid", msg ? "true" : "false");
      document.getElementById("e-" + el.name).textContent = msg;
      return msg;
    };
    if (el.type === "checkbox") return out(!el.checked && el.dataset.keepMsg ? el.dataset.keepMsg : "");
    if (el.disabled) return out("");
    const v = el.value.trim();
    const taken = el.dataset.taken ? JSON.parse(el.dataset.taken) : [];
    const other = (name) => el.form.elements[name];
    let msg = "";
    if (!v && el.required) msg = `${label}を${el.tagName === "SELECT" ? "選択" : "入力"}してください。`;
    else if (!v && el.dataset.needUnless && !other(el.dataset.needUnless)?.checked) msg = `${label}を入力してください。言い値の場合は「${other(el.dataset.needUnless).closest(".field-row").querySelector("label").firstChild.textContent}」をオンにしてください。`;
    else if (v && el.dataset.after && other(el.dataset.after)?.value > v) {
      const o = other(el.dataset.after).closest(".field-row").querySelector("label").firstChild.textContent;
      msg = `${label}は${o}以降の日付にしてください。`;
    } else if (v && el.dataset.min && v < el.dataset.min) {
      msg = `${label}は予定日（${fmtDate(el.dataset.min)}）以降の日付にしてください。`;
    } else if (v && el.dataset.ge != null && Number(v) < Number(el.dataset.ge)) msg = `${label}は${el.dataset.ge}以上の数値にしてください。`;
    else if (v && el.dataset.gt != null && !(Number(v) > Number(el.dataset.gt))) msg = `${label}は${el.dataset.gt}より大きい数値にしてください。`;
    else if (v && el.dataset.le != null && Number(v) > Number(el.dataset.le)) msg = `${label}は${fmt(Number(el.dataset.le))}以下にしてください。`;
    else if (el.dataset.xor && !v && !other(el.dataset.xor)?.value) msg = `${label}か${other(el.dataset.xor).closest(".field-row").querySelector("label").firstChild.textContent}のどちらかを選んでください。`;
    else if (el.dataset.xor && v && other(el.dataset.xor)?.value) msg = `${label}と${other(el.dataset.xor).closest(".field-row").querySelector("label").firstChild.textContent}は、どちらか一方だけを選んでください。`;
    else if (v && taken.includes(v)) {
      const shown = el.tagName === "SELECT" ? el.selectedOptions[0]?.text ?? v : v;
      msg = `「${shown}」は既に登録されています。別の${label}にしてください。`;
    }
    return out(msg);
  }
  function bindForm(form) {
    const sum = document.getElementById("err-sum");
    form.querySelectorAll("input, textarea, select").forEach((el) => el.addEventListener("blur", () => validateField(el)));
    form.querySelectorAll("[data-sets-le]").forEach((sel) => sel.addEventListener("change", () => {
      const t = form.elements[sel.dataset.setsLe];
      const map = JSON.parse(sel.dataset.leMap || "{}");
      if (!t) return;
      if (sel.value in map) t.dataset.le = String(map[sel.value]); else delete t.dataset.le;
      if (t.value) validateField(t);
    }));
    form.querySelectorAll("[data-disables]").forEach((cb) => cb.addEventListener("change", () => {
      const t = form.elements[cb.dataset.disables];
      if (!t) return;
      t.disabled = cb.checked;
      if (cb.checked) t.value = "";
      validateField(t);
    }));
    form.addEventListener("submit", (e) => {
      e.preventDefault();
      const bad = [...form.querySelectorAll("input, textarea, select")].filter((el) => validateField(el));
      if (bad.length) {
        sum.hidden = false;
        sum.innerHTML = `<strong>入力内容を確認してください（${bad.length}件）</strong><ul>${bad
          .map((el) => `<li><a href="#f-${el.name}" data-focus="f-${el.name}">${document.getElementById("e-" + el.name).textContent}</a></li>`)
          .join("")}</ul>`;
        sum.querySelectorAll("[data-focus]").forEach((a) => a.addEventListener("click", (ev) => { ev.preventDefault(); document.getElementById(a.dataset.focus).focus(); }));
        sum.focus();
        return;
      }
      const btn = form.querySelector("[type=submit]");
      btn.disabled = true;
      btn.textContent = "保存中…";
      setTimeout(() => { location.hash = saveForm(form); }, 500);
    });
  }

  function bind() {
    const form = document.getElementById("edit-form");
    if (form) {
      bindForm(form);
      document.getElementById("del-btn")?.addEventListener("click", (e) => deleteRecord(form, e.currentTarget));
    }
    document.querySelectorAll("[data-draft]").forEach((a) => a.addEventListener("click", () => {
      const f = document.getElementById("edit-form");
      if (f?.dataset.kind === "company") draft = Object.fromEntries([...f.querySelectorAll("input, textarea")].map((el) => [el.name, el.value]));
    }));
    document.querySelectorAll("[data-site]").forEach((b) => b.addEventListener("click", () => openSheet(b.dataset.site, b)));
    document.querySelectorAll("[data-cust]").forEach((b) => b.addEventListener("click", () => openCustomer(b.dataset.cust, b)));
    document.querySelectorAll("[data-order]").forEach((b) => b.addEventListener("click", () => openOrder(b.dataset.order, b)));
    const rerender = (sel) => {
      const keep = scroller().scrollTop;
      render();
      scroller().scrollTop = keep;
      if (sel) document.querySelector(sel)?.focus();
    };
    const T = tableFor(currentRoute());
    const editMode = () => currentRoute().endsWith("/edit");
    const bindSiteTable = () => {
      document.querySelectorAll("[data-sort]").forEach((b) => b.addEventListener("click", () => {
        const k = b.dataset.sort;
        T.view.sort = T.view.sort.key === k ? { key: k, dir: -T.view.sort.dir } : { key: k, dir: 1 };
        rerender(`[data-sort="${k}"]`);
      }));
      document.querySelectorAll("tr[data-href]").forEach((tr) => tr.addEventListener("click", (e) => {
        if (!e.target.closest("a")) location.hash = tr.dataset.href;
      }));
    };
    /* ---- departments: tree toggle (lazy load), drag & drop re-parenting, tags, kind picks ---- */
    const captureDept = () => {
      const f = document.getElementById("edit-form");
      if (f?.dataset.kind !== "department") return;
      const id = f.dataset.id;
      deptDraft = { id, name: f.querySelector("[name=name]").value, parent: f.querySelector("[name=parent]").value || null, ...(id === "new" ? { kinds: deptKindIds("new") } : {}) };
    };
    const captureStaff = () => {
      const f = document.getElementById("edit-form");
      if (f?.dataset.kind !== "staff") return;
      const q = (n) => f.querySelector(`[name=${n}]`)?.value ?? "";
      const id = f.dataset.id;
      staffDraft = { ...(staffDraft?.id === id ? staffDraft : { id }), id, ...(id === "new" ? { no: q("no") } : {}), name: q("name"), site: q("site"), type: q("type"), dept: q("dept") };
      if (id === "new") { staffDraft.caps = staffItems("caps", "new"); staffDraft.lics = staffItems("lics", "new"); }
    };
    document.querySelectorAll("[data-ltoggle]").forEach((b) => b.addEventListener("click", () => {
      const id = b.dataset.ltoggle;
      if (locView.open.has(id)) locView.open.delete(id);
      else {
        locView.open.add(id);
        if (!locView.loaded.has(id)) {
          locView.loading.add(id);
          setTimeout(() => {
            locView.loading.delete(id);
            locView.loaded.add(id);
            if (/^locations/.test(currentRoute())) rerender(`[data-ltoggle="${id}"]`);
          }, 350);
        }
      }
      rerender(`[data-ltoggle="${id}"]`);
    }));
    document.querySelectorAll("[data-lreparent]").forEach((b) => b.addEventListener("click", () => openLocPicker(b, locById(b.dataset.lreparent))));
    document.querySelectorAll("[data-ldrag]").forEach((h) => h.addEventListener("pointerdown", (e) => {
      if (e.button > 0) return;
      e.preventDefault();
      const l = locById(h.dataset.ldrag);
      const banned = new Set([l.id, ...locBelow(l.id)]);
      const ghost = document.createElement("div");
      ghost.className = "drag-ghost";
      ghost.textContent = l.name;
      document.body.appendChild(ghost);
      let target;
      const clear = () => document.querySelectorAll(".drop-ok, .drop-bad").forEach((x) => x.classList.remove("drop-ok", "drop-bad"));
      const move = (ev) => {
        ghost.style.transform = `translate(${ev.clientX + 12}px, ${ev.clientY + 12}px)`;
        clear();
        target = undefined;
        const el = document.elementFromPoint(ev.clientX, ev.clientY)?.closest("[data-ldrop]");
        if (!el) return;
        const t = el.dataset.ldrop === "root" ? null : el.dataset.ldrop;
        if (t === l.parent) return;
        if (t !== null && banned.has(t)) { el.classList.add("drop-bad"); return; }
        el.classList.add("drop-ok");
        target = t;
      };
      const stop = (apply) => {
        window.removeEventListener("pointermove", move);
        window.removeEventListener("pointerup", up);
        window.removeEventListener("pointercancel", cancel);
        window.removeEventListener("keydown", key);
        clear();
        ghost.remove();
        if (apply && target !== undefined) moveLoc(l, target);
      };
      const up = () => stop(true);
      const cancel = () => stop(false);
      const key = (ev) => { if (ev.key === "Escape") stop(false); };
      window.addEventListener("pointermove", move);
      window.addEventListener("pointerup", up);
      window.addEventListener("pointercancel", cancel);
      window.addEventListener("keydown", key);
      move(e);
    }));
    document.getElementById("mrp-redo")?.addEventListener("change", (e) => { mrpState.redo = e.target.checked; render(); document.getElementById("mrp-redo")?.focus(); });
    document.getElementById("mrp-run")?.addEventListener("click", (e) => { mrpState.nextCalc = false; openMrpConfirm(e.currentTarget); });
    document.getElementById("mrp-calc")?.addEventListener("click", (e) => { mrpState.nextCalc = true; openMrpConfirm(e.currentTarget); });
    document.getElementById("mrp-check")?.addEventListener("click", () => { mrpState.issues = D.mrpIssues.map((x) => ({ ...x })); render(); document.getElementById("mrp-check")?.focus(); });
    document.getElementById("mrp-target-add")?.addEventListener("change", (e) => {
      const t = D.mrpTargets.find((x) => x.id === e.target.value);
      if (t && !mrpState.targets.some((x) => x.id === t.id)) mrpState.targets.push({ ...t });
      render();
      document.getElementById("mrp-target-add")?.focus();
    });
    document.querySelectorAll("[data-mrp-rm]").forEach((b) => b.addEventListener("click", () => { mrpState.targets = mrpState.targets.filter((x) => x.id !== b.dataset.mrpRm); render(); }));
    const mrpDecide = (to) => { (mrpState.result?.rows ?? []).forEach((r) => { if (r.decision === 0) r.decision = to; }); mrpState.result.pending = mrpPending(); render(); document.getElementById("mrp-awaiting")?.focus(); };
    document.getElementById("mrp-adopt")?.addEventListener("click", () => mrpDecide(1));
    document.getElementById("mrp-reject")?.addEventListener("click", () => mrpDecide(2));
    document.getElementById("mrp-commit")?.addEventListener("click", () => { mrpState.result.awaiting = false; mrpState.result.committed = true; render(); document.getElementById("mrp-status")?.focus(); });
    document.getElementById("mrp-force")?.addEventListener("click", () => { mrpDecide(2); mrpState.result.awaiting = false; mrpState.result.committed = true; render(); });
    document.getElementById("mrp-discard")?.addEventListener("click", () => { mrpState.result = null; render(); });
    document.querySelectorAll('[role="tablist"]').forEach((tl) => tl.addEventListener("keydown", (e) => {
      const tabs = [...tl.querySelectorAll('[role="tab"]')];
      const i = tabs.indexOf(document.activeElement);
      if (i < 0) return;
      const n = { ArrowRight: (i + 1) % tabs.length, ArrowLeft: (i - 1 + tabs.length) % tabs.length, Home: 0, End: tabs.length - 1 }[e.key];
      if (n === undefined) return;
      e.preventDefault();
      location.hash = tabs[n].getAttribute("href");
      setTimeout(() => document.getElementById(tabs[n].id)?.focus(), 60);
    }));
    document.querySelectorAll("[data-keep]").forEach((a) => a.addEventListener("click", () => { captureDept(); captureStaff(); }));
    document.getElementById("tbl-aff")?.addEventListener("change", (e) => { T.view.aff = e.target.value; rerender("#tbl-aff"); });
    document.querySelectorAll("[data-untag]").forEach((b) => b.addEventListener("click", () => {
      captureDept();
      const id = document.getElementById("edit-form").dataset.id;
      setDeptKinds(id, deptKindIds(id).filter((k) => k !== b.dataset.untag));
      rerender("#f-name");
    }));
    document.querySelectorAll("[data-kind-pick]").forEach((c) => c.addEventListener("change", () => {
      const id = parseRoute().id;
      const k = c.dataset.kindPick;
      const cur = deptKindIds(id);
      setDeptKinds(id, c.checked ? [...cur, k] : cur.filter((x) => x !== k));
      rerender(`[data-kind-pick="${k}"]`);
    }));
    document.querySelectorAll("[data-toggle]").forEach((b) => b.addEventListener("click", () => {
      const id = b.dataset.toggle;
      if (deptView.open.has(id)) deptView.open.delete(id);
      else {
        deptView.open.add(id);
        if (!deptView.loaded.has(id)) {
          deptView.loading.add(id);
          setTimeout(() => {
            deptView.loading.delete(id);
            deptView.loaded.add(id);
            if (/^departments/.test(currentRoute())) rerender(`[data-toggle="${id}"]`);
          }, 350);
        }
      }
      rerender(`[data-toggle="${id}"]`);
    }));
    document.querySelectorAll("[data-reparent]").forEach((b) => b.addEventListener("click", () => openDeptPicker(b, deptById(b.dataset.reparent))));
    document.querySelectorAll("[data-drag]").forEach((h) => h.addEventListener("pointerdown", (e) => {
      if (e.button > 0) return;
      e.preventDefault();
      const d = deptById(h.dataset.drag);
      const banned = new Set([d.id, ...deptDescendants(d.id)]);
      const ghost = document.createElement("div");
      ghost.className = "drag-ghost";
      ghost.textContent = d.name;
      document.body.appendChild(ghost);
      let target; // undefined = no valid target, null = top level, string = parent id
      const clear = () => document.querySelectorAll(".drop-ok, .drop-bad").forEach((x) => x.classList.remove("drop-ok", "drop-bad"));
      const move = (ev) => {
        ghost.style.transform = `translate(${ev.clientX + 12}px, ${ev.clientY + 12}px)`;
        clear();
        target = undefined;
        const el = document.elementFromPoint(ev.clientX, ev.clientY)?.closest("[data-drop]");
        if (!el) return;
        const t = el.dataset.drop === "root" ? null : el.dataset.drop;
        if (t === d.parent) return;
        if (t !== null && banned.has(t)) { el.classList.add("drop-bad"); return; }
        el.classList.add("drop-ok");
        target = t;
      };
      const stop = (apply) => {
        window.removeEventListener("pointermove", move);
        window.removeEventListener("pointerup", up);
        window.removeEventListener("pointercancel", cancel);
        window.removeEventListener("keydown", key);
        clear();
        ghost.remove();
        if (apply && target !== undefined) moveDept(d, target);
      };
      const up = () => stop(true);
      const cancel = () => stop(false);
      const key = (ev) => { if (ev.key === "Escape") stop(false); };
      window.addEventListener("pointermove", move);
      window.addEventListener("pointerup", up);
      window.addEventListener("pointercancel", cancel);
      window.addEventListener("keydown", key);
      move(e);
    }));
    /* ---- makeTable() tables: several may live on one page, each identified by data-tkey ---- */
    const bindHost = (h) => {
      const T2 = TABLES[h.dataset.tkey];
      h.querySelectorAll("[data-sort]").forEach((b) => b.addEventListener("click", () => {
        const k = b.dataset.sort;
        T2.view.sort = T2.view.sort.key === k ? { key: k, dir: -T2.view.sort.dir } : { key: k, dir: 1 };
        rerender(`.tbl-host[data-tkey="${T2.key}"] [data-sort="${k}"]`);
      }));
      h.querySelectorAll("tr[data-href]").forEach((tr) => tr.addEventListener("click", (e) => {
        if (!e.target.closest("a")) location.hash = tr.dataset.href;
      }));
      h.querySelectorAll("[data-more]").forEach((b) => b.addEventListener("click", () => {
        T2.view.limit = (T2.view.limit ?? SETTINGS.pageSize) + SETTINGS.pageSize;
        rerender(`[data-more="${T2.key}"]`);
      }));
      h.querySelectorAll("[data-pickrow]").forEach((b) => b.addEventListener("click", () => {
        T2.pick.set(b.dataset.pickrow);
        rerender(`[data-pickrow="${b.dataset.pickrow}"]`);
      }));
      h.querySelectorAll("[data-nesttoggle]").forEach((b) => b.addEventListener("click", () => {
        const id = b.dataset.nesttoggle;
        if (T2.nest.closed.has(id)) T2.nest.closed.delete(id); else T2.nest.closed.add(id);
        rerender(`.tbl-host[data-tkey="${T2.key}"] [data-nesttoggle="${id}"]`);
      }));
    };
    document.querySelectorAll(".tbl-host").forEach(bindHost);
    bindCoAp();
    document.querySelectorAll("[data-tq]").forEach((inp) => inp.addEventListener("input", () => {
      TABLES[inp.dataset.tq].view.q = inp.value.trim();
      TABLES[inp.dataset.tq].view.limit = null;
      const h = document.querySelector(`.tbl-host[data-tkey="${inp.dataset.tq}"]`);
      h.innerHTML = TABLES[inp.dataset.tq].html(h.dataset.edit === "1");
      bindHost(h);
    }));
    document.querySelectorAll("[data-tsort]").forEach((sel) => sel.addEventListener("change", () => {
      const [k, d] = sel.value.split(":");
      TABLES[sel.dataset.tsort].view.sort = k ? { key: k, dir: +d } : { key: null, dir: 1 };
      rerender(`[data-tsort="${sel.dataset.tsort}"]`);
    }));
    document.querySelectorAll("[data-tcol]").forEach((c) => c.addEventListener("change", () => {
      const v2 = TABLES[c.dataset.tkey].view;
      if (c.checked) v2.hidden.delete(c.dataset.tcol); else v2.hidden.add(c.dataset.tcol);
      if (v2.sort.key && v2.hidden.has(v2.sort.key)) v2.sort = { key: null, dir: 1 };
      v2.colsOpen = true;
      rerender(`[data-tcol="${c.dataset.tcol}"]`);
    }));
    document.querySelectorAll("[data-tmenu]").forEach((d) => d.addEventListener("toggle", () => { TABLES[d.dataset.tmenu].view.colsOpen = d.open; }));
    if (document.getElementById("tbl-table")) {
      bindSiteTable();
      const sq = document.getElementById("tbl-q");
      sq.addEventListener("input", () => {
        T.view.q = sq.value.trim();
        document.getElementById("tbl-table").innerHTML = T.html(editMode());
        bindSiteTable();
      });
      document.getElementById("tbl-sort").addEventListener("change", (e) => {
        const [k, d] = e.target.value.split(":");
        T.view.sort = k ? { key: k, dir: +d } : { key: null, dir: 1 };
        rerender("#tbl-sort");
      });
      document.querySelectorAll("[data-col]").forEach((c) => c.addEventListener("change", () => {
        if (c.checked) T.view.hidden.delete(c.dataset.col); else T.view.hidden.add(c.dataset.col);
        if (T.view.sort.key && T.view.hidden.has(T.view.sort.key)) T.view.sort = { key: null, dir: 1 };
        T.view.colsOpen = true;
        rerender(`[data-col="${c.dataset.col}"]`);
      }));
      document.querySelector(".col-menu")?.addEventListener("toggle", (e) => { T.view.colsOpen = e.target.open; });
    }
    document.querySelectorAll("[data-filter]").forEach((b) => b.addEventListener("click", () => {
      const { filter, value } = b.dataset;
      if (filter === "tbl") T.view.type = value;
      if (filter.startsWith("t:")) TABLES[filter.slice(2)].view.type = value;
      if (filter === "cust") custStatus = value;
      if (filter === "order") orderTab = value;
      if (filter === "prod") prodSite = value;
      const keep = scroller().scrollTop;
      render();
      scroller().scrollTop = keep;
      document.querySelector(`[data-filter="${filter}"][data-value="${value}"]`)?.focus();
    }));
    const cq = document.getElementById("cust-q");
    if (cq) cq.addEventListener("input", () => {
      custQuery = cq.value.trim();
      document.getElementById("cust-list").innerHTML = custListHtml();
      document.getElementById("cust-count").textContent = `${custFiltered().length}社`;
      document.querySelectorAll("#cust-list [data-cust]").forEach((b) => b.addEventListener("click", () => openCustomer(b.dataset.cust, b)));
    });
    const q = (id) => document.getElementById(id);
    q("cancel-logout")?.addEventListener("click", () => { location.hash = "#/home"; });
    q("do-logout")?.addEventListener("click", () => {
      logoutState = "loading";
      render();
      clearTimeout(timer);
      timer = setTimeout(() => { logoutState = "done"; render(); document.getElementById("resignin")?.focus(); startCountdown(); }, 1300);
    });
    q("resignin")?.addEventListener("click", () => { clearInterval(cdTimer); logoutState = "confirm"; location.hash = "#/login"; });
    bindG();
  }

  /* ---------- customer / order detail sheets ---------- */
  function openCustomer(id, trigger) {
    const c = D.customerList.find((x) => x.id === id);
    const os = D.orders.filter((o) => o.cust === id);
    const open = os.filter((o) => o.status !== "出荷済").length;
    showSheet(trigger, {
      chip: custChip(c.status), title: c.name,
      rows: [["業種", c.industry], ["担当者", c.contact], ["地域", c.area], ["取引開始", c.since],
        ["受注案件", os.length ? `${os.length}件（未出荷 ${open}件）` : "まだありません"]],
      extra: os.length ? `<ul class="sheet-orders" aria-label="受注案件">${os.map((o) => `<li><span class="od-nowrap">${o.no}</span><span class="od-fill">${o.item} ${fmt(o.qty)}${o.unit}</span>${orderChip(o.status)}</li>`).join("")}</ul>` : "",
    });
  }
  const NEXT = { "受注": "出荷準備", "出荷準備": "出荷済" };
  function openOrder(no, trigger) {
    const o = D.orders.find((x) => x.no === no);
    const next = NEXT[o.status];
    showSheet(trigger, {
      chip: orderChip(o.status), title: o.no,
      rows: [["顧客", custName(o.cust)], ["品目", o.item], ["数量", `${fmt(o.qty)}${o.unit}`], ["納期", `${o.due}`], ["出荷元", o.site]],
      extra: next ? `<button class="btn btn-primary" type="button" id="advance">${next}にする</button>` : `<p class="note">出荷が完了した案件です。</p>`,
      onMount(root) {
        root.querySelector("#advance")?.addEventListener("click", () => {
          o.status = next;
          flash = `${o.no} を「${next}」に更新しました。`;
          closeSheet(false);
          orderTab = next;
          render();
        });
      },
    });
  }

  /* ---------- detail sheet ---------- */
  let lastFocus = null;
  const sheetRoot = () => document.getElementById("sheet-root");
  function showSheet(trigger, { chip: chipHtml, title, rows, extra = "", onMount }) {
    lastFocus = trigger;
    sheetRoot().innerHTML = `<div class="scrim" data-close></div>
      <div class="sheet" role="dialog" aria-modal="true" aria-labelledby="sheet-title">
        <div class="sheet-head"><div class="od-stack" style="--od-gap:4px"><span style="align-self:flex-start">${chipHtml}</span><h2 id="sheet-title">${esc(title)}</h2></div>
          <button class="icon-btn" type="button" data-close aria-label="閉じる">${icon("close")}</button></div>
        <dl>${rows.map(([k, v]) => `<div class="kv"><dt>${k}</dt><dd>${v}</dd></div>`).join("")}</dl>
        ${extra}
      </div>`;
    sheetRoot().classList.add("open");
    sheetRoot().querySelectorAll("[data-close]").forEach((e) => e.addEventListener("click", () => closeSheet()));
    onMount?.(sheetRoot());
    requestAnimationFrame(() => sheetRoot().querySelector(".icon-btn").focus());
  }
  function openSheet(id, trigger) {
    const s = D.sites.find((x) => x.id === id);
    const total = D.headcount.employee + D.headcount.part + D.headcount.dispatch;
    showSheet(trigger, {
      chip: chip(s.type, s.icon), title: s.name,
      rows: [["所在地", s.address], ["在籍人数", `<span class="od-nowrap">${fmt(s.people)}名（全社の ${Math.round((s.people / total) * 100)}%）</span>`], ["事業所種別", s.type]],
    });
  }
  function closeSheet(restore = true) {
    sheetRoot().classList.remove("open");
    if (restore) lastFocus?.focus();
  }
  document.addEventListener("click", (e) => {
    const gb = e.target.closest("[data-navgroup]");
    if (gb) {
      const g = gb.dataset.navgroup;
      if (device === "tablet") navPop = navPop === g ? null : g;
      else if (navOpen.has(g)) navOpen.delete(g); else navOpen.add(g);
      refreshNav(g);
      return;
    }
    if (navPop && !e.target.closest(".nav-group")) { navPop = null; refreshNav(); }
    const um = document.getElementById("user-menu-btn");
    if (um) {
      const open = e.target.closest("#user-menu-btn") ? um.getAttribute("aria-expanded") !== "true" : false;
      if (open || um.getAttribute("aria-expanded") === "true") setUserMenu(open && true, false);
    }
    if (e.target.closest("#menu-btn")) openDrawer();
    else if (e.target.closest("[data-drawer-close]")) closeDrawer();
    else if (e.target.closest("#drawer .nav-item")) closeDrawer(false);
  });
  function setUserMenu(open) {
    const b = document.getElementById("user-menu-btn"), l = document.getElementById("user-menu-list");
    if (!b || !l) return;
    b.setAttribute("aria-expanded", String(open));
    l.hidden = !open;
    if (open) l.querySelector("a")?.focus();
  }
  document.addEventListener("keydown", (e) => {
    if (e.key === "Escape" && document.getElementById("user-menu-btn")?.getAttribute("aria-expanded") === "true") { setUserMenu(false); document.getElementById("user-menu-btn").focus(); return; }
    if (e.key === "Escape" && navPop) { const g = navPop; navPop = null; refreshNav(g); return; }
    const dr = drawerRoot();
    if (dr && dr.classList.contains("open")) {
      if (e.key === "Escape") closeDrawer();
      if (e.key === "Tab") {
        const f = [...dr.querySelectorAll("button, a[href]")];
        const first = f[0], last = f[f.length - 1];
        if (e.shiftKey && document.activeElement === first) { e.preventDefault(); last.focus(); }
        else if (!e.shiftKey && document.activeElement === last) { e.preventDefault(); first.focus(); }
      }
      return;
    }
    const r = sheetRoot();
    if (!r || !r.classList.contains("open")) return;
    if (e.key === "Escape") closeSheet();
    if (e.key === "Tab") {
      const f = [...r.querySelectorAll(".sheet button:not([disabled])")];
      const first = f[0], last = f[f.length - 1];
      if (e.shiftKey && document.activeElement === first) { e.preventDefault(); last.focus(); }
      else if (!e.shiftKey && document.activeElement === last) { e.preventDefault(); first.focus(); }
      else if (!r.contains(document.activeElement)) { e.preventDefault(); first.focus(); }
    }
  });


  /* ---------- preview switcher: links between the PC / tablet / mobile pages ---------- */
  const PAGES = [["pc", "index.html", "PC"], ["tablet", "tablet.html", "タブレット"], ["mobile", "mobile.html", "モバイル"]];
  const switcher = document.createElement("nav");
  switcher.className = "preview-switch";
  switcher.setAttribute("aria-label", "表示サイズの切り替え");
  document.body.appendChild(switcher);
  function renderSwitcher() {
    switcher.innerHTML = PAGES.map(([id, file, label]) =>
      `<a href="${file}${location.hash}" ${id === device ? 'aria-current="page"' : ""}>${label}</a>`).join("");
  }
  window.addEventListener("hashchange", renderSwitcher);
  renderSwitcher();

  /* ---------- boot ---------- */
  buildShell();
  if (!location.hash) location.hash = "#/boot";
  let prevRoute = null;
  let savedScroll = 0;
  window.addEventListener("hashchange", (e) => {
    if (mrpState.running && location.hash !== "#/mrp") { location.hash = "#/mrp"; return; }
    const route = currentRoute();
    if (isTop(prevRoute) && !isTop(route)) savedScroll = scroller().scrollTop;
    clearInterval(cdTimer);
    if (route !== "logout") logoutState = "confirm";
    gPrev = e && e.oldURL ? e.oldURL.slice(e.oldURL.indexOf("#")) : "";
    render();
    const back = isTop(route) && !isTop(prevRoute) && prevRoute !== "logout";
    scroller().scrollTop = back ? savedScroll : 0;
    document.getElementById("page-title")?.focus({ preventScroll: true });
    prevRoute = route;
  });
  prevRoute = currentRoute();
  render();
})();
