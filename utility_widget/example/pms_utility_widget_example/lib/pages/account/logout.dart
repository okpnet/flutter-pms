import 'package:utility_widget/buttons/ut_button.dart';
import 'package:utility_widget/styles/export/ut_widget_design.dart';
import 'package:utility_widget/styles/ut_style.dart';
import 'package:utility_widget_example/pages/account/login.dart';

import '../container/app_bar_mixin.dart';

class Logout extends StatelessWidget with AppBarMixin {
  Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(context),
      body: UtBody(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Icon(Icons.check_rounded),
              ),
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
        title: subTitle('ログアウト', context),
      ),
    );
  }
}
