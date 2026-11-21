import 'package:approval_stamp/approval_stamp.dart';
import 'package:approval_stamp_view/approval_stamp_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

StampCard _card({bool approved = true}) => const StampContentBuilder().build(
      StampStyle.standard,
      [
        ApprovalStepInfo(
          approved: approved,
          rejected: false,
          pending: !approved,
          stampLabelJa: approved ? '承認' : '承認待ち',
          stampLabelEn: approved ? 'Approval' : 'Pending',
          approvedAt: approved ? DateTime(2026, 11, 3) : null,
          approvedStaff: approved ? '田中 太郎' : null,
        ),
      ],
    ).single;

void main() {
  testWidgets('スタンプは、承認の文字・日付・承認者を出し、様式の大きさ(mm × 倍率)になる', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Center(
          child: ApprovalStampView(card: _card(), style: StampStyle.standard, pxPerMm: 4, rotationDeg: 0),
        ),
      ),
    );
    expect(find.text('承認'), findsOneWidget);
    expect(find.text('2026/11/03'), findsOneWidget);
    expect(find.text('田中 太郎'), findsOneWidget);
    final size = tester.getSize(find.byType(CustomPaint).last);
    expect(size, const Size(32 * 4, 32 * 4));
  });

  testWidgets('承認待ちのスタンプも出せる(破線・灰色の様式)', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Center(child: ApprovalStampView(card: _card(approved: false), style: StampStyle.standard)),
      ),
    );
    expect(find.text('承認待ち'), findsOneWidget);
  });

  testWidgets('円・二重枠・日付印の形でも描ける', (tester) async {
    for (final kind in ['circle', 'doubleFrame', 'dateStamp', 'roundRect']) {
      final style = StampStyle.fromJson({'shape': {'kind': kind}, 'color': {'fill': '#FFEEEE'}});
      await tester.pumpWidget(MaterialApp(home: Center(child: ApprovalStampView(card: _card(), style: style))));
      expect(tester.takeException(), isNull, reason: kind);
    }
  });

  testWidgets('用紙のプレビュー: 用紙の縦横比・スタンプの位置(右上)・ヘッダ/フッタの文字', (tester) async {
    final settings = PdfSettings.standard;
    await tester.pumpWidget(
      MaterialApp(
        home: Align(
          alignment: Alignment.topLeft,
          child: StampPagePreview(
            settings: settings,
            style: StampStyle.standard,
            cards: [_card()],
            pxPerMm: 2,
            headerText: const PdfBandText(left: '品質マニュアル', center: '', right: 'QM-001'),
            footerText: const PdfBandText(left: 'v1.2', center: '1 / 2', right: '2026/11/21'),
          ),
        ),
      ),
    );
    final page = tester.getSize(find.byKey(const Key('page-preview')));
    expect(page.width, closeTo(210 * 2, 0.01));
    expect(page.height, closeTo(297 * 2, 0.01));
    final stamp = tester.getTopLeft(find.byKey(const Key('stamp-preview-0')));
    expect(stamp.dx, closeTo((210 - 10 - 32) * 2, 0.5)); // 右の端から 10mm
    expect(find.text('QM-001'), findsOneWidget);
    expect(find.text('1 / 2'), findsOneWidget);
  });

  testWidgets('pages = first のとき、2 ページ目のプレビューにはスタンプが出ない', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Align(
          alignment: Alignment.topLeft,
          child: StampPagePreview(settings: PdfSettings.standard, style: StampStyle.standard, cards: [_card()], pageIndex: 1, pxPerMm: 1),
        ),
      ),
    );
    expect(find.byKey(const Key('stamp-preview-0')), findsNothing);
  });
}
