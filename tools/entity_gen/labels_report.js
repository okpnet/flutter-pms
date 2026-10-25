/* 項目名の出どころの一覧を書く(DB のコメントに合わない=推論・仮置きのラベルをログに残すため)。
   gen.js から呼ばれる。出力: tools/entity_gen/out/labels_inferred.md */
'use strict';

const fs = require('fs');
const path = require('path');

module.exports = function writeLabelsReport({ entities, PROJECTS, schemaKeys, handKeys, od, out }) {
  const fromDb = entities.filter((e) => schemaKeys.has(e.key));
  const inferred = entities.filter((e) => !schemaKeys.has(e.key) && !handKeys.has(e.key));
  const hand = entities.filter((e) => handKeys.has(e.key));

  const row = (e) => `| ${PROJECTS[e.project].title} | \`${e.key}\` | ${e.label} | ${e.fields.map((f) => f.label).join('／')} |`;
  const header = ['| プロジェクト | 実体 | 名称 | 項目名 |', '|---|---|---|---|'];

  // 手書きの画面で、DB に無い項目(個別実装のログの「不明な箇所」)
  let bespokeNotes = [];
  const bespokeFile = path.join(od, 'schema.bespoke.log.md');
  if (fs.existsSync(bespokeFile)) {
    const text = fs.readFileSync(bespokeFile, 'utf8');
    const i = text.indexOf('## 不明な箇所');
    if (i >= 0) bespokeNotes = text.slice(i).split('\n').filter((l) => l.startsWith('- '));
  }

  const lines = [
    '# 項目名の出どころ(DB のコメントに合わない項目名の一覧)',
    '',
    '`tools/entity_gen/gen.js` が生成する。項目名は `schema.graphql` のコメント(DB の列コメント)を使うのが原則。',
    'コメントで裏付けられない項目名は、画面案(Html)の名称を日本語として推論して使い、ここに記録する(後で差し替えられるように)。',
    '',
    `## 1. DB のコメント(YAML × SQL)に合わせた実体 ― ${fromDb.length}`,
    '項目名は DB の列コメント。差し替え不要。',
    '',
    ...header,
    ...fromDb.map(row),
    '',
    `## 2. 画面案の名称を推論した実体(対応する YAML ページが無い子画面など)― ${inferred.length}`,
    '項目名は画面案(Html)のまま。DB のコメントが付いたら置き換える。',
    '',
    ...header,
    ...inferred.map(row),
    '',
    `## 3. 手書きの画面(会社情報・資源)― ${hand.length}`,
    '項目名は `tools/open-design/schema.bespoke.log.md` のとおり、YAML と DB のコメントに合わせたもの。DB に無い項目は次のとおり(推論)。',
    '',
    ...header,
    ...hand.map(row),
    '',
    '### DB に無い項目・不明な箇所(schema.bespoke.log.md より)',
    '',
    ...bespokeNotes,
    '',
  ];
  fs.mkdirSync(out, { recursive: true });
  fs.writeFileSync(path.join(out, 'labels_inferred.md'), lines.join('\n'), 'utf8');
  return { db: fromDb.length, inferred: inferred.length, hand: hand.length };
};
