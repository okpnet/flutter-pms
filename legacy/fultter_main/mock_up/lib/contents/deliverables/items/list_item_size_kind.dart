import '../../../imports.dart';
import '../../contents.dart';

class ListItemSizeKind extends ConsumerStatefulWidget {
  const ListItemSizeKind({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ListItemSizeKind();
}

class _ListItemSizeKind extends ConsumerState<ListItemSizeKind> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      config: ResponsiveGridConfig.standard(),
      children: [
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: ContentsTitle('品目サイズ区分'),
        ),
      ],
    );
  }
}
