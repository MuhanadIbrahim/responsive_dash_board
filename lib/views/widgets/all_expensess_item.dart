import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expensess_item_model.dart';
import 'package:responsive_dash_board/views/widgets/all_expensess_item_header.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem({super.key, required this.allExpnsessItemModel});
final AllExpnsessItemModel allExpnsessItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child:  Column(
        children: [AllExpemsessItemHeader(image: allExpnsessItemModel.image,)],
      ),
    );
  }
}
