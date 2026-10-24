/* 業務画面の宣言（open-design用.md の機能別画面）。サンプルは実在しない架空の値。
   エンジンは app.js の「generic domain screens」。ここには画面構成とデータだけを書く。

   entities[]  : { key, label, fields, rows, parent?, tree? }
     fields    : [id, label, kind = "t", extra]   kind: t 文字 / x 複数行 / n 数値 / d 日付 / s 選択(extra.opts) / r 参照(extra.ref)
                 extra.req=false で任意、extra.ref は 実体キー または "@コレクション:IDキー:表示キー"
     parent    : { ent, key }  所有する親（行の先頭要素が親ID）。tree:true の行は末尾要素が同じ実体の親ID
     rows      : 行配列。行IDは key + 連番（例 item1）
   screens[]   : { id, label, icon, tabs: [[tabId, label, rootEntityKey], ...] }
   groups[]    : サイドメニューのグループ */
(function () {
  const LV = ["低", "中", "高"];
  const ST = ["受付", "対応中", "完了"];
  const RS = ["有効", "継続監視", "無効"];
  const EMP = "@employees:no:name";
  const LOC = "@locations:id:name";
  const EQP = "@equipments:id:name";
  const DEP = "@departments:id:name";
  const IMPK = ["修正処置", "再発防止", "処置再発監視"];
  const imp = (key, label, parent) => ({ key, label, parent: { ent: parent, key: parent }, fields: [["kind", "取込種別", "s", { opts: IMPK }], ["title", "取込内容"], ["date", "取込日", "d"]] });
  const contact = (key, parent) => ({ key, label: "担当者", parent: { ent: parent, key: parent }, fields: [["name", "氏名"], ["dept", "部署", "t", { req: false }], ["tel", "電話番号", "t", { req: false }], ["mail", "メール", "t", { req: false }]] });

  const entities = [
    /* ---- システム ---- */
    { key: "unit", label: "単位", fields: [["name", "単位名"], ["abbr", "記号"], ["kind", "種類", "s", { opts: ["長さ", "質量", "体積", "個数", "時間"] }]],
      rows: [["キログラム", "kg", "質量"], ["グラム", "g", "質量"], ["ミリメートル", "mm", "長さ"], ["個", "pcs", "個数"], ["リットル", "L", "体積"]] },

    /* ---- 品目 ---- */
    { key: "itemkind", label: "品目区分", fields: [["name", "区分名"], ["code", "区分コード"], ["desc", "説明", "x", { req: false }]],
      rows: [["製品", "PRD", ""], ["半製品", "SEM", ""], ["原材料", "MAT", ""], ["購入部品", "PUR", ""]] },
    { key: "hscode", label: "HSコード", fields: [["code", "HSコード"], ["name", "品名"]],
      rows: [["8466.93", "工作機械用の部分品"], ["7318.15", "ねじ（その他）"], ["7326.90", "鉄鋼製品（その他）"]] },
    { key: "item", label: "品目", tree: true, fields: [["code", "品目コード"], ["name", "品目名"], ["kind", "品目区分", "r", { ref: "itemkind" }], ["unit", "基本単位", "r", { ref: "unit" }], ["desc", "説明", "x", { req: false }]],
      rows: [
        ["I-1000", "ユニットA", "itemkind1", "unit4", "", ""],
        ["I-1100", "ブラケット", "itemkind2", "unit4", "", "item1"],
        ["I-1200", "シャフト", "itemkind2", "unit4", "", "item1"],
        ["I-1210", "丸棒 SS400", "itemkind3", "unit1", "", "item3"],
        ["I-1300", "ボルト M8×20", "itemkind4", "unit4", "", "item1"]] },
    { key: "itemhs", label: "HSコード", parent: { ent: "item", key: "item" }, fields: [["hs", "HSコード", "r", { ref: "hscode" }]],
      rows: [["item1", "hscode1"], ["item3", "hscode3"], ["item5", "hscode2"]] },
    { key: "itemsizekind", label: "大きさ区分", fields: [["name", "区分名"], ["desc", "説明", "x", { req: false }]],
      rows: [["外形寸法", "全長・全幅・全高のうち最大の寸法"], ["有効径", ""]] },
    { key: "itemsize", label: "大きさ", parent: { ent: "item", key: "item" }, fields: [["kind", "大きさ区分", "r", { ref: "itemsizekind" }], ["value", "値", "n"], ["unit", "単位", "r", { ref: "unit" }]],
      rows: [["item2", "itemsizekind1", "120", "unit3"], ["item3", "itemsizekind2", "25", "unit3"]] },
    { key: "itempack", label: "梱包サイズ", parent: { ent: "item", key: "item" }, fields: [["label", "梱包区分"], ["w", "幅", "n"], ["d", "奥行", "n"], ["h", "高さ", "n"], ["unit", "単位", "r", { ref: "unit" }]],
      rows: [["item1", "木箱", "450", "300", "200", "unit3"]] },
    { key: "itemop", label: "品目工程計画", parent: { ent: "item", key: "item" }, fields: [["name", "作業指示名"], ["operation", "工程パターン", "r", { ref: "operation", req: false }], ["due", "完了期限", "d"]],
      rows: [["item1", "ユニットA 標準", "operation1", "2026-11-10"], ["item2", "ブラケット 標準", "operation2", "2026-11-05"]] },
    { key: "itemmaker", label: "製造元", parent: { ent: "item", key: "item" }, fields: [["maker", "製造元名"], ["partno", "製造元品番"]],
      rows: [["item5", "北斗ファスナー", "BF-M8-20"]] },

    /* ---- 工程 ---- */
    { key: "taskgroup", label: "工程グループ", fields: [["name", "グループ名"], ["desc", "説明", "x", { req: false }]],
      rows: [["切削加工", ""], ["組立", ""], ["検査", ""]] },
    { key: "task", label: "工程", tree: true, fields: [["code", "工程コード"], ["name", "工程名"], ["group", "工程グループ", "r", { ref: "taskgroup" }], ["desc", "説明", "x", { req: false }]],
      rows: [
        ["T-100", "加工", "taskgroup1", "", ""],
        ["T-110", "旋削", "taskgroup1", "", "task1"],
        ["T-120", "フライス", "taskgroup1", "", "task1"],
        ["T-200", "組立", "taskgroup2", "", ""],
        ["T-210", "最終検査", "taskgroup3", "", "task4"]] },
    { key: "taskres", label: "工程場所", parent: { ent: "task", key: "task" }, fields: [["loc", "場所", "r", { ref: LOC }], ["equip", "設備", "r", { ref: EQP, req: false }]],
      rows: [["task2", "l6", "eq1"], ["task3", "l12", "eq3"]] },
    { key: "operation", label: "工程運用", fields: [["name", "パターン名"], ["desc", "説明", "x", { req: false }]],
      rows: [["ユニットA製造", ""], ["部品加工", ""]] },
    { key: "optask", label: "工程の選択", parent: { ent: "operation", key: "operation" }, fields: [["task", "工程", "r", { ref: "task" }], ["seq", "順", "n"]],
      rows: [["operation1", "task2", "10"], ["operation1", "task3", "20"], ["operation1", "task5", "30"], ["operation2", "task2", "10"]] },
    { key: "opapply", label: "適用する品目の工程計画", parent: { ent: "operation", key: "operation" }, fields: [["item", "品目", "r", { ref: "item" }]],
      rows: [["operation1", "item1"], ["operation2", "item2"]] },

    /* ---- 営業 ---- */
    { key: "shipkind", label: "配送区分", fields: [["name", "区分名"], ["desc", "説明", "x", { req: false }]],
      rows: [["自社便", ""], ["宅配便", ""], ["航空便", ""], ["顧客引取", ""]] },
    { key: "customer", label: "顧客", fields: [["code", "顧客コード"], ["name", "顧客名"], ["area", "地域"], ["tel", "電話番号", "t", { req: false }]],
      rows: [["C-001", "北斗機械株式会社", "関東", "000-0000-0001"], ["C-002", "みなと精密株式会社", "関西", "000-0000-0002"], ["C-003", "あおば電機株式会社", "中部", ""]] },
    contact("custcontact", "customer"),
    { key: "order", label: "受注", fields: [["no", "受注番号"], ["cust", "顧客", "r", { ref: "customer" }], ["date", "受注日", "d"], ["due", "納期", "d"], ["ship", "配送区分", "r", { ref: "shipkind" }]],
      rows: [["SO-2610-001", "customer1", "2026-10-02", "2026-11-10", "shipkind1"], ["SO-2610-002", "customer2", "2026-10-08", "2026-11-20", "shipkind2"]] },
    { key: "orderdetail", label: "受注明細", parent: { ent: "order", key: "order" }, fields: [["item", "品目", "r", { ref: "item" }], ["qty", "数量", "n"], ["unit", "単位", "r", { ref: "unit" }]],
      rows: [["order1", "item1", "200", "unit4"], ["order1", "item2", "400", "unit4"], ["order2", "item3", "150", "unit4"]] },

    /* ---- 購買 ---- */
    { key: "supplier", label: "サプライヤー", fields: [["code", "サプライヤーコード"], ["name", "サプライヤー名"], ["area", "地域"]],
      rows: [["S-001", "北斗ファスナー株式会社", "関東"], ["S-002", "大和鋼材株式会社", "関西"]] },
    contact("suppcontact", "supplier"),
    { key: "unrec", label: "非計上発注", fields: [["no", "非計上発注番号"], ["supplier", "サプライヤー", "r", { ref: "supplier" }], ["date", "発注日", "d"], ["reason", "非計上の理由", "t", { req: false }]],
      rows: [["UN-2610-001", "supplier1", "2026-10-05", "試作用"]] },
    { key: "unrecdetail", label: "非計上発注明細", parent: { ent: "unrec", key: "unrec" }, fields: [["item", "品目", "r", { ref: "item" }], ["qty", "数量", "n"], ["unit", "単位", "r", { ref: "unit" }]],
      rows: [["unrec1", "item5", "50", "unit4"]] },
    { key: "purchase", label: "発注", fields: [["no", "発注番号"], ["supplier", "サプライヤー", "r", { ref: "supplier" }], ["date", "発注日", "d"], ["due", "納期", "d"]],
      rows: [["PO-2610-001", "supplier1", "2026-10-06", "2026-10-20"], ["PO-2610-002", "supplier2", "2026-10-09", "2026-10-28"]] },
    { key: "purdetail", label: "発注明細", parent: { ent: "purchase", key: "purchase" }, fields: [["item", "品目", "r", { ref: "item" }], ["qty", "数量", "n"], ["unit", "単位", "r", { ref: "unit" }], ["price", "単価（円）", "n"]],
      rows: [["purchase1", "item5", "2000", "unit4", "12"], ["purchase2", "item4", "800", "unit1", "180"]] },
    { key: "purchaserec", label: "受入", fields: [["no", "受入番号"], ["purchase", "発注", "r", { ref: "purchase" }], ["date", "受入日", "d"], ["staff", "受入担当", "r", { ref: EMP }]],
      rows: [["RC-2610-001", "purchase1", "2026-10-19", "E-0101"]] },
    { key: "purchaseline", label: "受入明細", parent: { ent: "purchaserec", key: "rec" }, fields: [["item", "品目", "r", { ref: "item" }], ["qty", "受入数量", "n"], ["unit", "単位", "r", { ref: "unit" }]],
      rows: [["purchaserec1", "item5", "2000", "unit4"]] },
    { key: "purcert", label: "成績書（PDF）", parent: { ent: "purchaserec", key: "rec" }, fields: [["fname", "ファイル名"], ["date", "登録日", "d"]],
      rows: [["purchaserec1", "RC-2610-001_成績書.pdf", "2026-10-19"]] },

    /* ---- 生産計画 ---- */
    { key: "resplan", label: "資材所要量計画", fields: [["no", "資材計画コード"], ["name", "計画名"], ["start", "開始日", "d"]],
      rows: [["MRP-2610", "10月分 資材計画", "2026-10-01"], ["MRP-2611", "11月分 資材計画", "2026-11-01"]] },
    { key: "opsplan", label: "生産計画", parent: { ent: "resplan", key: "resplan" }, fields: [["no", "生産計画番号"], ["item", "品目", "r", { ref: "item" }], ["qty", "計画数量", "n"], ["due", "完了期限", "d"]],
      rows: [["resplan1", "PP-2610-01", "item1", "200", "2026-11-10"], ["resplan1", "PP-2610-02", "item2", "400", "2026-11-05"]] },
    { key: "workplan", label: "生産計画明細", parent: { ent: "opsplan", key: "plan" }, fields: [["task", "工程", "r", { ref: "task" }], ["start", "開始日", "d"], ["end", "終了日", "d"], ["staff", "担当", "r", { ref: EMP }]],
      rows: [["opsplan1", "task2", "2026-10-21", "2026-10-25", "E-0101"], ["opsplan1", "task4", "2026-10-26", "2026-10-30", "E-0145"]] },
    { key: "prodrez", label: "生産引当予約", fields: [["no", "予約番号"], ["item", "品目", "r", { ref: "item" }], ["qty", "数量", "n"], ["order", "受注", "r", { ref: "order" }]],
      rows: [["PR-2610-01", "item1", "200", "order1"]] },
    { key: "purrez", label: "購買引当予約", fields: [["no", "予約番号"], ["item", "品目", "r", { ref: "item" }], ["qty", "数量", "n"], ["purchase", "発注", "r", { ref: "purchase" }]],
      rows: [["PU-2610-01", "item4", "800", "purchase2"]] },
    { key: "itemoptask", label: "品目工程明細", parent: { ent: "itemop", key: "itemop" }, fields: [["task", "工程", "r", { ref: "task" }], ["seq", "順", "n"], ["minutes", "標準時間（分）", "n"]],
      rows: [["itemop1", "task2", "10", "45"], ["itemop1", "task4", "20", "90"], ["itemop1", "task5", "30", "20"]] },

    /* ---- 作業実績 ---- */
    { key: "container", label: "コンテナ", tree: true, fields: [["code", "コンテナコード"], ["name", "コンテナ名"], ["loc", "保管場所", "r", { ref: LOC, req: false }]],
      rows: [["CN-01", "第1製造棟 ラック", "l4", ""], ["CN-011", "ラック A段", "l4", "container1"], ["CN-012", "ラック B段", "l4", "container1"]] },
    { key: "invapply", label: "投入", fields: [["no", "投入番号"], ["resplan", "資材計画", "r", { ref: "resplan" }], ["container", "コンテナ", "r", { ref: "container" }], ["item", "品目", "r", { ref: "item" }], ["qty", "数量", "n"], ["date", "投入日", "d"]],
      rows: [["IA-2610-01", "resplan1", "container2", "item4", "300", "2026-10-20"]] },
    { key: "invreq", label: "引当実績", fields: [["no", "引当番号"], ["resplan", "資材計画", "r", { ref: "resplan" }], ["item", "品目", "r", { ref: "item" }], ["qty", "数量", "n"], ["date", "引当日", "d"]],
      rows: [["IR-2610-01", "resplan1", "item4", "300", "2026-10-19"]] },
    { key: "certificate", label: "成績書", fields: [["no", "成績書番号"], ["title", "件名"], ["fname", "ファイル名（PDF）"], ["date", "登録日", "d"]],
      rows: [["CT-2610-01", "丸棒 SS400 ミルシート", "CT-2610-01.pdf", "2026-10-19"]] },
    { key: "workrec", label: "作業実績", fields: [["no", "作業実績番号"], ["itemop", "作業指示書", "r", { ref: "itemop" }], ["task", "工程", "r", { ref: "task" }], ["staff", "作業者", "r", { ref: EMP }], ["date", "実施日", "d"], ["qty", "完成数量", "n"]],
      rows: [["WR-2610-01", "itemop1", "task2", "E-0101", "2026-10-21", "40"]] },
    { key: "wrcert", label: "成績書ファイル", parent: { ent: "workrec", key: "rec" }, fields: [["certificate", "成績書", "r", { ref: "certificate" }]],
      rows: [["workrec1", "certificate1"]] },

    /* ---- 品質管理共通 ---- */
    { key: "disposal", label: "修正処置", fields: [["no", "処置番号"], ["title", "件名"], ["date", "実施日", "d"], ["staff", "担当", "r", { ref: EMP }], ["desc", "内容", "x", { req: false }]],
      rows: [["DP-2610-01", "寸法不良品の選別", "2026-10-12", "E-0101", ""]] },
    { key: "recur", label: "再発防止", fields: [["no", "再発防止番号"], ["title", "件名"], ["date", "実施日", "d"], ["staff", "担当", "r", { ref: EMP }], ["desc", "内容", "x", { req: false }]],
      rows: [["RP-2610-01", "測定手順の見直し", "2026-10-14", "E-0145", ""]] },
    { key: "obsdisp", label: "修正処置の監視", fields: [["disposal", "修正処置", "r", { ref: "disposal" }], ["date", "確認日", "d"], ["result", "結果", "s", { opts: RS }], ["note", "備考", "t", { req: false }]],
      rows: [["disposal1", "2026-10-20", "継続監視", ""]] },
    { key: "obsprev", label: "再発防止の監視", fields: [["recur", "再発防止", "r", { ref: "recur" }], ["date", "確認日", "d"], ["result", "結果", "s", { opts: RS }], ["note", "備考", "t", { req: false }]],
      rows: [["recur1", "2026-10-21", "有効", ""]] },
    { key: "risk", label: "リスク", fields: [["no", "リスク番号"], ["title", "件名"], ["level", "評価", "s", { opts: LV }], ["desc", "内容", "x", { req: false }]],
      rows: [["RK-001", "主要材料の納期遅延", "高", ""], ["RK-002", "測定器の校正切れ", "中", ""]] },
    { key: "prevention", label: "未然防止", parent: { ent: "risk", key: "risk" }, fields: [["title", "未然防止策"], ["staff", "担当", "r", { ref: EMP }], ["due", "期限", "d"]],
      rows: [["risk1", "代替サプライヤーの確保", "E-0034", "2026-11-30"]] },
    { key: "preventiondetail", label: "未然防止処置", parent: { ent: "prevention", key: "prevention" }, fields: [["action", "処置内容"], ["date", "登録日", "d"], ["result", "結果", "s", { opts: RS }]],
      rows: [["prevention1", "見積依頼を2社へ送付", "2026-10-15", "継続監視"]] },
    { key: "auditstdcheck", label: "監査標準項目", fields: [["no", "項目番号"], ["name", "項目名"], ["desc", "確認内容", "x", { req: false }]],
      rows: [["AC-01", "文書管理", "最新版が現場に配布されている。"], ["AC-02", "校正管理", "測定器の校正期限が有効である。"]] },

    /* ---- 品質管理文書 ---- */
    { key: "doctier", label: "文書レベル", fields: [["name", "レベル名"], ["level", "階層", "n"]],
      rows: [["品質マニュアル", "1"], ["規程", "2"], ["手順書", "3"]] },
    { key: "doc", label: "文書", tree: true, fields: [["no", "文書番号"], ["name", "文書名"], ["tier", "文書レベル", "r", { ref: "doctier" }], ["rev", "版"]],
      rows: [["QM-01", "品質マニュアル", "doctier1", "3", ""], ["QP-10", "検査規程", "doctier2", "2", "doc1"], ["QW-101", "受入検査手順", "doctier3", "1", "doc2"]] },
    { key: "doccontent", label: "文書コンテンツ", tree: true, parent: { ent: "doc", key: "doc" }, fields: [["heading", "見出し"], ["body", "本文", "x", { req: false }]],
      rows: [["doc3", "1. 目的", "受け入れる材料の品質を確認する。", ""], ["doc3", "1.1 適用範囲", "購入材料のすべて。", "doccontent1"]] },
    { key: "report", label: "レポートひな形", fields: [["no", "ひな形番号"], ["name", "ひな形名"], ["form", "出力形式", "s", { opts: ["PDF", "Excel"] }]],
      rows: [["RT-01", "検査成績書", "PDF"], ["RT-02", "月次不適合集計", "Excel"]] },

    /* ---- 異常報告 ---- */
    { key: "complaint", label: "異常報告", fields: [["no", "報告番号"], ["title", "件名"], ["date", "報告日", "d"], ["level", "重要度", "s", { opts: LV }], ["status", "状態", "s", { opts: ST }]],
      rows: [["CP-2610-01", "寸法公差の外れ", "2026-10-12", "中", "対応中"], ["CP-2610-02", "納入品の傷", "2026-10-15", "低", "受付"]] },
    { key: "compreceive", label: "異常受付", parent: { ent: "complaint", key: "complaint" }, fields: [["date", "受付日", "d"], ["staff", "受付者", "r", { ref: EMP }], ["channel", "受付方法", "s", { opts: ["電話", "メール", "訪問"] }]],
      rows: [["complaint1", "2026-10-12", "E-0034", "電話"]] },
    { key: "compstake", label: "異常報告利害関係者", parent: { ent: "complaint", key: "complaint" }, fields: [["name", "名称"], ["relation", "関係", "s", { opts: ["顧客", "サプライヤー", "社内", "その他"] }]],
      rows: [["complaint1", "北斗機械株式会社", "顧客"]] },
    { key: "compfile", label: "異常報告ファイル", parent: { ent: "complaint", key: "complaint" }, fields: [["fname", "ファイル名"], ["date", "登録日", "d"]],
      rows: [["complaint1", "写真_001.jpg", "2026-10-12"]] },
    { key: "corder", label: "顧客クレーム", fields: [["no", "報告番号"], ["order", "受注", "r", { ref: "order" }], ["title", "件名"], ["status", "状態", "s", { opts: ST }]],
      rows: [["CC-2610-01", "order1", "梱包の破損", "対応中"]] },
    imp("corderimp", "取込", "corder"),
    { key: "cproc", label: "工程異常報告", fields: [["no", "報告番号"], ["task", "工程", "r", { ref: "task" }], ["title", "件名"], ["status", "状態", "s", { opts: ST }]],
      rows: [["CR-2610-01", "task2", "旋削の寸法ばらつき", "対応中"]] },
    imp("cprocimp", "取込", "cproc"),
    { key: "cequip", label: "設備異常報告", fields: [["no", "報告番号"], ["equip", "設備", "r", { ref: EQP }], ["title", "件名"], ["status", "状態", "s", { opts: ST }]],
      rows: [["CE-2610-01", "eq1", "主軸の異音", "受付"]] },
    imp("cequipimp", "取込", "cequip"),

    /* ---- リスク ---- */
    { key: "orderrisk", label: "受注リスク", fields: [["no", "リスク番号"], ["order", "受注", "r", { ref: "order" }], ["title", "件名"], ["level", "評価", "s", { opts: LV }]],
      rows: [["OR-001", "order1", "納期が短い", "中"]] },
    { key: "orderdetailrisk", label: "受注明細リスク", fields: [["no", "リスク番号"], ["detail", "受注明細", "r", { ref: "orderdetail" }], ["title", "件名"], ["level", "評価", "s", { opts: LV }]],
      rows: [["OD-001", "orderdetail1", "材料の入手性", "高"]] },
    { key: "odrimp", label: "取込：リスク", parent: { ent: "orderdetailrisk", key: "odr" }, fields: [["risk", "リスク", "r", { ref: "risk" }]],
      rows: [["orderdetailrisk1", "risk1"]] },
    { key: "taskrisk", label: "工程リスク", fields: [["no", "リスク番号"], ["task", "工程", "r", { ref: "task" }], ["title", "件名"], ["level", "評価", "s", { opts: LV }]],
      rows: [["TR-001", "task3", "工具の摩耗", "中"]] },
    { key: "trimp", label: "取込：リスク", parent: { ent: "taskrisk", key: "tr" }, fields: [["risk", "リスク", "r", { ref: "risk" }]],
      rows: [["taskrisk1", "risk2"]] },

    /* ---- 監査 ---- */
    { key: "auditstd", label: "監査標準", fields: [["no", "標準番号"], ["name", "標準名"], ["desc", "説明", "x", { req: false }]],
      rows: [["AS-01", "内部監査標準", ""]] },
    { key: "auditstdimp", label: "取込：監査標準項目", parent: { ent: "auditstd", key: "std" }, fields: [["check", "監査標準項目", "r", { ref: "auditstdcheck" }]],
      rows: [["auditstd1", "auditstdcheck1"], ["auditstd1", "auditstdcheck2"]] },
    { key: "auditteam", label: "監査チーム", fields: [["name", "チーム名"], ["desc", "説明", "x", { req: false }]],
      rows: [["品質監査チームA", ""], ["製造監査チームB", ""]] },
    { key: "auditor", label: "監査員", parent: { ent: "auditteam", key: "team" }, fields: [["staff", "監査員", "r", { ref: EMP }], ["role", "役割", "s", { opts: ["リーダー", "監査員", "研修中"] }]],
      rows: [["auditteam1", "E-0012", "リーダー"], ["auditteam1", "E-0034", "監査員"]] },
    { key: "audit", label: "監査計画", fields: [["no", "監査番号"], ["name", "監査名"], ["date", "実施日", "d"], ["std", "監査標準", "r", { ref: "auditstd" }]],
      rows: [["AU-2611-01", "第1製造棟 内部監査", "2026-11-12", "auditstd1"]] },
    { key: "auditteamlink", label: "監査チーム", parent: { ent: "audit", key: "audit" }, fields: [["team", "監査チーム", "r", { ref: "auditteam" }]],
      rows: [["audit1", "auditteam1"]] },
    { key: "auditmember", label: "監査参加者", parent: { ent: "audit", key: "audit" }, fields: [["staff", "参加者", "r", { ref: EMP }], ["dept", "所属部署", "r", { ref: DEP, req: false }]],
      rows: [["audit1", "E-0101", "d4"], ["audit1", "E-0145", "d5"]] },
  ];

  const screens = [
    { id: "unit", label: "単位", icon: "box", tabs: [["main", "単位台帳", "unit"]] },
    { id: "itemkind", label: "品目区分", icon: "list", tabs: [["main", "品目区分", "itemkind"]] },
    { id: "item", label: "品目", icon: "box", tabs: [["main", "品目体系", "item"], ["size", "大きさ区分", "itemsizekind"], ["hs", "HSコード", "hscode"]] },
    { id: "task", label: "工程", icon: "production", tabs: [["main", "工程体系", "task"]] },
    { id: "taskgroup", label: "工程グループ", icon: "list", tabs: [["main", "工程グループ", "taskgroup"]] },
    { id: "operation", label: "工程パターン", icon: "org", tabs: [["main", "工程運用", "operation"]] },
    { id: "shipkind", label: "配送区分", icon: "truck", tabs: [["main", "配送区分", "shipkind"]] },
    { id: "customer", label: "顧客台帳", icon: "star", tabs: [["main", "顧客台帳", "customer"]] },
    { id: "order", label: "受注", icon: "orders", tabs: [["main", "受注台帳", "order"]] },
    { id: "supplier", label: "サプライヤー", icon: "briefcase", tabs: [["main", "サプライヤー台帳", "supplier"]] },
    { id: "unrec", label: "非計上発注", icon: "orders", tabs: [["main", "非計上発注台帳", "unrec"]] },
    { id: "purchase", label: "発注", icon: "orders", tabs: [["main", "発注台帳", "purchase"]] },
    { id: "inspect", label: "検品", icon: "check", tabs: [["main", "受入登録", "purchaserec"]] },
    { id: "resplan", label: "資材所要量計画", icon: "production", tabs: [["main", "資材計画台帳", "resplan"]] },
    { id: "rez", label: "充当計画", icon: "list", tabs: [["prod", "生産引当予約", "prodrez"], ["pur", "購買引当予約", "purrez"]] },
    { id: "itemoplan", label: "工程計画", icon: "pencil", tabs: [["main", "品目工程台帳", "itemop"]] },
    { id: "container", label: "コンテナ", icon: "box", tabs: [["main", "コンテナ体系", "container"]] },
    { id: "receipt", label: "購入受入", icon: "truck", tabs: [["rec", "受入登録", "purchaserec"], ["apply", "コンテナへの投入", "invapply"]] },
    { id: "certificate", label: "成績書", icon: "list", tabs: [["main", "成績書台帳", "certificate"]] },
    { id: "invreq", label: "引当実績", icon: "check", tabs: [["main", "引当実績台帳", "invreq"], ["apply", "投入台帳", "invapply"]] },
    { id: "workrec", label: "作業実績", icon: "wrench", tabs: [["main", "作業実績台帳", "workrec"], ["apply", "投入台帳", "invapply"], ["cert", "成績書台帳", "certificate"]] },
    { id: "disposal", label: "修正処置", icon: "wrench", tabs: [["main", "修正処置明細", "disposal"]] },
    { id: "recur", label: "再発防止", icon: "check", tabs: [["main", "再発防止明細", "recur"]] },
    { id: "observe", label: "処置再発防止監視", icon: "search", tabs: [["disp", "修正処置の監視", "obsdisp"], ["prev", "再発防止の監視", "obsprev"]] },
    { id: "risk", label: "リスク", icon: "alert", tabs: [["main", "リスク台帳", "risk"]] },
    { id: "auditstdcheck", label: "監査標準項目", icon: "list", tabs: [["main", "監査標準項目", "auditstdcheck"]] },
    { id: "doctier", label: "文書レベル", icon: "list", tabs: [["main", "文書レベル台帳", "doctier"]] },
    { id: "doc", label: "コンテンツ", icon: "org", tabs: [["main", "文書体系", "doc"]] },
    { id: "report", label: "レポート", icon: "orders", tabs: [["main", "レポートひな形台帳", "report"]] },
    { id: "complaint", label: "異常報告", icon: "alert", tabs: [["all", "すべて", "complaint"], ["order", "顧客クレーム", "corder"], ["proc", "工程異常報告", "cproc"], ["equip", "設備異常", "cequip"]] },
    { id: "qrisk", label: "受注・工程リスク", icon: "alert", tabs: [["all", "すべて", "orderrisk"], ["detail", "受注リスク", "orderdetailrisk"], ["task", "工程リスク", "taskrisk"]] },
    { id: "auditstd", label: "監査基準", icon: "check", tabs: [["main", "監査標準台帳", "auditstd"]] },
    { id: "auditteam", label: "監査チーム", icon: "users", tabs: [["main", "監査チーム台帳", "auditteam"]] },
    { id: "audit", label: "監査計画", icon: "orders", tabs: [["main", "監査計画台帳", "audit"]] },
  ];

  const groups = [
    { id: "system", label: "システム", icon: "database", screens: ["unit"] },
    { id: "item", label: "品目", icon: "box", screens: ["itemkind", "item"] },
    { id: "process", label: "工程", icon: "production", screens: ["task", "taskgroup", "operation"] },
    { id: "sales", label: "営業", icon: "orders", screens: ["shipkind", "customer", "order"] },
    { id: "purchasing", label: "購買", icon: "truck", screens: ["shipkind", "supplier", "unrec", "purchase", "inspect"] },
    { id: "plan", label: "生産計画", icon: "production", screens: ["resplan", "rez", "itemoplan"] },
    { id: "result", label: "作業実績", icon: "wrench", screens: ["container", "receipt", "certificate", "invreq", "workrec"] },
    { id: "qcommon", label: "品質共通", icon: "alert", screens: ["disposal", "recur", "observe", "risk", "auditstdcheck"] },
    { id: "qdoc", label: "品質管理文書", icon: "list", screens: ["doctier", "doc", "report"] },
    { id: "quality", label: "品質管理", icon: "check", screens: ["complaint", "qrisk", "auditstd", "auditteam", "audit"] },
  ];

  window.OD_DOMAINS = { entities, screens, groups };
})();
