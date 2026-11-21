# approval_stamp_view

承認スタンプの画面の部品。様式・内容・配置の計算は `packages/foundation/approval_stamp`(純 Dart)、PDF の描画は `markdown_pdf`。この部品は画面(Flutter)の描画だけを持つ。

1.  `ApprovalStampView`: スタンプ 1 つ。`StampStyle`(形・色・すかし・破線)と `StampCard`(行)から描く。PDF のスタンプと同じ様式。`pxPerMm` で縮尺を決める。
1.  `StampPagePreview`: 用紙(`PdfSettings.page`)の上に、`StampLayout` の位置でスタンプを置き、ヘッダ・フッタの文字(展開済み)を出す縮小のプレビュー。設定の画面と、文書の表示が使う。
1.  色は様式の値(`#RRGGBB`・`$変数`)から取る(用紙・スタンプは文書の見た目のため、アプリのテーマの色は使わない。枠・影・薄い罫線だけ `ColorScheme`)。
1.  テストは `flutter test`(`test/approval_stamp_view_test.dart`)。
