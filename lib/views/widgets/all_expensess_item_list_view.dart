import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/active_inactive_allexpense_listview_item.dart';

class AllExpenseeItemListView extends StatelessWidget {
  const AllExpenseeItemListView({super.key});
  static const List<AllExpnsessItemModel> item = [
    AllExpnsessItemModel(
        title: 'Balance',
        image: Assets.assetsImagesBalance,
        date: 'April 2022',
        price: r'$20,129'),
    AllExpnsessItemModel(
        title: 'Income',
        image: Assets.assetsImagesIncome,
        date: 'April 2022',
        price: r'$20,129'),
    AllExpnsessItemModel(
        title: 'Expenses',
        image: Assets.assetsImagesExpenses,
        date: 'April 2022',
        price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return InActiveAllExpensessItemListView(item: item);
  }
}
