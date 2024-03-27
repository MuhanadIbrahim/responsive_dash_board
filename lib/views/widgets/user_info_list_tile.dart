import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.userInfoModel
      
      });
 final  UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: Text(userInfoModel.name, style: AppStyles.styleSemiBold16),
          subtitle: Text(
            userInfoModel.title,
            style: AppStyles.styleRegular12,
          )),
    );
  }
}
