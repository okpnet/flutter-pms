import '../../../imports.dart';
import '../../contents.dart';

class EditOperationTask extends ConsumerStatefulWidget {
  const EditOperationTask({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditOperationTask();
}

class _EditOperationTask extends ConsumerState<EditOperationTask> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      config: ResponsiveGridConfig.standard(),
      children: [
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: ContentsTitle('工程表編集'),
        ),
      ],
    );
  }
}
