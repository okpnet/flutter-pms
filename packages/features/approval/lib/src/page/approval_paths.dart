/// 画面のパス。メニュー(グループ ID)ごと。
abstract final class ApprovalPaths {
  static const String base = '/approval';

  static String of(String menu) => '$base/$menu';
}
