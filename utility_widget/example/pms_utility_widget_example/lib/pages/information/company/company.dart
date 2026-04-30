import 'package:utility_widget/decorations/ut_decoration.dart';
import 'package:utility_widget/styles/constans/ut_brightness_style.dart';
import 'package:utility_widget/styles/constans/ut_space_style.dart';
import 'package:utility_widget/styles/export/ut_widget_design.dart';
import 'package:utility_widget/styles/ut_style.dart';
import 'package:utility_widget/text/ut_text.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';

class Company extends StatelessWidget {
  const Company({super.key});

  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: false,
      child: UtBody(
        title: UtText.scetionTitle('会社情報'),
        body: Column(
          crossAxisAlignment: .stretch,
          children: [
            UtDivider(
              prefix: UtText.label('基本的な情報'),
              brightness: UtBrightnessStyle.dark,
            ),
            UtResponsiveGrid(
              spacing: UtSpaceStyle.sm.value,
              children: [
                UtResponsiveFlex.of(
                  flex: 3,
                  child: UtLayoutPadding(
                    direction: .top,
                    paddingStyle: .xl,
                    child: UtContentsText.of(label: '会社名', title: 'XX会社'),
                  ),
                ),
                UtResponsiveFlex.cr(),
                UtResponsiveFlex.of(
                  flex: 3,
                  child: UtLayoutPadding(
                    direction: .top,
                    paddingStyle: .xl,
                    child: UtContentsText.of(label: 'カナ', title: 'XXカイシャ'),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 3,
                  child: UtLayoutPadding(
                    direction: .top,
                    paddingStyle: .xl,
                    child: UtContentsText.of(label: '略称', title: 'XX'),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 12,
                  child: UtDivider(
                    prefix: UtText.label('代表とホームページ'),
                    brightness: UtBrightnessStyle.dark,
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 3,
                  child: UtLayoutPadding(
                    direction: .top,
                    paddingStyle: .xl,
                    child: UtContentsText.of(label: '代表', title: 'XXX OOOO'),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 3,
                  child: UtLayoutPadding(
                    direction: .top,
                    paddingStyle: .xl,
                    child: UtContentsText.of(
                      label: 'ホームページ',
                      title: 'http://www.examples.com',
                    ),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 12,
                  child: UtDivider(
                    prefix: UtText.label('住所と連絡先'),
                    brightness: UtBrightnessStyle.dark,
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 3,
                  child: UtLayoutPadding(
                    direction: .top,
                    paddingStyle: .xl,
                    child: UtContentsText.of(label: '国', title: 'Japan'),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 3,
                  child: UtLayoutPadding(
                    direction: .top,
                    paddingStyle: .xl,
                    child: UtContentsText.of(label: '郵便番号', title: '0000000'),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 3,
                  child: UtLayoutPadding(
                    direction: .top,
                    paddingStyle: .xl,
                    child: UtContentsText.of(label: '県・市町村', title: 'XX県OO町'),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 3,
                  child: UtLayoutPadding(
                    direction: .top,
                    paddingStyle: .xl,
                    child: UtContentsText.of(label: '番地', title: '0丁目1-2-3-45'),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 3,
                  child: UtLayoutPadding(
                    direction: .top,
                    paddingStyle: .xl,
                    child: UtContentsText.of(
                      label: 'ビル、屋号など',
                      title: 'SEXビルビル',
                    ),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 3,
                  child: UtLayoutPadding(
                    direction: .top,
                    paddingStyle: .xl,
                    child: UtContentsText.of(
                      label: '電話番号',
                      title: '00-0000-00001',
                    ),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 3,
                  child: UtLayoutPadding(
                    direction: .top,
                    paddingStyle: .xl,
                    child: UtContentsText.of(
                      label: 'FAX',
                      title: '00-0000-00002',
                    ),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 12,
                  child: UtDivider(
                    prefix: UtText.label('事業情報'),
                    brightness: UtBrightnessStyle.dark,
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 3,
                  child: UtLayoutPadding(
                    direction: .top,
                    paddingStyle: .xl,
                    child: UtInfoTile.text(
                      label: '事業所',
                      text: '5',
                      suffixText: '拠点',
                    ),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 3,
                  child: UtLayoutPadding(
                    direction: .top,
                    paddingStyle: .xl,
                    child: UtInfoTile.text(
                      label: '従業員',
                      text: '10000001',
                      suffixText: '人',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
