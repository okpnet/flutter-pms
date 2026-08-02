import '../../imports.dart';

///ツリーモデルを必要としない品目
///設備、副資材など
///カテゴリの引数をとって、分類表示
class ListItem extends ConsumerStatefulWidget {
  const ListItem({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ListItem();
}

class _ListItem extends ConsumerState<ListItem> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
