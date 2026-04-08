import 'package:utility_widget/styles/export/ut_widget_design.dart';

mixin UtSideMixin on StatelessWidget {
  //アカウントアイコンのサイズ
  final ({double width, double height}) iconSize = (width: 50, height: 50);
  //アカウント名のフォントサイズの拡大率
  final double accountFontSizeScale = 1.25;
  //画面幅に対するメニューの幅の最小割合
  final double headerWidthPercentage = 0.12;
  //メニューの幅の固定最大値
  final double headerMaxWidth = 320;
  //アカウント名の幅。これ以上は折り返し2行まで表示。
  final double headerNameMaxWidth = 160;
  //アカウントアイコンとアカウント名のスペース
  final double accountPaddingSpace = 12;

  double menuWidth(BuildContext context) {
    final width =
        MediaQuery.of(context).size.width * headerWidthPercentage; //メニュー幅
    return width > headerMaxWidth ? width : headerMaxWidth;
  }

  Widget createExpansion() {
    return _createExpansion(this);
  }

  //再帰
  Widget _createExpansion(UtSideItem item) {
    if (item.options == null || item.options!.isEmpty) {
      return item.createDrawerItem();
    }
    return ExpansionTile(
      title: Text(item.label),
      leading: item.icon,

      children: [for (var value in item.options!) _createExpansion(value)],
    );
  }
}
