import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/views/widgets/latest_transction.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_form.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          Expanded(child: LatestTransction()),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          Expanded(child: QuickInvoiceForm()),
        ],
      ),
    );
  }
}
