import 'package:flutter/material.dart';
import 'package:utility_widget/forms/ut_input_field.dart';

class Fields extends StatelessWidget {
  const Fields({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            UtTextInput(
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
            UtCheckboxInput.primary(value: true, onChanged: (value) => false),
            UtCheckboxInput.primary(value: false, onChanged: (value) => false),
            UtCheckboxInput.secondary(value: true, onChanged: (value) => false),
            UtCheckboxInput.secondary(
              value: false,
              onChanged: (value) => false,
            ),
            UtCheckboxInput.tertiary(value: true, onChanged: (value) => false),
            UtCheckboxInput.tertiary(value: false, onChanged: (value) => false),
          ],
        ),
      ),
    );
  }
}
