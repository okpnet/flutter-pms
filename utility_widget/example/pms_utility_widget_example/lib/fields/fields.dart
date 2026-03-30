import 'package:flutter/material.dart';
import 'package:utility_widget/forms/ut_field.dart';

class Fields extends StatelessWidget {
  const Fields({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            UtTextField.primary(
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
                child: UtDropdownField.primary(
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
            UtCheckboxField.primary(
              context: context,
              value: true,
              onChanged: (value) => false,
            ),
            UtCheckboxField.primary(
              context: context,
              value: false,
              onChanged: (value) => false,
            ),
            UtCheckboxField.secondary(
              context: context,
              value: true,
              onChanged: (value) => false,
            ),
            UtCheckboxField.secondary(
              context: context,
              value: false,
              onChanged: (value) => false,
            ),
            UtCheckboxField.tertiary(
              context: context,
              value: true,
              onChanged: (value) => false,
            ),
            UtCheckboxField.tertiary(
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
