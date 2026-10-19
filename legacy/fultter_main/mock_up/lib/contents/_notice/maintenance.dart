import 'package:mock_up/contents/_models/models.dart';
import 'package:mock_up/contents/_shared/_shared.dart';

import '../../imports.dart';

///メンテナンスのお知らせ
class Maintenance extends ConsumerWidget {
  final MaintenanceStatus status;
  const Maintenance({super.key, required this.status});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppTitleBar(),
      body: ResponsiveGrid(
        alignment: .center,
        children: [
          ResponsiveCell(
            layout: CommonResponsive.flexLx,
            child: Text(
              'メンテナンス中',
              textAlign: .center,
              style: context.textStyleMode(sizeMode: .headlineLarge),
            ),
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
                'status.messageをキーにしたローカライズされたメッセージの表示。${status.maintenanceCompletionTime}までメンテナンス中です',
                softWrap: true,
              ),
            ).spaceAll(context),
          ),
        ],
      ),
    );
  }
}
