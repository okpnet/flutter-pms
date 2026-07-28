import 'package:theme_lib/theme_lib.dart';

///ドロワーメニューにユーザー情報を表示するヘッダ
class DrawerMenuHeader extends StatelessWidget {
  const DrawerMenuHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 320.0, minHeight: 96),
      child: ColoredBox(
        color: themeColor.primaryFixedDim,
        child: Row(
          children: [
            ClipOval(
              child: Image(
                image: AssetImage('assets/images.png'),
                width: 50.0,
                height: 50.0,
              ),
            ).spaceAll(context),
            Expanded(
              child: Column(
                spacing: context.spacing,
                children: [
                  Text(
                    'Jony dep',
                    textAlign: .left,
                    style: textTheme.bodyMedium,
                  ),
                ],
              ).spaceAll(context),
            ),
          ],
        ),
      ),
    );
  }
}
