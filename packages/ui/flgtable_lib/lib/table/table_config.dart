import '../data/load_models.dart';

/// テーブル全体の設定。JSON でシリアライズ/デシリアライズできる。
class TableConfig {
  const TableConfig({
    this.rowHeight,
    this.pageSize = 50,
    this.loadMode = LoadMode.none,
    this.defaultColumnChars = 20,
  });

  /// JSON から復元する。欠けた/不正な項目は既定値にする。
  factory TableConfig.fromJson(Map<String, dynamic> json) {
    const d = TableConfig();
    final height = json['rowHeight'];
    final size = json['pageSize'];
    final chars = json['defaultColumnChars'];
    return TableConfig(
      rowHeight: height is num ? height.toDouble() : d.rowHeight,
      pageSize: size is int && size > 0 ? size : d.pageSize,
      loadMode: LoadMode.values.firstWhere(
        (m) => m.name == json['loadMode'],
        orElse: () => d.loadMode,
      ),
      defaultColumnChars: chars is int && chars > 0 ? chars : d.defaultColumnChars,
    );
  }

  /// null のとき、文字サイズにマージンを加えた高さにする。
  final double? rowHeight;
  final int pageSize;
  final LoadMode loadMode;

  /// 列幅の指定がないときに収める文字数。
  final int defaultColumnChars;

  Map<String, dynamic> toJson() => {
        'rowHeight': rowHeight,
        'pageSize': pageSize,
        'loadMode': loadMode.name,
        'defaultColumnChars': defaultColumnChars,
      };
}
