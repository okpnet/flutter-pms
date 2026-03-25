import 'package:flutter/material.dart';
import 'package:pms_utility_widget/loding_indicator/indicators.dart';
import 'package:pms_utility_widget/standardized_buttons/button.dart';

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
            PrimaryButton.icon(
              onPressed: navigatorToBack,
              icon: Icon(Icons.home),
              label: const Text('Primary button'),
            ),
            SecondaryButton.icon(
              onPressed: navigatorToBack,
              icon: Icon(Icons.alarm_on),
              label: const Text('Secondary button'),
            ),
            TertiaryButton.icon(
              onPressed: navigatorToBack,
              icon: Icon(Icons.zoom_in),
              label: const Text('Tertiary button'),
            ),
            PrimaryIconButton(
              onPressed: navigatorToBack,
              icon: Icon(Icons.password),
              size: ButtonSize.small,
            ),
            SecondaryIconButton(
              onPressed: navigatorToBack,
              icon: Icon(Icons.password),
              size: ButtonSize.mediam,
            ),
            TertiaryIconButton(
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
