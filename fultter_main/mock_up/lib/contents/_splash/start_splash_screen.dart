import 'package:flutter/cupertino.dart';

import '../../imports.dart';
import '../contents.dart';

class StartSplashScreen extends StatelessWidget {
  const StartSplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.customTheme,
      home: Stack(
        children: [
          Scaffold(
            body: Center(
              child: OverlayIndicator(isShow: true, label: Text('初期化中')),
            ),
          ),
        ],
      ),
    );
  }
}
