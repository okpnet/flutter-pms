import '../../../imports.dart';
import '../../contents.dart';

class ListItemKind extends ConsumerStatefulWidget {
  const ListItemKind({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ListItemKind();
}

class _ListItemKind extends ConsumerState<ListItemKind> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      config: ResponsiveGridConfig.standard(),
      children: [
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: ContentsTitle('品目区分'),
        ),
      ],
    );
  }
}
