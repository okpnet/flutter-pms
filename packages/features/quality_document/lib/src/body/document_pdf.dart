import 'dart:typed_data';

import 'package:approval_stamp/approval_stamp.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:markdown_pdf/markdown_pdf.dart';

/// 文書の公開・承認の状態。DB のビュー(`v_document_publication`・`v_document_approval_stamp`)の値を詰めるだけで、判定は持たない。
class DocumentApproval {
  const DocumentApproval({
    this.pending = false,
    this.readable = true,
    this.steps = const [],
    this.statusLabel = '',
    this.controlNumber = '',
    this.versionCode = '',
    this.stampStyleOverride,
  });

  /// 承認待ちの段がある。
  final bool pending;

  /// 読める(公開済み、承認の該当者、管理者)。
  final bool readable;

  /// 承認の段ごとの状態。空のときスタンプを出さない(承認不要)。
  final List<ApprovalStepInfo> steps;
  final String statusLabel;
  final String controlNumber;
  final String versionCode;

  /// 承認パターンごとのスタンプの様式(`mstr_approval_pattern.stamp_style`。NULL は標準)。
  final Object? stampStyleOverride;

  static const none = DocumentApproval();
}

/// 文書の承認の状態の取得元。アプリが GraphQL 版に差し替える(Strategy)。既定は承認なし(公開・スタンプなし)。
abstract interface class IDocumentApprovalSource {
  Future<DocumentApproval> of(String contentId);
}

class NoDocumentApprovalSource implements IDocumentApprovalSource {
  const NoDocumentApprovalSource();

  @override
  Future<DocumentApproval> of(String contentId) async => DocumentApproval.none;
}

final documentApprovalSourceProvider = Provider<IDocumentApprovalSource>((ref) => const NoDocumentApprovalSource());

final documentApprovalProvider = FutureProvider.autoDispose.family<DocumentApproval, String>(
  (ref, contentId) => ref.watch(documentApprovalSourceProvider).of(contentId),
);

/// アプリの設定(`info_app.settings`。用紙・テーマ・ヘッダ/フッタ・スタンプ)。既定は標準値。アプリが DB の値に差し替える。
final documentAppSettingsProvider = Provider<AppSettings>((ref) => AppSettings.standard);

/// PDF に埋め込むフォント。既定は同梱の BIZ UDP 明朝。
final documentPdfFontsProvider = FutureProvider<PdfFonts>((ref) => loadBundledPdfFonts());

/// PDF を保存する(Strategy)。取り消しは false。
abstract interface class IDocumentFileSaver {
  Future<bool> save(String filename, Uint8List bytes);
}

class PlatformDocumentFileSaver implements IDocumentFileSaver {
  const PlatformDocumentFileSaver();

  @override
  Future<bool> save(String filename, Uint8List bytes) async => await FilePicker.saveFile(fileName: filename, bytes: bytes) != null;
}

final documentFileSaverProvider = Provider<IDocumentFileSaver>((ref) => const PlatformDocumentFileSaver());

/// PDF の「出力した人」。既定は空。アプリがログインユーザーの表示名に差し替える。
final documentPrinterNameProvider = Provider<String>((ref) => '');

/// 出力日時の取得元(テストで固定する)。
final documentClockProvider = Provider<DateTime Function()>((ref) => DateTime.now);

/// 文書の本文(Markdown)を PDF にする。承認スタンプは、承認の段がある文書だけに付ける。
Future<Uint8List> buildDocumentPdf({
  required String title,
  required String markdown,
  required AppSettings settings,
  required DocumentApproval approval,
  required PdfFonts fonts,
  required DateTime printedAt,
  String printedBy = '',
  void Function(String problem)? onProblem,
}) {
  final style = StampStyle.resolve(settings.stamp.toJson(), approval.stampStyleOverride);
  final cards = approval.steps.isEmpty ? const <StampCard>[] : const StampContentBuilder().build(style, approval.steps, onProblem: onProblem);
  ApprovalStepInfo? latest;
  for (final s in approval.steps) {
    final at = s.approvedAt;
    if (s.approved && at != null && (latest?.approvedAt == null || at.isAfter(latest!.approvedAt!))) latest = s;
  }
  final info = PdfDocumentInfo(
    title: title,
    controlNumber: approval.controlNumber,
    versionCode: approval.versionCode,
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
