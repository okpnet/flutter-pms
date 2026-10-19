import 'package:flutter/material.dart';

import 'responsive_cell_alignment.dart';

class ResponsiveCellLayout {
  final int? mobileFlex;
  final int? tabletFlex;
  final int? pcFlex;

  final int? mobileOffset;
  final int? tabletOffset;
  final int? pcOffset;

  // 2. 表示・非表示の制御フラグ
  final bool showOnMobile;
  final bool showOnTablet;
  final bool showOnPc;

  // JSON保存できるように、Alignmentは文字列（または独自のEnum）で管理するのが安全です
  final ResponsiveCellAlignment wrapCellAlignment;

  const ResponsiveCellLayout({
    this.mobileFlex,
    this.tabletFlex,
    this.pcFlex,
    this.mobileOffset,
    this.tabletOffset,
    this.pcOffset,
    this.showOnMobile = true,
    this.showOnTablet = true,
    this.showOnPc = true,
    this.wrapCellAlignment = .center,
  });

  // FlutterのAlignmentオブジェクトへの変換ヘルパー
  AlignmentGeometry get alignment => wrapCellAlignment.alignment;

  // 4. 定番の copyWith
  ResponsiveCellLayout copyWith({
    int? mobileFlex,
    int? tabletFlex,
    int? pcFlex,
    int? mobileOffset,
    int? tabletOffset,
    int? pcOffset,
    bool? showOnMobile,
    bool? showOnTablet,
    bool? showOnPc,
    ResponsiveCellAlignment? wrapCellAlignment,
  }) {
    return ResponsiveCellLayout(
      mobileFlex: mobileFlex ?? this.mobileFlex,
      tabletFlex: tabletFlex ?? this.tabletFlex,
      pcFlex: pcFlex ?? this.pcFlex,
      mobileOffset: mobileOffset ?? this.mobileOffset,
      tabletOffset: tabletOffset ?? this.tabletOffset,
      pcOffset: pcOffset ?? this.pcOffset,
      showOnMobile: showOnMobile ?? this.showOnMobile,
      showOnTablet: showOnTablet ?? this.showOnTablet,
      showOnPc: showOnPc ?? this.showOnPc,
      wrapCellAlignment: wrapCellAlignment ?? this.wrapCellAlignment,
    );
  }

  // 4. JSON 変換（外部ファイルからレイアウトを読み込むため）
  Map<String, dynamic> toJson() => {
    'mobileFlex': mobileFlex,
    'tabletFlex': tabletFlex,
    'pcFlex': pcFlex,
    'mobileOffset': mobileOffset,
    'tabletOffset': tabletOffset,
    'pcOffset': pcOffset,
    'showOnMobile': showOnMobile,
    'showOnTablet': showOnTablet,
    'showOnPc': showOnPc,
    'wrapCellAlignment': wrapCellAlignment,
  };

  factory ResponsiveCellLayout.fromJson(Map<String, dynamic> json) =>
      ResponsiveCellLayout(
        mobileFlex: json['mobileFlex'],
        tabletFlex: json['tabletFlex'],
        pcFlex: json['pcFlex'],
        mobileOffset: json['mobileOffset'],
        tabletOffset: json['tabletOffset'],
        pcOffset: json['pcOffset'],
        showOnMobile: json['showOnMobile'] ?? true,
        showOnTablet: json['showOnTablet'] ?? true,
        showOnPc: json['showOnPc'] ?? true,
        wrapCellAlignment:
            json['wrapCellAlignment'] ?? ResponsiveCellAlignment.center,
      );
}
