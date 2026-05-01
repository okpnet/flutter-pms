import 'package:utility_widget/buttons/ut_button.dart';
import 'package:utility_widget/forms/ut_input_field.dart';
import 'package:utility_widget/styles/export/ut_widget_design.dart';
import 'package:utility_widget/styles/ut_style.dart';
import 'package:utility_widget/text/ut_text.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';

class CompanyEdit extends StatelessWidget {
  const CompanyEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: false,
      child: UtBody(
        title: UtText.scetionTitle('会社情報'),
        body: Column(
          mainAxisAlignment: .spaceEvenly,
          children: [
            UtResponsiveGrid(
              children: [
                UtResponsiveFlex.of(
                  flex: 12,
                  hidePoint: .mobile,
                  child: UtLayoutPadding(
                    direction: .top,
                    child: Align(
                      alignment: .topRight,
                      child: UtButton.primaryWithIcon(
                        label: '保存する',
                        onPressed: () => {},
                        icon: Icon(Icons.save_alt_outlined),
                      ),
                    ),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 4,
                  child: UtLayoutPadding(
                    direction: .top,
                    child: UtTextInput.primary(label: '会社名', requiered: true),
                  ),
                ),
                UtResponsiveFlex.cr(),
                UtResponsiveFlex.of(
                  flex: 4,
                  child: UtLayoutPadding(
                    direction: .top,
                    child: UtTextInput.primary(label: 'カナ'),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 4,
                  child: UtLayoutPadding(
                    direction: .top,
                    child: UtTextInput.primary(label: '略称'),
                  ),
                ),
                UtResponsiveFlex.cr(),
                UtResponsiveFlex.of(
                  flex: 3,
                  child: UtLayoutPadding(
                    direction: .top,
                    child: UtTextInput.primary(label: '代表'),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 8,
                  child: UtLayoutPadding(
                    direction: .top,
                    child: UtTextInput.primary(label: 'ホームページ'),
                  ),
                ),
                UtResponsiveFlex.cr(),
                UtResponsiveFlex.of(
                  flex: 3,
                  child: UtLayoutPadding(
                    direction: .top,
                    child: UtTextInput.primary(label: '国'),
                  ),
                ),
                UtResponsiveFlex.cr(),
                UtResponsiveFlex.of(
                  flex: 3,
                  child: UtLayoutPadding(
                    direction: .top,
                    child: UtTextInput.primary(label: '郵便番号'),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 3,
                  child: UtLayoutPadding(
                    direction: .top,
                    child: UtTextInput.primary(label: '県・市町村'),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 8,
                  child: UtLayoutPadding(
                    direction: .top,
                    child: UtTextInput.primary(label: '県・市町村'),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 8,
                  child: UtLayoutPadding(
                    direction: .top,
                    child: UtTextInput.primary(label: 'ビル、屋号など'),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 4,
                  child: UtLayoutPadding(
                    direction: .top,
                    child: UtTextInput.primary(label: '電話番号'),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 4,
                  child: UtLayoutPadding(
                    direction: .top,
                    child: UtTextInput.primary(label: 'FAX'),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 0,
                  smallPc: 0,
                  tablet: 0,
                  smallTablet: 0,
                  mobile: 4,
                  child: UtLayoutPadding(
                    direction: .top,
                    child: UtButton.primaryWithIcon(
                      label: '保存する',
                      onPressed: () => {},
                      icon: Icon(Icons.save_alt_outlined),
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
