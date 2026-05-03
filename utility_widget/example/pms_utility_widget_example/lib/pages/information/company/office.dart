import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/pages/container/sidemenu_scafold.dart';

class Office extends StatefulWidget {
  const Office({super.key});
  @override
  State<StatefulWidget> createState() => OfficeState();
}

class OfficeState extends State<Office> {
   OfficeState();
  @override
  Widget build(BuildContext context) {
    return SidemenuScafold(
      isReturned: false,
      child: UtBody(
        title: UtText.scetionTitle('会社情報'),
        body:
  }
}
