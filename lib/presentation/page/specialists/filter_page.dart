import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/backbone/symptoms.dart';
import 'package:mint/domain/entity/filter.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/filter/filter_bloc.dart';
import 'package:mint/presentation/widget/custom_choice_chip.dart';
import 'package:mint/presentation/widget/filter_slider.dart';
import 'package:mint/presentation/widget/sheet_title.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  SharedPreferences? prefs;

  final _bloc = sl<FilterBloc>();
  Filter filter = Filter(
    priceRange: const RangeValues(0, 1000),
    specialties: [],
    experienceRange: [],
  );

  Future<void> _initPrefs() async {
    prefs = await SharedPreferences.getInstance();
    await _loadFilterFromPrefs();
  }

  @override
  void initState() {
    super.initState();
    _initPrefs();
    _loadFilterFromPrefs();
  }

  Future<void> _loadFilterFromPrefs() async {
    if (prefs != null) {
      setState(() {
        final startPrice = prefs!.getDouble('startPrice') ?? 0.0;
        final endPrice = prefs!.getDouble('endPrice') ?? 1000.0;
        values = RangeValues(startPrice, endPrice);
        filter.priceRange = values;
        final experienceList = prefs!.getStringList('experienceRange');
        if (experienceList != null) {
          filter.experienceRange = experienceList.map((exp) {
            final values = exp.split(',').map(double.parse).toList();
            return RangeValues(values[0], values[1]);
          }).toList();
        }

        final specialitiesList = prefs!.getStringList('specialties');
        if (specialitiesList != null) {
          filter.specialties = specialitiesList;
        }
      });
    }
  }

  Future<void> _saveFilterToPrefs() async {
    await prefs!.setDouble('startPrice', filter.priceRange.start);
    await prefs!.setDouble('endPrice', filter.priceRange.end);
    await prefs!.setStringList(
      'experienceRange',
      filter.experienceRange
          .map((range) => '${range.start},${range.end}')
          .toList(),
    );
    await prefs!.setStringList('specialties', filter.specialties);
  }

  RangeValues values = const RangeValues(0, 1000);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SheetTitle(
              text: AppLocalizations.of(context)!.filters,
              actionsWidget: GestureDetector(
                onTap: () {
                  setState(() {
                    filter
                      ..experienceRange = []
                      ..priceRange = const RangeValues(0, 1000)
                      ..specialties = [];
                  });
                  _bloc.add(ApplyFilterEvent(filter));
                  Navigator.pop(context);
                },
                child: Text(
                  AppLocalizations.of(context)!.clear,
                  style: TextStyles.tagBig.copyWith(
                    color: Theme.of(context).textTheme.bodyMedium?.color,
                  ),
                ),
              ),
            ),
          ),
        ),
        bottomSheet: Container(
          width: 375.w,
          color: Theme.of(context).colorScheme.background,
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 16.h,
          ),
          child: CupertinoButton(
            color: Palette.mainBlue,
            disabledColor: Palette.mainBlue.withOpacity(0.5),
            onPressed: () {
              _bloc.add(ApplyFilterEvent(filter));
              _saveFilterToPrefs();
              context.router.pop();
            },
            child: Text(
              AppLocalizations.of(context)!.applyFilters,
              style: const TextStyle(color: Palette.white),
            ),
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 100.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 24.h),
                  child: Text(
                    AppLocalizations.of(context)!.price,
                    style: TextStyles.title2.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                FilterSlider(
                  filter: filter,
                  callback: (value) => setState(() {
                    values = value;
                    filter.priceRange = value;
                  }),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${values.start.toInt()}₴',
                        style: TextStyles.callout,
                      ),
                      Text('${values.end.toInt()}₴', style: TextStyles.callout)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.w,
                    top: 24.h,
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.experience,
                    style: TextStyles.title2.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Wrap(
                    children: experience.entries
                        .map(
                          (chip) => Padding(
                            padding: EdgeInsets.only(right: 8.w),
                            child: CustomChip(
                              value: chip.key,
                              isSelected: chip.value.values.first,
                              callback: (isActive) {
                                setState(() {
                                  experience[chip.key] = {
                                    chip.value.keys.first: isActive
                                  };
                                  if (isActive) {
                                    filter.experienceRange
                                        .add(chip.value.keys.first);
                                  } else {
                                    filter.experienceRange
                                        .remove(chip.value.keys.first);
                                  }
                                });
                              },
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 24.h),
                  child: Text(
                    AppLocalizations.of(context)!.specialities,
                    style: TextStyles.title2.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                  ),
                  child: Wrap(
                    children: specialities.entries
                        .map(
                          (chip) => Padding(
                            padding: EdgeInsets.only(right: 8.w),
                            child: CustomChip(
                              value: chip.key,
                              isSelected: chip.value,
                              callback: (isActive) => setState(() {
                                specialities[chip.key] = isActive;
                                if (isActive) {
                                  filter.specialties.add(chip.key);
                                } else {
                                  filter.specialties.remove(chip.key);
                                }
                              }),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
