import '../../i18n/strings_provider.dart';
import '../../imports.dart';
import '../contents.dart';

class StartSplashScreen extends ConsumerWidget {
  const StartSplashScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: ref.watch(lightThemeProvider),
      home: Stack(
        children: [
          Scaffold(
            body: Center(
              child: OverlayIndicator(isShow: true, label: Text(ref.watch(appStringsProvider).splash.initializing)),
            ),
          ),
        ],
      ),
    );
  }
}
