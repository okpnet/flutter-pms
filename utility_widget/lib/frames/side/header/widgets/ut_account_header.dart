part of '../ut_header.dart';

class UtAccountHeader extends StatelessWidget with UtSideMixin {
  final UtAccontItem accountItem;
  UtAccountHeader({super.key, required this.accountItem});

  @override
  Widget build(BuildContext context) {
    debugPrint('Header not mixed drawer and expantion now.');
    return ofDrawer(context: context);
  }

  //NavigationRail用アカウントヘッダ
  Widget ofRail({required BuildContext context}) {
    return UtLayoutCrevice.margin(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          accountItem.iconImageBytes != null
              ? Container(
                  margin: EdgeInsets.only(left: accountPaddingSpace),
                  child: ClipOval(
                    child: Image.memory(
                      accountItem.iconImageBytes!,
                      height: iconSize.height,
                      width: iconSize.width,
                    ),
                  ),
                )
              : const SizedBox.shrink(),
          Container(
            margin: EdgeInsets.only(left: accountPaddingSpace),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: headerNameMaxWidth),
              child: Text(
                accountItem.account,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: UtFontScale.of(
                    context: context,
                    scale: accountFontSizeScale,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Align(
              alignment: AlignmentGeometry.centerRight,
              child: accountItem.options != null
                  ? SubmenuButton(
                      trailingIcon: Icon(Icons.arrow_drop_down),
                      menuChildren: [
                        for (var item in accountItem.options!)
                          createMenubutton(item: item, context: context),
                      ],
                      //leadingIcon: Icon(Icons.arrow_drop_down),
                      child: SizedBox.shrink(),
                    )
                  : const SizedBox.shrink(),
            ),
          ),
          // Flexible(
          //   flex: 1,
          //   fit: FlexFit.tight,
          //   child: Align(
          //     alignment: AlignmentGeometry.centerRight,
          //     child: accountItem.options != null
          //         ? UtIconButton.tertiary(
          //             context: context,
          //             icon: Icon(Icons.settings_outlined),
          //             size: UtButtonSize.mediam,
          //             onPressed: accountItem.settingOnPress,
          //           )
          //         : const SizedBox.shrink(),
          //   ),
          // ),
        ],
      ),
    );
  }

  //Drawer用アカウントヘッダ
  Widget ofDrawer({required BuildContext context}) {
    return UtLayoutCrevice.margin(
      child: Row(
        children: [
          if (accountItem.iconImageBytes != null)
            Expanded(
              child: Align(
                alignment: AlignmentGeometry.center,
                child: Image.memory(
                  accountItem.iconImageBytes!,
                  height: iconSize.height,
                  width: iconSize.width,
                ),
              ),
            ),
          Expanded(
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Text(
                accountItem.account,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: UtFontScale.of(
                    context: context,
                    scale: accountFontSizeScale,
                  ),
                ),
              ),
            ),
          ),
          if (accountItem.options != null)
            Expanded(
              child: Align(
                alignment: AlignmentGeometry.centerRight,
                child: SubmenuButton(
                  trailingIcon: Icon(Icons.arrow_drop_down),
                  menuChildren: [
                    for (var item in accountItem.options!)
                      createMenubutton(item: item, context: context),
                  ],
                  // leadingIcon: Icon(Icons.settings_outlined),
                  child: SizedBox.shrink(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
