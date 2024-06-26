import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/active_inactive_allexpense_item.dart';
import 'package:responsive_dash_board/views/widgets/all_expensess_item.dart';

class AllExpenseeItemListView extends StatefulWidget {
  const AllExpenseeItemListView({super.key});

  @override
  State<AllExpenseeItemListView> createState() =>
      _AllExpenseeItemListViewState();
}

class _AllExpenseeItemListViewState extends State<AllExpenseeItemListView> {
  int selectedIndex = 0;
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
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensessItem(
                isSelected: selectedIndex == 0, allExpnsessItemModel: item[0]),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensessItem(
                isSelected: selectedIndex == 1, allExpnsessItemModel: item[1]),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensessItem(
                isSelected: selectedIndex == 2, allExpnsessItemModel: item[2]),
          ),
        ),
      ],
    );

    // return Row(
    //   children: AllExpenseeItemListView.item.asMap().entries.map((e) {
    //     int index = e.key;
    //     var item = e.value;
    //     if (index == 1) {
    //       return Expanded(
    //         child: GestureDetector(
    //           onTap: () {
    //             updateIndex(index);
    //           },
    //           child: Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 12.0),
    //             child: AllExpensessItem(
    //                 isSelected: selectedIndex == index,
    //                 allExpnsessItemModel: item),
    //           ),
    //         ),
    //       );
    //     } else {
    //       return Expanded(
    //           child: GestureDetector(
    //               onTap: () {
    //                 updateIndex(index);
    //               },
    //               child: AllExpensessItem(
    //                   isSelected: selectedIndex == index,
    //                   allExpnsessItemModel: item)));
    //     }
    //   }).toList(),
    // );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
