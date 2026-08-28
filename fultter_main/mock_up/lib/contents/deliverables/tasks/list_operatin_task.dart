import '../../../imports.dart';
import '../../contents.dart';

class ListOperatinTask extends ConsumerStatefulWidget {
  const ListOperatinTask({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ListOperatinTask();
}

class _ListOperatinTask extends ConsumerState<ListOperatinTask> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      config: ResponsiveGridConfig.standard(),
      children: [
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: ContentsTitle('工程表'),
        ),
      ],
    );
  }
}
