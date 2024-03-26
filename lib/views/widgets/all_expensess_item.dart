import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_expensess_item_model.dart';
import 'package:responsive_dash_board/views/widgets/active_inactive_allexpense_item.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem(
      {super.key,
      required this.allExpnsessItemModel,
      required this.isSelected});
  final AllExpnsessItemModel allExpnsessItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensessItem(allExpnsessItemModel: allExpnsessItemModel)
        : InActiveAllExpensessItem(allExpnsessItemModel: allExpnsessItemModel);
  }
}
