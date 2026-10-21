/* サンプルデータ（実在しない架空の値）。実運用では API から取得する。 */
window.OD_DATA = {
  user: { name: "鈴木 一郎", role: "生産管理部" },
  asOf: "2026年10月19日 時点",
  company: {
    name: "サンプル精工株式会社",
    ceo: "山田 太郎",
    ceoTitle: "代表取締役社長",
    address: "〒100-0001 東京都千代田区千代田1-1-1 サンプルビル12F",
  },
  headcount: { employee: 412, part: 168, dispatch: 73 },
  vendors: 48,
  customers: 126,
  sites: [
    { id: "hq",   name: "本社",       type: "本社",   icon: "building", people: 78,  address: "〒100-0001 東京都千代田区千代田1-1-1 サンプルビル12F" },
    { id: "kt",   name: "関東工場",   type: "工場",   icon: "factory",  people: 214, address: "〒330-0001 埼玉県さいたま市大宮区桜木町2-3-4 サンプル工業団地A-5" },
    { id: "ks",   name: "関西工場",   type: "工場",   icon: "factory",  people: 163, address: "〒578-0001 大阪府東大阪市荒本北1-2-3 サンプルテクノパーク内" },
    { id: "ch",   name: "中部物流",   type: "物流",   icon: "truck",    people: 92,  address: "〒485-0001 愛知県小牧市大字入鹿出新田1234-5 サンプル物流センター" },
    { id: "ky",   name: "九州営業所", type: "営業所", icon: "office",   people: 61,  address: "〒812-0001 福岡県福岡市博多区博多駅前3-4-5 サンプル博多ビル6F" },
    { id: "hk",   name: "北海道営業所", type: "営業所", icon: "office", people: 45,  address: "〒060-0001 北海道札幌市中央区北一条西2-3-4 サンプル札幌ビル3F" },
  ],
  offerings: [
    { kind: "製品", name: "精密切削部品", desc: "自動車・産業機械向けの金属切削部品。ミクロン単位の寸法精度で量産対応。" },
    { kind: "製品", name: "金型・治具", desc: "プレス用金型と組立治具の設計から製作まで。短納期の改修にも対応。" },
    { kind: "製品", name: "組立ユニット", desc: "複数部品を組み付けた完成ユニットを、検査記録付きで納品。" },
    { kind: "サービス", name: "受託加工", desc: "お客様支給図面での切削・研磨・表面処理を一括して受託。" },
    { kind: "サービス", name: "試作開発支援", desc: "量産前の試作、評価、設計改善提案まで伴走。" },
    { kind: "サービス", name: "保守・メンテナンス", desc: "納入設備と金型の定期点検、部品交換、修理を提供。" },
  ],
};
