import 'package:utility_widget/decorations/ut_decoration.dart';
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
            UtResponsiveRowWrap.lineSpace(),
            UtResponsiveLabelDivider(label: '基本的な情報', brightnessStyle: .light),
            UtResponsiveRowWrap.grid(
              maxCellCount: 3,
              alignment: WrapAlignment.start,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.centerLeft,
                  enableWidthType: .enableAll,
                  child: UtContentsText.of(label: '会社名', title: 'XX会社'),
                ),
              ],
            ),
            UtResponsiveRowWrap.grid(
              maxCellCount: 3,
              alignment: WrapAlignment.start,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.centerLeft,
                  enableWidthType: .enableAll,
                  child: UtContentsText.of(label: 'カナ', title: 'XXカイシャ'),
                ),
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.centerLeft,
                  enableWidthType: .enableAll,
                  child: UtContentsText.of(label: '略称', title: 'XX'),
                ),
              ],
            ),
            UtResponsiveRowWrap.lineSpace(),
            UtResponsiveLabelDivider(label: '代表とホームページ'),
            UtResponsiveRowWrap.grid(
              maxCellCount: 3,
              alignment: WrapAlignment.start,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.centerLeft,
                  enableWidthType: .enableAll,
                  child: UtContentsText.of(label: '代表', title: 'XXX OOOO'),
                ),
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.centerLeft,
                  enableWidthType: .enableAll,
                  child: UtContentsText.of(
                    label: 'ホームページ',
                    title: 'http://www.examples.com',
                  ),
                ),
              ],
            ),
            UtResponsiveRowWrap.lineSpace(),
            UtResponsiveLabelDivider(label: '住所と連絡先'),
            UtResponsiveRowWrap.grid(
              maxCellCount: 3,
              alignment: WrapAlignment.start,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.centerLeft,
                  enableWidthType: .enableAll,
                  child: UtContentsText.of(label: '国', title: 'Japan'),
                ),
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.centerLeft,
                  enableWidthType: .enableAll,
                  child: UtContentsText.of(label: '郵便番号', title: '0000000'),
                ),
              ],
            ),
            UtResponsiveRowWrap.grid(
              maxCellCount: 3,
              alignment: WrapAlignment.start,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.centerLeft,
                  enableWidthType: .enableAll,
                  child: UtContentsText.of(label: '県・市町村', title: 'XX県OO町'),
                ),
              ],
            ),
            UtResponsiveRowWrap.grid(
              maxCellCount: 3,
              alignment: WrapAlignment.start,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 2,
                  align: AlignmentGeometry.centerLeft,
                  enableWidthType: .enableAll,
                  child: UtContentsText.of(label: '番地', title: '0丁目1-2-3-45'),
                ),
              ],
            ),
            UtResponsiveRowWrap.grid(
              maxCellCount: 3,
              alignment: WrapAlignment.start,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 2,
                  align: AlignmentGeometry.centerLeft,
                  enableWidthType: .enableAll,
                  child: UtContentsText.of(label: 'ビル、屋号など', title: 'SEXビルビル'),
                ),
              ],
            ),
            UtResponsiveRowWrap.grid(
              maxCellCount: 3,
              alignment: WrapAlignment.start,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.centerLeft,
                  enableWidthType: .enableAll,
                  child: UtContentsText.of(
                    label: '電話番号',
                    title: '00-0000-00001',
                  ),
                ),
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.centerLeft,
                  enableWidthType: .enableAll,
                  child: UtContentsText.of(
                    label: 'FAX',
                    title: '00-0000-00002',
                  ),
                ),
              ],
            ),
            UtResponsiveRowWrap.lineSpace(),
            UtResponsiveLabelDivider(label: '事業情報'),
            UtResponsiveRowWrap.grid(
              maxCellCount: 3,
              alignment: WrapAlignment.start,
              children: [
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.centerLeft,
                  enableWidthType: .enableAll,
                  child: UtInfoTile.text(
                    label: '事業所',
                    text: '5',
                    suffixText: '拠点',
                  ),
                ),
                UtResponsiveRowWrapItem(
                  cellCount: 1,
                  align: AlignmentGeometry.centerLeft,
                  enableWidthType: .enableAll,
                  child: UtInfoTile.text(
                    label: '従業員',
                    text: '10000001',
                    suffixText: '人',
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
