/* 各プロジェクトの CLAUDE.md に、生成した実体の一覧を書く(マーカーの間を置き換える)。
   gen.js から呼ばれる。 */
'use strict';

const fs = require('fs');
const path = require('path');

const BEGIN = '<!-- entity_gen:begin -->';
const END = '<!-- entity_gen:end -->';

module.exports = function writeClaude({ PROJECTS, entities, features }) {
  const label = new Map(entities.map((e) => [e.key, e.label]));

  for (const pkg of Object.keys(PROJECTS)) {
    const list = entities.filter((e) => e.project === pkg);
    if (!list.length) continue;
    const file = path.join(features, pkg, 'CLAUDE.md');
    if (!fs.existsSync(file)) continue;

    const rows = list.map((e) => {
      const structure = e.isTree
        ? 'ツリー構造'
        : e.owner
          ? `子の台帳(親: ${label.get(e.owner) ?? e.owner})`
          : 'テーブル構造';
      const refs = [...new Set(e.fields.filter((f) => f.kind === 'reference').map((f) => f.ref))];
      return `| ${e.label} | \`${e.key}\` | ${structure} | ${e.fields.length} | ${refs.map((r) => `\`${r}\``).join(', ')} |`;
    });
    const block = [
      BEGIN,
      '## 実体の画面(生成)',
      '台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。',
      '生成物は直接編集しない(再生成: リポジトリのルートで `node tools/entity_gen/gen.js`)。画面の作りは `packages/ui/entity_screens`、機能への組み込みは `feature_shared` の `EntityFeatureModule`。',
      '専用の画面が必要な実体は、生成の対象から外して手書きする(`shared_master` の配送区分を参考にする)。',
      '',
      '| 実体 | キー | 構造 | 項目数 | 参照先 |',
      '|---|---|---|---|---|',
      ...rows,
      END,
      '',
    ].join('\n');

    let text = fs.readFileSync(file, 'utf8');
    const b = text.indexOf(BEGIN);
    const e = text.indexOf(END);
    if (b >= 0 && e > b) {
      text = text.slice(0, b) + block + text.slice(e + END.length).replace(/^\n/, '');
    } else {
      const anchor = text.includes('\n## example と多言語') ? '\n## example と多言語' : '\n## 規則/仕様';
      text = text.replace(anchor, `\n${block}${anchor}`);
    }
    fs.writeFileSync(file, text, 'utf8');
  }
};
