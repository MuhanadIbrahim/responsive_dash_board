import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= 1200 && width < 1492
        ? const Expanded(child: DetailedIncomeChart())
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 3, child: IncomeDetails())
            ],
          );
    // return const Row(
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   children: [
    //     Expanded(child: IncomeChart()),
    //     Expanded(flex: 2, child: IncomeDetails())
    //   ],
    // );
  }
}
