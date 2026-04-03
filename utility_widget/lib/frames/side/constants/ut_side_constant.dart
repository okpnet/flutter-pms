part of '../ut_sidemenu.dart';

class UtSideConstant {
  //アカウントアイコンのサイズ
  static const ({double width, double height}) iconSize = (
    width: 50,
    height: 50,
  );
  //アカウント名のフォントサイズの拡大率
  static const double accountFontSizeScale = 1.25;
  //画面幅に対するメニューの幅の最小割合
  static const double headerWidthPercentage = 0.12;
  //メニューの幅の固定最大値
  static const double headerMaxWidth = 320;
  //アカウント名の幅。これ以上は折り返し2行まで表示。
  static const double headerNameMaxWidth = 160;

  //アカウントアイコンとアカウント名のスペース
  static const double accountPaddingSpace = 12;

  static const double bodyBothsidePaddingPercentage = 0.05;
  static const double minBodyBottomPadding = 16;
}
