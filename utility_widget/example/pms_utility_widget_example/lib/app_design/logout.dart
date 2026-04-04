import 'package:flutter/material.dart';
import 'package:utility_widget/buttons/ut_button.dart';

class Logout extends StatelessWidget {
  final String title;
  Logout({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Row(
          children: [
            SizedBox(width: 100),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check_circle, size: 50),
                Text('ログアウトしました'),
                SizedBox.shrink(),
                UtButton.primaryWithIcon(
                  context: context,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  label: Text('トップページに移動する'),
                  icon: Icon(Icons.move_up),
                ),
              ],
            ),
            SizedBox(width: 100),
          ],
        ),
      ),
    );
  }
}
