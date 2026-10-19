import 'package:theme_lib/constants/constant.dart';

///リスト関連のテーマデータ
///RadioListTileも該当する
abstract class AppListTileTheme {
  static ListTileThemeData get listTileThemeData => ListTileThemeData(
    dense: true,
    titleAlignment: .center,
    horizontalTitleGap: 0.0,
  );
}
