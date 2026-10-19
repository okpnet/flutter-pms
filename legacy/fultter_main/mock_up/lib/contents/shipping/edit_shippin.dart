import '../../imports.dart';
import '../contents.dart';

class EditShippin extends ConsumerStatefulWidget {
  const EditShippin({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditShippin();
}

class _EditShippin extends ConsumerState<EditShippin> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      config: ResponsiveGridConfig.standard(),
      children: [
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: ContentsTitle('出荷編集'),
        ),
      ],
    );
  }
}
