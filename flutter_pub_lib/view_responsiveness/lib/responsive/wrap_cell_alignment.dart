import 'package:flutter/material.dart';

enum WrapCellAlignment {
  centerLeft('centerLeft'),
  center('center'),
  centerRight('centerRight'),
  topLeft('topLeft'),
  topCenter('topCenter'),
  topRight('topRight'),
  bottomLeft('bottomLeft'),
  bottomCenter('bottomCenter'),
  bottomRight('bottomRight');

  static const String cl = 'centerLeft';
  static const String c = 'center';
  static const String cr = 'centerRight';
  static const String tl = 'topLeft';
  static const String tc = 'topCenter';
  static const String tr = 'topRight';
  static const String bl = 'bottomLeft';
  static const String bc = 'bottomCenter';
  static const String br = 'bottomRight';

  final String valueString;

  const WrapCellAlignment(this.valueString);

  static WrapCellAlignment from(String value) {
    return switch (value) {
      tl => .topLeft,
      tc => .topCenter,
      tr => .topRight,
      cl => .centerRight,
      cr => .centerRight,
      bl => .bottomLeft,
      bc => .bottomCenter,
      br => .bottomRight,
      _ => .center,
    };
  }

  AlignmentGeometry get alignment => switch (valueString) {
    tl => .topLeft,
    tc => .topCenter,
    tr => .topRight,
    cl => .centerRight,
    c => .center,
    cr => .centerRight,
    bl => .bottomLeft,
    bc => .bottomCenter,
    br => .bottomRight,
    _ => .center,
  };
}
