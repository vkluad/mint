import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/domain/entity/filter.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/filter/filter_bloc.dart';
import 'package:mint/presentation/page/specialist_selection/tabs/problems_selection_chips.dart';
import 'package:mint/presentation/page/specialist_selection/tabs/session_price_screen.dart';
import 'package:mint/presentation/page/specialist_selection/tabs/therapist_experience_screen.dart';
import 'package:mint/presentation/page/specialist_selection/tabs/type_of_comm_screen.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/back_button.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

@RoutePage()
class SpecialistSelectionPage extends StatefulWidget {
  const SpecialistSelectionPage({super.key});

  @override
  State<SpecialistSelectionPage> createState() =>
      _SpecialistSelectionPageState();
}

class _SpecialistSelectionPageState extends State<SpecialistSelectionPage>
    with TickerProviderStateMixin {
  TabController? _tabController;
  final _bloc = sl<FilterBloc>();
  RangeValues? priceRange;
  List<String>? specialties;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  void getCallbackValues(
    RangeValues? range,
    List<String>? selectedSpecialties,
  ) {
    if (range != null) {
      priceRange = range;
    }
    if (selectedSpecialties != null) {
      specialties = selectedSpecialties;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: GestureDetector(
        child: Scaffold(
          bottomSheet: Container(
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
                        if (_tabController!.index < 3) {
                          setState(() {
                            _tabController!.index++;
                          });
                        } else {
                          _bloc.add(
                            ApplyFilterEvent(
                              Filter(
                                experienceRange: [],
                                specialties: specialties ?? [],
                                priceRange:
                                    priceRange ?? const RangeValues(0, 1000),
                              ),
                            ),
                          );
                          context.router.pop();
                          context.router.navigate(const SpecialistsRoute());
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            leadingWidth: 70,
            leading: const CustomBackButton(),
            toolbarHeight: 70.h,
            centerTitle: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(70.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(
                      AppLocalizations.of(context)!.helpMatch,
                      style: TextStyles.title1.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  TabBar(
                    labelPadding: EdgeInsets.zero,
                    splashBorderRadius: BorderRadius.zero,
                    splashFactory: NoSplash.splashFactory,
                    onTap: (value) {
                      setState(() {
                        _tabController?.index = value;
                      });
                    },
                    indicator: const BoxDecoration(color: Colors.transparent),
                    indicatorWeight: 1,
                    controller: _tabController,
                    unselectedLabelColor: Palette.blackSecondary,
                    tabs: [
                      for (int i = 0; i < 4; i++)
                        Tab(
                          child: Container(
                            height: 3.h,
                            width: 77.w,
                            color: _tabController?.index == i
                                ? Palette.mainBlue
                                : Palette.lightSeparator,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: [
              const CommunicationTypeScreen(),
              const TherapistExperience(),
              SessionPriceSelection(
                onTabValueReceived: getCallbackValues,
              ),
              ChipSelectionScreen(
                onTabValueReceived: getCallbackValues,
              )
            ],
          ),
        ),
      ),
    );
  }
}
