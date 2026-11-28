// issue/checks/*.md の先頭(状態・場所)を読み、issue/checks/README.md の一覧を作り直す。
// 実行: リポジトリのルートで `node tools/checks_index/checks_index.js`
// Claude の補助のツール。アプリの実行には使わない。
const fs = require('fs');
const path = require('path');

const dir = path.join(__dirname, '..', '..', 'issue', 'checks');
const order = ['不具合', '未確認', '要再確認', '有提案', '未対応', '一部対応', '対応済', '確認済'];

const items = fs
  .readdirSync(dir)
  .filter((f) => /^\d+\.md$/.test(f))
  .sort()
  .map((f) => {
    const text = fs.readFileSync(path.join(dir, f), 'utf8');
    const head = (text.match(/^---\r?\n([\s\S]*?)\r?\n---/) || [, ''])[1];
    const get = (k) => ((head.match(new RegExp('^' + k + ':\\s*(.*)$', 'm')) || [, ''])[1] || '').replace(/\s+#.*$/, '').trim();
    const crit = (text.match(/## 基準\r?\n([\s\S]*?)\r?\n\r?\n## 履歴/) || [, ''])[1].trim().split(/\r?\n/)[0];
    return { file: f, no: get('no'), place: get('場所'), status: get('状態'), crit };
  });

const count = {};
items.forEach((i) => (count[i.status] = (count[i.status] || 0) + 1));
const statuses = [...order.filter((s) => count[s]), ...Object.keys(count).filter((s) => !order.includes(s))];

let md = fs.readFileSync(path.join(dir, 'README_head.md'), 'utf8').trimEnd() + '\n\n';
md += '## 状態ごとの件数\n\n| 状態 | 件数 |\n|---|---|\n';
statuses.forEach((s) => (md += `| ${s} | ${count[s]} |\n`));
md += `| 合計 | ${items.length} |\n\n`;
for (const s of statuses) {
  md += `## ${s}(${count[s]})\n\n| No | 場所 | 基準(先頭の1行) |\n|---|---|---|\n`;
  for (const i of items.filter((x) => x.status === s)) {
    const c = i.crit.length > 60 ? i.crit.slice(0, 60) + '…' : i.crit;
    md += `| [${i.no}](${i.file}) | ${i.place.replace(/\|/g, '/')} | ${c.replace(/\|/g, '/')} |\n`;
  }
  md += '\n';
}
fs.writeFileSync(path.join(dir, 'README.md'), md);
console.log('README.md を更新(' + items.length + ' 件)');
