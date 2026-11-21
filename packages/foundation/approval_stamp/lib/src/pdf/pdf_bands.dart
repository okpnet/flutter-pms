import '../style/pdf_settings.dart';
import '../template/template_formatter.dart';

/// PDF のヘッダ・フッタの変数の元(文書の情報)。
class PdfDocumentInfo {
  const PdfDocumentInfo({
    this.title = '',
    this.controlNumber = '',
    this.versionCode = '',
    this.revision,
    this.statusLabel = '',
    this.approvedAt,
    this.approvedBy = '',
    this.printedAt,
    this.printedBy = '',
  });

  final String title;
  final String controlNumber;
  final String versionCode;
  final int? revision;

  /// 承認・承認待ち(DB のビューの `stamp_label_ja/en`。組み立てない)。
  final String statusLabel;
  final DateTime? approvedAt;
  final String approvedBy;
  final DateTime? printedAt;
  final String printedBy;
}

/// 解決したヘッダ・フッタの 3 か所の文字。
class PdfBandText {
  const PdfBandText({
    required this.left,
    required this.center,
    required this.right,
  });
  final String left;
  final String center;
  final String right;
}

/// ヘッダ・フッタの書式を、ページごとに展開する。
class PdfBandResolver {
  PdfBandResolver(
    this.settings,
    this.info, {
    this.formatter = const TemplateFormatter(),
    this.onProblem,
  });

  final PdfSettings settings;
  final PdfDocumentInfo info;
  final TemplateFormatter formatter;

  /// 未知の変数などを知らせる(PDF の出力は止めない)。
  final void Function(String problem)? onProblem;

  /// 書式で使える変数の名前(このほかに、`custom` の分が `var.名前`)。設定の画面の選択肢。
  static const List<String> variableNames = [
    'page',
    'pages',
    'title',
    'chapter',
    'controlNumber',
    'versionCode',
    'revision',
    'statusLabel',
    'approvedAt',
    'approvedBy',
    'printedAt',
    'printedBy',
  ];

  Map<String, Object?> variables({
    required int pageIndex,
    required int pages,
    String? chapter,
  }) => {
    'page': pageIndex + 1,
    'pages': pages,
    'title': info.title,
    'chapter': chapter ?? '',
    'controlNumber': info.controlNumber,
    'versionCode': info.versionCode,
    'revision': info.revision,
    'statusLabel': info.statusLabel,
    'approvedAt': info.approvedAt,
    'approvedBy': info.approvedBy,
    'printedAt': info.printedAt,
    'printedBy': info.printedBy,
    for (final e in settings.custom.entries) 'var.${e.key}': e.value,
  };

  /// ページ [pageIndex](0 始まり)のヘッダ。出さないページは null。
  PdfBandText? header({
    required int pageIndex,
    required int pages,
    String? chapter,
  }) => _resolve(settings.header, pageIndex, pages, chapter);

  PdfBandText? footer({
    required int pageIndex,
    required int pages,
    String? chapter,
  }) => _resolve(settings.footer, pageIndex, pages, chapter);

  PdfBandText? _resolve(
    PdfBand band,
    int pageIndex,
    int pages,
    String? chapter,
  ) {
    if (!band.showsOn(pageIndex)) return null;
    final v = variables(pageIndex: pageIndex, pages: pages, chapter: chapter);
    String e(String t) => formatter.expand(t, v, onProblem: onProblem);
    return PdfBandText(
      left: e(band.left),
      center: e(band.center),
      right: e(band.right),
    );
  }
}
