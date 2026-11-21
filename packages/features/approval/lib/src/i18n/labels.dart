import 'strings_provider.dart';

/// 区分のキーから、区分の名前。
String approvalKindLabel(ApprovalStrings s, String kind) => switch (kind) {
  'document' => s.kinds.document,
  'order' => s.kinds.order,
  'shipping_order' => s.kinds.shipping_order,
  'purchase' => s.kinds.purchase,
  'unrecognized' => s.kinds.unrecognized,
  'complaint' => s.kinds.complaint,
  'disposal' => s.kinds.disposal,
  'recurrence_prevention' => s.kinds.recurrence_prevention,
  _ => kind,
};

/// メニュー(グループ ID)の名前。
String approvalMenuLabel(ApprovalStrings s, String menu) => switch (menu) {
  'quality_document' => s.menus.quality_document,
  'sales' => s.menus.sales,
  'purchasing' => s.menus.purchasing,
  'quality_common' => s.menus.quality_common,
  _ => menu,
};
