import '../../../imports.dart';
import '../../contents.dart';

class EditTask extends ConsumerStatefulWidget {
  const EditTask({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditTask();
}

class _EditTask extends ConsumerState<EditTask> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      config: ResponsiveGridConfig.standard(),
      children: [
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: ContentsTitle('工程編集'),
        ),
      ],
    );
  }
}
