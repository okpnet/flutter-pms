import 'package:utility_widget/forms/ut_input_field.dart';
import 'package:utility_widget/styles/constans/ut_brightness_style.dart';
import 'package:utility_widget/styles/export/ut_widget_design.dart';
import 'package:utility_widget/styles/ut_style.dart';
import 'package:utility_widget/text/ut_text.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: false,
      child: UtBody(
        title: UtText.scetionTitle('設定'),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UtDivider(
              prefix: UtText.label('ユーザーの情報'),
              brightness: UtBrightnessStyle.dark,
            ),
            UtResponsiveRowWrap.divider(),
            UtResponsiveRowWrap.grid(
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.centerLeft,
                  child: UtTextInput.primary(label: '名前', requiered: true),
                ),
              ],
            ),
            UtResponsiveRowWrap.divider(),
            UtResponsiveRowWrap.grid(
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.centerLeft,
                  child: UtTextInput.primary(label: 'カナ'),
                ),
              ],
            ),
            UtResponsiveRowWrap.divider(),
            UtResponsiveRowWrap.grid(
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.centerLeft,
                  child: UtTextInput.primary(label: 'メールアドレス'),
                ),
              ],
            ),
            UtResponsiveRowWrap.divider(),
            UtResponsiveRowWrap.grid(
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.centerLeft,
                  child: UtTextInput.primary(label: '担当者コード'),
                ),
              ],
            ),
            UtResponsiveRowWrap.divider(),
            UtResponsiveRowWrap.grid(
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.centerLeft,
                  child: UtTextInput.primary(label: '携帯電話1'),
                ),
              ],
            ),
            UtResponsiveRowWrap.divider(),
            UtResponsiveRowWrap.grid(
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.centerLeft,
                  child: UtTextInput.primary(label: '携帯電話2'),
                ),
              ],
            ),
            UtResponsiveRowWrap.divider(),
            UtDivider(
              prefix: UtText.label('アプリケーションの設定'),
              brightness: UtBrightnessStyle.dark,
            ),
          ],
        ),
      ),
    );
  }
}
