import 'package:feature_shared/feature_shared.dart';
import 'package:go_router/go_router.dart';

/// baton_lib の [DestinationNavigator] を GoRouter で実装する(Adapter)。
///
/// 遷移先 → パスの変換は各 [FeatureModule] に問い合わせる。
class GoRouterDestinationNavigator implements DestinationNavigator {
  GoRouterDestinationNavigator({required this.router, required this.modules});

  final GoRouter router;
  final List<FeatureModule> modules;

  /// [destination] を所有する機能からパスを得る。どの機能も所有しなければ例外。
  String resolve(PageDestination<Object?> destination) {
    for (final module in modules) {
      final location = module.locationOf(destination);
      if (location != null) return location;
    }
    throw StateError('どの機能にも登録されていない遷移先: ${destination.runtimeType}');
  }

  @override
  Future<R> navigate<R>(PageDestination<R> destination) async {
    final result = await router.push<R>(resolve(destination));
    return result as R;
  }
}
