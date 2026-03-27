import 'package:flutter/material.dart';
import 'package:pms_utility_widget/loding_indicator/indicators.dart';
import 'package:pms_utility_widget/buttons/button.dart';

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
            PmsButton.primaryWithIcon(
              context,
              onPressed: navigatorToBack,
              icon: Icon(Icons.home),
              label: const Text('Primary button'),
            ),
            PmsButton.secondaryWithIcon(
              context,
              onPressed: navigatorToBack,
              icon: Icon(Icons.alarm_on),
              label: const Text('Secondary button'),
            ),
            PmsButton.tertiaryWithIcon(
              context,
              onPressed: navigatorToBack,
              icon: Icon(Icons.zoom_in),
              label: const Text('Tertiary button'),
            ),
            PmsIconButton.primary(
              context,
              onPressed: navigatorToBack,
              icon: Icon(Icons.password),
              size: ButtonSize.small,
            ),
            PmsIconButton.secondary(
              context,
              onPressed: navigatorToBack,
              icon: Icon(Icons.password),
              size: ButtonSize.mediam,
            ),
            PmsIconButton.tertiary(
              context,
              onPressed: navigatorToBack,
              icon: Icon(Icons.password),
              size: ButtonSize.large,
            ),
          ],
        ),
      ),
    );
  }
}
