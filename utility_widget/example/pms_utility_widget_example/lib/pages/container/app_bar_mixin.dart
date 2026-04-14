import 'package:utility_widget/styles/export/ut_widget_design.dart';
import 'package:utility_widget/styles/helper/ut_text_helper.dart';

mixin AppBarMixin {
  final String title = 'アプリケーションタイトル';

  PreferredSizeWidget buildAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(title),
    );
  }

  Widget subTitle(String title, BuildContext context) {
    return Text(title, style: UtTextHelper.buildSubtitleStyle(context));
  }
}
