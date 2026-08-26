import 'package:mock_up/contents/contents.dart';

import '../../../imports.dart';

part 'edit_provision.dart';

class EditCompany extends StatefulWidget {
  const EditCompany({super.key});

  @override
  State<StatefulWidget> createState() => _EditCompany();
}

class _EditCompany extends State<EditCompany> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      config: ResponsiveGridConfig.standard(),
      children: [
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: ContentsTitle('会社'),
        ),
        ResponsiveCell(layout: CommonResponsive.flexLx, child: Text('未実装')),
        ResponsiveCell(layout: CommonResponsive.flexLx, child: EditProvision()),
      ],
    );
  }
}
