part of 'sidemenu_scafold.dart';

UtAccontItem? accontItem;
List<UtSideItem>? sidemenuItems;
List<UtSideItem>? returnSidemenuItems;
UtSideItem? selectItem;
bool itemsTypeReturn = false;

Uint8List image = base64Decode(Asset.image);
UtAccontItem buildAccountItem(BuildContext context) {
  accontItem =
      accontItem ??
      UtAccontItem(
        // account: 'test test test account',
        account: 'James and Williams',
        iconImageBytes: image,
        options: [
          UtSideItem(
            label: 'お知らせ',
            icon: Icon(Icons.notifications_none),
            onPress: () {
              selectItem = null;
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => Announce()));
            },
          ),
          UtSideItem(
            label: '設定',
            icon: Icon(Icons.settings_outlined),
            onPress: () {
              selectItem = null;
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => Settings()));
            },
          ),
          UtSideItem(
            label: 'ログアウト',
            icon: Icon(Icons.logout),
            onPress: () {
              selectItem = null;
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => Logout()),
                (_) => false,
              );
            },
          ),
        ],
      );
  return accontItem!;
}

List<UtSideItem> buildSiedemenuItems(BuildContext context) {
  sidemenuItems =
      sidemenuItems ??
      [
        UtSideItem(
          label: '基本情報',
          //icon: Icon(Icons.favorite),
          onPress: () {},
          options: [
            UtSideItem(
              label: '会社',
              icon: Icon(Icons.arrow_right),
              onPress: () {
                if (Navigator.canPop(context)) {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => Company()),
                    (_) => false,
                  );
                } else {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => Company()));
                }
              },
            ),
          ],
        ),
        UtSideItem(
          label: 'Item 2',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 3',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 4',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 5',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 6',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 7',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 8',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 9',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 10',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 11',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 12',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'Item 13',
          icon: Icon(Icons.favorite),
          onPress: () {
            // Do something
          },
        ),
        UtSideItem(
          label: 'has child',
          icon: Icon(Icons.bookmark),
          onPress: () {
            // Do something
          },
          options: [
            UtSideItem(label: 'child1', onPress: () {}),
            UtSideItem(label: 'child1', onPress: () {}),
          ],
        ),
        UtSideItem(label: 'item2', onPress: () {}),
      ];
  return sidemenuItems!;
}

List<UtSideItem> buildReturnSiedemenuItems(BuildContext context) {
  returnSidemenuItems =
      returnSidemenuItems ??
      [
        UtSideItem(
          label: '戻る',
          onPress: () {
            Navigator.of(context).pop();
          },
        ),
      ];
  return returnSidemenuItems!;
}
