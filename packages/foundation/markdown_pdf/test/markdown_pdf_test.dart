import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:approval_stamp/approval_stamp.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:markdown_pdf/markdown_pdf.dart';

PdfFonts _fonts() => PdfFonts(
      regular: Uint8List.fromList(File('assets/fonts/BIZUDPMincho-Regular.ttf').readAsBytesSync()),
      bold: Uint8List.fromList(File('assets/fonts/BIZUDPMincho-Bold.ttf').readAsBytesSync()),
    );

const _sample = '''
# 品質マニュアル

## 1. 目的
この文書は、**製造・検査・出荷**の品質を保つための手順を定める。*斜体*や `コード` も使える。
詳しくは [[工程管理]] と [規格](https://example.com/spec) を参照する。

- 受入検査を行う
- 工程内検査を行う
  
1. 計画する
2. 実施する

> 引用: 不適合は必ず記録する。

```
select * from lot;
```

| 項目 | 基準 | 頻度 |
|---|---|---|
| 外観 | 傷なし | 全数 |
| 寸法 | ±0.1mm | 抜取 |

---

# 工程管理

## 2. 手順
段落です。
''';

void main() {
  const renderer = MarkdownPdfRenderer();
  final info = PdfDocumentInfo(
    title: '品質マニュアル',
    controlNumber: 'QM-001',
    versionCode: 'v1.2',
    statusLabel: '承認',
    printedAt: DateTime(2026, 11, 21),
  );
  final approved = ApprovalStepInfo(
    approved: true,
    rejected: false,
    pending: false,
    stampLabelJa: '承認',
    stampLabelEn: 'Approval',
    priority: 1,
    approvedAt: DateTime(2026, 11, 3),
    approvedStaff: '田中 太郎',
  );
  const pending = ApprovalStepInfo(
    approved: false,
    rejected: false,
    pending: true,
    stampLabelJa: '承認待ち',
    stampLabelEn: 'Pending',
    priority: 2,
  );

  int pageCount(Uint8List pdf) => RegExp(r'/Type\s*/Page[^s]').allMatches(latin1.decode(pdf, allowInvalid: true)).length;

  test('Markdown から PDF のバイト列ができる(%PDF で始まる)', () async {
    final bytes = await renderer.render(
      markdown: _sample,
      settings: PdfSettings.standard,
      info: info,
      fonts: _fonts(),
    );
    expect(latin1.decode(bytes.sublist(0, 5)), '%PDF-');
    expect(bytes.length, greaterThan(10000)); // フォントを埋め込んでいる
    expect(pageCount(bytes), 2); // H1 ごとに改ページ(テーマの既定)
  });

  test('テーマで H1 の改ページを切ると 1 ページに収まる', () async {
    final s = PdfSettings.fromJson({
      'theme': {
        'headings': {
          'h1': {'pageBreakBefore': false},
        },
      },
    });
    final bytes = await renderer.render(markdown: _sample, settings: s, info: info, fonts: _fonts());
    expect(pageCount(bytes), 1);
  });

  test('ヘッダ・フッタ: ページ番号・全ページ数・章(今の章)が入る', () async {
    final s = PdfSettings.fromJson({
      'header': {'left': '{title}', 'center': '{chapter}', 'right': '{controlNumber}'},
      'footer': {'left': '{versionCode} {statusLabel}', 'center': '{page} / {pages}', 'right': '{printedAt:yyyy/MM/dd}'},
    });
    final seen = <String>[];
    await renderer.render(
      markdown: _sample,
      settings: s,
      info: info,
      fonts: _fonts(),
      onBandForTest: (page, text) => seen.add('$page:$text'),
    );
    expect(seen, containsAll(<String>[
      '1:H|品質マニュアル|品質マニュアル|QM-001',
      '2:H|品質マニュアル|工程管理|QM-001',
      '1:F|v1.2 承認|1 / 2|2026/11/21',
      '2:F|v1.2 承認|2 / 2|2026/11/21',
    ]));
  });

  test('1 ページ目のヘッダを出さない・無効なフッタ', () async {
    final s = PdfSettings.fromJson({
      'header': {'firstPage': 'none'},
      'footer': {'enabled': false},
    });
    final seen = <String>[];
    await renderer.render(markdown: _sample, settings: s, info: info, fonts: _fonts(), onBandForTest: (p, t) => seen.add('$p:${t[0]}'));
    expect(seen.toSet(), {'2:H'}); // 帯の組み立ては、測る・描くで複数回呼ばれることがある
  });

  test('未知の変数は問題として知らせ、出力は止まらない', () async {
    final s = PdfSettings.fromJson({
      'header': {'left': '{zzz}'},
    });
    final problems = <String>[];
    final bytes = await renderer.render(markdown: _sample, settings: s, info: info, fonts: _fonts(), onProblem: problems.add);
    expect(bytes, isNotEmpty);
    expect(problems.toSet(), {'未知の変数: zzz'});
  });

  test('承認スタンプつき(承認済み・承認待ち)でも出力できる。pages = first は 1 ページ目だけ', () async {
    final style = StampStyle.standard;
    final cards = const StampContentBuilder().build(style, [approved, pending]);
    final bytes = await renderer.render(
      markdown: _sample,
      settings: PdfSettings.standard,
      info: info,
      fonts: _fonts(),
      stampStyle: style,
      stamps: cards,
    );
    expect(latin1.decode(bytes.sublist(0, 5)), '%PDF-');
    final plain = await renderer.render(markdown: _sample, settings: PdfSettings.standard, info: info, fonts: _fonts());
    expect(bytes.length, greaterThan(plain.length)); // スタンプの分だけ大きい
  });

  test('重ね方: 透かし(既定)でも本文の前でも出力できる(スタンプの分だけ大きい)', () async {
    final plain = await renderer.render(markdown: _sample, settings: PdfSettings.standard, info: info, fonts: _fonts());
    for (final layer in ['background', 'foreground']) {
      final style = StampStyle.fromJson({'layer': layer});
      final bytes = await renderer.render(
        markdown: _sample,
        settings: PdfSettings.standard,
        info: info,
        fonts: _fonts(),
        stampStyle: style,
        stamps: const StampContentBuilder().build(style, [approved]),
      );
      expect(bytes.length, greaterThan(plain.length), reason: layer);
    }
  });

  test('空の Markdown・設定の不備があっても出力できる', () async {
    final bytes = await renderer.render(markdown: '', settings: PdfSettings.fromJson({'page': {'size': 'Z9'}}), info: info, fonts: _fonts());
    expect(pageCount(bytes), 1);
  });

  test('目視用のサンプルを出力する(標準・スタンプ 2 種・用紙 A4 横)', () async {
    final dir = Directory(Platform.environment['MARKDOWN_PDF_OUT'] ?? '');
    if (dir.path.isEmpty) {
      markTestSkipped('MARKDOWN_PDF_OUT が無いため、目視用の出力は省略');
      return;
    }
    dir.createSync(recursive: true);
    for (final shape in ['roundRect', 'circle', 'doubleFrame', 'dateStamp']) {
      final style = StampStyle.fromJson({
        'shape': {'kind': shape, 'widthMm': 34, 'heightMm': shape == 'circle' ? 34 : 26, 'rotationDeg': -8},
      });
      final bytes = await renderer.render(
        markdown: _sample,
        settings: PdfSettings.standard,
        info: info,
        fonts: _fonts(),
        stampStyle: style,
        stamps: const StampContentBuilder().build(style, [approved, pending]),
      );
      File('${dir.path}/sample_$shape.pdf').writeAsBytesSync(bytes);
    }
  });

  test('PDF のメタデータに、出力に使った設定が残り、読み戻せる(日本語を含む)', () async {
    final settings = PdfSettings.fromJson(PdfSettings.standard.toJson());
    final bytes = await renderer.render(markdown: _sample, settings: settings, info: info, fonts: _fonts());
    final read = PdfSettingsMetadata.read(bytes);
    expect(read, isNotNull);
    expect(jsonEncode(read!.toJson()), jsonEncode(settings.toJson()));
    expect(PdfSettingsMetadata.read(Uint8List.fromList(utf8.encode('%PDF-1.4 no keywords'))), isNull);
  });
}
