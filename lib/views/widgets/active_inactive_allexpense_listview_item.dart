
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expensess_item_model.dart';
import 'package:responsive_dash_board/views/widgets/all_expensess_item.dart';

class InActiveAllExpensessItemListView extends StatelessWidget {
  const InActiveAllExpensessItemListView({
    super.key,
    required this.item,
  });

  final List<AllExpnsessItemModel> item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: item.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: AllExpensessItem(allExpnsessItemModel: item),
              ),
            ),
          );
        } else {
          return Expanded(
              child: GestureDetector(
                  child: AllExpensessItem(allExpnsessItemModel: item)));
        }
      }).toList(),
    );
  }
}


class ActiveAllExpensessItemListView extends StatelessWidget {
  const ActiveAllExpensessItemListView({
    super.key,
    required this.item,
  });

  final List<AllExpnsessItemModel> item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: item.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: AllExpensessItem(allExpnsessItemModel: item),
              ),
            ),
          );
        } else {
          return Expanded(
              child: GestureDetector(
                  child: AllExpensessItem(allExpnsessItemModel: item)));
        }
      }).toList(),
    );
  }
}
