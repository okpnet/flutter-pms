/* メンテナンス中のイメージ（maintenance.svg）を生成する。 node tools/gen-maintenance-svg.js
   480x360 の viewBox。<img> で表示しても prefers-color-scheme に追従するよう、色は SVG 内の CSS で持つ。 */
const fs = require("fs"), path = require("path");

/* 歯車の外形パス: teeth 枚の歯、outer/inner は歯先/歯底の半径 */
function gear(cx, cy, teeth, outer, inner) {
  const pts = [];
  const step = (Math.PI * 2) / teeth;
  for (let i = 0; i < teeth; i++) {
    const a = i * step - Math.PI / 2;
    const w = step * 0.22; // 歯先の半幅
    const b = step * 0.36; // 歯元の半幅
    [[a - b, inner], [a - w, outer], [a + w, outer], [a + b, inner]].forEach(([t, r]) => pts.push([cx + Math.cos(t) * r, cy + Math.sin(t) * r]));
  }
  return "M" + pts.map(([x, y]) => `${x.toFixed(1)} ${y.toFixed(1)}`).join("L") + "Z";
}

const big = gear(185, 150, 12, 96, 76);
const small = gear(318, 232, 9, 64, 50);

const svg = `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 480 360" width="480" height="360" role="img" aria-labelledby="t d">
  <title id="t">メンテナンス中のイメージ</title>
  <desc id="d">大小2つの歯車とレンチ、手前に縞模様の通行止めバリケード。システムの保守作業中であることを表します。</desc>
  <style>
    :root { --bg: #dcefef; --gear: #0b6b6f; --gear2: #3b78a8; --ink: #12202a; --paper: #ffffff; --warn: #f2b705; --ground: #b9d6d7; }
    @media (prefers-color-scheme: dark) { :root { --bg: #1b3f43; --gear: #5cc3c6; --gear2: #7db4e0; --ink: #e8eff2; --paper: #16232b; --warn: #f0c36b; --ground: #12302f; } }
    .spin-a { transform-origin: 185px 150px; animation: spin 24s linear infinite; }
    .spin-b { transform-origin: 318px 232px; animation: spin 18s linear infinite reverse; }
    @keyframes spin { to { transform: rotate(360deg); } }
    @media (prefers-reduced-motion: reduce) { .spin-a, .spin-b { animation: none; } }
  </style>
  <defs>
    <pattern id="stripe" width="28" height="28" patternUnits="userSpaceOnUse" patternTransform="rotate(45)">
      <rect width="28" height="28" fill="var(--warn)"/><rect width="14" height="28" fill="var(--ink)"/>
    </pattern>
    <mask id="jaw"><rect width="100" height="100" fill="#fff"/><rect x="38" y="-2" width="24" height="32" rx="3" fill="#000"/></mask>
  </defs>
  <rect width="480" height="360" rx="24" fill="var(--bg)"/>
  <ellipse cx="240" cy="318" rx="200" ry="14" fill="var(--ground)"/>

  <g class="spin-a">
    <path d="${big}" fill="var(--gear)"/>
    <circle cx="185" cy="150" r="58" fill="none" stroke="var(--bg)" stroke-width="6" opacity=".55"/>
    <circle cx="185" cy="150" r="30" fill="var(--bg)"/>
    <circle cx="185" cy="150" r="12" fill="var(--gear)"/>
  </g>
  <g class="spin-b">
    <path d="${small}" fill="var(--gear2)"/>
    <circle cx="318" cy="232" r="22" fill="var(--bg)"/>
    <circle cx="318" cy="232" r="8" fill="var(--gear2)"/>
  </g>

  <!-- レンチ（斜め） -->
  <g transform="translate(372 70) rotate(35)">
    <g mask="url(#jaw)" transform="translate(-50 -30)">
      <circle cx="50" cy="34" r="32" fill="var(--ink)"/>
    </g>
    <rect x="-13" y="2" width="26" height="150" rx="13" fill="var(--ink)"/>
    <circle cx="0" cy="136" r="5" fill="var(--bg)"/>
  </g>

  <!-- バリケード -->
  <g>
    <rect x="70" y="262" width="12" height="56" rx="3" fill="var(--ink)"/>
    <rect x="398" y="262" width="12" height="56" rx="3" fill="var(--ink)"/>
    <rect x="52" y="248" width="376" height="34" rx="6" fill="url(#stripe)" stroke="var(--ink)" stroke-width="4"/>
  </g>

  <!-- 注意標識 -->
  <g transform="translate(62 44)">
    <path d="M0 -4 L34 54 H-34 Z" fill="var(--warn)" stroke="var(--ink)" stroke-width="4" stroke-linejoin="round"/>
    <rect x="-3.5" y="16" width="7" height="22" rx="3" fill="var(--ink)"/><circle cx="0" cy="45" r="4" fill="var(--ink)"/>
  </g>
</svg>
`;
fs.writeFileSync(path.join(__dirname, "..", "maintenance.svg"), svg);
console.log("maintenance.svg", svg.length);
