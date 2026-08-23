// Project imports:
import 'package:mock_up/services/authorization/mock_autorize_service.dart';

import '../../../imports.dart';
import '../shared.dart';

class UnControlContentsFrame extends ConsumerWidget {
  final Widget body;
  final FloatingActionButton? floatingActionButton;
  const UnControlContentsFrame({
    super.key,
    required this.body,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.read(mockAutorizeServiceProvider);
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppTitleBar(),
        drawer: authState.authStateType == .authenticated ? DrawerMenu() : null,
        body: body,
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}
