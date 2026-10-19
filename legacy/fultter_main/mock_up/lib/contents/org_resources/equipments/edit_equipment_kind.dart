import '../../../imports.dart';
import '../../contents.dart';

class EditEquipmentKind extends ConsumerStatefulWidget {
  const EditEquipmentKind({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditEquipmentKind();
}

class _EditEquipmentKind extends ConsumerState<EditEquipmentKind> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      config: ResponsiveGridConfig.standard(),
      children: [
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: ContentsTitle('設備区分編集'),
        ),
      ],
    );
  }
}
