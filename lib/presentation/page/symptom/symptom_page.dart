import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/backbone/symptoms.dart';
import 'package:mint/domain/entity/filter.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/filter/filter_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/back_button.dart';
import 'package:mint/presentation/widget/symptom_checklist.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

@RoutePage()
class SymptomPage extends StatefulWidget {
  const SymptomPage({super.key});

  @override
  State<SymptomPage> createState() => _SymptomPageState();
}

class _SymptomPageState extends State<SymptomPage> {
  final _bloc = sl<FilterBloc>();
  final map = {
    'My conditions': conditions,
    'Relations': relations,
    'Study and Work': study,
  };

  Map<String, bool> currentSymptoms = {};

  @override
  void initState() {
    super.initState();

    currentSymptoms
      ..addAll(conditions)
      ..addAll(relations)
      ..addAll(study);
  }

  void onSelectedSymptoms({required String symptom, required bool isActive}) {
    currentSymptoms[symptom] = isActive;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: currentSymptoms.isNotEmpty
          ? Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16.h, bottom: 40.h),
                    child: SizedBox(
                      height: 51.h,
                      width: 353.w,
                      child: CupertinoButton(
                        color: Palette.mainBlue,
                        child: Text(
                          AppLocalizations.of(context)!.next,
                          style: TextStyles.buttomMain
                              .copyWith(color: Palette.white),
                        ),
                        onPressed: () {
                          _bloc.add(
                            ApplyFilterEvent(
                              Filter(
                                specialties: currentSymptoms.entries
                                    .where((entry) => entry.value == true)
                                    .map((entry) => entry.key)
                                    .toList(),
                                priceRange: const RangeValues(0, 1000),
                                experienceRange: [],
                              ),
                            ),
                          );

                          context.router.navigate(const SpecialistsRoute());
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )
          : null,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 70.w,
        backgroundColor: Colors.transparent,
        leading: CustomBackButton(
          callback: context.router.pop,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 50.h, left: 16.w, right: 16.w),
            child: Column(
              children: map.entries
                  .map(
                    (e) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 24.h, bottom: 16.h),
                          child: Text(
                            e.key,
                            style: TextStyles.title2
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                        SymptomChecklist(
                          symptoms: e.value,
                          onSelectedSymptoms: onSelectedSymptoms,
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
