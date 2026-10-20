import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';

import 'theme_exceptions.dart';

/// テーマJSONのスキーマバージョン。
const int themeSchemaVersion = 1;

/// 1つのブライトネス（ライト/ダーク）の配色。
///
/// [seed] から Material 3 の配色を生成し、[overrides] で個別の色を上書きする。
@immutable
class ThemePalette {
  ThemePalette({required this.seed, Map<String, Color> overrides = const {}})
    : overrides = Map.unmodifiable(overrides);

  /// 上書きできる ColorScheme の色名。
  static const Set<String> overrideKeys = {
    'primary',
    'onPrimary',
    'secondary',
    'onSecondary',
    'tertiary',
    'onTertiary',
    'error',
    'onError',
    'surface',
    'onSurface',
    'outline',
  };

  final Color seed;
  final Map<String, Color> overrides;

  Map<String, Object?> toJson() => {
    'seedColor': colorToHex(seed),
    if (overrides.isNotEmpty)
      'colors': {for (final e in overrides.entries) e.key: colorToHex(e.value)},
  };

  @override
  bool operator ==(Object other) =>
      other is ThemePalette &&
      other.seed == seed &&
      mapEquals(other.overrides, overrides);

  @override
  int get hashCode => Object.hash(
    seed,
    Object.hashAllUnordered(
      overrides.entries.map((e) => Object.hash(e.key, e.value)),
    ),
  );
}

/// 余白・角丸・線幅・ボタン寸法などの数値（論理ピクセル）。
@immutable
class ThemeMetrics {
  const ThemeMetrics({
    this.spacing = 4,
    this.formFieldPadding = 4,
    this.menuFieldPadding = 8,
    this.radius = 3,
    this.fullRadius = 32,
    this.borderWidth = 0.8,
    this.activeBorderWidth = 1,
    this.buttonHeight = 46,
    this.buttonWidth = 128,
    this.buttonElevation = 2,
    this.iconButtonSize = 32,
  });

  /// Row/Column/Wrap のギャップ、および標準余白。
  final double spacing;
  final double formFieldPadding;
  final double menuFieldPadding;

  /// 標準の角丸と、検索窓などの完全に丸い角丸。
  final double radius;
  final double fullRadius;

  /// 通常時とフォーカス時の線幅。
  final double borderWidth;
  final double activeBorderWidth;

  final double buttonHeight;
  final double buttonWidth;
  final double buttonElevation;
  final double iconButtonSize;

  static const Set<String> _keys = {
    'spacing',
    'formFieldPadding',
    'menuFieldPadding',
    'radius',
    'fullRadius',
    'borderWidth',
    'activeBorderWidth',
    'buttonHeight',
    'buttonWidth',
    'buttonElevation',
    'iconButtonSize',
  };

  Map<String, Object?> toJson() => {
    'spacing': spacing,
    'formFieldPadding': formFieldPadding,
    'menuFieldPadding': menuFieldPadding,
    'radius': radius,
    'fullRadius': fullRadius,
    'borderWidth': borderWidth,
    'activeBorderWidth': activeBorderWidth,
    'buttonHeight': buttonHeight,
    'buttonWidth': buttonWidth,
    'buttonElevation': buttonElevation,
    'iconButtonSize': iconButtonSize,
  };

  @override
  bool operator ==(Object other) =>
      other is ThemeMetrics && mapEquals(other.toJson(), toJson());

  @override
  int get hashCode => Object.hashAll(toJson().values);
}

/// 1つのテーマの定義。JSONへ書き出し・JSONから取り込みができる。
///
/// ダーク用の配色 [dark] を省略すると、[light] の配色をダーク用に自動変換する。
@immutable
class ThemeDefinition {
  const ThemeDefinition({
    required this.id,
    required this.name,
    required this.light,
    this.dark,
    this.fontFamily,
    this.metrics = const ThemeMetrics(),
  });

  /// JSON文字列から生成する。不正な場合は [ThemeFormatException]。
  factory ThemeDefinition.parse(String source) {
    final Object? decoded;
    try {
      decoded = jsonDecode(source);
    } on FormatException catch (e) {
      throw ThemeFormatException('', 'invalid JSON (${e.message})');
    }
    if (decoded is! Map<String, Object?>) {
      throw const ThemeFormatException('', 'the root must be a JSON object');
    }
    return ThemeDefinition.fromJson(decoded);
  }

  /// Map（JSONをデコードしたもの）から生成する。不正な場合は [ThemeFormatException]。
  factory ThemeDefinition.fromJson(Map<String, Object?> json) {
    final root = _Reader(json, '')
      ..allowOnly(const {
        'schemaVersion',
        'id',
        'name',
        'fontFamily',
        'light',
        'dark',
        'metrics',
      });
    final version = root.number('schemaVersion', min: 1, max: 1e9);
    if (version != null && version != themeSchemaVersion) {
      throw ThemeFormatException(
        'schemaVersion',
        'unsupported version $version (supported: $themeSchemaVersion)',
      );
    }
    final id = root.string('id', required: true)!;
    if (!_idPattern.hasMatch(id)) {
      throw const ThemeFormatException(
        'id',
        'must match [a-z0-9][a-z0-9_-]{0,63}',
      );
    }
    final name = root.string('name', required: true, maxLength: 64)!;
    final fontFamily = root.string('fontFamily', maxLength: 128);
    final light = _readPalette(root.object('light', required: true)!);
    final darkReader = root.object('dark');
    final metricsReader = root.object('metrics');
    return ThemeDefinition(
      id: id,
      name: name,
      fontFamily: fontFamily,
      light: light,
      dark: darkReader == null ? null : _readPalette(darkReader),
      metrics: metricsReader == null
          ? const ThemeMetrics()
          : _readMetrics(metricsReader),
    );
  }

  static final RegExp _idPattern = RegExp(r'^[a-z0-9][a-z0-9_-]{0,63}$');

  final String id;
  final String name;
  final ThemePalette light;
  final ThemePalette? dark;

  /// アプリ側が登録済みのフォントファミリー名。未指定ならプラットフォーム標準。
  final String? fontFamily;
  final ThemeMetrics metrics;

  ThemePalette paletteFor(Brightness brightness) =>
      brightness == Brightness.dark ? (dark ?? light) : light;

  ThemeDefinition copyWith({
    String? id,
    String? name,
    ThemePalette? light,
    ThemePalette? dark,
    String? fontFamily,
    ThemeMetrics? metrics,
  }) => ThemeDefinition(
    id: id ?? this.id,
    name: name ?? this.name,
    light: light ?? this.light,
    dark: dark ?? this.dark,
    fontFamily: fontFamily ?? this.fontFamily,
    metrics: metrics ?? this.metrics,
  );

  Map<String, Object?> toJson() => {
    'schemaVersion': themeSchemaVersion,
    'id': id,
    'name': name,
    if (fontFamily != null) 'fontFamily': fontFamily,
    'light': light.toJson(),
    if (dark != null) 'dark': dark!.toJson(),
    'metrics': metrics.toJson(),
  };

  String toJsonString({bool pretty = true}) => pretty
      ? const JsonEncoder.withIndent('  ').convert(toJson())
      : jsonEncode(toJson());

  @override
  bool operator ==(Object other) =>
      other is ThemeDefinition &&
      other.id == id &&
      other.name == name &&
      other.light == light &&
      other.dark == dark &&
      other.fontFamily == fontFamily &&
      other.metrics == metrics;

  @override
  int get hashCode => Object.hash(id, name, light, dark, fontFamily, metrics);

  @override
  String toString() => 'ThemeDefinition($id)';
}

/// `#RRGGBB`（不透明）または `#AARRGGBB` の大文字表記へ変換する。
String colorToHex(Color color) {
  final argb = color.toARGB32();
  final hex = argb.toRadixString(16).padLeft(8, '0').toUpperCase();
  return argb >> 24 == 0xFF ? '#${hex.substring(2)}' : '#$hex';
}

ThemePalette _readPalette(_Reader r) {
  r.allowOnly(const {'seedColor', 'colors'});
  final seed = r.color('seedColor', required: true)!;
  final colors = r.object('colors');
  final overrides = <String, Color>{};
  if (colors != null) {
    colors.allowOnly(ThemePalette.overrideKeys);
    for (final key in colors.keys) {
      overrides[key] = colors.color(key, required: true)!;
    }
  }
  return ThemePalette(seed: seed, overrides: overrides);
}

ThemeMetrics _readMetrics(_Reader r) {
  r.allowOnly(ThemeMetrics._keys);
  const d = ThemeMetrics();
  return ThemeMetrics(
    spacing: r.number('spacing') ?? d.spacing,
    formFieldPadding: r.number('formFieldPadding') ?? d.formFieldPadding,
    menuFieldPadding: r.number('menuFieldPadding') ?? d.menuFieldPadding,
    radius: r.number('radius') ?? d.radius,
    fullRadius: r.number('fullRadius') ?? d.fullRadius,
    borderWidth: r.number('borderWidth') ?? d.borderWidth,
    activeBorderWidth: r.number('activeBorderWidth') ?? d.activeBorderWidth,
    buttonHeight: r.number('buttonHeight', min: 1) ?? d.buttonHeight,
    buttonWidth: r.number('buttonWidth', min: 1) ?? d.buttonWidth,
    buttonElevation: r.number('buttonElevation') ?? d.buttonElevation,
    iconButtonSize: r.number('iconButtonSize', min: 1) ?? d.iconButtonSize,
  );
}

/// 不正箇所のパスを付けて検証しながらJSONを読む内部ヘルパー。
class _Reader {
  _Reader(this._map, this._path);

  static final RegExp _hexPattern = RegExp(
    r'^#([0-9a-fA-F]{6}|[0-9a-fA-F]{8})$',
  );

  final Map<String, Object?> _map;
  final String _path;

  Iterable<String> get keys => _map.keys;

  String _at(String key) => _path.isEmpty ? key : '$_path.$key';

  void allowOnly(Set<String> allowed) {
    for (final key in _map.keys) {
      if (!allowed.contains(key)) {
        throw ThemeFormatException(_at(key), 'unknown key');
      }
    }
  }

  Object? _value(String key, bool required) {
    final value = _map[key];
    if (value == null && required) {
      throw ThemeFormatException(_at(key), 'is required');
    }
    return value;
  }

  String? string(String key, {bool required = false, int maxLength = 256}) {
    final value = _value(key, required);
    if (value == null) return null;
    if (value is! String || value.trim().isEmpty || value.length > maxLength) {
      throw ThemeFormatException(
        _at(key),
        'must be a non-empty string up to $maxLength characters',
      );
    }
    return value;
  }

  double? number(String key, {double min = 0, double max = 256}) {
    final value = _value(key, false);
    if (value == null) return null;
    if (value is! num || !value.isFinite || value < min || value > max) {
      throw ThemeFormatException(
        _at(key),
        'must be a number between $min and $max',
      );
    }
    return value.toDouble();
  }

  Color? color(String key, {bool required = false}) {
    final value = _value(key, required);
    if (value == null) return null;
    final match = value is String ? _hexPattern.firstMatch(value) : null;
    if (match == null) {
      throw ThemeFormatException(_at(key), 'must be "#RRGGBB" or "#AARRGGBB"');
    }
    final hex = match.group(1)!;
    return Color(int.parse(hex.length == 6 ? 'FF$hex' : hex, radix: 16));
  }

  _Reader? object(String key, {bool required = false}) {
    final value = _value(key, required);
    if (value == null) return null;
    if (value is! Map<String, Object?>) {
      throw ThemeFormatException(_at(key), 'must be an object');
    }
    return _Reader(value, _at(key));
  }
}
