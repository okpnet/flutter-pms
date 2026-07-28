import 'package:mock_up/menus/drawer_menu_header.dart';
import 'package:theme_lib/constants/constant.dart';

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
          ExpansionTile(title: Text('会社情報'), children: []),
        ],
      ),
    );
  }
}
