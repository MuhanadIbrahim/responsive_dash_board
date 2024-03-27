import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});
  static const item = [
    UserInfoModel(
        name: 'Madrani Andi',
        title: 'Madraniadi20@gmail',
        image: Assets.assetsImagesAvart1),
    UserInfoModel(
        name: 'Josua Nunito',
        title: 'Josh Nunito@gmail.com',
        image: Assets.assetsImagesAvart2),
    UserInfoModel(
        name: 'Madrani Andi',
        title: 'Madraniadi20@gmail',
        image: Assets.assetsImagesAvart3),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: item
              .map((e) =>
                  IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
              .toList(),
        ));
  }
}
