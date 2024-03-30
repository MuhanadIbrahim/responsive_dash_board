
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/item_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailModel});
  final ItemDetailModel itemDetailModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailModel.color,
          shape: OvalBorder(),
        ),
      ),
      title: Text(itemDetailModel.title, style: AppStyles.styleRegular16),
      trailing: Text(itemDetailModel.value,
          style: AppStyles.styleMedium16.copyWith(
            color: Color(0xFF208CC8),
          )),
    );
  }
}
