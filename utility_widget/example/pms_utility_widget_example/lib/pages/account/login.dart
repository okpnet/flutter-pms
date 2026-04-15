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
  _Login();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(context),
      body: UtBody(
        title: subTitle('ログイン', context),
        body: Column(children: [idWidget(), passWidget(), loginBtnWidget()]),
      ),
    );
  }

  Widget passWidget() {
    return widgetFrame(
      UtGridItem(
        itemLength: 1,
        align: AlignmentGeometry.centerRight,
        child: UtTextInput.primaryPassword(
          initialValue: widget.name,
          label: Text('Pass'),
          onChanged: (value) => setState(() {
            name = value;
          }),
          maxLength: 16,
        ),
      ),
    );
  }

  Widget idWidget() {
    return widgetFrame(
      UtGridItem(
        itemLength: 1,
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
    );
  }

  Widget loginBtnWidget() {
    return widgetFrame(
      UtGridItem(
        itemLength: 1,
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
    );
  }

  UtWrapGrid widgetFrame(UtGridItem contents) {
    return UtWrapGrid.grid(
      alignment: WrapAlignment.center,
      rowWidgetLength: 3,
      children: [
        UtGridItem(
          itemLength: 1,
          enableWidthType: UtGridEnableWidthType.onlyWide,
          child: SizedBox.shrink(),
        ),
        contents,
        UtGridItem(
          itemLength: 1,
          enableWidthType: UtGridEnableWidthType.onlyWide,
          child: SizedBox.shrink(),
        ),
      ],
    );
  }
}
