import 'package:flutter/material.dart';
import 'package:utility_widget/loding_indicator/ut_indicators.dart';

class MiniIndicator extends StatelessWidget {
  const MiniIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(child: Column(children: [UtMiniCenterIndicator()])),
    );
  }
}
