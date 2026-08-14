import 'package:mock_up/imports.dart';
import 'package:mock_up/services/settings/settings.dart';

import '../../contents/_models/authorization/mock_auth_state.dart';

part 'mock_autorize_service.g.dart';

@Riverpod(keepAlive: true)
class MockAutorizeService extends _$MockAutorizeService {
  @override
  MockAuthState build() => MockAuthState();

  ///ログイン処理
  Future<bool> login() async {
    final result = false;
    //ここでログイン処理
    // return false;
    state = MockAuthState(authStateType: .authenticated);
    if (state.authStateType == .authenticated) {
      final settingProvider = ref.watch(mockUserSettingProvider.notifier);

      ///ここで設定読み込み
      settingProvider.loadSetting('userIdなど');
    }
    await Future.delayed(Duration(seconds: 3));

    return false; //問題はない
  }

  ///ログアウト処理
  Future<void> logout() async {
    await Future.delayed(Duration(seconds: 3));
    state = MockAuthState(authStateType: .signedOut);
  }

  ///エラー
  Future<void> error(dynamic ex) async {
    await Future.delayed(Duration(seconds: 3));
    //ログを残す
    state = MockAuthState(authStateType: .fail);
  }

  ///セッション有効評価
  FutureOr<void> checkAuthState() async {
    ///ログイン中以外は何もしない
    if (state.authStateType != .authenticated) {
      return;
    }
    await Future.delayed(Duration(seconds: 3));
    state = MockAuthState(authStateType: .expired); //時間切れ
  }
}
