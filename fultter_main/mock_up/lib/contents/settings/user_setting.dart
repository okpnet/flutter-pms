import 'package:mock_up/services/settings/mock_user_setting.dart';

import '../../imports.dart';
import '../_shared/shared.dart';

class UserSetting extends ConsumerStatefulWidget {
  const UserSetting({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserSetting();
}

class _UserSetting extends ConsumerState<UserSetting> {
  @override
  Widget build(BuildContext context) {
    final setting = ref.watch(mockUserSettingProvider);
    return Scaffold(
      appBar: AppTitleBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => await settingChanged(),
      ),
      body: Form(
        child: ResponsiveGrid(
          children: [
            ResponsiveCell(child: Text('設定').spaceAll(context)),
            ResponsiveCell(child: child),
          ],
        ),
      ),
    );
  }

  Future<void> settingChanged() async {}
}
