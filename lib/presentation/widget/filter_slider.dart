import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/domain/entity/filter.dart';
import 'package:mint/theme/palette.dart';

class FilterSlider extends StatelessWidget {
  const FilterSlider({required this.filter, required this.callback, super.key});
  final Filter filter;
  final void Function(RangeValues value) callback;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        thumbColor: Palette.mainBlue,
        activeTrackColor: Palette.mainBlue,
        rangeThumbShape: RoundRangeSliderThumbShape(enabledThumbRadius: 6.r),
      ),
      child: RangeSlider(
        max: 1000,
        values: RangeValues(
          filter.priceRange.start,
          filter.priceRange.end,
        ),
        onChanged: callback,
      ),
    );
  }
}
