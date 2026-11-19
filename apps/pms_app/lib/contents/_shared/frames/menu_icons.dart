import 'package:flutter/material.dart';

/// 画面案(`tools/open-design`)のメニュー項目のアイコン。実体のキー(または画面の id)→ 画面案のアイコンの名前。
/// 無いキーは、グループのアイコンを使う。
const menuIconNames = <String, String>{
  'audit': 'orders',
  'auditstd': 'check',
  'auditstdcheck': 'list',
  'auditteam': 'users',
  'cancelopen': 'alert',
  'capability': 'briefcase',
  'certificate': 'list',
  'complaint': 'alert',
  'container': 'box',
  'customer': 'star',
  'disposal': 'wrench',
  'doc': 'org',
  'doctier': 'list',
  'equipment': 'factory',
  'equipmenttag': 'factory',
  'inspect': 'check',
  'invreq': 'check',
  'item': 'box',
  'itemkind': 'list',
  'itemop': 'pencil',
  'itemoplan': 'pencil',
  'itemsupplier': 'truck',
  'license': 'check',
  'location': 'pin',
  'maintenance': 'wrench',
  'obsdisp': 'search',
  'observe': 'search',
  'operation': 'org',
  'order': 'orders',
  'orderrisk': 'alert',
  'planchange': 'list',
  'prodrez': 'list',
  'purchase': 'orders',
  'purchaserec': 'truck',
  'qrisk': 'alert',
  'receipt': 'truck',
  'recur': 'check',
  'report': 'orders',
  'resplan': 'production',
  'rez': 'list',
  'risk': 'alert',
  'shipkind': 'truck',
  'shipplan': 'truck',
  'supplier': 'briefcase',
  'task': 'production',
  'taskgroup': 'list',
  'unit': 'box',
  'unrec': 'orders',
  'workrec': 'wrench',
};

/// 画面案のアイコンの名前 → Flutter のアイコン(画面案の線画に近いもの)。
const menuIconData = <String, IconData>{
  'list': Icons.list_alt_outlined,
  'truck': Icons.local_shipping_outlined,
  'orders': Icons.receipt_long_outlined,
  'check': Icons.fact_check_outlined,
  'alert': Icons.warning_amber_outlined,
  'production': Icons.precision_manufacturing_outlined,
  'box': Icons.inventory_2_outlined,
  'wrench': Icons.build_outlined,
  'org': Icons.account_tree_outlined,
  'briefcase': Icons.work_outline,
  'users': Icons.groups_outlined,
  'star': Icons.star_outline,
  'search': Icons.search,
  'pencil': Icons.edit_outlined,
  'database': Icons.storage_outlined,
  'factory': Icons.factory_outlined,
  'pin': Icons.place_outlined,
};

/// 実体のキーのアイコン。無ければ null。
IconData? menuIconOf(String entityKey) {
  final name = menuIconNames[entityKey];
  return name == null ? null : menuIconData[name];
}
