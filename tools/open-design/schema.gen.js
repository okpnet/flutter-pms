/* tools/gen-schema.js が生成（YAML views × SQL コメント）。手で編集しない。 */
window.OD_SCHEMA = {
 "unit": {
  "label": "単位",
  "fields": [
   [
    "name",
    "単位名称",
    "t",
    {}
   ],
   [
    "pronunciation",
    "読み",
    "t",
    {
     "req": false
    }
   ],
   [
    "nickname",
    "略称",
    "t",
    {
     "req": false
    }
   ],
   [
    "detail",
    "詳細",
    "x",
    {
     "req": false
    }
   ],
   [
    "symbol",
    "記号",
    "t",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "キログラム",
    "キログラム",
    "",
    "",
    "kg",
    ""
   ],
   [
    "グラム",
    "グラム",
    "",
    "",
    "g",
    ""
   ],
   [
    "ミリメートル",
    "ミリメートル",
    "",
    "",
    "mm",
    ""
   ],
   [
    "個",
    "コ",
    "",
    "",
    "pcs",
    ""
   ],
   [
    "リットル",
    "リットル",
    "",
    "",
    "L",
    ""
   ]
  ]
 },
 "itemkind": {
  "label": "品目区分",
  "fields": [
   [
    "code",
    "品目コード",
    "t",
    {
     "req": false
    }
   ],
   [
    "name",
    "品目区分名称",
    "t",
    {}
   ],
   [
    "pronunciation",
    "読み",
    "t",
    {
     "req": false
    }
   ],
   [
    "nickname",
    "略称",
    "t",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "PRD",
    "製品",
    "セイヒン",
    "",
    ""
   ],
   [
    "SEM",
    "半製品",
    "ハンセイヒン",
    "",
    ""
   ],
   [
    "MAT",
    "原材料",
    "ゲンザイリョウ",
    "",
    ""
   ],
   [
    "PUR",
    "購入部品",
    "コウニュウブヒン",
    "",
    ""
   ]
  ]
 },
 "hscode": {
  "label": "HSコード",
  "fields": [
   [
    "code",
    "コード",
    "t",
    {
     "req": false
    }
   ],
   [
    "mstr_item_id",
    "品目",
    "r",
    {
     "ref": "item"
    }
   ],
   [
    "iso3166_3",
    "国",
    "t",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "8466.93",
    "item1",
    "",
    ""
   ],
   [
    "7318.15",
    "item1",
    "",
    ""
   ],
   [
    "7326.90",
    "item1",
    "",
    ""
   ]
  ]
 },
 "item": {
  "label": "品目",
  "fields": [
   [
    "code",
    "品目コード",
    "t",
    {}
   ],
   [
    "identification",
    "識別コード",
    "t",
    {
     "req": false
    }
   ],
   [
    "control_code",
    "管理コード",
    "t",
    {
     "req": false
    }
   ],
   [
    "label_code",
    "表示コード",
    "t",
    {
     "req": false
    }
   ],
   [
    "name",
    "品目名称",
    "t",
    {}
   ],
   [
    "pronunciation",
    "読み",
    "t",
    {
     "req": false
    }
   ],
   [
    "nickname",
    "略称",
    "t",
    {
     "req": false
    }
   ],
   [
    "mstr_item_kind_id",
    "品目種類",
    "r",
    {
     "ref": "itemkind"
    }
   ],
   [
    "detail",
    "詳細",
    "x",
    {
     "req": false
    }
   ],
   [
    "shared_unit_id",
    "個別単位",
    "r",
    {
     "req": false,
     "ref": "unit"
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "I-1000",
    "ITE-001",
    "ITE-001",
    "ITE-001",
    "ユニットA",
    "ユニットエー",
    "",
    "itemkind1",
    "",
    "unit4",
    "",
    ""
   ],
   [
    "I-1100",
    "ITE-002",
    "ITE-002",
    "ITE-002",
    "ブラケット",
    "ブラケット",
    "",
    "itemkind2",
    "",
    "unit4",
    "",
    "item1"
   ],
   [
    "I-1200",
    "ITE-003",
    "ITE-003",
    "ITE-003",
    "シャフト",
    "シャフト",
    "",
    "itemkind2",
    "",
    "unit4",
    "",
    "item1"
   ],
   [
    "I-1210",
    "ITE-004",
    "ITE-004",
    "ITE-004",
    "丸棒 SS400",
    "マルボウ エスエス400",
    "",
    "itemkind3",
    "",
    "unit1",
    "",
    "item3"
   ],
   [
    "I-1300",
    "ITE-005",
    "ITE-005",
    "ITE-005",
    "ボルト M8×20",
    "ボルト エム8×20",
    "",
    "itemkind4",
    "",
    "unit4",
    "",
    "item1"
   ]
  ]
 },
 "itemsizekind": {
  "label": "品目大きさ区分",
  "fields": [
   [
    "code",
    "大きさ区分コード",
    "t",
    {}
   ],
   [
    "pronunciation",
    "読み",
    "t",
    {
     "req": false
    }
   ],
   [
    "nickname",
    "略称",
    "t",
    {
     "req": false
    }
   ],
   [
    "names",
    "サイズ区分名称",
    "t",
    {}
   ],
   [
    "shared_unit_id",
    "単位",
    "r",
    {
     "ref": "unit"
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "ITE-001",
    "",
    "",
    "サイズ区分名称1",
    "unit1",
    "全長・全幅・全高のうち最大の寸法"
   ],
   [
    "ITE-002",
    "",
    "",
    "サイズ区分名称2",
    "unit1",
    ""
   ]
  ]
 },
 "itemsize": {
  "label": "品目大きさ",
  "fields": [
   [
    "mstr_item_size_kind_id",
    "品目大きさ区分",
    "r",
    {
     "ref": "itemsizekind"
    }
   ],
   [
    "detail",
    "詳細",
    "x",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "item2",
    "itemsizekind1",
    "",
    ""
   ],
   [
    "item3",
    "itemsizekind2",
    "",
    ""
   ]
  ]
 },
 "itemop": {
  "label": "品目工程運用",
  "fields": [
   [
    "control_code",
    "管理コード",
    "t",
    {
     "req": false
    }
   ],
   [
    "name",
    "運用名称",
    "t",
    {}
   ],
   [
    "pronunciation",
    "読み",
    "t",
    {
     "req": false
    }
   ],
   [
    "nickname",
    "略称",
    "t",
    {
     "req": false
    }
   ],
   [
    "mstr_operation_id",
    "工程運用",
    "r",
    {
     "ref": "operation"
    }
   ],
   [
    "detail",
    "詳細",
    "x",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "item1",
    "ITE-001",
    "ユニットA 標準",
    "ユニットエー ヒョウジュン",
    "",
    "operation1",
    "",
    ""
   ],
   [
    "item2",
    "ITE-002",
    "ブラケット 標準",
    "ブラケット ヒョウジュン",
    "",
    "operation2",
    "",
    ""
   ]
  ]
 },
 "task": {
  "label": "工程",
  "fields": [
   [
    "code",
    "工程コード",
    "t",
    {}
   ],
   [
    "name",
    "工程名称",
    "t",
    {}
   ],
   [
    "pronunciation",
    "読み",
    "t",
    {
     "req": false
    }
   ],
   [
    "nickname",
    "略称",
    "t",
    {
     "req": false
    }
   ],
   [
    "detail",
    "詳細",
    "x",
    {
     "req": false
    }
   ],
   [
    "class",
    "区分",
    "n",
    {
     "req": false
    }
   ],
   [
    "default_time",
    "標準時間",
    "n",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "T-100",
    "加工",
    "カコウ",
    "",
    "",
    "10",
    "10",
    "",
    ""
   ],
   [
    "T-110",
    "旋削",
    "センサク",
    "",
    "",
    "20",
    "20",
    "",
    "task1"
   ],
   [
    "T-120",
    "フライス",
    "フライス",
    "",
    "",
    "30",
    "30",
    "",
    "task1"
   ],
   [
    "T-200",
    "組立",
    "クミタテ",
    "",
    "",
    "40",
    "40",
    "",
    ""
   ],
   [
    "T-210",
    "最終検査",
    "サイシュウケンサ",
    "",
    "",
    "50",
    "50",
    "",
    "task4"
   ]
  ]
 },
 "taskres": {
  "label": "工程場所",
  "fields": [
   [
    "info_department_id",
    "組織情報",
    "r",
    {
     "req": false,
     "ref": "@departments:id:name"
    }
   ],
   [
    "mstr_stakeholder_id",
    "利害関係者",
    "r",
    {
     "req": false,
     "ref": "customer"
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "task2",
    "",
    "customer1",
    ""
   ],
   [
    "task3",
    "",
    "customer1",
    ""
   ]
  ]
 },
 "operation": {
  "label": "工程運用",
  "fields": [
   [
    "control_code",
    "管理コード",
    "t",
    {
     "req": false
    }
   ],
   [
    "name",
    "運用名称",
    "t",
    {}
   ],
   [
    "pronunciation",
    "読み",
    "t",
    {
     "req": false
    }
   ],
   [
    "nickname",
    "略称",
    "t",
    {
     "req": false
    }
   ],
   [
    "detail",
    "詳細",
    "x",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "OPE-001",
    "ユニットA製造",
    "ユニットエーセイゾウ",
    "",
    "",
    ""
   ],
   [
    "OPE-002",
    "部品加工",
    "ブヒンカコウ",
    "",
    "",
    ""
   ]
  ]
 },
 "shipkind": {
  "label": "配送区分",
  "fields": [
   [
    "code",
    "配送区分コード",
    "t",
    {}
   ],
   [
    "name",
    "配送区分名称",
    "t",
    {}
   ],
   [
    "pronunciation",
    "読み",
    "t",
    {
     "req": false
    }
   ],
   [
    "nickname",
    "略称",
    "t",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "SHI-001",
    "自社便",
    "ジシャビン",
    "",
    ""
   ],
   [
    "SHI-002",
    "宅配便",
    "タクハイビン",
    "",
    ""
   ],
   [
    "SHI-003",
    "航空便",
    "コウクウビン",
    "",
    ""
   ],
   [
    "SHI-004",
    "顧客引取",
    "コキャクヒキトリ",
    "",
    ""
   ]
  ]
 },
 "customer": {
  "label": "利害関係者",
  "fields": [
   [
    "code",
    "利害関係者コード",
    "t",
    {}
   ],
   [
    "control_code",
    "管理コード",
    "t",
    {
     "req": false
    }
   ],
   [
    "name",
    "名称",
    "t",
    {}
   ],
   [
    "pronunciation",
    "読み",
    "t",
    {
     "req": false
    }
   ],
   [
    "nickname",
    "略称",
    "t",
    {
     "req": false
    }
   ],
   [
    "is_customer",
    "顧客",
    "s",
    {
     "req": false,
     "opts": [
      "はい",
      "いいえ"
     ]
    }
   ],
   [
    "is_supplier",
    "外部供給者",
    "s",
    {
     "req": false,
     "opts": [
      "はい",
      "いいえ"
     ]
    }
   ],
   [
    "is_logistics",
    "配送サービサー",
    "s",
    {
     "req": false,
     "opts": [
      "はい",
      "いいえ"
     ]
    }
   ],
   [
    "mail",
    "メール",
    "t",
    {
     "req": false
    }
   ],
   [
    "mstr_shipping_kind_id",
    "配送区分",
    "r",
    {
     "req": false,
     "ref": "shipkind"
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "C-001",
    "000-0000-0001",
    "北斗機械株式会社",
    "ホクトキカイ",
    "",
    "はい",
    "はい",
    "はい",
    "",
    "shipkind1",
    ""
   ],
   [
    "C-002",
    "000-0000-0002",
    "みなと精密株式会社",
    "ミナトセイミツ",
    "",
    "いいえ",
    "いいえ",
    "いいえ",
    "",
    "shipkind1",
    ""
   ],
   [
    "C-003",
    "CUS-003",
    "あおば電機株式会社",
    "アオバデンキ",
    "",
    "はい",
    "はい",
    "はい",
    "",
    "shipkind1",
    ""
   ]
  ]
 },
 "order": {
  "label": "受注",
  "fields": [
   [
    "order_number",
    "注文番号",
    "t",
    {}
   ],
   [
    "customer_order_number",
    "顧客発注番号",
    "t",
    {
     "req": false
    }
   ],
   [
    "order_processing_date",
    "受注日",
    "d",
    {
     "req": false
    }
   ],
   [
    "delivery_date",
    "納期",
    "d",
    {
     "req": false
    }
   ],
   [
    "deadline",
    "完了期限",
    "d",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "SO-2610-001",
    "ORD-001",
    "2026-10-02",
    "2026-11-10",
    "2026-10-10",
    ""
   ],
   [
    "SO-2610-002",
    "ORD-002",
    "2026-10-08",
    "2026-11-20",
    "2026-10-11",
    ""
   ]
  ]
 },
 "orderdetail": {
  "label": "受注明細",
  "fields": [
   [
    "quantity",
    "数量",
    "n",
    {
     "req": false
    }
   ],
   [
    "cost",
    "単価",
    "n",
    {
     "req": false
    }
   ],
   [
    "delivery_date",
    "個別納期",
    "d",
    {
     "req": false
    }
   ],
   [
    "deadline",
    "個別完了期限",
    "d",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "order1",
    "200",
    "10",
    "2026-10-10",
    "2026-10-10",
    ""
   ],
   [
    "order1",
    "400",
    "20",
    "2026-10-11",
    "2026-10-11",
    ""
   ],
   [
    "order2",
    "150",
    "30",
    "2026-10-12",
    "2026-10-12",
    ""
   ]
  ]
 },
 "supplier": {
  "label": "利害関係者",
  "fields": [
   [
    "code",
    "利害関係者コード",
    "t",
    {}
   ],
   [
    "control_code",
    "管理コード",
    "t",
    {
     "req": false
    }
   ],
   [
    "name",
    "名称",
    "t",
    {}
   ],
   [
    "pronunciation",
    "読み",
    "t",
    {
     "req": false
    }
   ],
   [
    "nickname",
    "略称",
    "t",
    {
     "req": false
    }
   ],
   [
    "is_customer",
    "顧客",
    "s",
    {
     "req": false,
     "opts": [
      "はい",
      "いいえ"
     ]
    }
   ],
   [
    "is_supplier",
    "外部供給者",
    "s",
    {
     "req": false,
     "opts": [
      "はい",
      "いいえ"
     ]
    }
   ],
   [
    "is_logistics",
    "配送サービサー",
    "s",
    {
     "req": false,
     "opts": [
      "はい",
      "いいえ"
     ]
    }
   ],
   [
    "mail",
    "メール",
    "t",
    {
     "req": false
    }
   ],
   [
    "mstr_shipping_kind_id",
    "配送区分",
    "r",
    {
     "req": false,
     "ref": "shipkind"
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "S-001",
    "SUP-001",
    "北斗ファスナー株式会社",
    "ホクトファスナー",
    "",
    "はい",
    "はい",
    "はい",
    "",
    "shipkind1",
    ""
   ],
   [
    "S-002",
    "SUP-002",
    "大和鋼材株式会社",
    "ヤマトコウザイ",
    "",
    "いいえ",
    "いいえ",
    "いいえ",
    "",
    "shipkind1",
    ""
   ]
  ]
 },
 "unrec": {
  "label": "非計上",
  "fields": [
   [
    "decision_date",
    "決定日",
    "d",
    {
     "req": false
    }
   ],
   [
    "deadline",
    "納期",
    "d",
    {
     "req": false
    }
   ],
   [
    "expected_completion_date",
    "完了予定日",
    "d",
    {
     "req": false
    }
   ],
   [
    "planned_shipping_date",
    "出荷予定日",
    "d",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "2026-10-05",
    "2026-10-10",
    "2026-10-10",
    "2026-10-10",
    ""
   ]
  ]
 },
 "unrecdetail": {
  "label": "非計上明細",
  "fields": [
   [
    "quantity",
    "数量",
    "n",
    {
     "req": false
    }
   ],
   [
    "cost",
    "単価",
    "n",
    {
     "req": false
    }
   ],
   [
    "deadline",
    "個別納期",
    "d",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "unrec1",
    "50",
    "10",
    "2026-10-10",
    ""
   ]
  ]
 },
 "purchase": {
  "label": "発注",
  "fields": [
   [
    "register_at",
    "登録日",
    "d",
    {
     "req": false
    }
   ],
   [
    "purchase_order_date",
    "発注日",
    "d",
    {
     "req": false
    }
   ],
   [
    "deadline",
    "発注期限",
    "d",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "2026-10-06",
    "2026-10-20",
    "2026-10-10",
    ""
   ],
   [
    "2026-10-09",
    "2026-10-28",
    "2026-10-11",
    ""
   ]
  ]
 },
 "purdetail": {
  "label": "発注明細",
  "fields": [
   [
    "trans_resource_plan_id",
    "資材計画",
    "r",
    {
     "req": false,
     "ref": "resplan"
    }
   ],
   [
    "restocking_purchase",
    "在庫発注",
    "s",
    {
     "req": false,
     "opts": [
      "はい",
      "いいえ"
     ]
    }
   ],
   [
    "quantity",
    "数量",
    "n",
    {
     "req": false
    }
   ],
   [
    "period",
    "納期",
    "d",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "purchase1",
    "resplan1",
    "はい",
    "2000",
    "2026-10-10",
    ""
   ],
   [
    "purchase2",
    "resplan1",
    "いいえ",
    "800",
    "2026-10-11",
    ""
   ]
  ]
 },
 "purchaserec": {
  "label": "受入実績",
  "fields": [
   [
    "trans_purchase_detail_id",
    "発注明細",
    "r",
    {
     "ref": "purdetail"
    }
   ],
   [
    "receive_at",
    "受入日時",
    "d",
    {
     "req": false
    }
   ],
   [
    "quantity",
    "数量",
    "n",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "purdetail1",
    "2026-10-19",
    "10",
    ""
   ]
  ]
 },
 "purcert": {
  "label": "発注品目成績書",
  "fields": [
   [
    "trans_certificate_id",
    "成績書",
    "r",
    {
     "ref": "certificate"
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "purchaserec1",
    "certificate1",
    ""
   ]
  ]
 },
 "resplan": {
  "label": "資材計画",
  "fields": [
   [
    "trans_order_detail_id",
    "受注明細",
    "r",
    {
     "req": false,
     "ref": "orderdetail"
    }
   ],
   [
    "trans_unrecognized_detail_id",
    "非計上明細",
    "r",
    {
     "req": false,
     "ref": "unrecdetail"
    }
   ],
   [
    "register_at",
    "登録日時",
    "d",
    {
     "req": false
    }
   ],
   [
    "quantity",
    "数量",
    "n",
    {
     "req": false
    }
   ],
   [
    "inventory_resavation",
    "在庫数量",
    "n",
    {
     "req": false
    }
   ],
   [
    "deadline",
    "期限",
    "d",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "orderdetail1",
    "unrecdetail1",
    "2026-10-01",
    "10",
    "10",
    "2026-10-10",
    ""
   ],
   [
    "orderdetail1",
    "unrecdetail1",
    "2026-11-01",
    "20",
    "20",
    "2026-10-11",
    ""
   ]
  ]
 },
 "opsplan": {
  "label": "生産計画",
  "fields": [
   [
    "deadline",
    "完了期限",
    "d",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "resplan1",
    "2026-11-10",
    ""
   ],
   [
    "resplan1",
    "2026-11-05",
    ""
   ]
  ]
 },
 "workplan": {
  "label": "生産計画明細",
  "fields": [
   [
    "mstr_task_id",
    "工程",
    "r",
    {
     "ref": "task"
    }
   ],
   [
    "interval_plan",
    "予定作業時間",
    "n",
    {
     "req": false
    }
   ],
   [
    "start_at",
    "開始予定",
    "d",
    {
     "req": false
    }
   ],
   [
    "completion_at",
    "完了予定",
    "d",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "opsplan1",
    "task2",
    "10",
    "2026-10-21",
    "2026-10-25",
    ""
   ],
   [
    "opsplan1",
    "task4",
    "20",
    "2026-10-26",
    "2026-10-30",
    ""
   ]
  ]
 },
 "prodrez": {
  "label": "生産引き当て予約",
  "fields": [
   [
    "trans_work_plan_id",
    "生産計画詳細",
    "r",
    {
     "ref": "workplan"
    }
   ],
   [
    "quantity",
    "引当数量",
    "n",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "workplan1",
    "200",
    ""
   ]
  ]
 },
 "purrez": {
  "label": "購買引き当て予約",
  "fields": [
   [
    "trans_purchase_detail_id",
    "発注明細",
    "r",
    {
     "ref": "purdetail"
    }
   ],
   [
    "quantity",
    "引当数量",
    "n",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "purdetail1",
    "800",
    ""
   ]
  ]
 },
 "itemoptask": {
  "label": "品目工程運用明細",
  "fields": [
   [
    "mstr_item_id",
    "品目",
    "r",
    {
     "ref": "item"
    }
   ],
   [
    "sequence",
    "順",
    "n",
    {
     "req": false
    }
   ],
   [
    "default_interval",
    "標準時間",
    "n",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "itemop1",
    "item1",
    "10",
    "45",
    ""
   ],
   [
    "itemop1",
    "item1",
    "20",
    "90",
    ""
   ],
   [
    "itemop1",
    "item1",
    "30",
    "20",
    ""
   ]
  ]
 },
 "container": {
  "label": "コンテナ",
  "fields": [
   [
    "code",
    "コード",
    "t",
    {}
   ],
   [
    "name",
    "コンテナ名称",
    "t",
    {}
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "CN-01",
    "第1製造棟 ラック",
    "",
    ""
   ],
   [
    "CN-011",
    "ラック A段",
    "",
    "container1"
   ],
   [
    "CN-012",
    "ラック B段",
    "",
    "container1"
   ]
  ]
 },
 "invapply": {
  "label": "引き当て",
  "fields": [
   [
    "register_at",
    "引当日",
    "d",
    {
     "req": false
    }
   ],
   [
    "trans_inventory_request_id",
    "引当予約",
    "r",
    {
     "req": false,
     "ref": "invreq"
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "2026-10-20",
    "invreq1",
    ""
   ]
  ]
 },
 "invreq": {
  "label": "引き当て予約",
  "fields": [
   [
    "register_at",
    "引当予約日",
    "d",
    {
     "req": false
    }
   ],
   [
    "register_plan_at",
    "引当予定日",
    "d",
    {
     "req": false
    }
   ],
   [
    "trans_purchase_rez_id",
    "購買引き当て",
    "r",
    {
     "req": false,
     "ref": "purrez"
    }
   ],
   [
    "trans_product_rez_id",
    "生産引き当て",
    "r",
    {
     "req": false,
     "ref": "prodrez"
    }
   ],
   [
    "quantity",
    "引当数量",
    "n",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "2026-10-19",
    "2026-10-10",
    "purrez1",
    "prodrez1",
    "300",
    ""
   ]
  ]
 },
 "certificate": {
  "label": "成績書",
  "fields": [
   [
    "serial",
    "シリアル番号",
    "t",
    {
     "req": false
    }
   ],
   [
    "title",
    "件名",
    "t",
    {}
   ],
   [
    "class",
    "区分",
    "t",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "CT-2610-01",
    "丸棒 SS400 ミルシート",
    "",
    ""
   ]
  ]
 },
 "workrec": {
  "label": "作業実績",
  "fields": [
   [
    "trans_work_plan_id",
    "生産計画詳細",
    "r",
    {
     "ref": "workplan"
    }
   ],
   [
    "nth_time",
    "回数",
    "n",
    {
     "req": false
    }
   ],
   [
    "start_at",
    "開始",
    "d",
    {
     "req": false
    }
   ],
   [
    "stop_at",
    "終了",
    "d",
    {
     "req": false
    }
   ],
   [
    "qty",
    "作業数量",
    "n",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "workplan1",
    "40",
    "2026-10-21",
    "2026-10-10",
    "10",
    ""
   ]
  ]
 },
 "wrcert": {
  "label": "作業成績書",
  "fields": [
   [
    "trans_certificate_id",
    "成績書",
    "r",
    {
     "ref": "certificate"
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "workrec1",
    "certificate1",
    ""
   ]
  ]
 },
 "disposal": {
  "label": "異常処置",
  "fields": [
   [
    "trans_complaint_id",
    "異常",
    "r",
    {
     "ref": "complaint"
    }
   ],
   [
    "disposal_at",
    "処置年月日",
    "d",
    {
     "req": false
    }
   ],
   [
    "title",
    "件名",
    "t",
    {}
   ],
   [
    "detail",
    "詳細",
    "x",
    {
     "req": false
    }
   ],
   [
    "approvals",
    "承認",
    "t",
    {
     "req": false
    }
   ],
   [
    "approval_at",
    "承認日",
    "d",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "complaint1",
    "2026-10-12",
    "寸法不良品の選別",
    "",
    "",
    "2026-10-10",
    ""
   ]
  ]
 },
 "recur": {
  "label": "再発防止処置",
  "fields": [
   [
    "trans_disposal_id",
    "異常処置",
    "r",
    {
     "ref": "disposal"
    }
   ],
   [
    "occurent_at",
    "発生年月日",
    "d",
    {
     "req": false
    }
   ],
   [
    "approvals",
    "承認",
    "t",
    {
     "req": false
    }
   ],
   [
    "title",
    "件名",
    "t",
    {}
   ],
   [
    "detail",
    "詳細",
    "x",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "disposal1",
    "2026-10-14",
    "",
    "測定手順の見直し",
    "",
    ""
   ]
  ]
 },
 "obsdisp": {
  "label": "処置監視",
  "fields": [
   [
    "enable",
    "有効性",
    "s",
    {
     "req": false,
     "opts": [
      "はい",
      "いいえ"
     ]
    }
   ],
   [
    "observe_schedule",
    "監視測定予定日",
    "d",
    {
     "req": false
    }
   ],
   [
    "observe_at",
    "監視測定日",
    "d",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "はい",
    "2026-10-20",
    "2026-10-10",
    ""
   ]
  ]
 },
 "obsprev": {
  "label": "再発防止監視",
  "fields": [
   [
    "trans_observer_disposal_id",
    "監視",
    "r",
    {
     "ref": "obsdisp"
    }
   ],
   [
    "trans_recurrence_prevention_id",
    "再発防止",
    "r",
    {
     "ref": "recur"
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "obsdisp1",
    "recur1",
    ""
   ]
  ]
 },
 "risk": {
  "label": "リスク",
  "fields": [
   [
    "title",
    "件名",
    "t",
    {}
   ],
   [
    "detail",
    "詳細",
    "x",
    {
     "req": false
    }
   ],
   [
    "frequency",
    "発生頻度",
    "n",
    {
     "req": false
    }
   ],
   [
    "momentous",
    "重大度",
    "n",
    {
     "req": false
    }
   ],
   [
    "action",
    "対応可否",
    "n",
    {
     "req": false
    }
   ],
   [
    "residual_risk_id",
    "残留リスク",
    "r",
    {
     "req": false,
     "ref": "risk"
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "主要材料の納期遅延",
    "",
    "10",
    "10",
    "10",
    "risk1",
    ""
   ],
   [
    "測定器の校正切れ",
    "",
    "20",
    "20",
    "20",
    "risk1",
    ""
   ]
  ]
 },
 "prevention": {
  "label": "未然防止",
  "fields": [
   [
    "number",
    "番号",
    "t",
    {
     "req": false
    }
   ],
   [
    "title",
    "件名",
    "t",
    {}
   ],
   [
    "detail",
    "詳細",
    "x",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "risk1",
    "PRE-001",
    "件名1",
    "",
    ""
   ]
  ]
 },
 "preventiondetail": {
  "label": "未然防止処置",
  "fields": [
   [
    "number",
    "番号",
    "t",
    {
     "req": false
    }
   ],
   [
    "trans_risk_id",
    "リスク",
    "r",
    {
     "ref": "risk"
    }
   ],
   [
    "info_department_id",
    "組織情報",
    "r",
    {
     "ref": "@departments:id:name"
    }
   ],
   [
    "start_at",
    "開始日",
    "d",
    {
     "req": false
    }
   ],
   [
    "stop_at",
    "終了日",
    "d",
    {
     "req": false
    }
   ],
   [
    "title",
    "件名",
    "t",
    {}
   ],
   [
    "detail",
    "詳細",
    "x",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "prevention1",
    "PRE-001",
    "risk1",
    "",
    "2026-10-15",
    "2026-10-10",
    "件名1",
    "",
    ""
   ]
  ]
 },
 "auditstdcheck": {
  "label": "監査標準項目",
  "fields": [
   [
    "code",
    "監査標準項目コード",
    "t",
    {
     "req": false
    }
   ],
   [
    "control_code",
    "管理コード",
    "t",
    {
     "req": false
    }
   ],
   [
    "name",
    "標準項目名称",
    "t",
    {}
   ],
   [
    "pronunciation",
    "読み",
    "t",
    {
     "req": false
    }
   ],
   [
    "nickname",
    "略称",
    "t",
    {
     "req": false
    }
   ],
   [
    "mstr_audit_std_id",
    "監査標準",
    "r",
    {
     "ref": "auditstd"
    }
   ],
   [
    "detail",
    "詳細",
    "x",
    {
     "req": false
    }
   ],
   [
    "type_class",
    "型",
    "n",
    {}
   ],
   [
    "formula_class",
    "式",
    "n",
    {}
   ],
   [
    "arg_class",
    "引数",
    "t",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "AC-01",
    "AUD-001",
    "文書管理",
    "ブンショカンリ",
    "",
    "auditstd1",
    "最新版が現場に配布されている。",
    "10",
    "10",
    "",
    ""
   ],
   [
    "AC-02",
    "AUD-002",
    "校正管理",
    "コウセイカンリ",
    "",
    "auditstd1",
    "測定器の校正期限が有効である。",
    "20",
    "20",
    "",
    ""
   ]
  ]
 },
 "doctier": {
  "label": "文書階層",
  "fields": [
   [
    "code",
    "コード",
    "t",
    {}
   ],
   [
    "name",
    "名前",
    "t",
    {}
   ],
   [
    "pronunciation",
    "読み",
    "t",
    {
     "req": false
    }
   ],
   [
    "nickname",
    "略称",
    "t",
    {
     "req": false
    }
   ],
   [
    "attributive_noun",
    "限定名詞",
    "t",
    {}
   ],
   [
    "tier_number",
    "階層番号",
    "n",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "DOC-001",
    "品質マニュアル",
    "ヒンシツマニュアル",
    "",
    "限定名詞1",
    "10",
    ""
   ],
   [
    "DOC-002",
    "規程",
    "キテイ",
    "",
    "限定名詞2",
    "20",
    ""
   ],
   [
    "DOC-003",
    "手順書",
    "テジュンショ",
    "",
    "限定名詞3",
    "30",
    ""
   ]
  ]
 },
 "doc": {
  "label": "文書",
  "fields": [
   [
    "code",
    "コード",
    "t",
    {}
   ],
   [
    "control_number",
    "管理番号",
    "t",
    {}
   ],
   [
    "version_code",
    "版コード",
    "t",
    {
     "req": false
    }
   ],
   [
    "name",
    "文書名",
    "t",
    {}
   ],
   [
    "pronunciation",
    "読み",
    "t",
    {
     "req": false
    }
   ],
   [
    "nickname",
    "略称",
    "t",
    {
     "req": false
    }
   ],
   [
    "mstr_document_tier_id",
    "文書階層",
    "r",
    {
     "ref": "doctier"
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "QM-01",
    "DOC-001",
    "DOC-001",
    "品質マニュアル",
    "ヒンシツマニュアル",
    "",
    "doctier1",
    "",
    ""
   ],
   [
    "QP-10",
    "DOC-002",
    "DOC-002",
    "検査規程",
    "ケンサキテイ",
    "",
    "doctier2",
    "",
    "doc1"
   ],
   [
    "QW-101",
    "DOC-003",
    "DOC-003",
    "受入検査手順",
    "ウケイレケンサテジュン",
    "",
    "doctier3",
    "",
    "doc2"
   ]
  ]
 },
 "doccontent": {
  "label": "文書コンテンツ",
  "fields": [
   [
    "code",
    "コード",
    "t",
    {}
   ],
   [
    "name",
    "文書コンテンツ名",
    "t",
    {}
   ],
   [
    "pronunciation",
    "読み",
    "t",
    {
     "req": false
    }
   ],
   [
    "nickname",
    "略称",
    "t",
    {
     "req": false
    }
   ],
   [
    "detail",
    "詳細",
    "x",
    {
     "req": false
    }
   ],
   [
    "sequence",
    "シーケンス",
    "n",
    {
     "req": false
    }
   ],
   [
    "image_content",
    "イメージコンテンツ",
    "s",
    {
     "req": false,
     "opts": [
      "はい",
      "いいえ"
     ]
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "doc3",
    "DOC-001",
    "1. 目的",
    "",
    "",
    "受け入れる材料の品質を確認する。",
    "10",
    "はい",
    "",
    ""
   ],
   [
    "doc3",
    "DOC-002",
    "1.1 適用範囲",
    "",
    "",
    "購入材料のすべて。",
    "20",
    "いいえ",
    "",
    "doccontent1"
   ]
  ]
 },
 "report": {
  "label": "レポート",
  "fields": [
   [
    "code",
    "コード",
    "t",
    {}
   ],
   [
    "name",
    "名前",
    "t",
    {}
   ],
   [
    "pronunciation",
    "読み",
    "t",
    {
     "req": false
    }
   ],
   [
    "nickname",
    "略称",
    "t",
    {
     "req": false
    }
   ],
   [
    "is_default",
    "デフォルト",
    "s",
    {
     "req": false,
     "opts": [
      "はい",
      "いいえ"
     ]
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "RT-01",
    "検査成績書",
    "ケンサセイセキショ",
    "",
    "はい",
    ""
   ],
   [
    "RT-02",
    "月次不適合集計",
    "ゲツジフテキゴウシュウケイ",
    "",
    "いいえ",
    ""
   ]
  ]
 },
 "complaint": {
  "label": "異常",
  "fields": [
   [
    "occurent_at",
    "発生年月日",
    "d",
    {
     "req": false
    }
   ],
   [
    "title",
    "件名",
    "t",
    {}
   ],
   [
    "detail",
    "詳細",
    "x",
    {
     "req": false
    }
   ],
   [
    "approvals",
    "承認",
    "t",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "2026-10-12",
    "寸法公差の外れ",
    "",
    "",
    ""
   ],
   [
    "2026-10-15",
    "納入品の傷",
    "",
    "",
    ""
   ]
  ]
 },
 "compreceive": {
  "label": "異常報告受領",
  "fields": [
   [
    "receive_at",
    "受領日",
    "d",
    {
     "req": false
    }
   ],
   [
    "detail",
    "詳細",
    "x",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "complaint1",
    "2026-10-12",
    "",
    ""
   ]
  ]
 },
 "compstake": {
  "label": "利害関係者苦情",
  "fields": [
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "complaint1",
    ""
   ]
  ]
 },
 "corder": {
  "label": "注文苦情",
  "fields": [
   [
    "trans_complaint_id",
    "異常",
    "r",
    {
     "ref": "complaint"
    }
   ],
   [
    "trans_order_id",
    "注文",
    "r",
    {
     "ref": "order"
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "complaint1",
    "order1",
    ""
   ]
  ]
 },
 "cproc": {
  "label": "工程苦情",
  "fields": [
   [
    "trans_complaint_id",
    "異常",
    "r",
    {
     "ref": "complaint"
    }
   ],
   [
    "mstr_task_id",
    "工程",
    "r",
    {
     "ref": "task"
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "complaint1",
    "task2",
    ""
   ]
  ]
 },
 "cequip": {
  "label": "設備苦情",
  "fields": [
   [
    "trans_complaint_id",
    "異常",
    "r",
    {
     "ref": "complaint"
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "complaint1",
    ""
   ]
  ]
 },
 "orderrisk": {
  "label": "注文リスク",
  "fields": [
   [
    "trans_order_id",
    "注文",
    "r",
    {
     "ref": "order"
    }
   ],
   [
    "trans_risk_id",
    "リスク",
    "r",
    {
     "ref": "risk"
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "order1",
    "risk1",
    ""
   ]
  ]
 },
 "orderdetailrisk": {
  "label": "受注明細リスク",
  "fields": [
   [
    "trans_order_detail_id",
    "受注明細",
    "r",
    {
     "ref": "orderdetail"
    }
   ],
   [
    "risk_id",
    "リスク",
    "r",
    {
     "ref": "risk"
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "orderdetail1",
    "risk1",
    ""
   ]
  ]
 },
 "taskrisk": {
  "label": "工程リスク",
  "fields": [
   [
    "mstr_task_id",
    "工程",
    "r",
    {
     "ref": "task"
    }
   ],
   [
    "risk_id",
    "リスク",
    "r",
    {
     "ref": "risk"
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "task3",
    "risk1",
    ""
   ]
  ]
 },
 "auditstd": {
  "label": "監査標準",
  "fields": [
   [
    "code",
    "監査標準コード",
    "t",
    {
     "req": false
    }
   ],
   [
    "control_code",
    "管理コード",
    "t",
    {
     "req": false
    }
   ],
   [
    "name",
    "監査標準名称",
    "t",
    {}
   ],
   [
    "pronunciation",
    "読み",
    "t",
    {
     "req": false
    }
   ],
   [
    "nickname",
    "略称",
    "t",
    {
     "req": false
    }
   ],
   [
    "category",
    "区分",
    "n",
    {
     "req": false
    }
   ],
   [
    "detail",
    "詳細",
    "x",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "AS-01",
    "AUD-001",
    "内部監査標準",
    "ナイブカンサヒョウジュン",
    "",
    "10",
    "",
    ""
   ]
  ]
 },
 "auditteam": {
  "label": "監査チーム",
  "fields": [
   [
    "name",
    "チーム名",
    "t",
    {}
   ],
   [
    "trans_audit_id",
    "監査",
    "r",
    {
     "ref": "audit"
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "品質監査チームA",
    "audit1",
    ""
   ],
   [
    "製造監査チームB",
    "audit1",
    ""
   ]
  ]
 },
 "auditor": {
  "label": "監査員",
  "fields": [
   [
    "ccategory",
    "メンバー区分",
    "n",
    {
     "req": false
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "auditteam1",
    "10",
    ""
   ],
   [
    "auditteam1",
    "20",
    ""
   ]
  ]
 },
 "audit": {
  "label": "監査",
  "fields": [
   [
    "scheduled_start_date",
    "開始予定日",
    "d",
    {
     "req": false
    }
   ],
   [
    "expected_end_date",
    "終了予定日",
    "d",
    {
     "req": false
    }
   ],
   [
    "title",
    "件名",
    "t",
    {}
   ],
   [
    "detail",
    "詳細",
    "x",
    {
     "req": false
    }
   ],
   [
    "info_department_id",
    "組織情報",
    "r",
    {
     "req": false,
     "ref": "@departments:id:name"
    }
   ],
   [
    "mstr_stakeholder_id",
    "利害関係者",
    "r",
    {
     "req": false,
     "ref": "customer"
    }
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "2026-11-12",
    "2026-10-10",
    "件名1",
    "",
    "",
    "customer1",
    ""
   ]
  ]
 },
 "auditmember": {
  "label": "監査参加者",
  "fields": [
   [
    "class",
    "参加区分",
    "n",
    {}
   ],
   [
    "remarks",
    "備考",
    "x",
    {
     "req": false
    }
   ]
  ],
  "rows": [
   [
    "audit1",
    "10",
    ""
   ],
   [
    "audit1",
    "20",
    ""
   ]
  ]
 }
};
