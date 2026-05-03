import 'dart:async';

import 'package:utility_widget/frames/scafolds/ut_scafold.dart';
import 'package:utility_widget/utiritiy_widget.dart';
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
        title: UtText.subTitle('ログアウト'),
        body: Column(
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Icon(Icons.check_rounded, size: 100),
            ),
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
