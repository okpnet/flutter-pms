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
            UtResponsiveGrid(
              children: [
                UtResponsiveFlex.of(
                  child: UtTextInput.primary(label: '名前', requiered: true),
                  flex: 4,
                ),
                UtResponsiveFlex.cr(),
                UtResponsiveFlex.of(
                  flex: 4,
                  child: UtTextInput.primary(label: 'カナ'),
                ),
                UtResponsiveFlex.cr(),
                UtResponsiveFlex.of(
                  flex: 4,
                  child: UtTextInput.primary(label: 'メールアドレス'),
                ),
                UtResponsiveFlex.cr(),
                UtResponsiveFlex.of(
                  flex: 4,
                  child: UtTextInput.primary(label: '担当者コード'),
                ),
                UtResponsiveFlex.cr(),
                UtResponsiveFlex.of(
                  flex: 4,
                  child: UtTextInput.primary(label: '携帯電話1'),
                ),
                UtResponsiveFlex.of(
                  flex: 4,
                  child: UtTextInput.primary(label: '携帯電話2'),
                ),
              ],
            ),
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
