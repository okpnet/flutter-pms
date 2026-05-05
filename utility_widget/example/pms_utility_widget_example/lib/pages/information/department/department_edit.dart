import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';

class DepartmentEdit extends StatelessWidget {
  const DepartmentEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: false,
      child: UtBody(
        title: UtText.scetionTitle('組織の変更'),
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
                    child: UtTextInput.primary(label: '組織コード', requiered: true),
                  ),
                ),
                UtResponsiveFlex.of(
                  flex: 4,
                  child: UtLayoutPadding(
                    direction: .top,
                    child: UtTextInput.primary(label: '組織名', requiered: true),
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
                    child: UtTextInput.primary(label: '略称', requiered: true),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
