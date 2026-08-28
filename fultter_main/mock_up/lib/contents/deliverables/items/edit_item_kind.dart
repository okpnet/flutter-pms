import '../../../imports.dart';
import '../../contents.dart';

class EditItemKind extends ConsumerStatefulWidget {
  const EditItemKind({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditItemKind();
}

class _EditItemKind extends ConsumerState<EditItemKind> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      config: ResponsiveGridConfig.standard(),
      children: [
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: ContentsTitle('品目区分編集'),
        ),
      ],
    );
  }
}
