import 'package:app_core/app_core.dart';
import 'package:app_shell/app_shell.dart' show SingleMainFrame;
import '../../i18n/strings_provider.dart';
import 'package:pms_app/contents/_models/models.dart';
import 'package:pms_app/contents/_shared/_shared.dart';

import '../../imports.dart';

///メンテナンスのお知らせ
class Maintenance extends ConsumerWidget {
  final MaintenanceStatus status;
  const Maintenance({super.key, required this.status});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(appStringsProvider);
    return SingleMainFrame(
      title: ref.watch(appCoreStringsProvider).app.title,
      body: ResponsiveGrid(
        alignment: .center,
        children: [
          ResponsiveCell(
            layout: CommonResponsive.flexLx,
            child: Text(
              t.maintenance.title,
              textAlign: .center,
              style: context.textStyleMode(size: (t) => t.headlineLarge),
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
                t.maintenance.message(time: status.maintenanceCompletionTime ?? ""),
                softWrap: true,
              ),
            ).spaceAll(context),
          ),
        ],
      ),
    );
  }
}
