# loadux_lib

読み込み中の表示(円 `LoadingIndicator`・バー `LoadingBar`)の部品。保守で見た目を変えるときは、ここだけを直す。

## 設計
1.  各画面・ライブラリは、`CircularProgressIndicator`・`LinearProgressIndicator` を直接使わず、この部品を使う。
1.  見た目(色・大きさ・線の太さ・バーの高さ・文言の様式)は `LoadingTheme`(`ThemeExtension`)で決める。`ThemeData.extensions` に入れて差し替える(依存の注入)。入れなければ既定。**`theme_lib` には依存しない**(軽く保ち、モバイルのアプリ・下の層のライブラリ(`flgtable_lib`)からも使えるようにする)。`theme_lib`(またはアプリ)が、テーマの色・形から `LoadingTheme` を作って入れる。
1.  文言は持たない(呼び出し側が多言語にして `label` で渡す)。

## 使い方
`doc/contents/usage.md`。

## 規則/仕様
`packages/features/CLAUDE.md` の[規則/仕様]を適用する。
