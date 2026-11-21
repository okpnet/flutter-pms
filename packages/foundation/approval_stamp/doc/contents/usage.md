# approval_stamp の使い方

```dart
import 'package:approval_stamp/approval_stamp.dart';

// 1. 設定(info_app.settings。JSON のオブジェクトまたは文字列)を読む
final problems = Problems();
final settings = AppSettings.parse(row.settings, problems: problems); // 不備は problems へ(ログに出す)

// 2. スタンプの様式 = 標準 + 承認パターンの上書き(stamp_style。NULL 可)
final style = StampStyle.resolve(settings.stamp.toJson(), pattern.stampStyle);

// 3. 承認の段(v_document_approval_stamp の行)から、スタンプの行を作る
final cards = const StampContentBuilder().build(style, steps);   // 段が 0 件 = 空 = 承認不要(出さない)

// 4. 用紙の上の位置(画面のプレビューと PDF で同じ)
final page = settings.pdf.page;
final placements = const StampLayout().place(style,
    pageWidthMm: page.widthMm, pageHeightMm: page.heightMm, count: cards.length, pageIndex: pageIndex);

// 5. PDF のヘッダ・フッタ(ページごと)
final bands = PdfBandResolver(settings.pdf, PdfDocumentInfo(title: '品質マニュアル', controlNumber: 'QM-001'));
final header = bands.header(pageIndex: 0, pages: 5);   // 出さないページは null
final footer = bands.footer(pageIndex: 0, pages: 5);   // ('{page} / {pages}' → '1 / 5')
```

## 書式
- `{変数}`・`{変数:書式}`。波括弧は `{{`・`}}`。日時の書式は `yyyy`・`MM`・`dd`・`HH`・`mm`・`ss`・`G`(元号)・`E`(和暦の年)。数値は `{page:00}`(0 埋め)。
- 色は `#RRGGBB`・`#AARRGGBB`・`$変数`(`pdf.theme.vars`)。

## 設定の JSON(標準)
`tools/docker/postgresql/script/06_cteate_test.sql` の `info_app.settings` の既定値を参照。
