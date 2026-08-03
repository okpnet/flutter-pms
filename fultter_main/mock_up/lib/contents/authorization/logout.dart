// Project imports:
import 'package:theme_lib/theme_lib.dart';

import '../../../imports.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test')),
      body: Row(children: [Text('Logout', style: context.textStyleMode())]),
    );
  }
}
