import 'dart:async';

import '../../../imports.dart';
import '../../services/services.dart';
import '../contents.dart';

class Logout extends ConsumerWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(mockAutorizeServiceProvider);
    final title = switch (state) {
      .signedOut => 'ログアウトしました',
      _ => '有効期限タイムアウト',
    };
    final msg = switch (state) {
      .signedOut => 'お疲れさまでした。',
      _ => '一定時間、操作されませんでした。',
    };
    // build 完了後に一度だけ実行
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(const Duration(seconds: 5), () {
        Navigator.of(context).pushReplacementNamed('/login');
      });
    });
    return ContensScaffold(
      body: ResponsiveGrid(
        children: [
          ResponsiveCell(
            layout: CommonResponsive.flexL.copyWith(wrapCellAlignment: .center),
            child: Text(
              title,
              style: context.textStyleMode(sizeMode: .headlineLarge),
            ).spaceAll(context),
          ),
          ResponsiveCell(
            layout: CommonResponsive.flexL.copyWith(wrapCellAlignment: .center),
            child: Text(msg).spaceAll(context),
          ),
          ResponsiveCell(
            layout: CommonResponsive.flexL.copyWith(wrapCellAlignment: .center),
            child: ElevatedButton.icon(
              onPressed: () {},
              label: Text('ログインへ戻る()'),
            ),
          ),
        ],
      ),
    );
  }
}
