import '../../imports.dart';
import '../../services/settings/settings.dart';
import '../_shared/_shared.dart';

class UserSetting extends ConsumerStatefulWidget {
  const UserSetting({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UserSetting();
}

class _UserSetting extends ConsumerState<UserSetting> {
  @override
  Widget build(BuildContext context) {
    final setting = ref.watch(mockUserSettingProvider);
    return UnControlContentsFrame(
      floatingActionButton: FloatingActionButton(
        onPressed: () async => await settingChanged(),
      ),
      body: Form(
        child: ResponsiveGrid(
          spacing: context.spacing,
          children: [
            ResponsiveCell(
              layout: CommonResponsive.flexLx,
              child: Text(
                '設定',
                textAlign: .left,
                style: context.textStyleMode(sizeMode: .headlineLarge),
              ).spaceAll(context),
            ),
            ResponsiveCell(
              layout: CommonResponsive.flexM,
              child: SizedBox.shrink(),
            ),
            ResponsiveCell(
              layout: CommonResponsive.flexS.copyWith(showOnMobile: false),
              child: ResponsiveGrid(
                children: [
                  ResponsiveCell(
                    layout: CommonResponsive.flexM,
                    child: Text('最大取得レコード数'),
                  ),
                  ResponsiveCell(
                    layout: CommonResponsive.flexM,
                    child: TextFormField(
                      initialValue: setting.fetchLimit.toString(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> settingChanged() async {}
}
