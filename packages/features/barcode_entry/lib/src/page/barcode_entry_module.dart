import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../i18n/strings_provider.dart';
import 'barcode_entry_destinations.dart';
import 'barcode_entry_page.dart';
import 'barcode_entry_paths.dart';

/// バーコード実績登録をアプリへ組み込むための口。
///
/// メニューは「作業実績」のグループに「バーコード」を出す。
class BarcodeEntryModule implements FeatureModule, MenuContributor {
  const BarcodeEntryModule();

  @override
  List<RouteBase> get routes => [
    GoRoute(
      path: BarcodeEntryPaths.top,
      builder: (context, state) => BarcodeEntryPage(
        symbol: state.uri.queryParameters[BarcodeEntryPaths.symbolQuery],
        item: state.uri.queryParameters[BarcodeEntryPaths.itemQuery],
      ),
    ),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) =>
      switch (destination) {
        BarcodeEntryDestination d => _locationOf(d),
        _ => null,
      };

  static String _locationOf(BarcodeEntryDestination d) {
    final query = <String, String>{
      BarcodeEntryPaths.symbolQuery: ?d.scanValue,
      BarcodeEntryPaths.itemQuery: ?d.itemScanValue,
    };
    return Uri(
      path: BarcodeEntryPaths.top,
      queryParameters: query.isEmpty ? null : query,
    ).toString();
  }

  @override
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {}

  @override
  List<MenuEntry> menuEntries(WidgetRef ref) {
    final t = ref.watch(barcodeEntryStringsProvider);
    return [
      MenuEntry(
        groupId: 'work_record',
        groupLabel: t.menu.group,
        label: t.menu.item,
        destination: const TopLevelDestination(BarcodeEntryDestination()),
      ),
    ];
  }
}
