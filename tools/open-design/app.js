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
  };
  const esc = (s) => String(s).replace(/[&<>"']/g, (c) => ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;" }[c]));
  const editLink = (href, label) =>
    `<a class="edit-btn" href="${href}" aria-label="${label}を編集">${icon("pencil")}<span>編集</span></a>`;
  const backLink = () => `<a class="btn back-btn" href="#/company">${icon("back")}<span>戻る</span></a>`;
  const ROUTES = {
    company: "会社情報",
    "company/edit": "会社情報の編集",
    sites: "事業所一覧",
    employees: "従業員一覧",
    offerings: "提供サービス・製品一覧",
    logout: "ログアウト",
  };
  const currentRoute = () => {
    const r = location.hash.replace(/^#\//, "");
    return ROUTES[r] ? r : "company";
  };
  let flash = "";
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
              <div class="card-title has-action"><h3 class="card-title-main">${icon("users")}従業員数</h3>${editLink("#/employees", "従業員数")}</div>
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

      <section aria-labelledby="offer-title">
        <div class="sec-head"><div class="od-row sec-left"><h2 class="sec-title" id="offer-title">提供サービス・製品</h2>${editLink("#/offerings", "提供サービス・製品")}</div><span class="sec-note od-nowrap">${D.offerings.length}件</span></div>
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
  function companyEditScreen() {
    const c = D.company;
    const fields = FIELDS.map(([id, label, kind, max]) => {
      const ctl = kind === "textarea"
        ? `<textarea id="f-${id}" name="${id}" rows="2" maxlength="${max}" required aria-describedby="e-${id}">${esc(c[id])}</textarea>`
        : `<input id="f-${id}" name="${id}" type="text" maxlength="${max}" required value="${esc(c[id])}" aria-describedby="e-${id}">`;
      return `<div class="field-row"><label for="f-${id}">${label}<span class="req">必須</span></label>${ctl}<p class="field-err" id="e-${id}"></p></div>`;
    }).join("");
    return `${backLink()}
      <form class="card form" id="co-form" novalidate>
        <div class="err-sum" id="err-sum" role="alert" tabindex="-1" hidden></div>
        ${fields}
        <div class="form-actions"><button class="btn btn-primary" type="submit">保存</button></div>
      </form>`;
  }

  function tableScreen(note, table) {
    return `${backLink()}<section class="card tbl-card"><p class="tbl-note">${note}</p><div class="tbl-wrap">${table}</div></section>`;
  }
  const typeBadge = (t) => `<span class="chip">${t}</span>`;
  function sitesScreen() {
    const rows = D.sites.map((s) => `<tr>
      <th scope="row" data-label="事業所名" class="od-keep">${s.name}</th>
      <td data-label="種別">${typeBadge(s.type)}</td>
      <td data-label="所在地">${s.address}</td>
      <td data-label="在籍人数" class="num od-nowrap">${fmt(s.people)}名</td></tr>`).join("");
    return tableScreen(`全${D.sites.length}拠点`, `<table class="tbl"><caption class="sr-only">事業所一覧</caption>
      <thead><tr><th scope="col">事業所名</th><th scope="col">種別</th><th scope="col">所在地</th><th scope="col" class="num">在籍人数</th></tr></thead><tbody>${rows}</tbody></table>`);
  }
  function employeesScreen() {
    const h = D.headcount;
    const total = h.employee + h.part + h.dispatch;
    const rows = D.employees.map((e) => `<tr>
      <td data-label="社員番号" class="od-nowrap">${e.no}</td>
      <th scope="row" data-label="氏名" class="od-nowrap">${e.name}</th>
      <td data-label="所属事業所">${e.site}</td>
      <td data-label="区分">${typeBadge(e.type)}</td></tr>`).join("");
    return tableScreen(`全${fmt(total)}名（社員 ${fmt(h.employee)}・パート ${fmt(h.part)}・派遣 ${fmt(h.dispatch)}）のうち、サンプルとして${D.employees.length}名を表示しています。`,
      `<table class="tbl"><caption class="sr-only">従業員一覧</caption>
      <thead><tr><th scope="col">社員番号</th><th scope="col">氏名</th><th scope="col">所属事業所</th><th scope="col">区分</th></tr></thead><tbody>${rows}</tbody></table>`);
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
  const navHtml = () => {
    const cur = currentRoute() === "logout" ? "logout" : "company";
    const item = (id, ic, label) =>
      `<a class="nav-item" href="#/${id}" ${cur === id ? 'aria-current="page"' : ""}>${icon(ic)}<span>${label}</span></a>`;
    return item("company", "building", "会社情報") + item("logout", "logout", "ログアウト");
  };

  const root = document.getElementById("app");
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
        <header class="m-head">${hamburger}<div class="m-head-text"><div class="crumb"></div><h1 id="page-title" tabindex="-1">会社情報</h1></div></header>
        <main class="od-scroll" id="screen" tabindex="-1"></main>
        <div class="sheet-root" id="sheet-root"></div>
        ${drawer}
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

  function pageHead(title) {
    if (mobile) return "";
    return `<header class="page-head"><div><div class="crumb">${esc(D.company.name)}</div><h1 id="page-title" tabindex="-1">${title}</h1></div><span class="asof">${D.asOf}</span></header>`;
  }

  let logoutState = "confirm";
  let timer = null;

  function render() {
    const route = currentRoute();
    const isLogout = route === "logout";
    const title = ROUTES[route];
    document.body.classList.toggle("signed-out", isLogout && logoutState === "done");
    const screen = document.getElementById("screen");
    closeDrawer(false);
    document.querySelectorAll(".nav").forEach((n) => { n.innerHTML = navHtml(); });
    if (mobile) {
      document.getElementById("page-title").textContent = title;
      document.querySelector(".m-head .crumb").textContent = D.company.name;
    }
    if (isLogout) {
      screen.innerHTML = (!mobile ? pageHead(title) : "") + logoutScreen(logoutState);
    } else {
      const body = {
        company: companyScreen,
        "company/edit": companyEditScreen,
        sites: sitesScreen,
        employees: employeesScreen,
        offerings: offeringsScreen,
      }[route]();
      screen.innerHTML = pageHead(title) + `<div class="${mobile ? "m-body" : "page-body"}">${body}</div>`;
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
    const msg = v ? "" : `${label}を入力してください。`;
    el.setAttribute("aria-invalid", msg ? "true" : "false");
    document.getElementById("e-" + el.name).textContent = msg;
    return msg;
  }
  function bindForm(form) {
    const sum = document.getElementById("err-sum");
    form.querySelectorAll("input, textarea").forEach((el) => el.addEventListener("blur", () => validateField(el)));
    form.addEventListener("submit", (e) => {
      e.preventDefault();
      const bad = [...form.querySelectorAll("input, textarea")].filter((el) => validateField(el));
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
      setTimeout(() => {
        form.querySelectorAll("input, textarea").forEach((el) => { D.company[el.name] = el.value.trim(); });
        flash = "会社情報を保存しました。";
        location.hash = "#/company";
      }, 500);
    });
  }

  function bind() {
    const form = document.getElementById("co-form");
    if (form) bindForm(form);
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
  document.addEventListener("click", (e) => {
    if (e.target.closest("#menu-btn")) openDrawer();
    else if (e.target.closest("[data-drawer-close]")) closeDrawer();
    else if (e.target.closest("#drawer .nav-item")) closeDrawer(false);
  });
  document.addEventListener("keydown", (e) => {
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
    if (e.key === "Tab") { e.preventDefault(); r.querySelector(".icon-btn").focus(); } // the close button is the only control
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
  if (!location.hash) location.hash = "#/company";
  let prevRoute = null;
  let savedScroll = 0;
  const scroller = () => (mobile ? document.getElementById("screen") : document.scrollingElement);
  window.addEventListener("hashchange", () => {
    const route = currentRoute();
    if (prevRoute === "company" && route !== "company") savedScroll = scroller().scrollTop;
    if (route !== "logout") logoutState = "confirm";
    render();
    const back = prevRoute !== "company" && route === "company" && prevRoute !== "logout";
    scroller().scrollTop = back ? savedScroll : 0;
    document.getElementById("page-title")?.focus({ preventScroll: true });
    prevRoute = route;
  });
  prevRoute = currentRoute();
  render();
})();
