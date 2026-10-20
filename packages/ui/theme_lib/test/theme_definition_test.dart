import 'dart:convert';

import 'package:flutter/painting.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:theme_lib/theme_lib.dart';

const _minimal = '{"id":"a","name":"A","light":{"seedColor":"#112233"}}';

ThemeFormatException _formatError(String source) {
  try {
    ThemeDefinition.parse(source);
  } on ThemeFormatException catch (e) {
    return e;
  }
  fail('ThemeFormatException was not thrown');
}

void main() {
  group('ThemeDefinition JSON', () {
    test('最小構成を読み、省略値は既定値になる', () {
      final d = ThemeDefinition.parse(_minimal);
      expect(d.id, 'a');
      expect(d.light.seed, const Color(0xFF112233));
      expect(d.dark, isNull);
      expect(d.metrics, const ThemeMetrics());
    });

    test('書き出して読み直すと同じ(全項目)', () {
      final original = ThemeDefinition(
        id: 'full',
        name: 'Full',
        fontFamily: 'Meiryo',
        light: ThemePalette(
          seed: const Color(0xFF006494),
          overrides: {'primary': const Color(0xFFFF0000)},
        ),
        dark: ThemePalette(seed: const Color(0x80112233)),
        metrics: const ThemeMetrics(radius: 8, buttonHeight: 40),
      );
      final restored = ThemeDefinition.parse(original.toJsonString());
      expect(restored, original);
      expect(restored.hashCode, original.hashCode);
    });

    test('不透明色は#RRGGBB、半透明は#AARRGGBBで書き出す', () {
      expect(colorToHex(const Color(0xFF0A0B0C)), '#0A0B0C');
      expect(colorToHex(const Color(0x800A0B0C)), '#800A0B0C');
    });

    test('toJson は schemaVersion を含みJSONエンコードできる', () {
      final json = ThemeDefinition.parse(_minimal).toJson();
      expect(json['schemaVersion'], themeSchemaVersion);
      expect(() => jsonEncode(json), returnsNormally);
    });

    final invalid = <String, (String, String)>{
      'JSONではない': ('{', ''),
      'ルートが配列': ('[]', ''),
      'id が無い': ('{"name":"A","light":{"seedColor":"#112233"}}', 'id'),
      'id に大文字': (
        '{"id":"Bad","name":"A","light":{"seedColor":"#112233"}}',
        'id',
      ),
      'light が無い': ('{"id":"a","name":"A"}', 'light'),
      '色の形式が不正': (
        '{"id":"a","name":"A","light":{"seedColor":"red"}}',
        'light.seedColor',
      ),
      '未知のキー': (
        '{"id":"a","name":"A","light":{"seedColor":"#112233"},"x":1}',
        'x',
      ),
      '未知の上書き色名': (
        '{"id":"a","name":"A","light":{"seedColor":"#112233","colors":{"nope":"#000000"}}}',
        'light.colors.nope',
      ),
      '数値が負': (
        '{"id":"a","name":"A","light":{"seedColor":"#112233"},"metrics":{"radius":-1}}',
        'metrics.radius',
      ),
      '数値が文字列': (
        '{"id":"a","name":"A","light":{"seedColor":"#112233"},"metrics":{"spacing":"4"}}',
        'metrics.spacing',
      ),
      '未対応のバージョン': (
        '{"schemaVersion":2,"id":"a","name":"A","light":{"seedColor":"#112233"}}',
        'schemaVersion',
      ),
      'name が空白': (
        '{"id":"a","name":" ","light":{"seedColor":"#112233"}}',
        'name',
      ),
    };
    invalid.forEach((title, c) {
      test('不正: $title', () {
        expect(_formatError(c.$1).path, c.$2);
      });
    });
  });
}
