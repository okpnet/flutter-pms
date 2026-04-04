part of '../ut_header.dart';

class UtAccountHeader {
  //NavigationRail用アカウントヘッダ
  static Widget ofRail({
    required BuildContext context,
    required UtAccontItem accountItem,
  }) {
    return UtLayoutWidgetHelper.containerAllPading(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          accountItem.iconImageBytes != null
              ? Container(
                  margin: EdgeInsets.only(
                    left: UtSideConstant.accountPaddingSpace,
                  ),
                  child: ClipOval(
                    child: Image.memory(
                      accountItem.iconImageBytes!,
                      height: UtSideConstant.iconSize.height,
                      width: UtSideConstant.iconSize.width,
                    ),
                  ),
                )
              : const SizedBox.shrink(),
          Container(
            margin: EdgeInsets.only(left: UtSideConstant.accountPaddingSpace),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: UtSideConstant.headerNameMaxWidth,
              ),
              child: Text(
                accountItem.account,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: UtFontScale.of(
                    context: context,
                    scale: UtSideConstant.accountFontSizeScale,
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
                          item.createMenubutton(),
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
  static Widget ofDrawer({
    required BuildContext context,
    required UtAccontItem accountItem,
  }) {
    return UtLayoutWidgetHelper.containerAllPading(
      child: Row(
        children: [
          if (accountItem.iconImageBytes != null)
            Expanded(
              child: Align(
                alignment: AlignmentGeometry.center,
                child: Image.memory(
                  accountItem.iconImageBytes!,
                  height: UtSideConstant.iconSize.height,
                  width: UtSideConstant.iconSize.width,
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
                    scale: UtSideConstant.accountFontSizeScale,
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
                      item.createMenubutton(),
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
