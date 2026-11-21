import 'color_spec.dart';
import 'json_read.dart';

enum PdfPageSize {
  a3(297, 420),
  a4(210, 297),
  a5(148, 210),
  b4(250, 353),
  b5(176, 250),
  letter(215.9, 279.4);

  const PdfPageSize(this.widthMm, this.heightMm);

  /// 縦向きの幅・高さ(mm)。
  final double widthMm;
  final double heightMm;

  /// JSON の値(`A4` など。大文字小文字は区別しない)。
  static PdfPageSize? parse(String s) {
    final t = s.toLowerCase();
    for (final e in values) {
      if (e.name == t) return e;
    }
    return null;
  }
}

enum PdfOrientation { portrait, landscape }

/// 1 ページ目のヘッダ・フッタ。same = 他のページと同じ、none = 出さない。
enum PdfFirstPage { same, none }

class PdfMargins {
  const PdfMargins({
    this.top = 22,
    this.right = 18,
    this.bottom = 20,
    this.left = 18,
  });

  final double top;
  final double right;
  final double bottom;
  final double left;

  factory PdfMargins.fromJson(Object? json, [Problems? p]) {
    final m = asJsonMap(json);
    const path = 'pdf.page.marginMm';
    const d = PdfMargins();
    return PdfMargins(
      top: readDouble(m, 'top', d.top, p, path),
      right: readDouble(m, 'right', d.right, p, path),
      bottom: readDouble(m, 'bottom', d.bottom, p, path),
      left: readDouble(m, 'left', d.left, p, path),
    );
  }

  Map<String, dynamic> toJson() => {
    'top': top,
    'right': right,
    'bottom': bottom,
    'left': left,
  };
}

class PdfPage {
  const PdfPage({
    this.size = PdfPageSize.a4,
    this.orientation = PdfOrientation.portrait,
    this.margins = const PdfMargins(),
  });

  final PdfPageSize size;
  final PdfOrientation orientation;
  final PdfMargins margins;

  /// 向きを反映した幅(mm)。
  double get widthMm =>
      orientation == PdfOrientation.portrait ? size.widthMm : size.heightMm;
  double get heightMm =>
      orientation == PdfOrientation.portrait ? size.heightMm : size.widthMm;

  factory PdfPage.fromJson(Object? json, [Problems? p]) {
    final m = asJsonMap(json);
    const path = 'pdf.page';
    var size = PdfPageSize.a4;
    final raw = m['size'];
    if (raw is String) {
      final parsed = PdfPageSize.parse(raw);
      if (parsed == null) {
        p?.add(
          '$path.size の値が不正です: $raw(${PdfPageSize.values.map((e) => e.name.toUpperCase()).join(' / ')})',
        );
      } else {
        size = parsed;
      }
    } else if (raw != null) {
      p?.add('$path.size は文字列ではありません: $raw');
    }
    return PdfPage(
      size: size,
      orientation: readEnum(
        m,
        'orientation',
        PdfOrientation.values,
        PdfOrientation.portrait,
        p,
        path,
      ),
      margins: PdfMargins.fromJson(m['marginMm'], p),
    );
  }

  Map<String, dynamic> toJson() => {
    'size': size.name.toUpperCase(),
    'orientation': orientation.name,
    'marginMm': margins.toJson(),
  };
}

class PdfFont {
  const PdfFont({
    this.family = 'NotoSansJP',
    this.monoFamily = 'NotoSansJPMono',
    this.baseSize = 10.5,
    this.lineHeight = 1.5,
  });

  final String family;
  final String monoFamily;
  final double baseSize;
  final double lineHeight;

  factory PdfFont.fromJson(Object? json, [Problems? p]) {
    final m = asJsonMap(json);
    const path = 'pdf.theme.font';
    const d = PdfFont();
    return PdfFont(
      family: readString(m, 'family', d.family, p, path),
      monoFamily: readString(m, 'monoFamily', d.monoFamily, p, path),
      baseSize: readDouble(m, 'baseSize', d.baseSize, p, path),
      lineHeight: readDouble(m, 'lineHeight', d.lineHeight, p, path),
    );
  }

  Map<String, dynamic> toJson() => {
    'family': family,
    'monoFamily': monoFamily,
    'baseSize': baseSize,
    'lineHeight': lineHeight,
  };
}

class PdfHeading {
  const PdfHeading({
    required this.size,
    this.bold = true,
    this.color,
    this.spaceBeforeMm = 0,
    this.spaceAfterMm = 3,
    this.pageBreakBefore = false,
  });

  final double size;
  final bool bold;

  /// null は、見出しの色(`colors.heading`)。
  final String? color;
  final double spaceBeforeMm;
  final double spaceAfterMm;
  final bool pageBreakBefore;

  factory PdfHeading.fromJson(
    Object? json,
    PdfHeading fallback,
    String level, [
    Problems? p,
  ]) {
    final m = asJsonMap(json);
    final path = 'pdf.theme.headings.$level';
    return PdfHeading(
      size: readDouble(m, 'size', fallback.size, p, path),
      bold: readBool(m, 'bold', fallback.bold, p, path),
      color: readNullableString(m, 'color', p, path) ?? fallback.color,
      spaceBeforeMm: readDouble(
        m,
        'spaceBeforeMm',
        fallback.spaceBeforeMm,
        p,
        path,
      ),
      spaceAfterMm: readDouble(
        m,
        'spaceAfterMm',
        fallback.spaceAfterMm,
        p,
        path,
      ),
      pageBreakBefore: readBool(
        m,
        'pageBreakBefore',
        fallback.pageBreakBefore,
        p,
        path,
      ),
    );
  }

  Map<String, dynamic> toJson() => {
    'size': size,
    'bold': bold,
    'color': color,
    'spaceBeforeMm': spaceBeforeMm,
    'spaceAfterMm': spaceAfterMm,
    'pageBreakBefore': pageBreakBefore,
  };
}

/// PDF のテーマ(文字の大きさ・色。色は `#RRGGBB` か `$変数`)。
class PdfTheme {
  const PdfTheme({
    this.vars = const {
      'accent': '#0D47A1',
      'muted': '#616161',
      'line': '#BDBDBD',
    },
    this.font = const PdfFont(),
    this.colors = const {
      'text': '#212121',
      'heading': r'$accent',
      'link': '#1565C0',
      'quote': r'$muted',
      'codeBackground': '#F5F5F5',
      'tableBorder': r'$line',
      'tableHeaderBackground': '#ECEFF1',
      'missingLink': '#C62828',
    },
    this.h1 = const PdfHeading(
      size: 20,
      spaceAfterMm: 5,
      pageBreakBefore: true,
    ),
    this.h2 = const PdfHeading(size: 15, spaceBeforeMm: 6, spaceAfterMm: 3),
    this.h3 = const PdfHeading(size: 12, spaceBeforeMm: 4, spaceAfterMm: 2),
    this.paragraphSpaceAfterMm = 2.5,
    this.codeSize = 9,
    this.tableBorderWidth = 0.5,
    this.tableCellPaddingMm = 1.5,
    this.tableHeaderBold = true,
  });

  /// テーマの変数(色の `$名前` の参照先)。
  final Map<String, String> vars;
  final PdfFont font;

  /// 名前つきの色(`text`・`heading`・`link`・`quote`・`codeBackground`・`tableBorder`・`tableHeaderBackground`・`missingLink`)。
  final Map<String, String> colors;
  final PdfHeading h1;
  final PdfHeading h2;
  final PdfHeading h3;
  final double paragraphSpaceAfterMm;
  final double codeSize;
  final double tableBorderWidth;
  final double tableCellPaddingMm;
  final bool tableHeaderBold;

  /// 名前つきの色を ARGB で返す(変数を解決する。無い・不正なら [fallback])。
  int color(String name, {int fallback = 0xFF000000}) =>
      resolveColor(colors[name], vars, fallback: fallback) ?? fallback;

  /// 見出しの色(見出しごとの指定、無ければ `heading`)。
  int headingColor(PdfHeading h) =>
      resolveColor(h.color, vars) ?? color('heading');

  factory PdfTheme.fromJson(Object? json, [Problems? p]) {
    final m = asJsonMap(json);
    const path = 'pdf.theme';
    const d = PdfTheme();
    Map<String, String> strings(
      Object? raw,
      Map<String, String> fallback,
      String key,
    ) {
      if (raw == null) return fallback;
      if (raw is! Map) {
        p?.add('$path.$key はオブジェクトではありません');
        return fallback;
      }
      final out = Map<String, String>.from(fallback);
      raw.forEach((k, v) {
        if (v is String) {
          out[k.toString()] = v;
        } else {
          p?.add('$path.$key.$k は文字列ではありません: $v');
        }
      });
      return out;
    }

    final headings = asJsonMap(m['headings']);
    final paragraph = asJsonMap(m['paragraph']);
    final code = asJsonMap(m['code']);
    final table = asJsonMap(m['table']);
    return PdfTheme(
      vars: strings(m['vars'], d.vars, 'vars'),
      font: PdfFont.fromJson(m['font'], p),
      colors: strings(m['colors'], d.colors, 'colors'),
      h1: PdfHeading.fromJson(headings['h1'], d.h1, 'h1', p),
      h2: PdfHeading.fromJson(headings['h2'], d.h2, 'h2', p),
      h3: PdfHeading.fromJson(headings['h3'], d.h3, 'h3', p),
      paragraphSpaceAfterMm: readDouble(
        paragraph,
        'spaceAfterMm',
        d.paragraphSpaceAfterMm,
        p,
        '$path.paragraph',
      ),
      codeSize: readDouble(code, 'size', d.codeSize, p, '$path.code'),
      tableBorderWidth: readDouble(
        table,
        'borderWidth',
        d.tableBorderWidth,
        p,
        '$path.table',
      ),
      tableCellPaddingMm: readDouble(
        table,
        'cellPaddingMm',
        d.tableCellPaddingMm,
        p,
        '$path.table',
      ),
      tableHeaderBold: readBool(
        table,
        'headerBold',
        d.tableHeaderBold,
        p,
        '$path.table',
      ),
    );
  }

  Map<String, dynamic> toJson() => {
    'vars': vars,
    'font': font.toJson(),
    'colors': colors,
    'headings': {'h1': h1.toJson(), 'h2': h2.toJson(), 'h3': h3.toJson()},
    'paragraph': {'spaceAfterMm': paragraphSpaceAfterMm},
    'code': {'size': codeSize},
    'table': {
      'borderWidth': tableBorderWidth,
      'cellPaddingMm': tableCellPaddingMm,
      'headerBold': tableHeaderBold,
    },
  };
}

/// ヘッダまたはフッタ。[left]・[center]・[right] は、固定の文字と変数を混ぜた書式(`TemplateFormatter`)。
class PdfBand {
  const PdfBand({
    this.enabled = true,
    this.heightMm = 10,
    this.size = 9,
    this.color = r'$muted',
    this.border = true,
    this.firstPage = PdfFirstPage.same,
    this.left = '',
    this.center = '',
    this.right = '',
  });

  final bool enabled;
  final double heightMm;
  final double size;
  final String color;

  /// 本文との境目の線。
  final bool border;
  final PdfFirstPage firstPage;
  final String left;
  final String center;
  final String right;

  /// 0 始まりのページ番号 [pageIndex] で、この帯を出すか。
  bool showsOn(int pageIndex) =>
      enabled && !(pageIndex == 0 && firstPage == PdfFirstPage.none);

  factory PdfBand.fromJson(
    Object? json,
    PdfBand fallback,
    String name, [
    Problems? p,
  ]) {
    final m = asJsonMap(json);
    final path = 'pdf.$name';
    return PdfBand(
      enabled: readBool(m, 'enabled', fallback.enabled, p, path),
      heightMm: readDouble(m, 'heightMm', fallback.heightMm, p, path),
      size: readDouble(m, 'size', fallback.size, p, path),
      color: readString(m, 'color', fallback.color, p, path),
      border: readBool(m, 'border', fallback.border, p, path),
      firstPage: readEnum(
        m,
        'firstPage',
        PdfFirstPage.values,
        fallback.firstPage,
        p,
        path,
      ),
      left: readString(m, 'left', fallback.left, p, path),
      center: readString(m, 'center', fallback.center, p, path),
      right: readString(m, 'right', fallback.right, p, path),
    );
  }

  Map<String, dynamic> toJson() => {
    'enabled': enabled,
    'heightMm': heightMm,
    'size': size,
    'color': color,
    'border': border,
    'firstPage': firstPage.name,
    'left': left,
    'center': center,
    'right': right,
  };
}

/// PDF の出力の設定(`info_app.settings` の `pdf`)。
class PdfSettings {
  const PdfSettings({
    this.page = const PdfPage(),
    this.theme = const PdfTheme(),
    this.header = const PdfBand(left: '{title}', right: '{controlNumber}'),
    this.footer = const PdfBand(
      left: '{versionCode}  {statusLabel}',
      center: '{page} / {pages}',
      right: '{printedAt:yyyy/MM/dd}',
    ),
    this.custom = const {'company': ''},
  });

  final PdfPage page;
  final PdfTheme theme;
  final PdfBand header;
  final PdfBand footer;

  /// 利用者が足す変数(書式の `{var.名前}`)。
  final Map<String, String> custom;

  static const PdfSettings standard = PdfSettings();

  factory PdfSettings.fromJson(Object? json, [Problems? p]) {
    final m = asJsonMap(json);
    const d = PdfSettings();
    final custom = <String, String>{};
    final rawCustom = m['custom'];
    if (rawCustom is Map) {
      rawCustom.forEach((k, v) {
        if (v == null) {
          custom[k.toString()] = '';
        } else if (v is String || v is num || v is bool) {
          custom[k.toString()] = v.toString();
        } else {
          p?.add('pdf.custom.$k は文字列ではありません: $v');
        }
      });
    }
    return PdfSettings(
      page: PdfPage.fromJson(m['page'], p),
      theme: PdfTheme.fromJson(m['theme'], p),
      header: PdfBand.fromJson(m['header'], d.header, 'header', p),
      footer: PdfBand.fromJson(m['footer'], d.footer, 'footer', p),
      custom: custom,
    );
  }

  Map<String, dynamic> toJson() => {
    'page': page.toJson(),
    'theme': theme.toJson(),
    'header': header.toJson(),
    'footer': footer.toJson(),
    'custom': custom,
  };
}
