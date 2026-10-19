import '../../../imports.dart';
import '../../contents.dart';

class EditItemSizeKind extends ConsumerStatefulWidget {
  const EditItemSizeKind({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditItemSizeKind();
}

class _EditItemSizeKind extends ConsumerState<EditItemSizeKind> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      config: ResponsiveGridConfig.standard(),
      children: [
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: ContentsTitle('品目サイズ区分編集'),
        ),
      ],
    );
  }
}
