import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/theme/text_styles.dart';

class DoctorInfoSpecialties extends StatelessWidget {
  const DoctorInfoSpecialties({required this.specialities, super.key});
  final List<String>? specialities;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Wrap(
        children: specialities?.isNotEmpty == true
            ? List<Widget>.from(
                specialities!.map((speciality) {
                  return Padding(
                    padding: EdgeInsets.only(
                      right: 8.w,
                      bottom: 8.h,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.r),
                        ),
                        color: Theme.of(context).colorScheme.primaryContainer,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 8.h,
                      ),
                      child: Text(
                        speciality,
                        style: TextStyles.tagSmall
                            .copyWith(color: Theme.of(context).primaryColor),
                      ),
                    ),
                  );
                }),
              )
            : <Widget>[],
      ),
    );
  }
}
