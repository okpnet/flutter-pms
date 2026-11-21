import 'json_read.dart';

enum StampAnchor { topLeft, topRight, bottomLeft, bottomRight, center }

/// どのページに出すか。first = 先頭のページ(ルートの文書の 1 ページ目)、all = 全ページ。
enum StampPages { first, all }

enum StampShapeKind { circle, roundRect, doubleFrame, dateStamp }

/// 承認の段が複数のとき。all = 段ごとに並べる、last = 最後に承認した 1 つだけ。
enum StampStages { all, last }

class StampPosition {
  const StampPosition({
    this.anchor = StampAnchor.topRight,
    this.offsetXmm = 10,
    this.offsetYmm = 10,
    this.pages = StampPages.first,
  });

  /// 基準(ページの角・中央)。オフセットは基準から内側へ(中央は右・下へ)の距離(mm)。
  final StampAnchor anchor;
  final double offsetXmm;
  final double offsetYmm;
  final StampPages pages;

  factory StampPosition.fromJson(Object? json, [Problems? p]) {
    final m = asJsonMap(json);
    const path = 'stamp.position';
    const d = StampPosition();
    return StampPosition(
      anchor: readEnum(m, 'anchor', StampAnchor.values, d.anchor, p, path),
      offsetXmm: readDouble(m, 'offsetXmm', d.offsetXmm, p, path),
      offsetYmm: readDouble(m, 'offsetYmm', d.offsetYmm, p, path),
      pages: readEnum(m, 'pages', StampPages.values, d.pages, p, path),
    );
  }

  Map<String, dynamic> toJson() => {
    'anchor': anchor.name,
    'offsetXmm': offsetXmm,
    'offsetYmm': offsetYmm,
    'pages': pages.name,
  };
}

class StampShape {
  const StampShape({
    this.kind = StampShapeKind.roundRect,
    this.widthMm = 32,
    this.heightMm = 32,
    this.rotationDeg = 0,
  });

  final StampShapeKind kind;
  final double widthMm;
  final double heightMm;

  /// 時計回りの回転(度)。
  final double rotationDeg;

  factory StampShape.fromJson(Object? json, [Problems? p]) {
    final m = asJsonMap(json);
    const path = 'stamp.shape';
    const d = StampShape();
    var w = readDouble(m, 'widthMm', d.widthMm, p, path);
    var h = readDouble(m, 'heightMm', d.heightMm, p, path);
    if (w <= 0) {
      p?.add('$path.widthMm は 0 より大きくします: $w');
      w = d.widthMm;
    }
    if (h <= 0) {
      p?.add('$path.heightMm は 0 より大きくします: $h');
      h = d.heightMm;
    }
    return StampShape(
      kind: readEnum(m, 'kind', StampShapeKind.values, d.kind, p, path),
      widthMm: w,
      heightMm: h,
      rotationDeg: readDouble(m, 'rotationDeg', d.rotationDeg, p, path),
    );
  }

  Map<String, dynamic> toJson() => {
    'kind': kind.name,
    'widthMm': widthMm,
    'heightMm': heightMm,
    'rotationDeg': rotationDeg,
  };
}

/// 色の指定(`#RRGGBB`・`$変数`)。fill が null のときは塗らない。
class StampColors {
  const StampColors({this.text = '#C62828', this.frame = '#C62828', this.fill});

  final String text;
  final String frame;
  final String? fill;

  factory StampColors.fromJson(Object? json, [Problems? p]) {
    final m = asJsonMap(json);
    const path = 'stamp.color';
    const d = StampColors();
    return StampColors(
      text: readString(m, 'text', d.text, p, path),
      frame: readString(m, 'frame', d.frame, p, path),
      fill: readNullableString(m, 'fill', p, path),
    );
  }

  Map<String, dynamic> toJson() => {'text': text, 'frame': frame, 'fill': fill};
}

/// スタンプに出す 1 行。[field] はビュー `v_document_approval_stamp` の列(のうち表示するもの)。
/// 使える項目: `stamp_label`・`approved_at`・`approved_staff`・`approval_name`・`version_code`・`control_number`・
/// `document_revision`・`approved_remarks`。[format] は日時の書式(日時の項目)。[line] が同じ項目は同じ行に並べる。
class StampItem {
  const StampItem({
    required this.field,
    this.format,
    this.size = 10,
    this.line = 1,
  });

  final String field;
  final String? format;
  final double size;
  final int line;

  factory StampItem.fromJson(Object? json, [Problems? p]) {
    final m = asJsonMap(json);
    const path = 'stamp.items';
    return StampItem(
      field: readString(m, 'field', '', p, path),
      format: readNullableString(m, 'format', p, path),
      size: readDouble(m, 'size', 10, p, path),
      line: readInt(m, 'line', 1, p, path),
    );
  }

  Map<String, dynamic> toJson() => {
    'field': field,
    if (format != null) 'format': format,
    'size': size,
    'line': line,
  };
}

/// 承認待ちのスタンプの見た目(破線・灰色など)。
class StampPendingStyle {
  const StampPendingStyle({this.dashed = true, this.color = '#757575'});

  final bool dashed;
  final String color;

  factory StampPendingStyle.fromJson(Object? json, [Problems? p]) {
    final m = asJsonMap(json);
    const path = 'stamp.pending';
    const d = StampPendingStyle();
    return StampPendingStyle(
      dashed: readBool(m, 'dashed', d.dashed, p, path),
      color: readString(m, 'color', d.color, p, path),
    );
  }

  Map<String, dynamic> toJson() => {'dashed': dashed, 'color': color};
}

/// 承認スタンプの様式(位置・すかし・形・色・表示項目・書式)。
/// 標準は `info_app.settings` の `stamp`、承認パターンごとに `mstr_approval_pattern.stamp_style` で上書きする
/// ([resolve])。JSON で保存し、読み込む(欠けた値は標準に戻る)。
class StampStyle {
  const StampStyle({
    this.position = const StampPosition(),
    this.opacity = 0.6,
    this.shape = const StampShape(),
    this.color = const StampColors(),
    this.labelLanguage = 'ja',
    this.stages = StampStages.all,
    this.items = const [
      StampItem(field: 'stamp_label', size: 14, line: 1),
      StampItem(field: 'approved_at', format: 'yyyy/MM/dd', size: 10, line: 2),
      StampItem(
        field: 'approved_staff',
        format: 'name',
        size: 10,
        line: 3,
      ), // format: 氏名の書式(name = 呼称のまま。将来、姓だけ・略称などを足す)
    ],
    this.pending = const StampPendingStyle(),
  });

  final StampPosition position;

  /// すかし(0 = 透明、1 = 不透明)。
  final double opacity;
  final StampShape shape;
  final StampColors color;

  /// スタンプの文字の言語(`ja`・`en`)。文字そのものは DB のビュー(`stamp_label_ja/en`)が持つ。
  final String labelLanguage;
  final StampStages stages;
  final List<StampItem> items;
  final StampPendingStyle pending;

  /// 標準の様式(DB の既定値と同じ)。
  static const StampStyle standard = StampStyle();

  factory StampStyle.fromJson(Object? json, [Problems? p]) {
    final m = asJsonMap(json);
    const path = 'stamp';
    const d = StampStyle();
    var opacity = readDouble(m, 'opacity', d.opacity, p, path);
    if (opacity < 0 || opacity > 1) {
      p?.add('$path.opacity は 0〜1 です: $opacity');
      opacity = opacity.clamp(0.0, 1.0);
    }
    final rawItems = m['items'];
    var items = d.items;
    if (rawItems is List) {
      items = [
        for (final e in rawItems) StampItem.fromJson(e, p),
      ].where((e) => e.field.isNotEmpty).toList();
    } else if (rawItems != null) {
      p?.add('$path.items は配列ではありません');
    }
    return StampStyle(
      position: StampPosition.fromJson(m['position'], p),
      opacity: opacity,
      shape: StampShape.fromJson(m['shape'], p),
      color: StampColors.fromJson(m['color'], p),
      labelLanguage: readString(m, 'labelLanguage', d.labelLanguage, p, path),
      stages: readEnum(m, 'stages', StampStages.values, d.stages, p, path),
      items: items,
      pending: StampPendingStyle.fromJson(m['pending'], p),
    );
  }

  /// 標準([base]。`info_app.settings` の `stamp`)に、承認パターンの様式([override]。NULL 可)を重ねて読む。
  /// 重ねるのは項目ごと(`position` の `anchor` だけ変える、など)。`items` は、渡したときに全体を置き換える。
  factory StampStyle.resolve(Object? base, Object? override, [Problems? p]) =>
      StampStyle.fromJson(deepMerge(asJsonMap(base), asJsonMap(override)), p);

  Map<String, dynamic> toJson() => {
    'position': position.toJson(),
    'opacity': opacity,
    'shape': shape.toJson(),
    'color': color.toJson(),
    'labelLanguage': labelLanguage,
    'stages': stages.name,
    'items': [for (final e in items) e.toJson()],
    'pending': pending.toJson(),
  };
}
