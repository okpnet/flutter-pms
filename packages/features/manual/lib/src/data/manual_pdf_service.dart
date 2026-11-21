import 'dart:typed_data';

import 'package:approval_stamp/approval_stamp.dart';
import 'package:markdown_pdf/markdown_pdf.dart';

import '../model/manual_wiki.dart';
import 'manual_approval.dart';

/// マニュアルを PDF にする。範囲は「このページ」か「文書全体」(ルートの下)。
/// 承認スタンプは、ルートの文書を出すときだけ付ける(子ページ単独の PDF には付けない。フッタの `{statusLabel}` は出る)。
class ManualPdfService {
  const ManualPdfService();

  /// PDF のバイト列を作る。[pageId] が子のとき、[whole] は属するルートの下全体。
  Future<Uint8List> build({
    required ManualWiki wiki,
    required String pageId,
    required bool whole,
    required AppSettings settings,
    required ManualApproval approval,
    required PdfFonts fonts,
    required DateTime printedAt,
    String printedBy = '',
    void Function(String problem)? onProblem,
  }) {
    final page = wiki.byId(pageId);
    final root = rootOf(wiki, pageId);
    final target = whole ? root : page;
    final markdown = whole ? _forPdf(wiki.exportAll(rootId: root?.id)) : wiki.exportPage(pageId);

    final style = StampStyle.resolve(settings.stamp.toJson(), approval.stampStyleOverride);
    final showStamp = whole ? true : (page?.isRoot ?? false);
    final cards = showStamp ? const StampContentBuilder().build(style, approval.steps, onProblem: onProblem) : const <StampCard>[];
    final latest = _lastApproved(approval.steps);
    final info = PdfDocumentInfo(
      title: target?.title ?? '',
      controlNumber: approval.controlNumber,
      versionCode: approval.versionCode,
      revision: target?.rev,
      statusLabel: approval.statusLabel,
      approvedAt: latest?.approvedAt,
      approvedBy: latest?.approvedStaff ?? '',
      printedAt: printedAt,
      printedBy: printedBy,
    );
    return const MarkdownPdfRenderer().render(
      markdown: markdown,
      settings: settings.pdf,
      info: info,
      fonts: fonts,
      stampStyle: style,
      stamps: cards,
      onProblem: onProblem,
    );
  }

  /// ページが属するルート(ルート自身は自分)。
  static dynamic rootOf(ManualWiki wiki, String pageId) {
    final page = wiki.byId(pageId);
    if (page == null) return null;
    final ancestors = wiki.ancestorsOf(pageId);
    return ancestors.isEmpty ? page : ancestors.first;
  }

  ApprovalStepInfo? _lastApproved(List<ApprovalStepInfo> steps) {
    ApprovalStepInfo? last;
    for (final s in steps) {
      if (!s.approved) continue;
      if (last == null || (s.approvedAt ?? DateTime(0)).isAfter(last.approvedAt ?? DateTime(0))) last = s;
    }
    return last;
  }

  /// 文書全体の Markdown(`ManualWiki.exportAll`)を、PDF 用に整える: HTML のアンカー行を除き、文書内のリンク `[表示](#id)` を文字にする。
  static String _forPdf(String md) => md
      .split('\n')
      .where((l) => !RegExp(r'^\s*<a id="[^"]*"></a>\s*$').hasMatch(l))
      .join('\n')
      .replaceAllMapped(RegExp(r'\[([^\]\n]+)\]\(#[^)\s]*\)'), (m) => m.group(1)!);
}
