import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/item_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemDetailModel(
        color: Color(0xFF208BC7), title: 'Design service', value: '40%'),
    ItemDetailModel(
        color: Color(0xFF4DB7F2), title: 'Design product', value: '25%'),
    ItemDetailModel(
        color: Color(0xFF064060), title: 'Product royalti', value: '20%'),
    ItemDetailModel(
      color: Color(0xFFE2DECD),
      title: 'Other',
      value: '22%',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ItemDetails(itemDetailModel: items[index]);
      }
    );
  }
}
