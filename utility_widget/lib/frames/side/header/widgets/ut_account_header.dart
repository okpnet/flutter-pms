part of '../ut_header.dart';

class UtAccountHeader extends StatelessWidget
    with UtSideMixin, UtEdgeinsetMixin {
  final UtAccontItem accountItem;
  UtAccountHeader({super.key, required this.accountItem});

  @override
  Widget build(BuildContext context) {
    final bgColor = colorScheme(context).surfaceContainerHighest;
    final height = iconSize.height + defaultPadding * 2;
    return Container(
      color: bgColor, //backGroundColor(context),
      height: height,
      padding: edgeInsetsBuilder(direction: UtDirection.vertical),
      child: ListTile(
        tileColor: bgColor,
        leading: accountIconBuilder(),
        title: titleBuilder(context),
        trailing: trailingBuilder(),
        // dense: true,
      ),
    );
  }

  Widget? accountIconBuilder() {
    if (accountItem.iconImageBytes == null) {
      return null;
    }
    return ClipOval(
      child: Image.memory(
        accountItem.iconImageBytes!,
        height: iconSize.height,
        width: iconSize.width,
      ),
    );
  }

  Text titleBuilder(BuildContext context) => Text(
    accountItem.account,
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
    softWrap: true,
    style: TextStyle(
      color: frontColor(context),
      //fontWeight: FontWeight.bold,
      fontSize: UtFontScale.of(context: context, scale: accountFontSizeScale),
    ),
  );

  Widget? trailingBuilder() {
    if (accountItem.options == null || accountItem.options!.isEmpty) {
      return null;
    }
    return PopupMenuButton(
      icon: Icon(Icons.arrow_drop_down),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<UtSideItem>>[
        for (var item in accountItem.options!)
          PopupMenuItem(
            value: item,
            onTap: item.onPress,
            child: ListTile(leading: item.icon, title: Text(item.label)),
          ),
      ],
    );
  }
}
