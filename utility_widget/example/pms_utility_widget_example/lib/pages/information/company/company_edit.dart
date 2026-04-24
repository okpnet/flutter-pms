import 'package:utility_widget/buttons/ut_button.dart';
import 'package:utility_widget/decorations/ut_decoration.dart';
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
            UtResponsiveRowWrap.grid(
              alignment: .start,
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem.offset(
                  offsetLength: 2,
                  enableWidthType: .onlyWide,
                ),
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  enableWidthType: .onlyWide,
                  align: .centerRight,
                  mobileAlign: .center,
                  child: UtButton.primaryWithIcon(
                    label: '保存する',
                    onPressed: () => {},
                    icon: Icon(Icons.save_alt_outlined),
                  ),
                ),
              ],
            ),
            UtResponsiveRowWrap.lineSpace(),
            UtResponsiveLabelDivider(label: '基本的な情報'),
            UtResponsiveRowWrap.grid(
              alignment: .start,
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: .centerLeft,
                  mobileAlign: .center,
                  child: UtTextInput.primary(label: '会社名', requiered: true),
                ),
              ],
            ),
            UtResponsiveRowWrap.lineSpace(),
            UtResponsiveRowWrap.grid(
              alignment: .start,
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: .centerLeft,
                  mobileAlign: .center,
                  child: UtTextInput.primary(label: 'カナ'),
                ),
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: .centerLeft,
                  mobileAlign: .center,
                  child: UtTextInput.primary(label: '略称'),
                ),
              ],
            ),
            UtResponsiveRowWrap.lineSpace(),
            UtResponsiveLabelDivider(label: '代表とホームページ'),
            UtResponsiveRowWrap.grid(
              alignment: .start,
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: .centerLeft,
                  mobileAlign: .center,
                  child: UtTextInput.primary(label: '代表'),
                ),
              ],
            ),
            UtResponsiveRowWrap.lineSpace(),
            UtResponsiveRowWrap.grid(
              alignment: .start,
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 2,
                  align: .centerLeft,
                  mobileAlign: .center,
                  child: UtTextInput.primary(label: 'ホームページ'),
                ),
              ],
            ),
            UtResponsiveRowWrap.lineSpace(),
            UtResponsiveLabelDivider(label: '住所と連絡先'),
            UtResponsiveRowWrap.grid(
              alignment: .start,
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: .centerLeft,
                  mobileAlign: .center,
                  child: UtTextInput.primary(label: '国'),
                ),
              ],
            ),
            UtResponsiveRowWrap.lineSpace(),
            UtResponsiveRowWrap.grid(
              alignment: .start,
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: .centerLeft,
                  mobileAlign: .center,
                  child: UtTextInput.primary(label: '郵便番号'),
                ),
              ],
            ),
            UtResponsiveRowWrap.lineSpace(),
            UtResponsiveRowWrap.grid(
              alignment: .start,
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 2,
                  align: .centerLeft,
                  mobileAlign: .center,
                  child: UtTextInput.primary(label: '県・市町村'),
                ),
              ],
            ),
            UtResponsiveRowWrap.lineSpace(),
            UtResponsiveRowWrap.grid(
              alignment: .start,
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 2,
                  align: .centerLeft,
                  mobileAlign: .center,
                  child: UtTextInput.primary(label: '番地'),
                ),
              ],
            ),
            UtResponsiveRowWrap.lineSpace(),
            UtResponsiveRowWrap.grid(
              alignment: .start,
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: .centerLeft,
                  mobileAlign: .center,
                  child: UtTextInput.primary(label: 'ビル、屋号など'),
                ),
              ],
            ),
            UtResponsiveRowWrap.lineSpace(),
            UtResponsiveRowWrap.grid(
              alignment: .start,
              maxCellCount: 3,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: .centerLeft,
                  mobileAlign: .center,
                  child: UtTextInput.primary(label: '電話番号'),
                ),
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: .centerLeft,
                  mobileAlign: .center,
                  child: UtTextInput.primary(label: 'FAX'),
                ),
              ],
            ),
            UtResponsiveRowWrap.lineSpace(),
            UtResponsiveRowWrap.grid(
              alignment: .start,
              maxCellCount: 1,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  enableWidthType: .onlyMobile,
                  align: .centerLeft,
                  mobileAlign: .center,
                  child: UtButton.primaryWithIcon(
                    label: '保存する',
                    onPressed: () => {},
                    icon: Icon(Icons.save_alt_outlined),
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
