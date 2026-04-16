import 'package:flutter/material.dart';
import 'package:utility_widget/loding_indicator/ut_indicators.dart';
import 'package:utility_widget/buttons/ut_button.dart';

class ButtonsView extends StatelessWidget {
  const ButtonsView({super.key});

  @override
  Widget build(BuildContext context) {
    void navigatorToBack() {
      Navigator.pop(context);
    }

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            UtButton.primaryWithIcon(
              onPressed: navigatorToBack,
              icon: Icon(Icons.home),
              label: 'Primary button',
            ),
            UtButton.secondaryWithIcon(
              onPressed: navigatorToBack,
              icon: Icon(Icons.alarm_on),
              label: 'Secondary button',
            ),
            UtButton.tertiaryWithIcon(
              onPressed: navigatorToBack,
              icon: Icon(Icons.zoom_in),
              label: 'Tertiary button',
            ),
            UtIconButton.parimary(
              onPressed: navigatorToBack,
              icon: Icon(Icons.password),
              size: UtButtonIconSize.small,
            ),
            UtIconButton.secondary(
              onPressed: navigatorToBack,
              icon: Icon(Icons.password),
              size: UtButtonIconSize.mediam,
            ),
            UtIconButton.tertiary(
              onPressed: navigatorToBack,
              icon: Icon(Icons.password),
              size: UtButtonIconSize.large,
            ),
          ],
        ),
      ),
    );
  }
}
