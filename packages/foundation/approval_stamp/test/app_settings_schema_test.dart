import 'dart:convert';
import 'dart:io';

import 'package:approval_stamp/approval_stamp.dart';
import 'package:test/test.dart';

import 'db_default_settings.dart';

Map<String, dynamic> _standard() => jsonDecode(jsonEncode(AppSettings.standard.toJson())) as Map<String, dynamic>;

void main() {
  test('標準の設定・DB の既定値は、スキーマに通る', () {
    expect(validateAppSettings(_standard()), isEmpty);
    expect(validateAppSettings(jsonDecode(dbDefaultSettingsJson)), isEmpty);
  });

  test('承認パターンの設定は info_app の列へ移した: 設定に残っている approval のキーは、知らないキーとして保たれる(誤りにしない)', () {
    final m = _standard()..['approval'] = {'patterns': {'order': 'p-1'}};
    expect(validateAppSettings(m), isEmpty);
    expect(AppSettings.parse(m).extra['approval'], {'patterns': {'order': 'p-1'}}); // 書き戻しても消さない
  });

  test('知らないキーはルートでは許す(ほかの機能の設定)。値を読んで書き戻しても通る', () {
    final m = _standard()..['other'] = {'x': 1};
    expect(validateAppSettings(m), isEmpty);
    expect(validateAppSettings(AppSettings.parse(m).toJson()), isEmpty);
  });

  test('キー名の打ち間違い(スタンプ・PDF の中)は誤りになる(読み取りでは黙って捨てられるもの)', () {
    final m = _standard();
    (m['stamp'] as Map)['opacty'] = 0.5;
    ((m['pdf'] as Map)['header'] as Map)['lefft'] = 'x';
    final paths = validateAppSettings(m).map((i) => i.path).toList();
    expect(paths, contains('/stamp'));
    expect(paths, contains('/pdf/header'));
  });

  test('型・範囲・選択肢の誤りを、場所つきで返す', () {
    final m = _standard();
    ((m['stamp'] as Map)['position'] as Map)['anchor'] = 'middle';
    (m['stamp'] as Map)['opacity'] = 1.5;
    ((m['stamp'] as Map)['shape'] as Map)['widthMm'] = 0;
    ((m['stamp'] as Map)['color'] as Map)['text'] = 'red';
    (((m['pdf'] as Map)['page'] as Map)['marginMm'] as Map)['top'] = -1;
    ((m['pdf'] as Map)['footer'] as Map)['firstPage'] = 'maybe';
    ((m['stamp'] as Map)['items'] as List)[0] = {'field': 'unknown_field', 'size': 14, 'line': 0};
    final paths = validateAppSettings(m).map((i) => i.path).toSet();
    expect(
      paths,
      containsAll([
        '/stamp/position/anchor',
        '/stamp/opacity',
        '/stamp/shape/widthMm',
        '/stamp/color/text',
        '/pdf/page/marginMm/top',
        '/pdf/footer/firstPage',
        '/stamp/items/0/field',
        '/stamp/items/0/line',
      ]),
    );
  });

  test('オブジェクトでないときは、ルートの誤り。必須の項目(items の field)が無いのも誤り', () {
    expect(validateAppSettings([1, 2]).single.path, '');
    final m = _standard();
    ((m['stamp'] as Map)['items'] as List)[1] = {'size': 10};
    expect(validateAppSettings(m).map((i) => i.path), contains('/stamp/items/1'));
  });

  test('色は #RRGGBB(AA)・\$変数、PDF の変数・色は名前が自由', () {
    final m = _standard();
    ((m['stamp'] as Map)['color'] as Map)['fill'] = '#11223344';
    ((m['pdf'] as Map)['theme'] as Map)['vars'] = {'brand': '#112233', 'accent2': r'$brand'};
    ((m['pdf'] as Map)['custom'] as Map)['company'] = '株式会社テスト';
    ((m['pdf'] as Map)['custom'] as Map)['rev'] = 3;
    expect(validateAppSettings(m), isEmpty);
  });

  test('取り込み用のサンプル(document_settings の doc/contents)は、スキーマに通る', () {
    final file = File('../../features/document_settings/doc/contents/app_settings.sample.json');
    expect(file.existsSync(), isTrue);
    expect(validateAppSettings(jsonDecode(file.readAsStringSync())), isEmpty);
  });

  test('承認パターンごとのスタンプの様式: 書いた項目だけでよい。誤りは様式の中の場所で返す', () {
    expect(validateStampStyle(<String, dynamic>{}), isEmpty); // 標準のまま
    expect(
      validateStampStyle({
        'position': {'anchor': 'bottomLeft'},
        'layer': 'foreground',
      }),
      isEmpty,
    );
    final issues = validateStampStyle({
      'position': {'anchor': 'middle'},
      'opacty': 1,
      'items': [
        {'size': 10},
      ],
    });
    expect(issues.map((i) => i.path), containsAll(['/position/anchor', '', '/items/0']));
    expect(validateStampStyle([1]).single.path, '');
  });

  test('標準の様式・DB の標準の様式は、様式のスキーマに通る', () {
    expect(validateStampStyle(AppSettings.standard.stamp.toJson()), isEmpty);
  });

  test('schema/app_settings.schema.json は Dart の定義と一致する(違ったら dart run tool/gen_schema.dart)', () {
    final file = File('schema/app_settings.schema.json');
    expect(file.existsSync(), isTrue);
    expect(jsonDecode(file.readAsStringSync()), jsonDecode(appSettingsSchemaJson), reason: 'dart run tool/gen_schema.dart で書き出し直す');
  });
}
