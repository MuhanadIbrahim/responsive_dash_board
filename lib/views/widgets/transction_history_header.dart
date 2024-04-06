
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransctionHistoryHeader extends StatelessWidget {
  const TransctionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Transaction History', style: AppStyles.styleSemiBold20(context)),
        const SizedBox(width: 24),
        Text('See all',
            style: AppStyles.styleMedium16(context)
                .copyWith(color: const Color(0xFF4EB7F2))),
      ],
    );
  }
}
