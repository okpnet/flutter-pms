import '../../imports.dart';
import '../_models/error/error.dart';
import '../_shared/_shared.dart';

class ContentError extends ConsumerWidget {
  final SpecificError? errorStattus;
  const ContentError({super.key, this.errorStattus});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppTitleBar(),
      body: ResponsiveGrid(
        alignment: .center,
        children: [
          ResponsiveCell(
            layout: CommonResponsive.flexLx,
            child: Icon(
              Icons.sentiment_very_dissatisfied_outlined,
              size: 64,
            ).spaceAll(context),
          ),
          ResponsiveCell(
            layout: CommonResponsive.flexLx,
            child: Text('エラーが発生しました', textAlign: .center).spaceAll(context),
          ),
          ResponsiveCell(
            //メッセージ開始
            layout: CommonResponsive.flexS.copyWith(showOnMobile: false),
            child: SizedBox.shrink(),
          ),
          ResponsiveCell(
            layout: CommonResponsive.flexM.copyWith(mobileFlex: 4),
            child: Card(
              child: Text(
                '${errorStattus?.message}と、そのまま表示するのもいかがなものか。',
                softWrap: true,
              ),
            ).spaceAll(context),
          ),
        ],
      ),
    );
  }
}
