(function () {
  const D = window.OD_DATA;
  const device = document.body.dataset.device; // pc | tablet | mobile
  const mobile = device === "mobile";
  const fmt = (n) => n.toLocaleString("ja-JP");

  const PATHS = {
    building: "M4 21V5l8-3v19M12 9h8v12M4 21h16M8 8h1M8 12h1M8 16h1M15 13h1M15 17h1",
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
  D.employees.forEach((e) => { e.id ||= e.no; e.dept ??= EMP_DEPT[e.no] ?? ""; e.updatedBy ||= "鈴木 一郎"; e.updatedAt ||= "2026年9月30日"; });
  D.offerings.forEach((o, i) => { o.id ||= `o${i + 1}`; o.updatedBy ||= "鈴木 一郎"; o.updatedAt ||= "2026年10月1日"; });
  const ROUTES = {
    home: "ホーム",
    customers: "顧客",
    orders: "受注・出荷",
    production: "生産計画・進捗",
    organization: "組織",
    more: "その他",
    company: "会社情報",
    "company/edit": "会社情報の編集",
    "company/provision": "提供の編集",
    "company/position": "役職の編集",
    "company/assign": "割当の編集",
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
  };
  /* #/company/provision/<id|new>, #/company/position/<id|new>, #/company/position/<pid>/assign/<id|new> */
  const parseRoute = () => {
    const r = location.hash.replace(/^#\//, "");
    let m;
    if ((m = r.match(/^company\/provision\/([\w-]+)$/))) return { name: "company/provision", id: m[1] };
    if ((m = r.match(/^company\/position\/([\w-]+)\/assign\/([\w-]+)$/))) return { name: "company/assign", pid: m[1], id: m[2] };
    if ((m = r.match(/^company\/position\/([\w-]+)$/))) return { name: "company/position", id: m[1] };
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
    "company/edit": "会社情報",
    "company/provision": "会社情報 › 編集",
    "company/position": "会社情報 › 編集",
    "company/assign": "会社情報 › 編集 › 役職",
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
  function homeScreen() {
    const cnt = (s) => D.orders.filter((o) => o.status === s).length;
    const plan = D.lines.reduce((a, l) => a + pctOf(l.actual, l.plan), 0);
    const avg = Math.round(plan / D.lines.length);
    const late = D.lines.filter((l) => l.state === "遅延");
    const stat = (href, ic, cap, num, unit) => `<a class="card statc" href="${href}"><span class="od-stat"><span class="statc-cap">${icon(ic)}${cap}</span><span class="big-num">${num}<small>${unit}</small></span></span></a>`;
    const ship = D.orders.filter((o) => o.status === "出荷準備").sort((a, b) => a.due.localeCompare(b.due, "ja", { numeric: true }));
    return `
      ${late.length ? `<div class="alert" role="alert">${icon("alert")}<div class="od-fill"><strong>遅延ラインが${late.length}本あります</strong><p>${late.map((l) => `${l.site} ${l.name}`).join("、")}。<a href="#/production">生産計画・進捗で確認する</a></p></div></div>` : ""}
      <section aria-label="本日の概況"><div class="grid-stats">
        ${stat("#/orders", "orders", "新規受注", cnt("受注"), "件")}
        ${stat("#/orders", "truck", "出荷準備中", cnt("出荷準備"), "件")}
        ${stat("#/production", "production", "生産進捗（平均）", avg, "%")}
        ${stat("#/production", "alert", "遅延ライン", late.length, "本")}
      </div></section>
      <div class="two-col">
        <section aria-labelledby="h-ship">
          <div class="sec-head"><h2 class="sec-title" id="h-ship">出荷予定</h2><a class="sec-link" href="#/orders">受注・出荷へ</a></div>
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
    return `<div class="card list-card">${l("#/resources", "box", "資源", "力量・資格・場所・設備・保全")}${l("#/company", "building", "会社情報", "概要・サマリ・提供サービス")}${l("#/logout", "logout", "ログアウト", `${esc(D.user.name)} さんとしてサインイン中`)}</div>`;
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
          <div class="kv"><dt>CEO</dt><dd>${esc(c.ceo)}（${esc(c.ceoTitle)}）</dd></div>
          <div class="kv" style="grid-column: span ${mobile ? 1 : 2}"><dt>メインサイト（本社）所在地</dt><dd>${esc(c.address)}</dd></div>
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

      <section aria-labelledby="offer-title">
        <div class="sec-head"><div class="od-row sec-left"><h2 class="sec-title" id="offer-title">提供サービス・製品</h2>${editLink("#/company/edit", "提供サービス・製品")}</div><span class="sec-note od-nowrap">${D.offerings.length}件</span></div>
        <div class="od-grid tiles">${offers}</div>
      </section>`;
  }

  /* ---------- edit / list screens ---------- */
  const FIELDS = [
    ["name", "会社名", "input", 60],
    ["ceo", "代表者名", "input", 30],
    ["ceoTitle", "代表者の役職", "input", 30],
    ["address", "メインサイト（本社）所在地", "textarea", 120],
  ];
  /* ---------- edit structure helpers ---------- */
  const fieldRow = ({ id, label, kind = "input", max = 60, req = true, options = [], value = "", taken = null, blank = "選択してください", after = null, min = null }) => {
    const common = `id="f-${id}" name="${id}" ${req ? "required" : ""} aria-describedby="e-${id}" ${taken ? `data-taken="${esc(JSON.stringify(taken))}"` : ""} ${after ? `data-after="${after}"` : ""} ${min ? `data-min="${min}"` : ""}`;
    let ctl;
    if (kind === "textarea") ctl = `<textarea ${common} rows="3" maxlength="${max}">${esc(value)}</textarea>`;
    else if (kind === "select") ctl = `<select ${common}><option value="">${blank}</option>${options.map(([v, l]) => `<option value="${esc(v)}" ${v === value ? "selected" : ""}>${esc(l)}</option>`).join("")}</select>`;
    else ctl = `<input ${common} type="${{ date: "date", month: "month", number: "number" }[kind] ?? "text"}" ${kind === "number" ? 'step="any" inputmode="decimal"' : ""} maxlength="${max}" value="${esc(value)}">`;
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
    const fields = FIELDS.map(([id, label, kind, max]) => fieldRow({ id, label, kind, max, value: c[id] })).join("");
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
    const o = isNew ? { kind: "", name: "", desc: "" } : D.offerings.find((x) => x.id === id);
    if (!o) return notFound("提供項目が見つかりません", "#/company/edit");
    return `${backLink("#/company/edit", "編集に戻る")}
      <form class="card form" id="edit-form" data-kind="provision" data-id="${id}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${fieldRow({ id: "kind", label: "種別", kind: "select", options: [["製品", "製品"], ["サービス", "サービス"]], value: o.kind })}
        ${fieldRow({ id: "name", label: "名称", max: 40, value: o.name })}
        ${fieldRow({ id: "desc", label: "説明", kind: "textarea", max: 120, value: o.desc })}
        ${isNew ? "" : metaHtml(o)}
        <div class="form-actions">${isNew ? "" : '<button class="btn btn-danger" type="button" id="del-btn">削除</button>'}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>`;
  }

  function positionEditScreen(id) {
    const isNew = id === "new";
    const p = isNew ? { name: "", desc: "" } : D.positions.find((x) => x.id === id);
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
        ${fieldRow({ id: "name", label: "役職名", max: 30, value: p.name, taken })}
        ${fieldRow({ id: "desc", label: "説明", kind: "textarea", max: 120, req: false, value: p.desc })}
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
      ${handle}${toggle}<span class="tree-main">${name}</span><span class="tree-tags">${deptTags(d)}</span>${n ? `<span class="chip mute od-nowrap">配下 ${n}</span>` : ""}${editMode ? `<button class="btn tree-act" type="button" data-reparent="${d.id}">親を変更</button>` : ""}</li>`;
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
    const d = isNew ? { id: "new", name: "", parent: null, kinds: [], updatedBy: "", updatedAt: "" } : deptById(id);
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
        ${fieldRow({ id: "name", label: "部署名", max: 30, value: v.name, taken })}
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
    { key: "no", label: "社員番号" },
    { key: "name", label: "氏名", fixed: true },
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
    let list = D.employees.filter((e) => (v.type === "すべて" || e.type === v.type) && (v.aff === "すべて" || e.site === v.aff) && (!v.q || (e.name + e.no).includes(v.q)));
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
          <div class="search-box">${icon("search")}<input id="tbl-q" type="search" value="${esc(v.q)}" placeholder="氏名・社員番号" autocomplete="off"></div></div>
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
    const s = isNew ? { id: "new", no: "", name: "", site: "", type: "", dept: "" } : D.employees.find((x) => x.id === id);
    if (!s) return notFound("作業者が見つかりません", "#/staff/edit");
    const v = staffDraft?.id === id ? { ...s, ...staffDraft } : s;
    const deptOpts = deptWalk().map(({ d, depth }) => [d.id, `${"　".repeat(depth)}${d.name}`]);
    const held = assignsHeldBy(id);
    const caps = staffItems("caps", id).map((c) => rowItem(`href="#/staff/${id}/capability/${c.id}" data-keep`, c.name, c.level, chip(c.level, LEVEL_ICON[c.level], c.level === "見習い" ? "mute" : ""), "a")).join("");
    const lics = staffItems("lics", id).map((l) => rowItem(`href="#/staff/${id}/license/${l.id}" data-keep`, l.name, `登録番号 ${l.number} ・ 取得 ${fmtDate(l.acquired)}`, licStatus(l.expires), "a")).join("");
    return `${backLink("#/staff/edit", "一覧に戻る")}${flashHtml()}
      <form class="card form" id="edit-form" data-kind="staff" data-id="${id}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${isNew
          ? fieldRow({ id: "no", label: "社員番号", max: 10, value: v.no, taken: D.employees.map((e) => e.no) })
          : `<dl><div class="kv"><dt>社員番号（変更できません）</dt><dd class="od-nowrap">${esc(s.no)}</dd></div></dl>`}
        ${fieldRow({ id: "name", label: "氏名", max: 30, value: v.name })}
        ${fieldRow({ id: "site", label: "所属事業所", kind: "select", options: D.sites.map((x) => [x.name, x.name]), value: v.site })}
        ${fieldRow({ id: "type", label: "区分", kind: "select", options: STAFF_TYPES.map((t) => [t, t]), value: v.type })}
        ${fieldRow({ id: "dept", label: "部署", kind: "select", req: false, blank: "未所属", options: deptOpts, value: v.dept ?? "" })}
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
        <dl><div class="kv"><dt>作業者</dt><dd>${esc(owner.name)}</dd></div></dl>
        ${fieldRow({ id: "item", label: "力量", kind: "select", options: D.capItems.map((x) => [x.id, x.name]), value: c.item, taken: staffItems("caps", sid).filter((x) => x.id !== cid).map((x) => x.item) })}
        ${fieldRow({ id: "level", label: "習熟度", kind: "select", options: LEVELS.map((l) => [l, l]), value: c.level })}
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
        <dl><div class="kv"><dt>作業者</dt><dd>${esc(owner.name)}</dd></div></dl>
        ${fieldRow({ id: "item", label: "資格", kind: "select", options: D.licItems.map((x) => [x.id, x.name]), value: l.item, taken: staffItems("lics", sid).filter((x) => x.id !== lid).map((x) => x.item) })}
        ${fieldRow({ id: "number", label: "登録番号", max: 20, value: l.number })}
        ${fieldRow({ id: "acquired", label: "取得日", kind: "date", value: l.acquired })}
        ${fieldRow({ id: "expires", label: "有効期限", kind: "date", req: false, value: l.expires, after: "acquired" })}
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
  function makeTable({ key, cols, hidden = [], list, search, placeholder = "", filter = null, sort = null, href = null, pick = null, always = false, noun = "件" }) {
    const view = { sort: sort ? { ...sort } : { key: null, dir: 1 }, q: "", type: "すべて", hidden: new Set(hidden), colsOpen: false };
    const shown = () => cols.filter((c) => c.fixed || !view.hidden.has(c.key));
    const rows = () => {
      let l = list().filter((r) => (!filter || view.type === "すべて" || filter.get(r) === view.type) && (!view.q || search(r).includes(view.q)));
      const c = cols.find((x) => x.key === view.sort.key);
      if (c) l = [...l].sort((a, b) => { const x = c.val(a), y = c.val(b); return view.sort.dir * (typeof x === "number" ? x - y : String(x).localeCompare(String(y), "ja", { numeric: true })); });
      return l;
    };
    const cellHtml = (c, r) => (c.html ? c.html(r) : esc(c.val(r)));
    const html = (editMode) => {
      const cs = shown();
      const l = rows();
      const head = cs.map((c) => {
        const on = view.sort.key === c.key;
        const aria = on ? (view.sort.dir === 1 ? "ascending" : "descending") : "none";
        const ic = on ? (view.sort.dir === 1 ? "sortAsc" : "sortDesc") : "sort";
        return `<th scope="col" aria-sort="${aria}" class="${c.num ? "num" : ""}"><button class="th-sort" type="button" data-sort="${c.key}">${c.label}${icon(ic)}</button></th>`;
      }).join("");
      const link = editMode && href;
      const sel = pick && !editMode ? pick.get() : null;
      const body = l.map((r) => `<tr class="${link ? "row-link" : ""} ${sel === r.id ? "is-selected" : ""}" ${link ? `data-href="${href(r)}"` : ""}>${cs.map((c) => {
        const lab = `data-label="${c.label}"`;
        if (c.fixed && pick && !editMode) return `<th scope="row" ${lab} class="od-keep"><button class="cell-link pick-btn" type="button" data-pickrow="${r.id}" aria-pressed="${sel === r.id}">${cellHtml(c, r)}</button></th>`;
        if (c.fixed) return `<th scope="row" ${lab} class="od-keep">${link ? `<a class="cell-link" href="${href(r)}" aria-label="${esc(String(c.val(r)))}を編集">${cellHtml(c, r)}</a>` : cellHtml(c, r)}</th>`;
        return `<td ${lab} class="${c.num ? "num od-nowrap" : ""}">${cellHtml(c, r)}</td>`;
      }).join("")}</tr>`).join("");
      const total = list().length;
      const table = l.length
        ? `<div class="tbl-wrap"><table class="tbl"><caption class="sr-only">一覧テーブル</caption><thead><tr>${head}</tr></thead><tbody>${body}</tbody></table></div>`
        : emptyState(total ? "該当するデータがありません" : "まだ登録されていません", total ? "検索語や絞り込みを変えてください。" : "「追加」ボタンから登録してください。");
      return `<p class="tbl-note">全${total}${noun}のうち${l.length}${noun}を表示${link ? "。行を選ぶと編集できます。" : pick && !editMode ? "。名称を選ぶと、下に詳細を表示します。" : "。"}</p>${table}`;
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
    const T = { key, view, html, toolbar, always, pick };
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
      { key: "name", label: "パターン名", fixed: true, val: (r) => r.name },
      { key: "desc", label: "説明", val: (r) => r.desc },
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
    list: () => scopeApprovers(routeIds().id), search: (r) => staffName(r.staff) + r.staff, placeholder: "氏名・社員番号", hidden: ["updatedBy", "updatedAt"],
    filter: { label: "種別", values: AP_KINDS, get: (r) => r.kind },
    href: (r) => { const s = D.apScopes.find((x) => x.id === r.scope); return `#/approval/${s.ap}/scope/${s.id}/approver/${r.id}`; },
    cols: [
      { key: "staff", label: "氏名", fixed: true, val: (r) => staffName(r.staff) },
      { key: "no", label: "社員番号", val: (r) => r.staff, html: (r) => `<span class="od-nowrap">${esc(r.staff)}</span>` },
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
        ${fieldRow({ id: "name", label: "パターン名", max: 30, value: p.name, taken: D.apPatterns.filter((x) => x.id !== id).map((x) => x.name) })}
        ${fieldRow({ id: "desc", label: "説明", kind: "textarea", max: 120, req: false, value: p.desc })}
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
    { key: "staff", label: "氏名", fixed: true, val: (r) => staffName(r.staff) },
    { key: "no", label: "社員番号", val: (r) => r.staff, html: (r) => `<span class="od-nowrap">${esc(r.staff)}</span>` },
  ];
  const capItemT = makeTable({
    key: "capItem", list: () => D.capItems, search: (r) => r.name + r.desc, placeholder: "力量名・説明", hidden: ["updatedBy", "updatedAt"],
    href: (r) => `#/capabilities/${r.id}`, pick: { get: () => resSel.capabilities, set: (id) => { resSel.capabilities = id; } },
    cols: [
      { key: "name", label: "力量名", fixed: true, val: (r) => r.name },
      { key: "desc", label: "説明", val: (r) => r.desc || "―" },
      { key: "holders", label: "保持者", num: true, val: (r) => D.capabilities.filter((x) => x.item === r.id).length, html: (r) => `${D.capabilities.filter((x) => x.item === r.id).length}名` },
      byCol, dateCol,
    ],
  });
  const capHolderT = makeTable({
    key: "capHolder", noun: "名", list: () => D.capabilities.filter((x) => x.item === resItemId("capabilities")),
    search: (r) => staffName(r.staff) + r.staff, placeholder: "氏名・社員番号", hidden: ["updatedBy", "updatedAt"],
    filter: { label: "習熟度", values: LEVELS, get: (r) => r.level }, href: (r) => `#/capabilities/${r.item}/holder/${r.id}`,
    cols: [
      ...holderBase(),
      { key: "site", label: "所属事業所", val: (r) => empOf(r.staff)?.site ?? "―" },
      { key: "level", label: "習熟度", val: (r) => LEVELS.indexOf(r.level), html: (r) => chip(r.level, LEVEL_ICON[r.level], r.level === "見習い" ? "mute" : "") },
      byCol, dateCol,
    ],
  });
  const licItemT = makeTable({
    key: "licItem", list: () => D.licItems, search: (r) => r.name + r.issuer, placeholder: "資格名・発行元", hidden: ["updatedBy", "updatedAt"],
    href: (r) => `#/licenses/${r.id}`, pick: { get: () => resSel.licenses, set: (id) => { resSel.licenses = id; } },
    cols: [
      { key: "name", label: "資格名", fixed: true, val: (r) => r.name },
      { key: "issuer", label: "発行元", val: (r) => r.issuer || "―" },
      { key: "holders", label: "保持者", num: true, val: (r) => D.licenses.filter((x) => x.item === r.id).length, html: (r) => `${D.licenses.filter((x) => x.item === r.id).length}名` },
      byCol, dateCol,
    ],
  });
  const licHolderT = makeTable({
    key: "licHolder", noun: "名", list: () => D.licenses.filter((x) => x.item === resItemId("licenses")),
    search: (r) => staffName(r.staff) + r.staff + r.number, placeholder: "氏名・社員番号・登録番号", hidden: ["updatedBy", "updatedAt"],
    href: (r) => `#/licenses/${r.item}/holder/${r.id}`,
    cols: [
      ...holderBase(),
      { key: "number", label: "登録番号", val: (r) => r.number, html: (r) => `<span class="od-nowrap">${esc(r.number)}</span>` },
      { key: "acquired", label: "取得日", val: (r) => r.acquired, html: (r) => `<span class="od-nowrap">${fmtDate(r.acquired)}</span>` },
      { key: "expires", label: "有効期限", val: (r) => r.expires || "9999-12-31", html: (r) => licStatus(r.expires) },
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
    const it = isNew ? { name: "", desc: "", issuer: "" } : D[R.items].find((x) => x.id === id);
    if (!it) return notFound(`${R.label}が見つかりません`, `#/${kind}/edit`);
    const second = kind === "capabilities"
      ? fieldRow({ id: "desc", label: "説明", kind: "textarea", max: 120, req: false, value: it.desc })
      : fieldRow({ id: "issuer", label: "発行元", max: 40, req: false, value: it.issuer });
    return `${backLink(`#/${kind}/edit`, "一覧に戻る")}${flashHtml()}
      <form class="card form" id="edit-form" data-kind="resItem" data-res="${kind}" data-id="${id}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${fieldRow({ id: "name", label: `${R.label}名`, max: 40, value: it.name, taken: D[R.items].filter((x) => x.id !== id).map((x) => x.name) })}
        ${second}
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
      ? fieldRow({ id: "level", label: "習熟度", kind: "select", options: LEVELS.map((l) => [l, l]), value: rec.level })
      : `${fieldRow({ id: "number", label: "登録番号", max: 20, value: rec.number })}${fieldRow({ id: "acquired", label: "取得日", kind: "date", value: rec.acquired })}${fieldRow({ id: "expires", label: "有効期限", kind: "date", req: false, value: rec.expires, after: "acquired" })}`;
    return `${backLink(back, `${R.label}に戻る`)}
      <form class="card form" id="edit-form" data-kind="resHolder" data-res="${kind}" data-id="${hid}" data-pid="${itemId}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        <dl><div class="kv"><dt>${R.label}</dt><dd>${esc(it.name)}</dd></div></dl>
        ${fieldRow({ id: "staff", label: "作業者", kind: "select", options: D.employees.map((e) => [e.no, `${e.name}（${e.no}）`]), value: rec.staff, taken })}
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
        { id: "name", label: "区分名", max: 20, taken: D.inspKinds.filter((x) => x.id !== r.id).map((x) => x.name) },
        { id: "cycle", label: "周期の目安", kind: "select", options: CYCLES.map((c) => [c, c]) },
        { id: "desc", label: "説明", kind: "textarea", max: 120, req: false },
      ],
      cols: [
        { key: "name", label: "区分名", fixed: true, val: (r) => r.name },
        { key: "cycle", label: "周期の目安", val: (r) => CYCLES.indexOf(r.cycle), html: (r) => esc(r.cycle) },
        { key: "desc", label: "説明", val: (r) => r.desc || "―" },
        numCol("items", "項目数", "inspItems", "kind", "件"),
      ],
    },
    inspItem: {
      label: "点検整備項目", coll: "inspItems", prefix: "ii", tab: "items", children: "inspFormula", parent: null,
      name: (r) => r.name,
      usedBy: (r) => sameMonthCount("inspLines", "item", r.id) + sameMonthCount("inspSchDets", "item", r.id),
      usedNote: "この項目は運用明細か点検予定で使われているため削除できません。",
      fields: (r) => [
        { id: "name", label: "項目名", max: 30, taken: D.inspItems.filter((x) => x.id !== r.id).map((x) => x.name) },
        { id: "kind", label: "点検整備区分", kind: "select", options: D.inspKinds.map((k) => [k.id, k.name]) },
        { id: "part", label: "対象部位", max: 30 },
        { id: "criteria", label: "判定基準", kind: "textarea", max: 120, req: false },
      ],
      cols: [
        { key: "name", label: "項目名", fixed: true, val: (r) => r.name },
        { key: "kind", label: "点検整備区分", val: (r) => kindNm(r.kind) },
        { key: "part", label: "対象部位", val: (r) => r.part },
        numCol("formulas", "算式", "inspFormulas", "item", "件"),
      ],
    },
    inspFormula: {
      label: "点検整備算式", coll: "inspFormulas", prefix: "ifm", tab: "items", children: null, parent: { ent: "inspItem", key: "item" },
      name: (r) => r.name,
      fields: (r) => [
        { id: "name", label: "算式名", max: 30 },
        { id: "expr", label: "算式", max: 60 },
        { id: "unit", label: "単位", max: 10, req: false },
        { id: "base", label: "基準値", kind: "number", req: false },
      ],
      cols: [
        { key: "name", label: "算式名", fixed: true, val: (r) => r.name },
        { key: "expr", label: "算式", val: (r) => r.expr },
        { key: "unit", label: "単位", val: (r) => r.unit || "―" },
        { key: "base", label: "基準値", num: true, val: (r) => Number(r.base) || 0, html: (r) => (r.base === "" ? "―" : esc(r.base)) },
      ],
    },
    inspOp: {
      label: "設備点検整備運用", coll: "inspOps", prefix: "io", tab: "ops", children: "inspLine", parent: null,
      name: (r) => `${eqNm(r.equip)} / ${kindNm(r.kind)}`,
      usedBy: (r) => sameMonthCount("inspSchs", "op", r.id),
      usedNote: "この運用は点検予定で使われているため削除できません。",
      fields: (r) => [
        { id: "equip", label: "設備", kind: "select", options: D.equipments.map((e) => [e.id, `${e.name}（${locPath(e.loc)}）`]) },
        { id: "kind", label: "点検整備区分", kind: "select", options: D.inspKinds.map((k) => [k.id, k.name]) },
        { id: "cycle", label: "周期", kind: "select", options: CYCLES.map((c) => [c, c]) },
      ],
      cols: [
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
        { id: "item", label: "点検整備項目", kind: "select", options: D.inspItems.map((i) => [i.id, `${i.name}（${kindNm(i.kind)}）`]), taken: D.inspLines.filter((x) => x.op === p.id && x.id !== r.id).map((x) => x.item) },
        { id: "seq", label: "順序", kind: "number", max: 3 },
        { id: "role", label: "担当の役職", kind: "select", req: false, blank: "指定なし", options: D.positions.map((x) => [x.id, x.name]) },
      ],
      cols: [
        { key: "item", label: "点検整備項目", fixed: true, val: (r) => itemNm(r.item) },
        { key: "seq", label: "順序", num: true, val: (r) => Number(r.seq) || 0, html: (r) => esc(r.seq) },
        { key: "kind", label: "区分", val: (r) => kindNm(mGet("inspItems", r.item)?.kind) },
        { key: "role", label: "担当の役職", val: (r) => (r.role ? posName(r.role) : "―") },
      ],
    },
    inspSch: {
      label: "設備点検整備予定", coll: "inspSchs", prefix: "is", tab: "schedule", children: "inspSchDet", parent: null,
      name: (r) => `${opNm(r.op)} ${monthFmt(r.month)}`,
      fields: (r) => [
        { id: "op", label: "運用（設備／区分）", kind: "select", options: D.inspOps.map((o) => [o.id, opNm(o.id)]) },
        { id: "month", label: "予定月", kind: "month" },
        { id: "status", label: "状態", kind: "select", options: SCH_STATUS.map((x) => [x, x]) },
      ],
      cols: [
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
          { id: "date", label: "予定日", kind: "date" },
          { id: "staff", label: "担当者", kind: "select", options: D.employees.map((e) => [e.no, `${e.name}（${e.no}）`]) },
        ];
      },
      cols: [
        { key: "item", label: "点検整備項目", fixed: true, val: (r) => itemNm(r.item) },
        { key: "date", label: "予定日", val: (r) => r.date, html: (r) => `<span class="od-nowrap">${fmtDate(r.date)}</span>` },
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
    const name = editMode ? `<a class="cell-link" href="#/locations/${l.id}">${esc(l.name)}</a>` : `<span class="tree-name">${esc(l.name)}</span>`;
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
    const l = isNew ? { name: "", type: "", parent: null, desc: "" } : locById(id);
    if (!l) return notFound("場所が見つかりません", "#/locations/edit");
    const banned = new Set(isNew ? [] : [id, ...locBelow(id)]);
    const parentOpts = locWalk().filter(({ l: x }) => !banned.has(x.id)).map(({ l: x, depth }) => [x.id, `${"　".repeat(depth)}${x.name}`]);
    const used = isNew ? 0 : locKids(id).length + eqAt(id);
    return `${backLink("#/locations/edit", "一覧に戻る")}${flashHtml()}
      <form class="card form" id="edit-form" data-kind="loc" data-id="${id}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${fieldRow({ id: "name", label: "場所名", max: 30, value: l.name, taken: D.locations.filter((x) => x.id !== id).map((x) => x.name) })}
        ${fieldRow({ id: "type", label: "種別", kind: "select", options: LOC_TYPES.map((t) => [t, t]), value: l.type })}
        ${fieldRow({ id: "parent", label: "親の場所", kind: "select", req: false, blank: "最上位（親なし）", options: parentOpts, value: l.parent ?? "" })}
        ${fieldRow({ id: "desc", label: "説明", kind: "textarea", max: 120, req: false, value: l.desc })}
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
    key: "eqCat", list: () => D.eqCats, search: (r) => r.name + r.desc, placeholder: "分類名・説明", hidden: ["updatedBy", "updatedAt"],
    href: (r) => `#/equipment/cat/${r.id}`, pick: { get: () => eqSel.cat, set: (id) => { eqSel.cat = eqSel.cat === id ? null : id; } },
    cols: [
      { key: "name", label: "分類名", fixed: true, val: (r) => r.name },
      { key: "desc", label: "説明", val: (r) => r.desc || "―" },
      numCol("n", "設備数", "equipments", "cat", "台"),
      byCol, dateCol,
    ],
  });
  const eqT = makeTable({
    key: "equip", noun: "台", list: () => D.equipments.filter((e) => !eqSel.cat || e.cat === eqSel.cat),
    search: (r) => r.code + r.name + locPath(r.loc), placeholder: "設備コード・設備名・場所", hidden: ["updatedBy", "updatedAt"],
    filter: { label: "状態", values: EQ_STATUS, get: (r) => r.status }, href: (r) => `#/equipment/${r.id}`,
    cols: [
      { key: "code", label: "設備コード", val: (r) => r.code, html: (r) => `<span class="od-nowrap">${esc(r.code)}</span>` },
      { key: "name", label: "設備名", fixed: true, val: (r) => r.name },
      { key: "cat", label: "分類", val: (r) => catNm(r.cat) },
      { key: "loc", label: "設置場所", val: (r) => locPath(r.loc) },
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
    const c = isNew ? { name: "", desc: "" } : D.eqCats.find((x) => x.id === id);
    if (!c) return notFound("設備の分類が見つかりません", "#/equipment/edit");
    const used = isNew ? 0 : D.equipments.filter((e) => e.cat === id).length;
    return `${backLink("#/equipment/edit", "一覧に戻る")}${flashHtml()}
      <form class="card form" id="edit-form" data-kind="eqCat" data-id="${id}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${fieldRow({ id: "name", label: "分類名", max: 20, value: c.name, taken: D.eqCats.filter((x) => x.id !== id).map((x) => x.name) })}
        ${fieldRow({ id: "desc", label: "説明", kind: "textarea", max: 120, req: false, value: c.desc })}
        ${isNew ? "" : metaHtml(c)}
        ${used ? `<p class="note" id="del-note">この分類の設備が${used}台あるため削除できません。</p>` : ""}
        <div class="form-actions">${isNew ? "" : `<button class="btn btn-danger" type="button" id="del-btn" ${used ? 'disabled aria-describedby="del-note"' : ""}>削除</button>`}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>`;
  }
  function equipmentEditScreen(id) {
    const isNew = id === "new";
    const e = isNew ? { code: "", name: "", cat: "", loc: "", installed: "", status: "" } : D.equipments.find((x) => x.id === id);
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
        ${fieldRow({ id: "name", label: "設備名", max: 40, value: e.name })}
        ${fieldRow({ id: "cat", label: "分類", kind: "select", options: D.eqCats.map((c) => [c.id, c.name]), value: e.cat })}
        ${fieldRow({ id: "loc", label: "設置場所", kind: "select", options: locWalk().map(({ l, depth }) => [l.id, `${"　".repeat(depth)}${l.name}（${l.type}）`]), value: e.loc })}
        ${fieldRow({ id: "installed", label: "設置日", kind: "date", value: e.installed })}
        ${fieldRow({ id: "status", label: "状態", kind: "select", options: EQ_STATUS.map((s) => [s, s]), value: e.status })}
        ${isNew ? "" : metaHtml(e)}
        ${used ? `<p class="note" id="del-note">保全の運用台帳で${used}件使われているため削除できません。</p>` : ""}
        <div class="form-actions">${isNew ? "" : `<button class="btn btn-danger" type="button" id="del-btn" ${used ? 'disabled aria-describedby="del-note"' : ""}>削除</button>`}<button class="btn btn-primary" type="submit">${isNew ? "追加" : "保存"}</button></div>
      </form>
      ${below}`;
  }

  /* ---------- save / delete for the edit structures ---------- */
  const nextId = (prefix, arr) => prefix + (Math.max(0, ...arr.map((x) => parseInt(String(x.id).slice(prefix.length), 10) || 0)) + 1);
  function saveForm(form) {
    const v = Object.fromEntries([...form.querySelectorAll("input, textarea, select")].map((el) => [el.name, el.value.trim()]));
    const stamp = { updatedBy: D.user.name, updatedAt: TODAY };
    const { kind, id, pid, sid, res, ent } = form.dataset;
    if (kind === "loc") {
      const parent = v.parent || null;
      if (parent) { locView.open.add(parent); locView.loaded.add(parent); }
      if (id === "new") D.locations.push({ id: nextId("l", D.locations), name: v.name, type: v.type, parent, desc: v.desc, ...stamp });
      else Object.assign(locById(id), { name: v.name, type: v.type, parent, desc: v.desc }, stamp);
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
      const person = { name: v.name, site: v.site, type: v.type, dept: v.dept || "" };
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
        const n = { id: nextId("d", D.departments), name: v.name, parent, kinds: newKinds, ...stamp };
        D.departments.push(n);
        flash = `部署「${v.name}」を追加しました。`;
        return `#/departments/${n.id}`;
      }
      Object.assign(deptById(id), { name: v.name, parent }, stamp);
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
    if (kind === "apPattern") {
      const p = D.apPatterns.find((x) => x.id === id);
      const n = D.apScopes.filter((x) => x.ap === id).length;
      confirmSheet(trigger, { title: `「${p.name}」を削除しますか？`, text: n ? `承認の範囲${n}件と、登録されている承認できる人も削除されます。元に戻せません。` : "元に戻せません。", okLabel: "削除する",
        onOk: () => {
          const ids = D.apScopes.filter((x) => x.ap === id).map((x) => x.id);
          D.apApprovers = D.apApprovers.filter((m) => !ids.includes(m.scope));
          D.apScopes = D.apScopes.filter((x) => x.ap !== id);
          D.apPatterns.splice(D.apPatterns.indexOf(p), 1);
          flash = `承認パターン「${p.name}」を削除しました。`;
          location.hash = "#/approval/edit";
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
    { key: "name", label: "事業所名", fixed: true },
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
    let list = D.sites.filter((s) => (v.type === "すべて" || s.type === v.type) && (!v.q || (s.name + s.address).includes(v.q)));
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
          <div class="search-box">${icon("search")}<input id="tbl-q" type="search" value="${esc(v.q)}" placeholder="事業所名・所在地" autocomplete="off"></div></div>
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
    const s = isNew ? { name: "", type: "", address: "", people: 0 } : D.sites.find((x) => x.id === id);
    if (!s) return notFound("事業所が見つかりません", "#/sites/edit");
    const locked = s.people > 0;
    return `${backLink("#/sites/edit", "一覧に戻る")}
      <form class="card form" id="edit-form" data-kind="office" data-id="${id}" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${fieldRow({ id: "name", label: "事業所名", max: 30, value: s.name, taken: D.sites.filter((x) => x.id !== id).map((x) => x.name) })}
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
        <div class="logout-actions"><button class="btn btn-primary" type="button" id="resignin">外部認証でサインイン</button></div>
        <p class="note">プロトタイプでは、サインイン後の戻り先として会社情報を表示します。</p>`;
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

  /* ---------- shell ---------- */
  /* Side navigation: plain items and groups. A group has children; "soon" children are reserved entries without a screen yet. */
  const NAV = [
    { id: "home", icon: "home", label: "ホーム" },
    { id: "customers", icon: "star", label: "顧客" },
    { id: "orders", icon: "orders", label: "受注・出荷" },
    { id: "production", icon: "production", label: "生産計画" },
    { group: "resources", icon: "box", label: "資源", children: [
      { id: "capabilities", icon: "briefcase", label: "力量" },
      { id: "licenses", icon: "check", label: "資格" },
      { id: "locations", icon: "pin", label: "場所" },
      { id: "equipment", icon: "factory", label: "設備" },
      { id: "maintenance", icon: "wrench", label: "保全" },
    ] },
    { id: "company", icon: "building", label: "会社情報" },
    { id: "logout", icon: "logout", label: "ログアウト" },
  ];
  const navOpen = new Set(); // expanded groups (PC / drawer)
  let navPop = null; // group whose fly-out is open (icon-only tablet sidebar)
  const isCurNav = (id, r) => (id === "company" ? /^(company|sites|departments|staff|approval|offerings)/.test(r) : r === id || r.startsWith(id + "/"));
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
    const cur = ["home", "customers", "orders", "production"].includes(r) ? r : "more";
    const item = (id, ic, label) =>
      `<a class="m-nav-item" href="#/${id}" ${cur === id ? 'aria-current="page"' : ""}>${icon(ic)}<span>${label}</span></a>`;
    return item("home", "home", "ホーム") + item("customers", "star", "顧客") + item("orders", "orders", "受注") +
      item("production", "production", "生産") + item("more", "more", "その他");
  };

  const root = document.getElementById("app");
  const scroller = () => (mobile ? document.getElementById("screen") : document.scrollingElement);
  function buildShell() {
    const hamburger = `<button class="icon-btn menu-btn" type="button" id="menu-btn" aria-label="メニューを開く" aria-expanded="false" aria-controls="drawer">${icon("menu")}</button>`;
    const drawer = `<div class="drawer-root" id="drawer-root">
        <div class="scrim" data-drawer-close></div>
        <div class="drawer" id="drawer" role="dialog" aria-modal="true" aria-label="メニュー">
          <div class="drawer-head"><div class="brand"><span class="brand-mark">${icon("factory")}</span><span class="brand-name">生産管理</span></div>
            <button class="icon-btn" type="button" id="drawer-close" data-drawer-close aria-label="メニューを閉じる">${icon("close")}</button></div>
          <nav class="nav" aria-label="メイン"></nav>
          <div class="side-foot"><div class="user"><span class="user-name">${D.user.name}</span><span class="user-role">${D.user.role}</span></div></div>
        </div>
      </div>`;
    if (mobile) {
      root.innerHTML = `<div class="m-app od-screen">
        <header class="m-head"><div class="m-head-text"><div class="crumb"></div><h1 id="page-title" tabindex="-1">ホーム</h1></div></header>
        <main class="od-scroll" id="screen" tabindex="-1"></main>
        <nav class="m-nav" id="m-nav" aria-label="メイン"></nav>
        <div class="sheet-root" id="sheet-root"></div>
      </div>`;
    } else {
      const side = `<aside class="side">
          <div class="brand"><span class="brand-mark">${icon("factory")}</span><span class="brand-name">生産管理</span></div>
          <nav class="nav" aria-label="メイン"></nav>
          <div class="side-foot"><div class="user"><span class="user-name">${D.user.name}</span><span class="user-role">${D.user.role}</span></div></div>
        </aside>`;
      root.innerHTML = `<div class="app">
        ${side}
        <div class="main-col">
          <div class="topbar">${hamburger}<span class="brand-name">生産管理</span></div>
          <main class="main" id="screen" tabindex="-1"></main>
        </div>
      </div>
      <div class="sheet-root" id="sheet-root"></div>
      ${device === "pc" ? drawer : ""}`;
    }
  }

  function pageHead(title, crumb = D.company.name) {
    if (mobile) return "";
    return `<header class="page-head"><div><div class="crumb">${esc(crumb)}</div><h1 id="page-title" tabindex="-1">${title}</h1></div><span class="asof">${D.asOf}</span></header>`;
  }

  let logoutState = "confirm";
  let timer = null;

  function render() {
    const P = parseRoute();
    const route = P.name;
    const isLogout = route === "logout";
    const title = route === "maintenance/entity" ? `${ENT[P.ent]?.label ?? "保全"}の編集` : ROUTES[route];
    navPop = null;
    NAV.forEach((n) => { if (n.group && (n.children.some((c) => c.id && isCurNav(c.id, route)) || route === "resources")) navOpen.add(n.group); });
    if (route === "company") draft = null;
    if (!["departments/dept", "departments/kind", "departments/kindedit"].includes(route)) deptDraft = null;
    if (!["staff/person", "staff/capability", "staff/license"].includes(route)) staffDraft = null;
    document.body.classList.toggle("signed-out", isLogout && logoutState === "done");
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
    } else {
      const body = {
        home: homeScreen,
        customers: customersScreen,
        orders: ordersScreen,
        production: productionScreen,
        organization: organizationScreen,
        more: moreScreen,
        company: companyScreen,
        "company/edit": companyEditScreen,
        "company/provision": () => provisionEditScreen(P.id),
        "company/position": () => positionEditScreen(P.id),
        "company/assign": () => assignEditScreen(P.pid, P.id),
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
      }[route]();
      screen.innerHTML = pageHead(title, crumbOf(route)) + `<div class="${mobile ? "m-body" : "page-body"}">${body}</div>`;
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
    const v = el.value.trim();
    const label = el.closest(".field-row").querySelector("label").firstChild.textContent;
    const taken = el.dataset.taken ? JSON.parse(el.dataset.taken) : [];
    let msg = "";
    if (!v && el.required) msg = `${label}を${el.tagName === "SELECT" ? "選択" : "入力"}してください。`;
    else if (v && el.dataset.after && el.form.elements[el.dataset.after]?.value > v) {
      const other = el.form.elements[el.dataset.after].closest(".field-row").querySelector("label").firstChild.textContent;
      msg = `${label}は${other}以降の日付にしてください。`;
    } else if (v && el.dataset.min && v < el.dataset.min) {
      msg = `${label}は予定日（${fmtDate(el.dataset.min)}）以降の日付にしてください。`;
    } else if (v && taken.includes(v)) msg = `「${v}」は既に登録されています。別の${label}にしてください。`;
    el.setAttribute("aria-invalid", msg ? "true" : "false");
    document.getElementById("e-" + el.name).textContent = msg;
    return msg;
  }
  function bindForm(form) {
    const sum = document.getElementById("err-sum");
    form.querySelectorAll("input, textarea, select").forEach((el) => el.addEventListener("blur", () => validateField(el)));
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
      h.querySelectorAll("[data-pickrow]").forEach((b) => b.addEventListener("click", () => {
        T2.pick.set(b.dataset.pickrow);
        rerender(`[data-pickrow="${b.dataset.pickrow}"]`);
      }));
    };
    document.querySelectorAll(".tbl-host").forEach(bindHost);
    document.querySelectorAll("[data-tq]").forEach((inp) => inp.addEventListener("input", () => {
      TABLES[inp.dataset.tq].view.q = inp.value.trim();
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
      timer = setTimeout(() => { logoutState = "done"; render(); document.getElementById("resignin")?.focus(); }, 1300);
    });
    q("resignin")?.addEventListener("click", () => { logoutState = "confirm"; location.hash = "#/home"; });
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
    if (e.target.closest("#menu-btn")) openDrawer();
    else if (e.target.closest("[data-drawer-close]")) closeDrawer();
    else if (e.target.closest("#drawer .nav-item")) closeDrawer(false);
  });
  document.addEventListener("keydown", (e) => {
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
  if (!location.hash) location.hash = "#/home";
  let prevRoute = null;
  let savedScroll = 0;
  window.addEventListener("hashchange", () => {
    const route = currentRoute();
    if (isTop(prevRoute) && !isTop(route)) savedScroll = scroller().scrollTop;
    if (route !== "logout") logoutState = "confirm";
    render();
    const back = isTop(route) && !isTop(prevRoute) && prevRoute !== "logout";
    scroller().scrollTop = back ? savedScroll : 0;
    document.getElementById("page-title")?.focus({ preventScroll: true });
    prevRoute = route;
  });
  prevRoute = currentRoute();
  render();
})();
