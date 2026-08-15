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

    return Stack(
      children: [
        Scaffold(
          appBar: AppTitleBar(),
          body: Form(
            key: formKey,
            child: ResponsiveGrid(
              defaultPcCells: 3,
              defaultTabletCells: 3,
              defaultMobileCells: 1,
              spacing: context.spacing,
              children: [
                ResponsiveCell(
                  layout: CommonResponsive.flexL.copyWith(
                    wrapCellAlignment: .center,
                  ),
                  child: Text(
                    'ログイン',
                    style: context.textStyleMode(sizeMode: .headlineLarge),
                    textAlign: .center,
                  ).spaceAll(context),
                ),
                ResponsiveCell(
                  layout: CommonResponsive.flexLx,
                  child: isCredentialInvalid
                      ? Text(
                          'IDまたはパスワードが違います',
                          textAlign: .left,
                          style: context.textStyleMode(colorMode: .error),
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
                    defaultPcCells: 3,
                    defaultTabletCells: 4,
                    defaultMobileCells: 1,
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
                            label: Text('ユーザーID'),
                            helperText: ' ',
                          ),
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
                            label: Text('パスワード'),
                            helperText: ' ',
                          ),
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
                            label: Text('ログイン'),
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
                                  final result =
                                      await ref //ここがFalseのとき、ログイン失敗なのでValidationをFalseにしたい
                                          .read(
                                            mockAutorizeServiceProvider
                                                .notifier,
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
