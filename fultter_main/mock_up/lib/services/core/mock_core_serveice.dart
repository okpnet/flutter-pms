import '../../imports.dart';
import '../../router/refresh_listenable.dart';

part 'mock_core_serveice.g.dart';

@Riverpod(keepAlive: true)
Future<void> startupService(Ref ref) async {
  final router = ref.watch(refreshListenableProvider);
  ref.listen(refreshListenableProvider, (a, b) {
    a.
  });
  ref.onDispose(() {
    router.dispose();
  });
}
