import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';

class DrawerItemListview extends StatefulWidget {
  const DrawerItemListview({
    super.key,
  });

  @override
  State<DrawerItemListview> createState() => _DrawerItemListviewState();
}

class _DrawerItemListviewState extends State<DrawerItemListview> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = const [
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
    return SliverList.builder(
        itemCount: items.length,
        
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: DrawerItem(
                isActive: activeIndex == index,
                drawerItemModel: items[index],
              ),
            ),
          );
        });
  }
}
