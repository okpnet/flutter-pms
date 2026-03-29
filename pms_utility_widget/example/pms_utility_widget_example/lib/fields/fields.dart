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
            IntrinsicWidth(
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 600),
                child: PmsDropdownField.primary(
                  initialValue: 'A',
                  label: const Text('入力データ'),
                  prefixIcon: Icon(Icons.cable),
                  items: [
                    DropdownMenuItem(value: 'A', child: Text('Aです')),
                    DropdownMenuItem(value: 'B', child: Text('Bです')),
                  ],
                  onChanged: (e) {},
                ),
              ),
            ),
            PmsCheckboxField.primary(
              context: context,
              value: true,
              onChanged: (value) => false,
            ),
            PmsCheckboxField.primary(
              context: context,
              value: false,
              onChanged: (value) => false,
            ),
            PmsCheckboxField.secondary(
              context: context,
              value: true,
              onChanged: (value) => false,
            ),
            PmsCheckboxField.secondary(
              context: context,
              value: false,
              onChanged: (value) => false,
            ),
            PmsCheckboxField.tertiary(
              context: context,
              value: true,
              onChanged: (value) => false,
            ),
            PmsCheckboxField.tertiary(
              context: context,
              value: false,
              onChanged: (value) => false,
            ),
          ],
        ),
      ),
    );
  }
}
