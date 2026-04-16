import 'dart:async';

import 'package:utility_widget/buttons/ut_button.dart';
import 'package:utility_widget/forms/ut_input_field.dart';
import 'package:utility_widget/styles/constans/ut_grid_type.dart';
import 'package:utility_widget/styles/export/ut_widget_design.dart';
import 'package:utility_widget/styles/ut_style.dart';
import 'package:utility_widget_example/pages/container/app_bar_mixin.dart';

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
  void initState() {
    super.initState();

    ///ダミー遅延処理用のタイマー
    timer = Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushAndRemoveUntil(newRoute, predicate);
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(context),
      body: UtBody(
        title: subTitle('ログイン', context),
        body: Column(
          children: [
            UtResponsiveRowWrap.grid(
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem.offset(offsetLength: 1),
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.centerRight,
                  child: UtTextInput.primary(
                    initialValue: widget.name,
                    label: Text('ID'),
                    onChanged: (value) => setState(() {
                      name = value;
                    }),
                    maxLength: 16,
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
                  align: AlignmentGeometry.centerRight,
                  child: UtTextInput.primaryPassword(
                    initialValue: widget.name,
                    label: Text('PASSWORD'),
                    onChanged: (value) => setState(() {
                      name = value;
                    }),
                    maxLength: 16,
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
                  child: SizedBox(
                    width: double.infinity,
                    child: UtButton.primaryWithIcon(
                      label: 'ログイン',
                      onPressed: () {},
                      icon: Icon(Icons.login),
                    ),
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
