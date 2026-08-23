import '../../imports.dart';
import '../_models/error/error.dart';
import '../_shared/shared.dart';

class ContentError extends ConsumerWidget {
  final SpecificError? errorStattus;
  const ContentError({super.key, this.errorStattus});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppTitleBar(),
      body: ResponsiveGrid(
        defaultPcCells: 3,
        defaultTabletCells: 3,
        defaultMobileCells: 1,
        alignment: .center,
        children: [
          ResponsiveCell(
            layout: CommonResponsive.flexLx,
            child: Text(
              'アプリケーションに問題が発生しました',
              textAlign: .center,
              style: context.textStyleMode(
                sizeMode: .headlineLarge,
                colorMode: .error,
              ),
            ).spaceAll(context),
          ),
          ResponsiveCell(
            //メッセージ開始
            layout: CommonResponsive.allOne.copyWith(showOnMobile: false),
            child: SizedBox.shrink(),
          ),
          ResponsiveCell(
            layout: CommonResponsive.allOne.copyWith(mobileFlex: 1),
            child: Card(
              child: Text(
                '${errorStattus?.code}',
                textAlign: .center,
                softWrap: true,
              ),
            ).spaceAll(context),
          ),
          ResponsiveCell(
            layout: CommonResponsive.allOne.copyWith(showOnMobile: false),
            child: SizedBox.shrink(),
          ),
          ResponsiveCell(
            layout: CommonResponsive.allOne,
            child: Text(
              'メッセージ : ${errorStattus?.message}',
              style: context.textStyleMode(colorMode: .secondary),
            ),
          ),
        ],
      ),
    );
  }
}
