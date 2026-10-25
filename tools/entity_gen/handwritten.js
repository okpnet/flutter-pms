/* 手書きの画面(会社情報・資源)の実体。tools/open-design/data.js と data.extra.js の値から作る。
   形式は gen.js の内部形式: { key, label, project, owner?, isTree?, fields, rows }
     fields: { key, label, kind(text|multiline|number|date|choice|reference), required, options?, ref? }
     rows  : { legacy, parent?, values } (values の参照は参照先の legacy ID) */
'use strict';

const YN = ['はい', 'いいえ'];

/** 項目: f(key, label, kind, opts) */
const f = (key, label, kind = 'text', o = {}) => ({
  key,
  label,
  kind,
  required: o.req !== false,
  options: o.options,
  ref: o.ref,
});

module.exports = function build(D, X) {
  const rd = (name) => X.reading?.[name] ?? '';
  const seq = (pfx, i, w = 3) => `${pfx}${String(i + 1).padStart(w, '0')}`;
  const row = (legacy, values, parent = null) => ({ legacy, parent, values });
  const out = [];

  /* ---------------------------------------------------------------- organization */
  const bySiteName = Object.fromEntries(D.sites.map((s) => [s.name, s.id]));
  const EMP_DEPT = { 'E-0012': 'd2', 'E-0034': 'd11', 'E-0101': 'd4', 'E-0145': 'd5', 'P-0207': 'd4', 'E-0233': 'd5', 'P-0251': 'd5', 'D-0318': 'd6', 'E-0402': 'd13', 'D-0419': 'd14', 'E-0467': 'd9', 'P-0503': 'd10' };
  const DEPT_OFFICE = { d1: 'hq', d2: 'hq', d3: 'kt', d4: 'kt', d5: 'kt', d6: 'kt', d7: 'kt', d8: 'hq', d9: 'hq', d10: 'hq', d11: 'hq', d12: 'ch', d13: 'ch', d14: 'ch' };
  const C = { ...D.company, ...(X.company ?? {}) };

  out.push({
    key: 'company', label: '会社情報', project: 'organization',
    fields: [f('name', '会社名'), f('pronunciation', '会社名の読み', 'text', { req: false }), f('nickname', '略称', 'text', { req: false }), f('ceo', '代表者名'), f('ceo_title', '代表者の役職'), f('web_page', 'ホームページ', 'text', { req: false }), f('address', 'メインサイト(本社)所在地'), f('remarks', '備考', 'multiline', { req: false })],
    rows: [row('company1', { name: C.name, pronunciation: C.pronunciation ?? '', nickname: C.nickname ?? '', ceo: C.ceo, ceo_title: C.ceoTitle, web_page: C.web_page ?? '', address: C.address, remarks: C.remarks ?? '' })],
  });
  out.push({
    key: 'provision', label: '提供', project: 'organization', owner: 'company',
    fields: [f('kind', '種別', 'choice', { options: ['製品', 'サービス'] }), f('code', '提供コード'), f('name', '名称'), f('detail', '詳細', 'multiline')],
    rows: D.offerings.map((o, i) => row(`provision${i + 1}`, { kind: o.kind, code: seq('PV-', i), name: o.name, detail: o.desc }, 'company1')),
  });
  out.push({
    key: 'position', label: '役割(役職)', project: 'organization', owner: 'company',
    fields: [f('name', '役割名称'), f('pronunciation', '読み', 'text', { req: false }), f('priority', '順位', 'number'), f('remarks', '備考', 'multiline', { req: false })],
    rows: D.positions.map((p, i) => row(p.id, { name: p.name, pronunciation: rd(p.name), priority: String(i + 1), remarks: p.desc }, 'company1')),
  });
  out.push({
    key: 'assignment', label: '割当', project: 'organization', owner: 'position',
    fields: [f('staff', '担当者', 'reference', { ref: 'staff' })],
    rows: D.assignments.map((a) => row(a.id, { staff: a.emp }, a.pos)),
  });
  out.push({
    key: 'site', label: '事業所', project: 'organization',
    fields: [f('code', '事業所コード'), f('name', '事業所名称'), f('pronunciation', '読み', 'text', { req: false }), f('type', '種別', 'choice', { options: ['本社', '工場', '物流', '営業所'] }), f('address', '所在地')],
    rows: D.sites.map((s) => row(s.id, { code: (X.siteCode?.[s.id] ?? ['', ''])[0] || s.id.toUpperCase(), name: s.name, pronunciation: (X.siteCode?.[s.id] ?? ['', ''])[1], type: s.type, address: s.address })),
  });
  out.push({
    key: 'deptkind', label: '部署区分', project: 'organization',
    fields: [f('name', '区分名')],
    rows: D.deptKinds.map((k) => row(k.id, { name: k.name })),
  });
  out.push({
    key: 'department', label: '部署', project: 'organization', isTree: true,
    fields: [f('code', '組織コード'), f('name', '組織名称'), f('pronunciation', '読み', 'text', { req: false }), f('site', '事業所', 'reference', { ref: 'site', req: false })],
    rows: D.departments.map((d, i) => row(d.id, { code: seq('DP', i), name: d.name, pronunciation: rd(d.name), site: DEPT_OFFICE[d.id] ?? '' }, d.parent)),
  });
  out.push({
    key: 'departmentkind', label: '部署区分の割当', project: 'organization', owner: 'department',
    fields: [f('kind', '部署区分', 'reference', { ref: 'deptkind' })],
    rows: D.departments.flatMap((d) => (d.kinds ?? []).map((k, i) => row(`${d.id}-${k}`, { kind: k }, d.id))),
  });
  out.push({
    key: 'staff', label: '作業者', project: 'organization',
    fields: [f('no', '担当者コード'), f('name', '名前'), f('pronunciation', '読み', 'text', { req: false }), f('sex', '性別', 'choice', { options: ['男性', '女性', 'その他'], req: false }), f('phone', '電話', 'text', { req: false }), f('private_phone', '緊急電話', 'text', { req: false }), f('site', '所属事業所', 'reference', { ref: 'site' }), f('type', '区分', 'choice', { options: ['社員', 'パート', '派遣'] }), f('dept', '部署', 'reference', { ref: 'department', req: false }), f('remarks', '備考', 'multiline', { req: false })],
    rows: D.employees.map((e) => row(e.no, { no: e.no, name: e.name, pronunciation: rd(e.name), sex: '', phone: '', private_phone: '', site: bySiteName[e.site] ?? '', type: e.type, dept: EMP_DEPT[e.no] ?? '', remarks: '' })),
  });

  /* 力量・資格のマスタ(資源)と、作業者が持つ分(組織) */
  const capNames = [...new Set(D.capabilities.map((c) => c.name))];
  if (!capNames.includes('溶接（TIG）')) capNames.push('溶接（TIG）');
  const licNames = [...new Set(D.licenses.map((l) => l.name))];
  if (!licNames.includes('アーク溶接等の業務特別教育')) licNames.push('アーク溶接等の業務特別教育');
  const capId = (n) => `ci${capNames.indexOf(n) + 1}`;
  const licId = (n) => `li${licNames.indexOf(n) + 1}`;

  out.push({
    key: 'staffcapability', label: '作業者の力量', project: 'organization', owner: 'staff',
    fields: [f('capability', '力量', 'reference', { ref: 'capability' }), f('level', '値(習熟度)', 'choice', { options: ['見習い', '一人で作業可', '他者の指導可'] })],
    rows: D.capabilities.map((c) => row(c.id, { capability: capId(c.name), level: c.level }, c.staff)),
  });
  out.push({
    key: 'stafflicense', label: '作業者の資格', project: 'organization', owner: 'staff',
    fields: [f('license', '資格', 'reference', { ref: 'license' }), f('number', '資格番号', 'text', { req: false }), f('acquired', '適用開始', 'date'), f('expires', '適用終了', 'date', { req: false })],
    rows: D.licenses.map((l) => row(l.id, { license: licId(l.name), number: l.number ?? '', acquired: l.acquired, expires: l.expires ?? '' }, l.staff)),
  });

  out.push({
    key: 'approvalpattern', label: '承認パターン', project: 'organization',
    fields: [f('name', 'パターン名称'), f('pronunciation', '読み', 'text', { req: false }), f('remarks', '備考', 'multiline', { req: false })],
    rows: D.apPatterns.map((p) => row(p.id, { name: p.name, pronunciation: rd(p.name), remarks: p.desc })),
  });
  out.push({
    key: 'approvalscope', label: '承認の範囲', project: 'organization', owner: 'approvalpattern',
    fields: [f('step', '段階', 'number'), f('position', '承認する役職', 'reference', { ref: 'position' }), f('department', '対象の組織', 'reference', { ref: 'department' }), f('include_children', '配下の部署を含む', 'choice', { options: YN })],
    rows: D.apScopes.map((s) => row(s.id, { step: String(s.step), position: s.pos, department: s.dept, include_children: s.incl ? 'はい' : 'いいえ' }, s.ap)),
  });
  out.push({
    key: 'approver', label: '承認できる人', project: 'organization', owner: 'approvalscope',
    fields: [f('staff', '担当者', 'reference', { ref: 'staff' }), f('kind', '種別', 'choice', { options: ['承認者', '代理承認者'] }), f('valid_from', '有効開始日', 'date'), f('valid_to', '有効終了日', 'date', { req: false })],
    rows: D.apApprovers.map((a) => row(a.id, { staff: a.staff, kind: a.kind, valid_from: a.from, valid_to: a.to ?? '' }, a.scope)),
  });

  /* ---------------------------------------------------------------- resource */
  out.push({
    key: 'capability', label: '力量', project: 'resource',
    fields: [f('code', '力量コード'), f('name', '力量名称'), f('pronunciation', '読み', 'text', { req: false }), f('detail', '詳細', 'multiline', { req: false }), f('reference_value', '基準', 'number'), f('max', '最大', 'number', { req: false }), f('min', '最小', 'number', { req: false }), f('step', '刻み', 'number', { req: false }), f('remarks', '備考', 'multiline', { req: false })],
    rows: capNames.map((n, i) => row(`ci${i + 1}`, { code: seq('CAP-', i), name: n, pronunciation: rd(n), detail: '', reference_value: X.capScale?.reference_value ?? '2', max: X.capScale?.max ?? '3', min: X.capScale?.min ?? '1', step: X.capScale?.step ?? '1', remarks: '' })),
  });
  out.push({
    key: 'license', label: '資格', project: 'resource',
    fields: [f('code', '資格コード'), f('name', '資格名称'), f('pronunciation', '読み', 'text', { req: false }), f('detail', '詳細', 'multiline', { req: false }), f('public_license', '公的', 'choice', { options: YN }), f('customer_license', '顧客', 'choice', { options: YN }), f('organization_license', '内部', 'choice', { options: YN }), f('remarks', '備考', 'multiline', { req: false })],
    rows: licNames.map((n, i) => {
      const k = X.licKind?.[n] ?? [0, 0, 0];
      return row(`li${i + 1}`, { code: seq('LIC-', i), name: n, pronunciation: rd(n), detail: '', public_license: YN[1 - k[0]], customer_license: YN[1 - k[1]], organization_license: YN[1 - k[2]], remarks: '' });
    }),
  });
  out.push({
    key: 'location', label: '場所', project: 'resource', isTree: true,
    fields: [f('code', '場所コード'), f('control_code', '管理コード', 'text', { req: false }), f('name', '場所名称'), f('pronunciation', '読み', 'text', { req: false }), f('type', '種別', 'choice', { options: ['サイト', 'エリア', '区画', 'ライン', 'その他'] }), f('use', '使用', 'choice', { options: ['使用中', '使用停止'] }), f('remarks', '備考', 'multiline', { req: false })],
    rows: D.locations.map((l, i) => row(l.id, { code: seq('LC-', i), control_code: '', name: l.name, pronunciation: rd(l.name), type: l.type, use: '使用中', remarks: l.desc ?? '' }, l.parent)),
  });
  out.push({
    key: 'equipmentcategory', label: '設備分類', project: 'resource',
    fields: [f('code', '分類コード'), f('name', '分類名称'), f('pronunciation', '読み', 'text', { req: false }), f('start', '適用開始', 'date', { req: false }), f('end', '適用終了', 'date', { req: false }), f('remarks', '備考', 'multiline', { req: false })],
    rows: D.eqCats.map((c, i) => row(c.id, { code: seq('EC-', i), name: c.name, pronunciation: rd(c.name), start: '', end: '', remarks: c.desc ?? '' })),
  });
  out.push({
    key: 'equipment', label: '設備', project: 'resource',
    fields: [f('code', '設備コード'), f('control_code', '管理コード', 'text', { req: false }), f('label_code', '表示コード', 'text', { req: false }), f('name', '設備名'), f('category', '設備分類', 'reference', { ref: 'equipmentcategory' }), f('location', '場所', 'reference', { ref: 'location' }), f('installed', '設置日', 'date', { req: false }), f('status', '状態', 'choice', { options: ['稼働中', '休止'] })],
    rows: D.equipments.map((e) => row(e.id, { code: e.code, control_code: '', label_code: '', name: e.name, category: e.cat, location: e.loc, installed: e.installed ?? '', status: e.status })),
  });
  out.push({
    key: 'inspectionkind', label: '点検整備区分', project: 'resource',
    fields: [f('code', '区分コード'), f('name', '区分名称'), f('pronunciation', '読み', 'text', { req: false }), f('cycle', '周期の目安', 'choice', { options: ['日', '月', '年'] }), f('remarks', '備考', 'multiline', { req: false })],
    rows: D.inspKinds.map((k, i) => row(k.id, { code: seq('IK-', i), name: k.name, pronunciation: rd(k.name), cycle: k.cycle, remarks: k.desc ?? '' })),
  });
  out.push({
    key: 'inspectionitem', label: '点検整備項目', project: 'resource',
    fields: [f('code', '点検コード'), f('name', '点検名称'), f('pronunciation', '読み', 'text', { req: false }), f('kind', '点検区分', 'reference', { ref: 'inspectionkind' }), f('part', '対象部位'), f('criteria', '判定基準', 'multiline', { req: false })],
    rows: D.inspItems.map((it, i) => row(it.id, { code: seq('II-', i), name: it.name, pronunciation: rd(it.name), kind: it.kind, part: it.part ?? '', criteria: it.criteria ?? '' })),
  });
  out.push({
    key: 'inspectionformula', label: '点検整備算式', project: 'resource', owner: 'inspectionitem',
    fields: [f('name', '算式名'), f('expr', '式'), f('unit', '単位', 'text', { req: false }), f('base', '基準値', 'text', { req: false })],
    rows: D.inspFormulas.map((m) => row(m.id, { name: m.name, expr: m.expr, unit: m.unit ?? '', base: m.base ?? '' }, m.item)),
  });
  const equipName = Object.fromEntries(D.equipments.map((e) => [e.id, e.name]));
  const kindName = Object.fromEntries(D.inspKinds.map((k) => [k.id, k.name]));
  out.push({
    key: 'inspectionoperation', label: '設備点検整備運用', project: 'resource',
    fields: [f('code', '運用コード'), f('name', '運用名称'), f('equipment', '設備', 'reference', { ref: 'equipment' }), f('kind', '点検整備区分', 'reference', { ref: 'inspectionkind' }), f('cycle', '周期', 'choice', { options: ['日', '月', '年'] })],
    rows: D.inspOps.map((o, i) => row(o.id, { code: seq('IO-', i), name: `${equipName[o.equip] ?? ''} ${kindName[o.kind] ?? ''}`.trim(), equipment: o.equip, kind: o.kind, cycle: o.cycle })),
  });
  out.push({
    key: 'operationline', label: '運用明細', project: 'resource', owner: 'inspectionoperation',
    fields: [f('item', '点検整備', 'reference', { ref: 'inspectionitem' }), f('seq', '順', 'number'), f('role', '担当の役職', 'text', { req: false })],
    rows: D.inspLines.map((l) => row(l.id, { item: l.item, seq: String(l.seq), role: l.role ?? '' }, l.op)),
  });
  out.push({
    key: 'inspectionschedule', label: '点検予定', project: 'resource',
    fields: [f('code', '管理コード'), f('name', '予定名称'), f('operation', '点検整備運用', 'reference', { ref: 'inspectionoperation' }), f('month', '予定月'), f('status', '状態', 'choice', { options: ['計画', '実施中', '完了'] })],
    rows: D.inspSchs.map((s, i) => row(s.id, { code: seq('IS-', i), name: `${s.month} 点検`, operation: s.op, month: s.month, status: s.status })),
  });
  out.push({
    key: 'scheduledetail', label: '予定明細', project: 'resource', owner: 'inspectionschedule',
    fields: [f('item', '点検整備項目', 'reference', { ref: 'inspectionitem' }), f('start', '開始予定日', 'date'), f('end', '終了予定日', 'date', { req: false }), f('staff', '担当者', 'reference', { ref: 'staff' })],
    rows: D.inspSchDets.map((d) => row(d.id, { item: d.item, start: d.date, end: '', staff: d.staff }, d.sch)),
  });
  out.push({
    key: 'inspectionresult', label: '点検実施', project: 'resource', owner: 'scheduledetail',
    fields: [f('date', '実施日', 'date'), f('staff', '実施者', 'reference', { ref: 'staff' }), f('result', '結果', 'choice', { options: ['合格', '不合格', '要再点検'] }), f('value', '測定値・所見', 'multiline', { req: false }), f('note', '備考', 'multiline', { req: false })],
    rows: D.inspRecs.map((r) => row(r.id, { date: r.date, staff: r.staff, result: r.result, value: r.value ?? '', note: r.note ?? '' }, r.det)),
  });
  out.push({
    key: 'inspectionfile', label: 'ファイル', project: 'resource', owner: 'inspectionresult',
    fields: [f('fname', 'ファイル名'), f('ftype', '種類', 'choice', { options: ['写真', '帳票'] }), f('regdate', '登録日', 'date')],
    rows: D.inspFiles.map((x) => row(x.id, { fname: x.fname, ftype: x.ftype, regdate: x.regdate }, x.rec)),
  });

  return out;
};
