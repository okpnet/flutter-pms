/* 手書きの画面定義(domains.base.js)へ、YAML views × SQL コメントから生成した定義(schema.gen.js)を重ねる。
   再生成: node tools/gen-schema.js （不明な箇所は schema.gen.log.md に出力） */
(function () {
  const D = window.OD_DOMAINS, S = window.OD_SCHEMA || {};
  D.entities.forEach((e) => {
    const o = S[e.key];
    if (!o) return;
    e.label = o.label;
    e.fields = o.fields;
    e.rows = o.rows;
  });
})();
