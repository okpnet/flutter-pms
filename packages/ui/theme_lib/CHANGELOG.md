## 0.1.0

- 静的な定数クラス(`AppTheme` / `AppRadius` など)を廃止し、`ThemeDefinition` → `ThemeBuilder` → `ThemeManager`(Riverpod)の構成へ作り直した。
- システム/ライト/ダークの切り替え、JSON の取り込み・書き出し、ログ出力を追加。
- `SpaceField` / `BorderField` の `copyWith` / `lerp` を実装。
- 修正: `secondary` / `tertiary` のボタンで `elevation: 0` が土台の値に上書きされていた。
- 修正: ダークモードで見えなくなるハードコード色(チェックボックスの `primaryFixed`、ラジオの黒枠)を ColorScheme 由来に変更。
- 破壊的変更: `theme_lib/apps/*` などの個別 import を廃止(`package:theme_lib/theme_lib.dart` のみ)。`spaceVirtica` → `spaceVertical`、`textStyleMode` の引数を `size: (t) => t.xxx` / `color:` に変更。入力欄・ドロップダウンの `toPrimary` は不要になったため削除(テーマ全体に適用済み)。

## 0.0.8

- 初期実装。
