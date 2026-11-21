import 'package:approval_stamp/approval_stamp.dart';
import 'package:approval_stamp_view/approval_stamp_view.dart';
import 'package:flutter/material.dart';

import '../i18n/strings_provider.dart';

/// 用紙のプレビュー(見本の文書 = 承認済みと承認待ちの 2 段)。[settings] の `stamp`・`pdf` で、スタンプの位置・ヘッダ/フッタの展開結果を見せる。
class SettingsPreview extends StatelessWidget {
  const SettingsPreview({super.key, required this.settings, required this.page, required this.onPage, required this.s});

  final AppSettings settings;
  final int page;
  final void Function(int) onPage;
  final DocumentSettingsStrings s;

  @override
  Widget build(BuildContext context) {
    final steps = [
      ApprovalStepInfo(
        approved: true,
        rejected: false,
        pending: false,
        stampLabelJa: '承認',
        stampLabelEn: 'Approval',
        priority: 1,
        approvedAt: DateTime(2026, 11, 3, 9, 30),
        approvedStaff: '田中 太郎',
        approvalName: '品質責任者',
        versionCode: 'v1.2',
        controlNumber: 'QM-001',
        documentRevision: 3,
      ),
      const ApprovalStepInfo(
        approved: false,
        rejected: false,
        pending: true,
        stampLabelJa: '承認待ち',
        stampLabelEn: 'Pending',
        priority: 2,
        approvalName: '製造責任者',
      ),
    ];
    final style = settings.stamp;
    final cards = const StampContentBuilder().build(style, steps);
    final info = PdfDocumentInfo(
      title: '品質マニュアル',
      controlNumber: 'QM-001',
      versionCode: 'v1.2',
      revision: 3,
      statusLabel: '承認待ち',
      approvedAt: DateTime(2026, 11, 3, 9, 30),
      approvedBy: '田中 太郎',
      printedAt: DateTime(2026, 11, 21),
      printedBy: '鈴木 一郎',
    );
    final resolver = PdfBandResolver(settings.pdf, info);
    final header = resolver.header(pageIndex: page, pages: 2, chapter: page == 0 ? '1. 目的' : '2. 手順');
    final footer = resolver.footer(pageIndex: page, pages: 2, chapter: page == 0 ? '1. 目的' : '2. 手順');
    final scheme = Theme.of(context).colorScheme;
    // 用紙の向きに依らず、幅 400px 程度に収める
    final pxPerMm = 400 / settings.pdf.page.widthMm;

    return Column(
      key: const Key('ds-preview'),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(s.preview.title, style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700)),
            const Spacer(),
            SegmentedButton<int>(
              key: const Key('ds-preview-page'),
              showSelectedIcon: false,
              segments: [
                ButtonSegment(value: 0, label: Text(s.preview.pageFirst)),
                ButtonSegment(value: 1, label: Text(s.preview.pageSecond)),
              ],
              selected: {page},
              onSelectionChanged: (v) => onPage(v.first),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Text(s.preview.sampleNote, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: scheme.onSurfaceVariant)),
        const SizedBox(height: 10),
        Center(
          child: StampPagePreview(
            settings: settings.pdf,
            style: style,
            cards: cards,
            pageIndex: page,
            pxPerMm: pxPerMm,
            headerText: header,
            footerText: footer,
          ),
        ),
      ],
    );
  }
}
