import 'package:flutter/material.dart';

import 'package:mint/theme/text_styles.dart';

class CheckoutBookingDetails extends StatelessWidget {
  const CheckoutBookingDetails({
    required this.plannedDate,
    required this.header,
    super.key,
  });
  final String plannedDate;
  final String header;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          header,
          style: TextStyles.footnote1.copyWith(
            color: Theme.of(context).textTheme.displaySmall?.color,
          ),
        ),
        Text(
          plannedDate,
          style: TextStyles.footnote1.copyWith(
            color: Theme.of(context).textTheme.displayMedium?.color,
          ),
        )
      ],
    );
  }
}
