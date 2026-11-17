/* 「この操作は許可されていません」のイメージ（access-denied.svg）を生成する。 node tools/gen-access-denied-svg.js
   480x360 の viewBox。工場の通路にある、ハザード柄の枠の鋼鉄のドア（かんぬきと南京錠）、赤い警告板（WARNING / ACCESS DENIED）、
   赤いランプのテンキー、床の黄線と注意プレート。背景にトラスと配管。人物は描かない。
   配色はこれまでのテーマ（ティール系の地、黄 #f2b705、赤 #b3261e）に合わせ、<img> でも prefers-color-scheme に追従するよう、色は SVG 内の CSS で持つ。 */
const fs = require("fs"), path = require("path");

/* ドアの縁のリベット（左右の列と上下の行） */
const rivets = [];
for (let y = 70; y <= 270; y += 40) rivets.push([226, y], [378, y]);
for (let x = 262; x <= 342; x += 40) rivets.push([x, 68], [x, 272]);
const rivetSvg = rivets.map(([x, y]) => `<circle cx="${x}" cy="${y}" r="2.6" fill="var(--steel-l)" stroke="var(--line)" stroke-width="1"/>`).join("\n      ");

/* テンキーの押しボタン (3 x 3) */
const keys = [];
for (let r = 0; r < 3; r++) for (let c = 0; c < 3; c++) keys.push(`<rect x="${418 + c * 7}" y="${171 + r * 6}" width="5" height="4" rx="1" fill="var(--steel-l)"/>`);

const font = "'Arial Narrow','Noto Sans JP','Hiragino Sans','Yu Gothic UI',Meiryo,Arial,sans-serif";

const svg = `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 480 360" width="480" height="360" role="img" aria-labelledby="t d">
  <title id="t">アクセスが拒否されたイメージ</title>
  <desc id="d">工場の通路にある、黄と黒の縞模様の枠で囲まれた鋼鉄のドア。かんぬきに南京錠がかかっています。左には「WARNING ACCESS DENIED」の赤い警告板があり、赤いランプのテンキーが付いています。このページを表示する権限がないことを表します。</desc>
  <style>
    :root { --bg: #c9dcdd; --wall2: #adc5c7; --floor: #9bb4b6; --steel: #6f8794; --steel-d: #5d7381; --steel-l: #a4b8c3; --line: #12202a; --warn: #f2b705;
            --sign: #16232b; --stop: #b3261e; --stop-soft: #e0584d; --lock: #2b3a44; --pad: #27343d; --led: #ff5a4d; --paper: #ffffff; }
    @media (prefers-color-scheme: dark) {
      :root { --bg: #16343a; --wall2: #1f464b; --floor: #12302f; --steel: #4c6574; --steel-d: #3d5361; --steel-l: #7d95a4; --line: #0a1217; --warn: #f0c36b;
              --sign: #0e171d; --stop: #b3261e; --stop-soft: #ff8a80; --lock: #22323c; --pad: #1b2830; --led: #ff6f61; --paper: #ffffff; }
    }
    .led { animation: blink 1.8s ease-in-out infinite; }
    @keyframes blink { 0%, 100% { opacity: .45; } 50% { opacity: 1; } }
    @media (prefers-reduced-motion: reduce) { .led { animation: none; opacity: 1; } }
  </style>
  <defs>
    <clipPath id="card"><rect width="480" height="360" rx="24"/></clipPath>
    <pattern id="haz" width="26" height="26" patternUnits="userSpaceOnUse" patternTransform="rotate(45)">
      <rect width="26" height="26" fill="var(--line)"/><rect width="13" height="26" fill="var(--warn)"/>
    </pattern>
    <pattern id="truss" width="30" height="30" patternUnits="userSpaceOnUse">
      <path d="M0 0 L30 30 M30 0 L0 30" stroke="var(--wall2)" stroke-width="3" fill="none"/>
    </pattern>
  </defs>
  <g clip-path="url(#card)">
    <rect width="480" height="360" fill="var(--bg)"/>

    <!-- 背景: 上部のトラス、右の支柱、配管、タンク -->
    <rect y="0" width="480" height="36" fill="url(#truss)"/>
    <rect y="0" width="480" height="5" fill="var(--wall2)"/><rect y="31" width="480" height="5" fill="var(--wall2)"/>
    <rect x="446" y="36" width="30" height="262" fill="url(#truss)"/>
    <rect x="444" y="36" width="4" height="262" fill="var(--wall2)"/><rect x="474" y="36" width="4" height="262" fill="var(--wall2)"/>
    <rect x="196" y="72" width="256" height="24" rx="12" fill="var(--wall2)"/>
    <rect x="426" y="72" width="24" height="122" rx="12" fill="var(--wall2)"/>
    <rect x="0" y="118" width="70" height="22" rx="11" fill="var(--wall2)"/>
    <rect x="0" y="230" width="34" height="68" rx="6" fill="var(--wall2)"/>
    <rect x="404" y="232" width="48" height="66" rx="6" fill="var(--wall2)"/>

    <!-- 床 -->
    <rect y="298" width="480" height="62" fill="var(--floor)"/>
    <rect y="296" width="480" height="4" fill="var(--wall2)"/>
    <path d="M0 316 H112 L88 360 M368 316 H480 M368 316 L392 360" fill="none" stroke="var(--warn)" stroke-width="4" stroke-linejoin="round"/>

    <!-- 警告板 -->
    <g>
      <rect x="28" y="38" width="140" height="238" rx="5" fill="var(--sign)" stroke="var(--stop)" stroke-width="4"/>
      <rect x="28" y="38" width="140" height="38" rx="5" fill="var(--stop)"/>
      <text x="98" y="65" text-anchor="middle" font-family="${font}" font-size="23" font-weight="800" letter-spacing="1" fill="var(--paper)">WARNING</text>
      <circle cx="98" cy="134" r="40" fill="none" stroke="var(--stop-soft)" stroke-width="3" opacity=".55"/>
      <path d="M82 128 v-16 a16 16 0 0 1 32 0 v16" fill="none" stroke="var(--stop-soft)" stroke-width="7" stroke-linecap="round"/>
      <rect x="74" y="126" width="48" height="40" rx="6" fill="var(--lock)" stroke="var(--stop-soft)" stroke-width="3"/>
      <circle cx="98" cy="142" r="5.5" fill="var(--sign)"/><path d="M95.5 144 h5 l2 12 h-9 Z" fill="var(--sign)"/>
      <text x="98" y="209" text-anchor="middle" font-family="${font}" font-size="30" font-weight="800" letter-spacing="1" fill="var(--paper)">ACCESS</text>
      <text x="98" y="248" text-anchor="middle" font-family="${font}" font-size="30" font-weight="800" letter-spacing="1" fill="var(--paper)">DENIED</text>
      <rect x="40" y="258" width="116" height="3" rx="1.5" fill="var(--stop)"/>
    </g>

    <!-- 鋼鉄のドア（ハザード柄の枠、ヒンジ、かんぬきと南京錠） -->
    <g>
      <rect x="196" y="40" width="212" height="260" rx="4" fill="url(#haz)" stroke="var(--line)" stroke-width="3"/>
      <rect x="210" y="54" width="184" height="236" rx="3" fill="var(--steel)" stroke="var(--line)" stroke-width="3"/>
      <rect x="219" y="62" width="166" height="220" rx="2" fill="var(--steel-d)" stroke="var(--line)" stroke-width="2"/>
      <path d="M219 62 H312 L219 196 Z" fill="var(--steel-l)" opacity=".28"/>
      ${rivetSvg}
      <g>
        <rect x="203" y="84" width="24" height="32" rx="3" fill="var(--steel-l)" stroke="var(--line)" stroke-width="2.5"/>
        <circle cx="215" cy="92" r="2.2" fill="var(--steel-d)"/><circle cx="215" cy="108" r="2.2" fill="var(--steel-d)"/>
        <rect x="203" y="226" width="24" height="32" rx="3" fill="var(--steel-l)" stroke="var(--line)" stroke-width="2.5"/>
        <circle cx="215" cy="234" r="2.2" fill="var(--steel-d)"/><circle cx="215" cy="250" r="2.2" fill="var(--steel-d)"/>
      </g>
      <rect x="288" y="172" width="92" height="10" rx="5" fill="var(--steel-l)" stroke="var(--line)" stroke-width="2.5"/>
      <rect x="346" y="152" width="26" height="50" rx="3" fill="var(--steel)" stroke="var(--line)" stroke-width="2.5"/>
      <rect x="352" y="158" width="8" height="38" rx="3" fill="var(--steel-l)" stroke="var(--line)" stroke-width="1.5"/>
      <rect x="374" y="160" width="14" height="34" rx="3" fill="var(--steel)" stroke="var(--line)" stroke-width="2.5"/>
      <path d="M354 202 v-9 a8 8 0 0 1 16 0 v9" fill="none" stroke="var(--line)" stroke-width="4.5" stroke-linecap="round"/>
      <path d="M354 202 v-9 a8 8 0 0 1 16 0 v9" fill="none" stroke="var(--steel-l)" stroke-width="2" stroke-linecap="round"/>
      <rect x="349" y="201" width="26" height="24" rx="4" fill="var(--steel-l)" stroke="var(--line)" stroke-width="2.5"/>
      <circle cx="362" cy="210" r="3.2" fill="var(--line)"/><rect x="360.8" y="210" width="2.4" height="8" rx="1" fill="var(--line)"/>
    </g>

    <!-- テンキー（赤いランプ） -->
    <g>
      <rect x="412" y="146" width="30" height="52" rx="4" fill="var(--pad)" stroke="var(--line)" stroke-width="2.5"/>
      <rect class="led" x="416" y="151" width="22" height="9" rx="2" fill="var(--led)"/>
      <circle class="led" cx="427" cy="206" r="3" fill="var(--led)"/>
      ${keys.join("\n      ")}
    </g>

    <!-- 床のプレート -->
    <g>
      <rect x="146" y="320" width="188" height="30" rx="3" fill="var(--steel-l)" stroke="var(--line)" stroke-width="2.5"/>
      <text x="240" y="332" text-anchor="middle" font-family="${font}" font-size="8.5" font-weight="700" letter-spacing=".4" fill="var(--line)">ACCESS TO PRODUCTION FLOORS</text>
      <text x="240" y="344" text-anchor="middle" font-family="${font}" font-size="8.5" font-weight="700" letter-spacing=".4" fill="var(--line)">REQUIRES CLEARANCE</text>
    </g>
  </g>
</svg>
`;
fs.writeFileSync(path.join(__dirname, "..", "access-denied.svg"), svg);
console.log("access-denied.svg", svg.length);
