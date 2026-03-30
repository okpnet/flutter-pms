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
              context,
              onPressed: navigatorToBack,
              icon: Icon(Icons.home),
              label: const Text('Primary button'),
            ),
            UtButton.secondaryWithIcon(
              context,
              onPressed: navigatorToBack,
              icon: Icon(Icons.alarm_on),
              label: const Text('Secondary button'),
            ),
            UtButton.tertiaryWithIcon(
              context,
              onPressed: navigatorToBack,
              icon: Icon(Icons.zoom_in),
              label: const Text('Tertiary button'),
            ),
            UtIconButton.primary(
              context,
              onPressed: navigatorToBack,
              icon: Icon(Icons.password),
              size: UtButtonSize.small,
            ),
            UtIconButton.secondary(
              context,
              onPressed: navigatorToBack,
              icon: Icon(Icons.password),
              size: UtButtonSize.mediam,
            ),
            UtIconButton.tertiary(
              context,
              onPressed: navigatorToBack,
              icon: Icon(Icons.password),
              size: UtButtonSize.large,
            ),
          ],
        ),
      ),
    );
  }
}
