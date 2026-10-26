import 'package:pms_app/imports.dart';
import 'package:pms_app/services/settings/models/setting_model.dart';

part 'mock_user_setting.g.dart';

@Riverpod(keepAlive: true)
class MockUserSetting extends _$MockUserSetting {
  @override
  SettingModel build() => SettingModel();

  Future<void> loadSetting(String userId) async {
    ///設定取得
    await Future.delayed(Duration(seconds: 2));
    state = SettingModel();
  }
}
