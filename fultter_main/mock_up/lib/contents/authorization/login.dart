// Project imports:

import '../../../imports.dart';
import '../../services/services.dart';
import '../_shared/shared.dart';

class Login extends ConsumerStatefulWidget {
  const Login({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Login();
}

class _Login extends ConsumerState<Login> {
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  bool isCredentialInvalid = false;
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> authModel = {'id': null, 'pass': null};

    return Scaffold(
      appBar: AppTitleBar(),
      body: Form(
        key: formKey,
        child: Stack(
          children: [
            OverlayIndicator(isShow: isLoading),
            ResponsiveGrid(
              children: [
                ResponsiveCell(
                  layout: CommonResponsive.flexL.copyWith(
                    wrapCellAlignment: .center,
                  ),
                  child: Text(
                    'ログイン',
                    style: context.textStyleMode(sizeMode: .headlineLarge),
                  ).spaceAll(context),
                ),
                if (isCredentialInvalid)
                  ResponsiveCell(
                    layout: CommonResponsive.flexLx,
                    child: Text(
                      'IDまたはパスワードが違います',
                      style: context.textStyleMode(colorMode: .error),
                    ),
                  ),
                ResponsiveCell(
                  ///IDインプットライン開始
                  layout: CommonResponsive.flexL.copyWith(
                    pcFlex: 4,
                    mobileFlex: 2,
                    showOnMobile: false,
                  ),
                  child: SizedBox.shrink(),
                ),
                ResponsiveCell(
                  layout: CommonResponsive.flexM.copyWith(
                    tabletFlex: 4,
                    mobileFlex: 4,
                    wrapCellAlignment: .center,
                  ),
                  child: Row(
                    spacing: SpaceField().spacing,
                    crossAxisAlignment: .stretch,
                    mainAxisAlignment: .center,
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(label: Text('ユーザーID')),
                          initialValue: authModel['id'],
                          onSaved: (newValue) => authModel['id'] = newValue,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'ユーザーIDは必須です';
                            }
                            return null;
                          },
                        ).toPrimary(context).spaceAll(context),
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(label: Text('パスワード')),
                          initialValue: authModel['pass'],
                          obscuringCharacter: '●',
                          obscureText: true,
                          onSaved: (newValue) => authModel['pass'] = newValue,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'パスワードは必須です';
                            }
                            return null;
                          },
                        ).toPrimary(context).spaceAll(context),
                      ),
                      Expanded(
                        child: ElevatedButton.icon(
                          label: Text('ログイン'),
                          icon: Icon(Icons.login),
                          onPressed: () async {
                            setState(() => isCredentialInvalid = false);
                            if (formKey.currentState!.validate()) {
                              try {
                                formKey.currentState!.save();
                                setState(() => isLoading = true);
                                final result =
                                    await ref //ここがFalseのとき、ログイン失敗なのでValidationをFalseにしたい
                                        .read(
                                          mockAutorizeServiceProvider.notifier,
                                        )
                                        .login();
                                setState(() => isCredentialInvalid = result);
                              } catch (ex) {
                                ref
                                    .read(mockAutorizeServiceProvider.notifier)
                                    .error(ex);
                              } finally {
                                setState(() => isLoading = false);
                              }
                            }
                          },
                        ).spaceAll(context),
                      ),
                    ],
                  ),
                ),
                ResponsiveCell(
                  layout: CommonResponsive.flexL.copyWith(
                    pcFlex: 4,
                    mobileFlex: 2,
                    showOnMobile: false,
                  ),
                  child: SizedBox.shrink(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
