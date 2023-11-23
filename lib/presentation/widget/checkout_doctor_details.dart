import 'package:flutter/material.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/theme/text_styles.dart';

class CheckoutDoctorDetails extends StatelessWidget {
  const CheckoutDoctorDetails({required this.doctor, super.key});
  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          doctor.name,
          style: TextStyles.title3.copyWith(
            color: Theme.of(context).primaryColor,
          ),
        ),
        Text(
          doctor.profession ?? '',
          style: TextStyles.caption1.copyWith(
            color: Theme.of(context).textTheme.displayMedium?.color,
          ),
        )
      ],
    );
  }
}
