
import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/views/widgets/allexpensess_and_quickinvoice_section.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_transction_history_section.dart';

class DashBoardMobileLaout extends StatelessWidget {
  const DashBoardMobileLaout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndquickinvoiceSection(),
          SizedBox(height: 24),
          MyCardsAndTransctionHistorySection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
