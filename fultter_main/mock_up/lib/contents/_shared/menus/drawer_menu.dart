// Package imports:
import 'package:theme_lib/constants/constant.dart';

import 'menus.dart';

// Project imports:

///ドロワの子に設定するメニュー
///スクロールにしないと、メニュー項目が多いときにエラーが発生する
class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});
  @override
  State<StatefulWidget> createState() => _DrawerMenu();
}

class _DrawerMenu extends State<DrawerMenu> {
  _DrawerMenu();

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return Scrollbar(
      controller: scrollController,
      child: ListView(
        children: [
          DrawerMenuHeader(),
          ListTile(leading: Text('会社情報')),
          ExpansionTile(
            title: Text('資源情報'),
            children: [
              ListTile(leading: Text('設備1')), //ここをDB上の分類で分けるため、設定を呼び出す必要がある
              ListTile(leading: Text('設備2')),
            ],
          ),
        ],
      ),
    );
  }
}
