import 'dart:async';

import 'package:utility_widget/buttons/ut_button.dart';
import 'package:utility_widget/forms/constants/ut_input_size_style.dart';
import 'package:utility_widget/forms/ut_input_field.dart';
import 'package:utility_widget/frames/scafolds/ut_scafold.dart';
import 'package:utility_widget/styles/export/ut_widget_design.dart';
import 'package:utility_widget/styles/ut_style.dart';
import 'package:utility_widget/text/ut_text.dart';
import 'package:utility_widget_example/pages/container/app_bar_mixin.dart';
import 'package:utility_widget_example/pages/contants/dashboard.dart';

class Login extends StatefulWidget {
  final String? name;
  const Login({super.key, this.name});

  @override
  State<StatefulWidget> createState() => _Login();
}

class _Login extends State<Login> with AppBarMixin {
  String? name;
  String? password;
  Timer? timer;
  bool isLoading = false;

  _Login();

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return UtFrameWork(
      appBarTitle: Text(title),
      isOverlayIndicator: isLoading,
      body: UtBody(
        titleAign: AlignmentGeometry.center,
        title: UtText.subTitle('ログイン'),
        body: Column(
          children: [
            UtResponsiveRowWrap.grid(
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem.offset(offsetLength: 1),
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.center,
                  mobileAlign: AlignmentGeometry.center,
                  child: UtTextInput.primary(
                    initialValue: widget.name,
                    label: 'ID',
                    onChanged: (value) => setState(() {
                      name = value;
                    }),
                    maxLength: 16,
                    widthStyle: UtInputWidthStyle.large,
                  ),
                ),
              ],
            ),
            UtResponsiveRowWrap.grid(
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem.offset(offsetLength: 1),
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.center,
                  mobileAlign: AlignmentGeometry.center,
                  child: UtTextInput.primaryPassword(
                    initialValue: widget.name,
                    label: 'PASSWORD',
                    onChanged: (value) => setState(() {
                      name = value;
                    }),
                    maxLength: 16,
                    widthStyle: UtInputWidthStyle.large,
                  ),
                ),
              ],
            ),
            UtResponsiveRowWrap.grid(
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem.offset(offsetLength: 1),
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.center,
                  mobileAlign: AlignmentGeometry.center,
                  child: UtButton.primaryWithIcon(
                    label: 'ログイン',
                    onPressed: () {
                      setState(() {
                        isLoading = true;
                      });
                      //ダミー遅延処理用のタイマー
                      timer = Timer(const Duration(seconds: 2), () {
                        setState(() {
                          isLoading = false;
                        });
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => Dashboard()),
                          (_) => false,
                        );
                      });
                    },
                    icon: Icon(Icons.login),
                    sizeStyle: UtButtonSizeStyle.largeWxMidH,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
