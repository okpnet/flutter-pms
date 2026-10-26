import 'package:app_core/app_core.dart';
import 'package:app_shell/app_shell.dart' show SingleMainFrame;
import '../../i18n/strings_provider.dart';
// Project imports:

import '../../../imports.dart';
import '../../services/services.dart';
import '../_shared/_shared.dart';

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
    final t = ref.watch(appStringsProvider);
    Map<String, dynamic> authModel = {'id': null, 'pass': null};

    return Stack(
      children: [
        SingleMainFrame(
          title: ref.watch(appCoreStringsProvider).app.title,
          body: Form(
            key: formKey,
            child: ResponsiveGrid(
              config: CommonResponsive.intoThirds,
              spacing: context.spacing,
              children: [
                ResponsiveCell(
                  layout: CommonResponsive.flexL.copyWith(
                    wrapCellAlignment: .center,
                  ),
                  child: Text(
                    t.login.title,
                    style: context.textStyleMode(size: (t) => t.headlineLarge),
                    textAlign: .center,
                  ).spaceAll(context),
                ),
                ResponsiveCell(
                  layout: CommonResponsive.flexLx,
                  child: isCredentialInvalid
                      ? Text(
                          t.login.invalidCredential,
                          textAlign: .left,
                          style: context.textStyleMode(color: .error),
                        )
                      : Text(' '),
                ),
                ResponsiveCell(
                  ///IDインプットライン開始
                  layout: CommonResponsive.flexSm.copyWith(
                    pcFlex: 1,
                    tabletFlex: 1,
                    showOnMobile: false,
                  ),
                  child: SizedBox.shrink(),
                ),
                ResponsiveCell(
                  layout: CommonResponsive.allOne,
                  child: ResponsiveGrid(
                    config: CommonResponsive.intoThirds,
                    spacing: SpaceField().spacing,
                    children: [
                      ResponsiveCell(
                        layout: CommonResponsive.allOne.copyWith(
                          showOnMobile: false,
                        ),
                        child: SizedBox.shrink(),
                      ),
                      ResponsiveCell(
                        layout: CommonResponsive.allOne.copyWith(tabletFlex: 2),
                        child: TextFormField(
                          decoration: InputDecoration(
                            label: Text(t.login.userId),
                            helperText: ' ',
                          ),
                          initialValue: authModel['id'],
                          onSaved: (newValue) => authModel['id'] = newValue,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return t.login.userIdRequired;
                            }
                            return null;
                          },
                        ).spaceAll(context),
                      ),
                      ResponsiveCell(
                        layout: CommonResponsive.allOne.copyWith(
                          showOnMobile: false,
                        ),
                        child: SizedBox.shrink(),
                      ),
                      ResponsiveCell(
                        layout: CommonResponsive.allOne.copyWith(
                          showOnMobile: false,
                        ),
                        child: SizedBox.shrink(),
                      ),
                      ResponsiveCell(
                        layout: CommonResponsive.allOne.copyWith(tabletFlex: 2),
                        child: TextFormField(
                          decoration: InputDecoration(
                            label: Text(t.login.password),
                            helperText: ' ',
                          ),
                          initialValue: authModel['pass'],
                          obscuringCharacter: '●',
                          obscureText: true,
                          onSaved: (newValue) => authModel['pass'] = newValue,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return t.login.passwordRequired;
                            }
                            return null;
                          },
                        ).spaceAll(context),
                      ),
                      ResponsiveCell(
                        layout: CommonResponsive.allOne.copyWith(
                          showOnMobile: false,
                        ),
                        child: SizedBox.shrink(),
                      ),
                      ResponsiveCell(
                        layout: CommonResponsive.allOne.copyWith(
                          showOnMobile: false,
                        ),
                        child: SizedBox.shrink(),
                      ),
                      ResponsiveCell(
                        layout: CommonResponsive.allOne.copyWith(tabletFlex: 2),
                        child: SizedBox(
                          width: double.infinity,
                          child: FilledButton.icon(
                            label: Text(t.login.submit),
                            icon: Icon(Icons.login),
                            onPressed: () async {
                              setState(() => isCredentialInvalid = false);
                              if (formKey.currentState!.validate()) {
                                try {
                                  setState(() => isLoading = true);
                                  formKey.currentState!.save();
                                  debugPrint(
                                    'id=${authModel['id']} pass=${authModel['pass']}',
                                  );
                                  await ref //ここがFalseのとき、ログイン失敗なのでValidationをFalseにしたい
                                      .read(
                                        mockAutorizeServiceProvider.notifier,
                                      )
                                      .login(); //ここでStateが変わってページが移動したあとに呼ばれる。存在しないインスタンスの移行のメソッドを実行するために例外が発生
                                  // setState(() => isCredentialInvalid = result);
                                } catch (ex) {
                                  // ref
                                  //     .read(
                                  //       mockAutorizeServiceProvider.notifier,
                                  //     )
                                  //     .error(ex);
                                } finally {
                                  // setState(() => isLoading = false);
                                }
                              }
                            },
                          ).toPrimary(context).spaceAll(context),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        OverlayIndicator(isShow: isLoading, label: Text('test')),
      ],
    );
  }
}
