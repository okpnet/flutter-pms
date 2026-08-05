import '../../../imports.dart';

class AppTitleBar extends ConsumerWidget implements PreferredSizeWidget {
  const AppTitleBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ///ローカライズ
    return AppBar(title: Text('アプリタイトル'));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
