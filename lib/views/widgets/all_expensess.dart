import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expensess_header.dart';
import 'package:responsive_dash_board/views/widgets/all_expensess_item.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          AllExpensessHeader(),
          AllExpensessItem(allExpnsessItemModel: AllExpnsessItemModel(title: 'Income'
          , image: Assets.assetsImagesIncome, date: 'April 2022', price: r'$20,129'))
        ],
      ),
    );
  }
}

