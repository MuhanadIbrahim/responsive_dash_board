import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/active_inactive_drawer_item.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item_list_view.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  name: 'Lekan Okeowo',
                  title: 'demo@gmail.com',
                  image: Assets.assetsImagesAvart3),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemListview(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Setting system',
                    image: Assets.assetsImagesSetting2,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout account',
                    image: Assets.assetsImagesLogout,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
