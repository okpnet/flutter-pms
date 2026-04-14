import 'package:utility_widget/buttons/ut_button.dart';
import 'package:utility_widget/forms/ut_input_field.dart';
import 'package:utility_widget/frames/body/ut_body.dart';
import 'package:utility_widget/styles/export/ut_widget_design.dart';
import 'package:utility_widget_example/pages/container/app_bar_mixin.dart';

class Login extends StatelessWidget with AppBarMixin {
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(context),
      body: UtBody(
        title: subTitle('ログイン', context),
        body: Center(
          child: Column(
            children: [
              UtTextInput.primary()
              Text('ログアウトしました'),
              UtButton.secondaryWithIcon(
                label: 'トップページ',
                icon: Icon(Icons.dashboard),
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => Login()),
                    (_) => false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
