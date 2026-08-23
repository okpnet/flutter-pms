class ResponsiveGridConfig {
  final int defaultMobileCells;
  final int defaultTabletCells;
  final int defaultPcCells;

  const ResponsiveGridConfig({
    this.defaultPcCells = 12,
    this.defaultTabletCells = 8,
    this.defaultMobileCells = 4,
  });

  /// 全デバイスで同じセル数を使いたい場合のファクトリ。
  /// 例: ResponsiveGridConfig.allOf(6)
  factory ResponsiveGridConfig.allOf(int cells) {
    return ResponsiveGridConfig(
      defaultMobileCells: cells,
      defaultTabletCells: cells,
      defaultPcCells: cells,
    );
  }

  /// 常に1カラム（フル幅）で表示したい場合のファクトリ。
  /// フォームなど「1行に1項目」レイアウトでよく使う。
  factory ResponsiveGridConfig.singleColumn() {
    return ResponsiveGridConfig(
      defaultMobileCells: 1,
      defaultTabletCells: 1,
      defaultPcCells: 1,
    );
  }

  /// デフォルト値（12 / 8 / 4）を明示的に生成したい場合のファクトリ。
  /// 単純に `ResponsiveGridConfig()` と同じだが、意図を明示したい場面向け。
  factory ResponsiveGridConfig.standard() {
    return ResponsiveGridConfig();
  }

  /// PC基準のセル数から、タブレット・モバイルの比率を自動計算するファクトリ。
  /// 例: ResponsiveGridConfig.fromPcCells(12) -> pc:12, tablet:8, mobile:4 相当の比率で按分。
  factory ResponsiveGridConfig.fromPcCells(
    int pcCells, {
    double tabletRatio = 2 / 3,
    double mobileRatio = 1 / 3,
  }) {
    return ResponsiveGridConfig(
      defaultPcCells: pcCells,
      defaultTabletCells: (pcCells * tabletRatio).round(),
      defaultMobileCells: (pcCells * mobileRatio).round(),
    );
  }

  /// モバイルとタブレットは同じセル数にし、PCだけ変えたい場合のファクトリ。
  /// 例: ResponsiveGridConfig.pcOnly(pcCells: 12, otherCells: 4)
  factory ResponsiveGridConfig.pcOnly({
    required int pcCells,
    int otherCells = 4,
  }) {
    return ResponsiveGridConfig(
      defaultPcCells: pcCells,
      defaultTabletCells: otherCells,
      defaultMobileCells: otherCells,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'defaultMobileCells': defaultMobileCells,
      'defaultTabletCells': defaultTabletCells,
      'defaultPcCells': defaultPcCells,
    };
  }

  factory ResponsiveGridConfig.fromJson(Map<String, dynamic> json) {
    return ResponsiveGridConfig(
      defaultMobileCells: json['defaultMobileCells'] as int? ?? 4,
      defaultTabletCells: json['defaultTabletCells'] as int? ?? 8,
      defaultPcCells: json['defaultPcCells'] as int? ?? 12,
    );
  }

  ResponsiveGridConfig copyWith({
    int? defaultMobileCells,
    int? defaultTabletCells,
    int? defaultPcCells,
  }) {
    return ResponsiveGridConfig(
      defaultMobileCells: defaultMobileCells ?? this.defaultMobileCells,
      defaultTabletCells: defaultTabletCells ?? this.defaultTabletCells,
      defaultPcCells: defaultPcCells ?? this.defaultPcCells,
    );
  }
}
