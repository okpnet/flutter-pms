/// 宣言順が継承順（compact → medium → expanded）。
/// 実際の閾値・列数はGridConfigが持つ（要件6）。
enum Breakpoint {
  compact,
  medium,
  expanded;

  static Breakpoint fromJson(String value) =>
      Breakpoint.values.firstWhere((b) => b.name == value);
  String toJson() => name;
}
