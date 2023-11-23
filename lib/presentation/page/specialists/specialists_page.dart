import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/backbone/utils.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/domain/entity/filter.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/auth/auth_bloc.dart';
import 'package:mint/presentation/bloc/doctors/doctor_bloc.dart';
import 'package:mint/presentation/bloc/filter/filter_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/doctor_box.dart';
import 'package:mint/presentation/widget/loading_indicator.dart';
import 'package:mint/theme/text_styles.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class SpecialistsPage extends StatefulWidget {
  const SpecialistsPage({super.key});

  @override
  State<SpecialistsPage> createState() => _SpecialistsPageState();
}

class _SpecialistsPageState extends State<SpecialistsPage> {
  final _bloc = sl<DoctorBloc>();
  final _filterBloc = sl<FilterBloc>();
  final _authBloc = sl<AuthBloc>();

  Future<Filter> _getFilterFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final priceRangeStart = prefs.getDouble('startPrice') ?? 0.0;
    final priceRangeEnd = prefs.getDouble('endPrice') ?? 1000.0;
    final specialties = prefs.getStringList('specialties') ?? [];
    final experienceRange = prefs.getStringList('experienceRange') ?? [];

    return Filter(
      priceRange: RangeValues(priceRangeStart, priceRangeEnd),
      specialties: specialties,
      experienceRange: experienceRange
          .map(
            (experience) =>
                RangeValues(double.parse(experience), double.parse(experience)),
          )
          .toList(),
    );
  }

  @override
  void initState() {
    super.initState();

    _getFilterFromPrefs()
        .then((filter) => _filterBloc.add(ApplyFilterEvent(filter)));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.h),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SizedBox(
              height: 50.h,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => context.router.navigate(const DoctorsRoute()),
                    child: Row(
                      children: [
                        const Icon(Icons.navigate_before),
                        Text(
                          AppLocalizations.of(context)!.back,
                          style: TextStyles.body,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () async => showFilterBottomSheet(
                      context: context,
                    ),
                    child: SvgPicture.asset(
                      Assets.svg.filter,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).primaryColor,
                        BlendMode.srcIn,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<FilterBloc, FilterState>(
                bloc: _filterBloc,
                builder: (context, state) {
                  return state.maybeWhen(
                    filtered: (filteredDoctors) => filteredDoctors !=
                                <Doctor>[] &&
                            filteredDoctors.isNotEmpty
                        ? ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () => context.router.navigate(
                                DoctorDetailsRoute(
                                  doctor: filteredDoctors[index],
                                ),
                              ),
                              child: BlocBuilder<AuthBloc, AuthState>(
                                bloc: _authBloc,
                                builder: (context, state) {
                                  return state.maybeWhen(
                                    authenticated: (user) {
                                      final userFavourites =
                                          user.favourites ?? [];
                                      return DoctorBox(
                                        isFavourite: userFavourites.contains(
                                            filteredDoctors[index].id),
                                        callback: () async {
                                          if (userFavourites.contains(
                                            filteredDoctors[index].id,
                                          )) {
                                            await showRemoveFromFavouriteDialog(
                                              name: filteredDoctors[index].name,
                                              context: context,
                                              removeCallback: () {
                                                _bloc.add(
                                                  RemoveFromFavouritesEvent(
                                                    filteredDoctors[index].id,
                                                  ),
                                                );
                                              },
                                            );
                                          } else {
                                            _bloc.add(
                                              MarkAsFavouriteEvent(
                                                filteredDoctors[index].id,
                                              ),
                                            );
                                          }
                                        },
                                        doctor: filteredDoctors[index],
                                      );
                                    },
                                    orElse: () => const SizedBox.shrink(),
                                  );
                                },
                              ),
                            ),
                            itemCount: filteredDoctors.length,
                          )
                        : Center(
                            child: Text(AppLocalizations.of(context)!.emptyList),
                          ),
                    orElse: () => BlocBuilder<DoctorBloc, DoctorState>(
                      bloc: _bloc,
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => const SizedBox.shrink(),
                          loading: () => const CustomLoadingIndicator(),
                          loaded: (doctors) => ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () => context.router.navigate(
                                  DoctorDetailsRoute(
                                    doctor: doctors[index],
                                  ),
                                ),
                                child: BlocBuilder<AuthBloc, AuthState>(
                                  bloc: _authBloc,
                                  builder: (context, state) {
                                    return state.maybeWhen(
                                      authenticated: (user) {
                                        final userFavourites =
                                            user.favourites ?? [];
                                        return DoctorBox(
                                          isFavourite: userFavourites
                                              .contains(doctors[index].id),
                                          callback: () async {
                                            if (userFavourites
                                                .contains(doctors[index].id)) {
                                              await showRemoveFromFavouriteDialog(
                                                name: doctors[index].name,
                                                context: context,
                                                removeCallback: () {
                                                  _bloc.add(
                                                    RemoveFromFavouritesEvent(
                                                      doctors[index].id,
                                                    ),
                                                  );
                                                },
                                              );
                                            } else {
                                              _bloc.add(
                                                MarkAsFavouriteEvent(
                                                  doctors[index].id,
                                                ),
                                              );
                                            }
                                          },
                                          doctor: doctors[index],
                                        );
                                      },
                                      orElse: () => const SizedBox.shrink(),
                                    );
                                  },
                                ),
                              );
                            },
                            itemCount: doctors.length,
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
