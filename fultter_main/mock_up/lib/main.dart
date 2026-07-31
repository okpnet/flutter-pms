import 'imports.dart';
import 'router/router.dart';

void main() {
  runApp(ProviderScope(overrides: [], child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(routerConfig: ref.read(rootRouterProvider));
  }
}
