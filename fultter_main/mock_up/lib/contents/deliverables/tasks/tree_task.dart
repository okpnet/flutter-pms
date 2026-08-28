import '../../../imports.dart';
import '../../contents.dart';

class TreeTask extends ConsumerStatefulWidget {
  const TreeTask({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TreeTask();
}

class _TreeTask extends ConsumerState<TreeTask> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      config: ResponsiveGridConfig.standard(),
      children: [
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: ContentsTitle('工程体系'),
        ),
      ],
    );
  }
}
