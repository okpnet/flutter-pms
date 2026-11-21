import 'dart:convert';

import 'package:json_schema/json_schema.dart';

import 'approval_settings.dart';

/// アプリの設定(`info_app.settings`)の JSON スキーマ(JSON Schema draft-07)。設定の読み込み・取り込みの前に、形の誤り
/// (キー名の打ち間違い・型・範囲・選択肢)を見つけるために使う。`AppSettings.parse` の読み方(欠けた値は標準・不正は標準に戻す)と
/// 合わせてあり、標準の設定(`AppSettings.standard.toJson()`)はこのスキーマに通る(テストで確認)。
///
/// - ルートは、知らないキーを許す(ほかの機能の設定を壊さない)。`stamp`・`pdf`・`approval` の中は、知らないキーを許さない
///   (打ち間違いは、読み込みで黙って捨てられるため)。ただし、利用者がキーを決める入れ物(`pdf.theme.vars`・`colors`・`pdf.custom`)は開く。
/// - 外部の道具(エディタの補完など)には、同じ内容を `schema/app_settings.schema.json` に置く(`appSettingsSchemaJson`)。
///   Dart のこの定義が正で、ファイルはテストが一致を確かめる(直したら `dart run tool/gen_schema.dart` で書き出す)。
const String _draft = 'http://json-schema.org/draft-07/schema#';

const String _colorPattern = r'^(#[0-9A-Fa-f]{6}([0-9A-Fa-f]{2})?|\$[A-Za-z0-9_]+)$';

Map<String, Object?> _enum(List<String> values, [String? description]) => {
  'type': 'string',
  'enum': values,
  if (description != null) 'description': description,
};

Map<String, Object?> _number(String description, {num? min, num? exclusiveMin, num? max}) => {
  'type': 'number',
  'description': description,
  'minimum': ?min,
  'exclusiveMinimum': ?exclusiveMin,
  'maximum': ?max,
};

Map<String, Object?> _color(String description, {bool nullable = false}) => {
  'type': nullable ? ['string', 'null'] : 'string',
  'description': description,
  'pattern': _colorPattern,
};

Map<String, Object?> _object(Map<String, Object?> properties, {String? description, bool closed = true}) => {
  'type': 'object',
  'description': ?description,
  'properties': properties,
  'additionalProperties': !closed,
};

Map<String, Object?> _heading(String level) => _object({
  'size': _number('$level の文字の大きさ(pt)', exclusiveMin: 0),
  'bold': {'type': 'boolean'},
  'color': _color('見出しの色。null は theme.colors.heading', nullable: true),
  'spaceBeforeMm': _number('見出しの前の余白(mm)', min: 0),
  'spaceAfterMm': _number('見出しの後ろの余白(mm)', min: 0),
  'pageBreakBefore': {'type': 'boolean', 'description': '見出しの前で改ページするか'},
}, description: '見出し $level');

Map<String, Object?> _band(String name) => _object({
  'enabled': {'type': 'boolean', 'description': '$name を出すか'},
  'heightMm': _number('$name の高さ(mm)', min: 0),
  'size': _number('文字の大きさ(pt)', exclusiveMin: 0),
  'color': _color('文字の色'),
  'border': {'type': 'boolean', 'description': '本文との境の線を出すか'},
  'firstPage': _enum(['same', 'none'], '1 ページ目: same = 出す、none = 出さない'),
  'left': {'type': 'string', 'description': '左の書式(固定の文字 + {変数})'},
  'center': {'type': 'string', 'description': '中央の書式'},
  'right': {'type': 'string', 'description': '右の書式'},
}, description: name);

/// スタンプの項目に使える項目(ビュー `v_document_approval_stamp` の列のうち表示するもの)。
const List<String> stampItemFields = [
  'stamp_label',
  'approved_at',
  'approved_staff',
  'approval_name',
  'version_code',
  'control_number',
  'document_revision',
  'approved_remarks',
];

final Map<String, Object?> appSettingsSchema = {
  r'$schema': _draft,
  r'$id': 'https://pms.local/schema/app_settings.schema.json',
  'title': 'アプリの設定(info_app.settings)',
  'description': '承認スタンプ・PDF・承認パターンの設定。ルートは、知らないキーを許す。',
  'type': 'object',
  'properties': {
    'version': {'type': 'integer', 'minimum': 1, 'description': '設定の版'},
    'stamp': _object({
      'position': _object({
        'anchor': _enum(['topLeft', 'topRight', 'bottomLeft', 'bottomRight', 'center'], '基準(ページの角・中央)'),
        'offsetXmm': _number('基準から内側への左右の距離(mm)'),
        'offsetYmm': _number('基準から内側への上下の距離(mm)'),
        'pages': _enum(['first', 'all'], 'first = 先頭のページ、all = 全ページ'),
      }, description: '位置'),
      'opacity': _number('すかし(0 = 透明、1 = 不透明)', min: 0, max: 1),
      'shape': _object({
        'kind': _enum(['circle', 'roundRect', 'doubleFrame', 'dateStamp'], '形'),
        'widthMm': _number('幅(mm)', exclusiveMin: 0),
        'heightMm': _number('高さ(mm)', exclusiveMin: 0),
        'rotationDeg': _number('時計回りの回転(度)'),
      }, description: '形'),
      'color': _object({
        'text': _color('文字の色'),
        'frame': _color('枠の色'),
        'fill': _color('塗りの色。null は塗らない', nullable: true),
      }, description: '色'),
      'labelLanguage': _enum(['ja', 'en'], 'スタンプの文字の言語'),
      'stages': _enum(['all', 'last'], 'all = 段ごとに並べる、last = 最後に承認した 1 つだけ'),
      'layer': _enum(['background', 'foreground'], 'background = 透かし(本文の後ろ)、foreground = 本文の前'),
      'items': {
        'type': 'array',
        'description': 'スタンプに出す項目(1 項目 = 1 つの値)',
        'items': _object({
          'field': _enum(stampItemFields, '項目'),
          'format': {'type': ['string', 'null'], 'description': '書式(日時の書式・氏名の書式)'},
          'size': _number('文字の大きさ(pt)', exclusiveMin: 0),
          'line': {'type': 'integer', 'minimum': 1, 'description': '行(同じ行の項目は並べる)'},
        })..['required'] = ['field'],
      },
      'pending': _object({
        'dashed': {'type': 'boolean', 'description': '破線にするか'},
        'color': _color('承認待ちの色'),
      }, description: '承認待ちの見た目'),
    }, description: '承認スタンプの標準の様式'),
    'approval': _object({
      'patterns': _object({
        for (final kind in ApprovalSettings.kinds)
          kind: {
            'type': ['string', 'null'],
            'description': '$kind の承認パターンの ID(null は承認不要)',
            'pattern': r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$',
          },
      }, description: '種類ごとの承認パターン'),
    }, description: '承認の設定'),
    'pdf': _object({
      'page': _object({
        'size': _enum(['A3', 'A4', 'A5', 'B4', 'B5', 'LETTER', 'a3', 'a4', 'a5', 'b4', 'b5', 'letter'], '用紙'),
        'orientation': _enum(['portrait', 'landscape'], '向き'),
        'marginMm': _object({
          'top': _number('上の余白(mm)', min: 0),
          'right': _number('右の余白(mm)', min: 0),
          'bottom': _number('下の余白(mm)', min: 0),
          'left': _number('左の余白(mm)', min: 0),
        }),
      }, description: '用紙'),
      'theme': _object({
        'vars': {
          'type': 'object',
          'description': '色の変数(名前 → 色)',
          'additionalProperties': _color('色'),
        },
        'font': _object({
          'family': {'type': 'string'},
          'monoFamily': {'type': 'string'},
          'baseSize': _number('本文の文字の大きさ(pt)', exclusiveMin: 0),
          'lineHeight': _number('行の高さ(倍)', exclusiveMin: 0),
        }, description: 'フォント'),
        'colors': {
          'type': 'object',
          'description': '色(用途 → 色または変数)',
          'additionalProperties': _color('色'),
        },
        'headings': _object({'h1': _heading('H1'), 'h2': _heading('H2'), 'h3': _heading('H3')}),
        'paragraph': _object({'spaceAfterMm': _number('段落の後ろの余白(mm)', min: 0)}),
        'code': _object({'size': _number('コードの文字の大きさ(pt)', exclusiveMin: 0)}),
        'table': _object({
          'borderWidth': _number('罫線の太さ', min: 0),
          'cellPaddingMm': _number('セルの余白(mm)', min: 0),
          'headerBold': {'type': 'boolean'},
        }),
      }, description: 'テーマ'),
      'header': _band('ヘッダ'),
      'footer': _band('フッタ'),
      'custom': {
        'type': 'object',
        'description': '利用者の変数({var.名前})',
        'additionalProperties': {
          'type': ['string', 'number', 'boolean', 'null'],
        },
      },
    }, description: 'PDF の出力'),
  },
  'additionalProperties': true,
};

/// 設定の JSON の形の誤り 1 件。[path] は誤りの場所(`/pdf/page/size`。ルートは空)、[message] は理由。
class SettingsSchemaIssue {
  const SettingsSchemaIssue(this.path, this.message);

  final String path;
  final String message;

  @override
  String toString() => path.isEmpty ? message : '$path: $message';

  Map<String, Object?> toJson() => {'path': path, 'message': message};
}

/// 設定の JSON を、スキーマ([appSettingsSchema])で検査する。誤りが無ければ空。
///
/// 値の読み取り(`AppSettings.parse`)とは別の検査で、読み取りでは黙って標準に戻る誤り(キー名の打ち間違い・型・範囲・選択肢)を見つける。
/// [json] は、`jsonDecode` した値(オブジェクト)。オブジェクト以外は、ルートの誤りになる。
List<SettingsSchemaIssue> validateAppSettings(Object? json) {
  final results = _compiled.validate(json);
  if (results.isValid) return const [];
  return [
    for (final e in results.errors) SettingsSchemaIssue(e.instancePath, e.message),
  ];
}

/// 承認パターンごとのスタンプの様式(`mstr_approval_pattern.stamp_style`)を、スキーマ(設定の `stamp` と同じ形)で検査する。誤りが無ければ空。
/// 様式は標準に重ねる値のため、書いた項目だけでよい(すべて省略できる。`{}` は標準のまま)。誤りの場所は、様式の中の場所(`/position/anchor`)。
List<SettingsSchemaIssue> validateStampStyle(Object? json) {
  final results = _compiledStampStyle.validate(json);
  if (results.isValid) return const [];
  return [
    for (final e in results.errors) SettingsSchemaIssue(e.instancePath, e.message),
  ];
}

final JsonSchema _compiledStampStyle = JsonSchema.create({
  ...(appSettingsSchema['properties']! as Map<String, Object?>)['stamp']! as Map<String, Object?>,
  r'$schema': _draft,
}, schemaVersion: SchemaVersion.draft7);

/// スキーマの JSON(整形済み)。`schema/app_settings.schema.json` と同じ内容。
String get appSettingsSchemaJson => const JsonEncoder.withIndent('  ').convert(appSettingsSchema);

final JsonSchema _compiled = JsonSchema.create(appSettingsSchema, schemaVersion: SchemaVersion.draft7);
