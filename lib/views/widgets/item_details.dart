import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/model/item_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailModel});
  final ItemDetailModel itemDetailModel;
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.only(left: 8.0),
    //   child: FittedBox(
    //     fit: BoxFit.scaleDown,
    //     child: Row(
    //       children: [
    //         Container(
    //           width: 12,
    //           height: 12,
    //           decoration: ShapeDecoration(
    //             color: itemDetailModel.color,
    //             shape: OvalBorder(),
    //           ),
    //         ),
    //         SizedBox(width: 12),
    //         Text(itemDetailModel.title, style: AppStyles.styleRegular16),
    //         SizedBox(width: 24),
    //         Text(itemDetailModel.value,
    //             style: AppStyles.styleMedium16.copyWith(
    //               color: Color(0xFF208CC8),
    //             )),
    //       ],
    //     ),
    //   ),
    // );
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(itemDetailModel.title, style: AppStyles.styleRegular16(context)),
      trailing: Text(itemDetailModel.value,
          style: AppStyles.styleMedium16(context).copyWith(
            color:const  Color(0xFF208CC8),
          )),
    );
  }
}
