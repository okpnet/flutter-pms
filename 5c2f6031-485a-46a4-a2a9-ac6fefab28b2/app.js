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
  };
  const icon = (n, extra = "") =>
    `<svg class="od-icon" viewBox="0 0 24 24" aria-hidden="true" ${extra}><path d="${PATHS[n]}"/></svg>`;

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
      <section class="card profile" aria-labelledby="co-name">
        <div class="card-title">${icon("building")}会社概要</div>
        <h2 class="company-name od-keep" id="co-name">${c.name}</h2>
        <dl class="profile-list">
          <div class="kv"><dt>${c.ceoTitle ? "CEO" : "CEO"}</dt><dd>${c.ceo}（${c.ceoTitle}）</dd></div>
          <div class="kv" style="grid-column: span ${mobile ? 1 : 2}"><dt>メインサイト（本社）所在地</dt><dd>${c.address}</dd></div>
        </dl>
      </section>

      <section aria-labelledby="sum-title">
        <div class="sec-head"><h2 class="sec-title" id="sum-title">サマリ</h2></div>
        <div class="summary">
          <div class="card sum-emp">
            <div class="card-stack">
              <div class="card-title">${icon("users")}従業員数</div>
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
        <div class="sec-head"><h2 class="sec-title" id="site-title">事業所</h2><span class="sec-note od-nowrap">${D.sites.length}拠点</span></div>
        <div class="od-grid tiles">${tiles}</div>
      </section>

      <section aria-labelledby="offer-title">
        <div class="sec-head"><h2 class="sec-title" id="offer-title">提供サービス・製品</h2><span class="sec-note od-nowrap">${D.offerings.length}件</span></div>
        <div class="od-grid tiles">${offers}</div>
      </section>`;
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
  const navHtml = () => {
    const cur = location.hash.startsWith("#/logout") ? "logout" : "company";
    const item = (id, ic, label) =>
      `<a class="nav-item" href="#/${id}" ${cur === id ? 'aria-current="page"' : ""}>${icon(ic)}<span>${label}</span></a>`;
    return item("company", "building", "会社情報") + item("logout", "logout", "ログアウト");
  };

  const root = document.getElementById("app");
  function buildShell() {
    if (mobile) {
      root.innerHTML = `<div class="m-app od-screen">
        <header class="m-head"><div class="crumb">${D.company.name}</div><h1 id="page-title">会社情報</h1></header>
        <main class="od-scroll" id="screen" tabindex="-1"></main>
        <nav class="m-nav" aria-label="メイン"></nav>
        <div class="sheet-root" id="sheet-root"></div>
      </div>`;
    } else {
      root.innerHTML = `<div class="app">
        <aside class="side">
          <div class="brand"><span class="brand-mark">${icon("factory")}</span><span class="brand-name">生産管理</span></div>
          <nav class="nav" aria-label="メイン"></nav>
          <div class="side-foot"><div class="user"><span class="user-name">${D.user.name}</span><span class="user-role">${D.user.role}</span></div></div>
        </aside>
        <main class="main" id="screen" tabindex="-1"></main>
      </div>
      <div class="sheet-root" id="sheet-root"></div>`;
    }
  }

  function pageHead(title) {
    if (mobile) return "";
    return `<header class="page-head"><div><div class="crumb">${D.company.name}</div><h1 id="page-title">${title}</h1></div><span class="asof">${D.asOf}</span></header>`;
  }

  let logoutState = "confirm";
  let timer = null;

  function render() {
    const isLogout = location.hash.startsWith("#/logout");
    document.body.classList.toggle("signed-out", isLogout && logoutState === "done");
    const screen = document.getElementById("screen");
    document.querySelector(".nav, .m-nav").innerHTML = navHtml();
    if (mobile) document.getElementById("page-title").textContent = isLogout ? "ログアウト" : "会社情報";
    if (isLogout) {
      screen.innerHTML = (isLogout && !mobile ? pageHead("ログアウト") : "") + logoutScreen(logoutState);
      document.title = "ログアウト | 生産管理";
    } else {
      screen.innerHTML = pageHead("会社情報") + `<div class="${mobile ? "m-body" : "page-body"}">${companyScreen()}</div>`;
      document.title = "会社情報 | 生産管理";
    }
    bind();
  }

  function bind() {
    document.querySelectorAll("[data-site]").forEach((b) => b.addEventListener("click", () => openSheet(b.dataset.site, b)));
    const q = (id) => document.getElementById(id);
    q("cancel-logout")?.addEventListener("click", () => { location.hash = "#/company"; });
    q("do-logout")?.addEventListener("click", () => {
      logoutState = "loading";
      render();
      clearTimeout(timer);
      timer = setTimeout(() => { logoutState = "done"; render(); document.getElementById("resignin")?.focus(); }, 1300);
    });
    q("resignin")?.addEventListener("click", () => { logoutState = "confirm"; location.hash = "#/company"; });
  }

  /* ---------- detail sheet ---------- */
  let lastFocus = null;
  const sheetRoot = () => document.getElementById("sheet-root");
  function openSheet(id, trigger) {
    const s = D.sites.find((x) => x.id === id);
    const total = D.headcount.employee + D.headcount.part + D.headcount.dispatch;
    lastFocus = trigger;
    sheetRoot().innerHTML = `<div class="scrim" data-close></div>
      <div class="sheet" role="dialog" aria-modal="true" aria-labelledby="sheet-title">
        <div class="sheet-head"><div class="od-stack" style="--od-gap:4px"><span class="chip" style="align-self:flex-start">${icon(s.icon)}${s.type}</span><h2 id="sheet-title">${s.name}</h2></div>
          <button class="icon-btn" type="button" data-close aria-label="閉じる">${icon("close")}</button></div>
        <dl>
          <div class="kv"><dt>所在地</dt><dd>${s.address}</dd></div>
          <div class="kv"><dt>在籍人数</dt><dd class="od-nowrap">${fmt(s.people)}名（全社の ${Math.round((s.people / total) * 100)}%）</dd></div>
          <div class="kv"><dt>事業所種別</dt><dd>${s.type}</dd></div>
        </dl>
      </div>`;
    sheetRoot().classList.add("open");
    sheetRoot().querySelectorAll("[data-close]").forEach((e) => e.addEventListener("click", closeSheet));
    requestAnimationFrame(() => sheetRoot().querySelector(".icon-btn").focus());
  }
  function closeSheet() {
    sheetRoot().classList.remove("open");
    lastFocus?.focus();
  }
  document.addEventListener("keydown", (e) => {
    const r = sheetRoot();
    if (!r || !r.classList.contains("open")) return;
    if (e.key === "Escape") closeSheet();
    if (e.key === "Tab") { e.preventDefault(); r.querySelector(".icon-btn").focus(); } // the close button is the only control
  });

  /* ---------- boot ---------- */
  buildShell();
  if (!location.hash) location.hash = "#/company";
  window.addEventListener("hashchange", () => { if (!location.hash.startsWith("#/logout")) logoutState = "confirm"; render(); });
  render();
})();
