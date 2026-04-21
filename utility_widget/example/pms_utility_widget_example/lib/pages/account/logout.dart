import 'dart:async';

import 'package:utility_widget/buttons/ut_button.dart';
import 'package:utility_widget/frames/scafolds/ut_scafold.dart';
import 'package:utility_widget/styles/export/ut_widget_design.dart';
import 'package:utility_widget/styles/ut_style.dart';
import 'package:utility_widget/text/ut_text.dart';
import 'package:utility_widget_example/pages/account/login.dart';
import 'package:utility_widget_example/pages/container/app_bar_mixin.dart';

class Logout extends StatefulWidget {
  const Logout({super.key});

  @override
  State<StatefulWidget> createState() => _Logout();
}

class _Logout extends State<Logout> with AppBarMixin {
  Timer? timer;
  bool isLoading = false;

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
            SizedBox(height: 100, width: 100, child: Icon(Icons.check_rounded)),
            Text('ログアウトしました'),
            UtButton.secondaryWithIcon(
              label: 'トップページ',
              icon: Icon(Icons.dashboard),
              onPressed: () {
                setState(() {
                  isLoading = true;
                });
                //ダミー遅延処理用のタイマー
                timer = Timer(const Duration(seconds: 5), () {
                  setState(() {
                    isLoading = false;
                  });
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => Login()),
                    (_) => false,
                  );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
