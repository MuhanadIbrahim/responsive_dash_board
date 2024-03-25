import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';

class DrawerItemListview extends StatelessWidget {
  const DrawerItemListview({
    super.key,
  });

  static const List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.assetsImagesDashboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.assetsImagesMy, title: 'My Transaction'),
    DrawerItemModel(image: Assets.assetsImagesStatistics, title: 'Statistics'),
    DrawerItemModel(
        image: Assets.assetsImagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(
        image: Assets.assetsImagesMyinvestments, title: 'My Investments')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(
              drawerItemModel: items[index],
            ),
          );
        });
  }
}
