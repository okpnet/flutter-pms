import 'package:flutter/material.dart';
import 'package:pms_utility_widget/forms/field.dart';

class Fields extends StatelessWidget {
  const Fields({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            PmsTextField.primary(
              initialValue: 'インプットフィールド',
              maxLines: 1,
              maxLength: 16,
              label: const Text('入力データ'),
              suffixIcon: Icon(Icons.back_hand),
              prefixIcon: Icon(Icons.cable),
            ),
          ],
        ),
      ),
    );
  }
}
