import 'package:mock_up/contents/contents.dart';

import '../../../imports.dart';

class TreeItem extends ConsumerStatefulWidget {
  const TreeItem({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TreeItem();
}

class _TreeItem extends ConsumerState<TreeItem> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      config: ResponsiveGridConfig.standard(),
      children: [
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: ContentsTitle('品目体系'),
        ),
      ],
    );
  }
}
