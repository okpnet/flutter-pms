import '../../../imports.dart';
import 'app_main_frame.dart';

///ブランチを持たない枠。タイトルバー・サイドバーは[AppMainFrame]。
class UnControlContentsFrame extends ConsumerWidget {
  final Widget body;
  const UnControlContentsFrame({super.key, required this.body});

  @override
  Widget build(BuildContext context, WidgetRef ref) => AppMainFrame(body: body);
}
