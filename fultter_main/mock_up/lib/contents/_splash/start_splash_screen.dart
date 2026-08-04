import 'package:flutter/cupertino.dart';

import '../../imports.dart';

class StartSplashScreen extends StatelessWidget {
  const StartSplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CupertinoActivityIndicator(),
              SizedBox(height: 20),
              Text("wait..."),
            ],
          ),
        ),
      ),
    );
  }
}
