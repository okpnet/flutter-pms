// --only=<機能のパッケージ名> を指定すると、その機能の生成物だけを書き出す(段階的な適用用。ほかの機能・共有の出力は書かない)
const a = process.argv.find((x) => x.startsWith('--only='));
const ONLY = a ? a.slice('--only='.length) : null;
const skips = (file) => !!ONLY && !String(file).split('\\').join('/').includes('/features/' + ONLY + '/');
module.exports = { ONLY, skips };
